#!/usr/bin/env bash
#-------------------------------------------------
# 服务端相关开发工具
#-------------------------------------------------

if [ "" == "$ROOT" ]; then
    if [ -f ../tools/dev.sh ]; then
        ../tools/dev.sh $@
        exit 0
    else
        echo -e "\e[91m>>\e[0;0m 此脚本必须通过tools/dev.sh调用才能正常工作"
        exit 1
    fi
fi

## 判断目录下是否在时间内有修改
fun_time_update(){
    t=$2
    [[ "$t" == "" ]] && return 0
    dir=${ROOT}/server/$1
    f_time=$(date +%s -r $dir)
    now=$(date +%s)
    [[ $(expr $now - $f_time) -lt $t ]]; return $?
    # ret=0
    # for file in $(ls $dir); do
    #     f_time=$(date +%s -r $dir/$file)
    #     if [[ $(expr $now - $f_time) -lt $t ]]; then
    #         ret=1
    #         break
    #     fi
    # done
    # [[ $ret -eq 1 ]]; return $?
}

## 编译指定模块 内部调用
fun_make_mod(){
    path=$1
    if [ -d ${ROOT}/server/$path ] && fun_time_update $path $2; then
        cd ${ROOT}/server/$path
        # params='[encrypt_debug_info,{hipe, [o3]},{i,\"${ROOT}/server/inc\"},{outdir,\"${ROOT}/server/ebin\"},${ERL_MAKE_PARAM}]'
        params="[debug_info,{hipe, [o3]},{i,\"${ROOT}/server/inc\"},{outdir,\"${ROOT}/server/ebin\"},{parse_transform, lager_transform} | [ ${ERL_MAKE_PARAM}]]"
        ${ERL} -pa $ROOT/server/cbin -noshell -eval "make:all(${params})" -s c q
    fi
}

# 检查并补全节点配置信息
# 调用前先定义关联数组cfg: declare -A cfg
check_node_cfg(){
    local p=$1
    local z=$2
    if [ "$p" = "" ] || [ "$z" = "" ]; then
        ERR "参数中需要带有平台标识和区号"
        exit 1
    fi
    if ! is_integer $z; then
        ERR "参数区号必须为小于100的整数"
        exit 1
    fi
    if [ "$z" = "0" ] || [ "$p" = 'center' ]; then
        cfg[type]="center"
    else
        cfg[type]="zone"
    fi

    open_time=$(date +%s)
    cfg[root]=${ZONE_BASE}/${GAME_CODE}_${p}_${z}
    cfg[code_path]="${ROOT}"
    cfg[nodename]="${GAME_CODE}_${p}_${z}@${HOST}"
    cfg[nodename2]="${GAME_CODE}_${p}_${z}"
    cfg[platform]=$p
    cfg[zone_id]=$z
    cfg[combine]="<<"\"${p}_${z}\"">>"
    cfg[host]="${HOST}"
    cfg[ip]="${HOST}"
    cfg[port]=$(($PORT_OFFSET+$z))
    cfg[cookie]=${ERL_COOKIE}
    cfg[srv_key]="tucycy@6ckm0c"
    cfg[zone_name]="${GAME_CODE}开发服${z}"
    cfg[lang]="zh_CN"
    cfg[fcm]="0"
    cfg[open_time]="$open_time"
    cfg[srv_open_time]="$open_time"
    cfg[open_time_test]="$open_time"
    cfg[merge_time]="0"
    cfg[realmed]="0"
    cfg[website]="http://fx2.syg"
    cfg[ver]="v1"
    cfg[center_node]=${GAME_CODE}_center_0@${HOST}
    cfg[db_host]=$DB_HOST
    cfg[db_port]=$DB_PORT
    cfg[db_user]=$DB_USER
    cfg[db_pass]=$DB_PASS
    cfg[db_name]=${GAME_CODE}_${p}_${z}
    cfg[db_conn_min]=10
    cfg[db_conn_max]=20
    cfg[need_register]=0
    cfg[group_id]=0
    cfg[is_main]=0
    cfg[is_maintain]=0
    cfg[flume_host_group]=0
}

DOC[srv_gen_rec]="生成record方便控制台查看"
fun_srv_gen_rec(){
    cd ${ROOT}/server || exit 1
    inc=$(find inc -name *.hrl | grep -v a_path | grep -v "game_assets" | grep -v "thrift_" | sort -n |awk '{print "-include(\""substr($0,5)"\")." }')
    cat > src/lib/user_default.erl <<EOF
-module(user_default).
-compile(export_all).
${inc}
EOF
}

DOC[srv_pull]="从源码仓库检出最新代码"
fun_srv_pull(){
    INFO "正在检出客户端资源库..."
    cd ${ROOT}/server && git pull
}

DOC[srv_make]="编译服务器源码"
fun_srv_make(){
    if [ -d $ROOT/server_core_mod ] && [ "$1" == "" ]; then 
        fun_srv_cmake_mod
    fi
    if [ -d $ROOT/server_core_data ] && [ "$1" == "" ]; then 
        fun_srv_dmake
    fi
    fun_srv_gen_rec
    INFO "正在编译服务端源码，使用编译参数: \e[92m${ERL_MAKE_PARAM}\e[0;0m (编译参数可在\e[92mcfg.ini\e[0;0m中修改) ..."
    cd ${ROOT}/server || exit 1
    mkdir -p ebin
    start_time=$(date +%s)
    if $(in_cygwin); then
        yes|cp -f cbin/* ebin/
        yes|cp -f mbin/* ebin/
        yes|cp -f dbin/* ebin/
    else
        rsync -avH --progress ${ROOT}/server/cbin/ ${ROOT}/server/ebin/
        rsync -avH --progress ${ROOT}/server/mbin/ ${ROOT}/server/ebin/
        rsync -avH --progress ${ROOT}/server/dbin/ ${ROOT}/server/ebin/
    fi
    # paths=$(find src -type d -exec echo \ \ \ \ \ \ \ \ ,\'{}/*\' \;)
    # paths=$(find src -type d | xargs -I {} echo "        ,'{}/*'")
    paths=$(find src -type d | awk '{print "        ,'\''"$0"/*'\''" }')
    cat > Emakefile <<EOF
{
	[
        'lang/*'
        ,'editor/*'
${paths}
	]
	,[
		{hipe, [o3]}
		%%,encrypt_debug_info
		,debug_info
		,{i, "inc"}
		,{outdir, "ebin"}
        ,{parse_transform, lager_transform}

        | [${ERL_MAKE_PARAM}]
	]
}.
EOF
    ${ERL} -pa cbin -noshell -make -j 10
    INFO "编译服务端源码完成:$(expr `date +%s` - $start_time)"
}

DOC[srv_makedata]="编译服务器数据源码"
fun_srv_makedata(){
    if [ -d $ROOT/server_mod ]; then 
        fun_srv_cmake_data $1
    fi
    if [ -d $ROOT/server_core_data ]; then 
        fun_srv_dmake $1
    fi
    INFO "正在编译服务端数据表，使用编译参数: \e[92m${ERL_MAKE_PARAM}\e[0;0m (编译参数可在\e[92mcfg.ini\e[0;0m中修改) ..."
    cd ${ROOT}/server || exit 1
    start_time=$(date +%s)
    if [ "$1" = "" ]; then
        paths=",'src/mod/data/*', 'src/mod/battle_data/*'"
    else
        paths=$(find src/mod/data -type f -name "*.erl" -mtime $1 | awk '{print "        ,'\''"$0"'\''" }')
    fi
    # paths=$(find src -type d -exec echo \ \ \ \ \ \ \ \ ,\'{}/*\' \;)
    # paths=$(find src -type d | xargs -I {} echo "        ,'{}/*'")
    # paths=$(find src -type d | awk '{print "        ,'\''"$0"/*_data*'\''" }')
    cat > Emakefile <<EOF
{
	[
        'lang/*'
${paths}
	]
	,[
		{hipe, [o3]}
		%%,encrypt_debug_info
		,debug_info
		,{i, "inc"}
		,{outdir, "ebin"}
        ,{parse_transform, lager_transform}

        | [${ERL_MAKE_PARAM}]
	]
}.
EOF
    ${ERL} -pa cbin -noshell -make -j 10
    INFO "编译服务端数据表完成:$(expr `date +%s` - $start_time)"
}

DOC[srv_pmake]="多线程编译服务器源码"
fun_srv_pmake(){
    INFO "正在编译服务端源码，使用编译参数: \e[92m${ERL_MAKE_PARAM}\e[0;0m (编译参数可在\e[92mcfg.ini\e[0;0m中修改) ..."
    cd ${ROOT}/server || exit 1
    start_time=$(date +%s)
    paths=$(find src -type d)
    paths=('lang' 'editor' $paths)
    pro_max=6
    if $(in_cygwin); then
        pro_max=3
    fi
    for path in ${paths[@]}; do
        fun_make_mod $path $1 &
        fun_wait_pro $pro_max
    done
    wait
    INFO "编译服务端源码完成:$(expr `date +%s` - $start_time)"
}

DOC[srv_make_mod]="编译服务器指定模块源码"
fun_srv_make_mod(){
    cd ${ROOT}/server || exit 1
    if [ "$1" = "src" ]; then
        path="src"
    elif [ "$1" = "tester" ]; then
        path="tester/src"
    elif [ -d ${ROOT}/server/src/$1 ]; then
        path="src/$1"
    else
        path="src/mod/$1"
    fi
    INFO "正在编译服务端源码[$path]，使用编译参数: \e[92m${ERL_MAKE_PARAM}\e[0;0m (编译参数可在\e[92mcfg.ini\e[0;0m中修改) ..."
    start_time=$(date +%s)
    fun_make_mod $path $2
    INFO "编译服务端源码完成:$(expr `date +%s` - $start_time)"
}

DOC[srv_start]="启动游戏服务器，参数:[平台标识] [区号]"
fun_srv_start(){
    declare -A cfg
    check_node_cfg $@
    if [ ! -d ${cfg[root]}/dets ]; then
        ERR "节点\e[92m${cfg[nodename]}\e[0;0m似乎没有安装，无法启动"
        exit 1
    fi
    cd ${cfg[root]}
    if $(in_cygwin); then
        ${WERL} -kernel inet_dist_listen_min ${ERL_PORT_MIN} -kernel inet_dist_listen_max ${ERL_PORT_MAX} +P 204800 +K true -smp enable -hidden +sbwt none -pa ${cfg[code_path]}/server/ebin -config sys.config -name ${cfg[nodename]} -s main start -extra ${cfg[type]} &
        # ${WERL} -kernel inet_dist_listen_min ${ERL_PORT_MIN} -kernel inet_dist_listen_max ${ERL_PORT_MAX} +P 204800 +K true -smp enable -hidden +pc unicode +sbwt none -pa ${cfg[code_path]}/server/ebin -name ${cfg[nodename]} -s main start -extra ${cfg[type]} &
    else
        if is_screen_exists ${cfg[nodename]}; then
            if has_tty; then
                read -p "[93m=> 节点[92m${cfg[nodename]}[93m在之前已经启动，现在是否直接进入控制台?[0;0m [y/n]" choice
                if [[ $choice =~ y|Y|yes ]]; then
                    screen -r ${cfg[nodename]}
                fi
                exit 0
            else
                INFO "节点[92m${cfg[nodename]}[0;0m在之前已经启动"
            fi
        else
            start_file=${cfg[root]}/start.sh
            CMD="${ERL} -kernel inet_dist_listen_min ${ERL_PORT_MIN} -kernel inet_dist_listen_max ${ERL_PORT_MAX} +P 204800 +K true -smp enable -hidden  +sbwt none -pa ${ROOT}/server/ebin -config sys.config -name ${cfg[nodename]} -s main start -extra ${cfg[type]}"
            # CMD="${ERL} -kernel inet_dist_listen_min ${ERL_PORT_MIN} -kernel inet_dist_listen_max ${ERL_PORT_MAX} +P 204800 +K true -smp enable -hidden  +pc unicode +sbwt none -pa ${ROOT}/server/ebin -name ${cfg[nodename]} -s main start -extra ${cfg[type]}"
            cat > ${start_file} <<EOF
#!/bin/bash
cd ${cfg[root]}
ulimit -SHn 102400
${CMD}
EOF
            chmod +x ${start_file}
            screen -dmSL ${cfg[nodename]} -s ${start_file}
            if has_tty; then
                echo "----------------------------------------------------------------------------------------------"
                INFO "节点\e[92m${cfg[nodename]}\e[0;0m正在启动中，启动完成后会直接进入控制台，操作时请注意(\e[92mctrl+a d\e[0;0m退出)。"
                echo "----------------------------------------------------------------------------------------------"
                fun_srv_shell $@
            else
                INFO "节点\e[92m${cfg[nodename]}\e[0;0m正在启动中，如果想要了解启动结果，请查看服务器日志"
            fi
        fi
    fi
}

DOC[srv_stop]="关闭游戏服务器，参数:[平台标识] [区号]"
fun_srv_stop(){
    if $(in_cygwin); then
        ERR "cygwin下不支持此命令"
        exit
    fi

    declare -A cfg
    check_node_cfg $@
    if [ ! -d ${cfg[root]}/dets ]; then
        ERR "节点\e[92m${cfg[nodename]}\e[0;0m似乎没有安装，无法执行关闭操作"
        exit 1
    fi
    if ! is_screen_exists ${cfg[nodename]}; then
        ERR "节点\e[92m${cfg[nodename]}\e[0;0m似乎没有启动"
        exit 1
    fi
    # 检查锁
    lock=/tmp/stop_${cfg['platform']}_${cfg['zone_id']}.lock
    if [ -f $lock ]; then
        ERR "节点\e[92m${cfg['nodename']}\e[0,0m上有另一个关闭操作正在执行中，需等待该操作完成:$lock"
        exit 1
    fi
    touch $lock # 加锁
    cd ${cfg[root]}
    INFO "正在关闭节点\e[92m${cfg[nodename]}\e[0;0m..."
    ${ERL} -noshell -kernel inet_dist_listen_min ${ERL_PORT_MIN} -kernel inet_dist_listen_max ${ERL_PORT_MAX} -hidden -pa ${cfg[code_path]}/server/ebin -name stop_${cfg[nodename]} -setcookie ${cfg[cookie]} -eval "io:setopts([{encoding,unicode}]), main:stop_from_shell()" -s c q -extra ${cfg[nodename]}
    rm -f $lock # 解锁
    if [ $(ps aux|grep "${GAME_CODE}_${cfg['platform']}_${cfg['zone_id']}@" | grep -v grep | wc -l) -gt 0 ]; then
        ps aux|grep "${GAME_CODE}_${cfg['platform']}_${cfg['zone_id']}@" | grep -v grep| awk '{print $2}' | xargs kill
    fi
}

DOC[srv_restart]="重启游戏服务器，参数:[平台标识] [区号]"
fun_srv_restart(){
    fun_srv_stop $@
    fun_srv_start $@
}

DOC[srv_exec]="在指定节点中执行erlang函数，参数:[平台标识] [区号] [Mod] [Fun] [Args(可选)]"
fun_srv_exec(){
    if $(in_cygwin); then
        ERR "cygwin下不支持此命令"
        exit
    fi

    mod=$3
    fun=$4
    args=$5
    if [[ "" == "$args" ]]; then
        args="[]"
    fi
    if [[ "" == "$mod" || "" == "$fun" ]]; then
        ERR "参数不完整，无法执行命令"
        exit 1
    fi

    declare -A cfg
    check_node_cfg $@
    if [ ! -d ${cfg[root]}/dets ]; then
        ERR "节点\e[92m${cfg[nodename]}\e[0;0m似乎没有安装，无法执行命令"
        exit 1
    fi
    if ! is_screen_exists ${cfg[nodename]}; then
        ERR "节点\e[92m${cfg[nodename]}\e[0;0m似乎没有启动"
        exit 1
    fi
    cd ${cfg[root]}
    # 检查锁
    lock=/tmp/exec_${cfg['platform']}_${cfg['zone_id']}.lock
    if [ -f $lock ]; then
        ERR "节点\e[92m${cfg['nodename']}\e[0,0m上有另一个任务\e[92m$(cat $lock)\e[0,0m正在执行中，需等待该任务完成:$lock"
        exit 1
    fi
    echo "${mod}:${fun}(${args})" > $lock # 加锁
    INFO "正在节点\e[92m${cfg[nodename]}\e[0;0m上执行:\e[92m$mod:$fun($args)\e[0;0m..."
    ${ERL} -noshell -kernel inet_dist_listen_min ${ERL_PORT_MIN} -kernel inet_dist_listen_max ${ERL_PORT_MAX} -hidden -pa ${cfg[code_path]}/server/ebin -name exec_${cfg[nodename]} -setcookie ${cfg[cookie]} -eval "io:setopts([{encoding,unicode}]),io:format(\"~w~n\", [rpc:call('${cfg['nodename']}', ${mod}, ${fun}, ${args})])." -s c q
    echo ""
    rm -f $lock # 解锁
}

DOC[srv_update]="热更新服务器，参数:[平台标识] [区号]"
fun_srv_update(){
    declare -A cfg
    check_node_cfg $@
    
    if $(in_cygwin); then
	"/cygdrive/c/Program Files/erl8.2/lib/erl_interface-3.9.2/bin/erl_call" -s -e -n ${cfg[nodename]} -c ${cfg[cookie]} << eof 
	dev:u().  
eof

	[[ $? == 0 ]] && INFO "节点\e[92m${cfg[nodename]}\e[0;0m热更成功" || "节点\e[92m${cfg[nodename]}\e[0;0m热更失败" 
    
        exit
    fi

    if [ ! -d ${cfg[root]}/dets ]; then
        ERR "节点\e[92m${cfg[nodename]}\e[0;0m似乎没有安装，无法执行命令"
        exit 1
    fi
    if ! is_screen_exists ${cfg[nodename]}; then
        ERR "节点\e[92m${cfg[nodename]}\e[0;0m似乎没有启动"
        exit 1
    fi
    cd ${cfg[root]}
    # 检查锁
    lock=/tmp/update_${cfg['platform']}_${cfg['zone_id']}.lock
    if [ -f $lock ]; then
        ERR "节点\e[92m${cfg['nodename']}\e[0,0m上有另一个任务\e[92m$(cat $lock)\e[0,0m正在执行中，需等待该任务完成:$lock"
        exit 1
    fi
    echo "dev:u()" > $lock # 加锁
    INFO "正在节点\e[92m${cfg[nodename]}\e[0;0m上执行热更:\e[92mdev:u()\e[0;0m..."
    ${ERL} -noshell -kernel inet_dist_listen_min ${ERL_PORT_MIN} -kernel inet_dist_listen_max ${ERL_PORT_MAX} -hidden -pa ${cfg[code_path]}/server/ebin -name exec_${cfg[nodename]} -setcookie ${cfg[cookie]} -eval "io:setopts([{encoding,unicode}]),io:format(\"~w~n\", [rpc:call('${cfg['nodename']}', dev, u, [])])." -s c q
    echo ""
    rm -f $lock # 解锁
}

DOC[srv_clean]="清理编译结果"
fun_srv_clean(){
    INFO "正在清除ebin下所有的beam文件..."
    rm -f ${ROOT}/server/ebin/*.beam
    INFO "清除完毕"
}

DOC[srv_shell]="进入游戏服务器控制台(screen)，参数:[平台标识] [区号]"
fun_srv_shell(){
    if $(in_cygwin); then
        ERR "cygwin下不支持此命令"
        exit
    fi
    declare -A cfg
    check_node_cfg $@
    if ! is_screen_exists ${cfg[nodename]}; then
        ERR "节点\e[92m${cfg[nodename]}\e[0;0m似乎没有启动，无法进入控制台"
        exit 1
    fi
    screen -r ${cfg[nodename]}
}

DOC[srv_remsh]="使用remsh方式进入控制台，参数:[平台标识] [区号] [自定义名称]"
fun_srv_remsh(){
    declare -A cfg
    check_node_cfg $@
    remshNode=$(cat /dev/urandom | tr -cd 'a-z' | head -c 6)
    INFO "以remsh方式接入节点\e[92m${cfg[nodename]}\e[0;0m..."
    if $(in_cygwin); then
        ${WERL} -kernel inet_dist_listen_min ${ERL_PORT_MIN} -kernel inet_dist_listen_max ${ERL_PORT_MAX} -pa ${cfg[code_path]}/server/ebin -name remsh_${remshNode}_${cfg[nodename]} -setcookie ${cfg[cookie]} -remsh ${cfg[nodename]} &
        exit
    fi
    if ! is_screen_exists ${cfg[nodename]}; then
        ERR "节点\e[92m${cfg[nodename]}\e[0;0m似乎没有启动，无法接入控制台"
        exit 1
    fi
    ${ERL} -kernel inet_dist_listen_min ${ERL_PORT_MIN} -kernel inet_dist_listen_max ${ERL_PORT_MAX} -pa ${cfg[code_path]}/server/ebin -name remsh_${remshNode}_${cfg[nodename]} -setcookie ${cfg[cookie]} -remsh ${cfg[nodename]}
    # echo ${ERL} -kernel inet_dist_listen_min ${ERL_PORT_MIN} -kernel inet_dist_listen_max ${ERL_PORT_MAX} -pa ${cfg[code_path]}/server/ebin -name remsh_${cfg[nodename]} -setcookie k35bz75vc881x -remsh mg_dev_2@mg.dev
    # ${ERL} -kernel inet_dist_listen_min ${ERL_PORT_MIN} -kernel inet_dist_listen_max ${ERL_PORT_MAX} -pa ${cfg[code_path]}/server/ebin -name remsh_${cfg[nodename]} -setcookie k35bz75vc881x -remsh mg_dev_2@mg.dev
}

DOC[srv_install]="安装游戏节点，参数:[平台标识] [区号(0区表示中央服节点)]"
fun_srv_install(){
    declare -A cfg
    check_node_cfg $@ # 检查并补全节点配置信息
    if [ -e ${cfg[root]} ]; then
        ERR "目标路径\e[92m${cfg[root]}\e[0;0m非空，无法执行安装过程"
        exit 1
    fi

    INFO "\e[93m准备安装游戏节点，请确认以下信息:\e[0;0m"
    INFO "  节点名称: \e[92m${cfg[nodename]}\e[0;0m"
    INFO "  安装路径: \e[92m${cfg[root]}\e[0;0m"
    INFO "  节点类型: \e[92m${cfg[type]}\e[0;0m"
    INFO "      域名: \e[92m${cfg[host]}\e[0;0m"
    INFO "      端口: \e[92m${cfg[port]}\e[0;0m"
    INFO "数据库地址: \e[92m${cfg[db_host]}\e[0;0m"
    INFO "数据库名称: \e[92m${cfg[db_name]}\e[0;0m"
    read -p "[93m=> 是否继续？[0;0m[y/n]" choice
    if [[ $choice != y ]]; then
        exit 0
    fi

    mkdir -p ${cfg[root]} && cd ${cfg[root]}

    INFO "正在处理配置文件..."
    # 处理模板
    tpls=( 'env_zone.cfg' 'vhost.conf' 'env.php' 'zone.sql' 'main.app' 'emysql.app' 'lager.app' 'sys.config' 'goldrush.app' 'ranch.app' )
    for v in ${tpls[*]};do
        file="${ROOT}/server/tpl/${v}"
        if [ ! -e $file ]; then
            ERR "找不到模板文件: ${file}"
            exit 1
        fi
        # 替换模板变量
        lines=$(<"${file}")
        for k in ${!cfg[@]}; do
            lines=${lines//\{\{$k\}\}/${cfg[$k]}}
        done
        lines=${lines//\v1\/server/server}
        lines=${lines//\{lager_console_backend,\[info/{lager_file_backend,\[\{file,\"lager_log\/debug.log\"\},\{level,debug\}\]\},\{lager_console_backend,\[debug}
        lines=${lines//\v1\/web/web}
        lines=${lines//colored,false/colored,true}
        # 替换空变量并生成文件
        echo "${lines}" | sed -e "s/{{.*}}//" > ${v}
    done

    INFO "正在创建数据库..."
    mysql -h${cfg['db_host']} -P${cfg['db_port']} -u${cfg['db_user']} -p${cfg['db_pass']} -e"create database ${cfg['db_name']}"
    if [ $? -ne 0 ]; then
        ERR "创建数据库时发生异常"
        exit 1
    fi

    INFO "正在导入数据库结构..."
    mysql -h${cfg['db_host']} -P${cfg['db_port']} -u${cfg['db_user']} -p${cfg['db_pass']} -D${cfg['db_name']} -e"source ${cfg[root]}/zone.sql"
    if [ $? -ne 0 ]; then
        ERR "导入数据库表结构时发生异常"
        exit 1
    fi

    INFO "正在建立目录和文件..."
    mkdir -p dets var/sess log/pack log_file face/${cfg['platform']}_${cfg['zone_id']} replay/${cfg['platform']}_${cfg['zone_id']} replay_share/${cfg['platform']}_${cfg['zone_id']}
    mv env_zone.cfg env.cfg
    ln -s ${ROOT}/web/www .
    ln -s ${ROOT}/server/srv.sh .
    rm -f zone.sql
    chmod -R 777 ${cfg['root']}/var
    INFO "节点安装完成"
}

DOC[srv_uninstall]="删除游戏节点，参数:[平台标识] [区号] [角色数量]"
fun_srv_uninstall(){
    n=$3
    declare -A cfg
    check_node_cfg $@

    if [ ! -d ${cfg[root]}/dets ]; then
        ERR "目标路径\e[92m${cfg[root]}\e[0;0m不存在，或者不是游戏节点的安装目录，无法执行删除操作"
        exit 1
    fi

    if is_screen_exists ${cfg[nodename]}; then
        fun_srv_stop ${cfg[platform]} ${cfg[zone_id]}
    fi

    role_num=$(mysql -h${cfg['db_host']} -P${cfg['db_port']} -u${cfg['db_user']} -p${cfg['db_pass']} -D${cfg['db_name']} -ss -e"select count(*) from role")
    if [ $? -ne 0 ]; then
        ERR "访问数据库失败，无法获取角色数量"
        exit 1
    fi
    if [ "$role_num" != "" ] && [ "${role_num//[[:space:]]/}" = "${n//[[:space:]]/}" ]; then
        INFO "正在删除数据库..."
        mysql -h${cfg['db_host']} -P${cfg['db_port']} -u${cfg['db_user']} -p${cfg['db_pass']} -D${cfg['db_name']} -e"drop database ${cfg['db_name']}"
        if [ $? -ne 0 ]; then
            ERR "访问数据库失败，无法删除数据库，如需继续请手动操作"
            exit 1
        fi
        INFO "正在删除安装目录..."
        rm -rf ${cfg[root]}
        INFO "节点\e[92m${cfg[nodename]}\e[0;0m已经删除"
    else
        ERR "参数中必须带有当前节点的角色数量，角色数量为[\e[92m${role_num}\e[0;0m]"
    fi
}

DOC[srv_truncate]="清档, 参数:[平台标识] [区号] [角色数量]"
fun_srv_truncate(){
    n=$3
    declare -A cfg
    check_node_cfg $@

    role_num=$(mysql -h${cfg['db_host']} -P${cfg['db_port']} -u${cfg['db_user']} -p${cfg['db_pass']} -D${cfg['db_name']} -ss -e"select count(*) from role")
    if [ $? -ne 0 ]; then
        ERR "访问数据库失败，无法获取角色数量"
        exit 1
    fi
    if [ "$role_num" != "" ] && [ "${role_num//[[:space:]]/}" = "${n//[[:space:]]/}" ]; then
        if is_screen_exists ${cfg[nodename]}; then
            fun_srv_stop ${cfg[platform]} ${cfg[zone_id]}
        fi
        INFO "正在清档中..."
        # 排除列表，注意在排除列表外的所有表将会被清空
        exclude=( sys_notice sys_notice_board )
        tabs=( $(mysql -h${cfg['db_host']} -P${cfg['db_port']} -u${cfg['db_user']} -p${cfg['db_pass']} -D${cfg['db_name']} -ss -e"show tables") )
        for v in ${tabs[@]}; do
            flag=0
            for v1 in ${exclude[@]}; do
                if [ "$v" = "$v1" ]; then
                    flag=1
                fi
            done
            if [ $flag = 0 ]; then
                sql="${sql} truncate table ${v};"
            fi
        done
        mysql -h${cfg['db_host']} -P${cfg['db_port']} -u${cfg['db_user']} -p${cfg['db_pass']} -D${cfg['db_name']} -ss -e"${sql}"
        if [ $? -ne 0 ]; then
            ERR "访问数据库失败，无法删除数据库，如需继续请手动操作"
            exit 1
        fi
        rm -f ${cfg[root]}/dets/*.dets
        rm -rf ${cfg[root]}/log
        rm -rf ${cfg[root]}/log_file
        rm -rf ${cfg[root]}/lager_log/*
        rm -rf ${cfg[root]}/combat_replay/*
        mkdir -p ${cfg[root]}/log/pack
        mkdir -p ${cfg[root]}/log_file
        rm -rf ${cfg[root]}/screenlog.0
        INFO "清档完成..."
    else
        ERR "参数中必须带有当前节点的角色数量，角色数量为[\e[92m${role_num}\e[0;0m]"
    fi
}

DOC[srv_pack_all]="打包数据, 参数:[版本号][all/srv/web]"
fun_srv_pack_all(){
    ver=$1
    ver_s=${ver/%_*}
    if [ "" = "${ver_s}" ]; then
        echo ">> [错误]输入的版本号无效"
        exit 1
    fi
    cd ${ROOT}/server
    # 编译并打包
    PUB_DIR=${ROOT}/release/${ver_s}
    mkdir -p ${PUB_DIR}
    cd ${ROOT} # 需要在上一层操作
    if [ "$2" != "web" ]; then
        rsync -avHR --delete --progress server/ebin $PUB_DIR/
        rsync -avHR --delete --progress server/tpl $PUB_DIR/
        rsync -avHR --delete --progress server/merge_tools $PUB_DIR/
        echo ">> server打包完成，目标文件存放在:${PUB_DIR}/server"
        # rm -f ${PUB_DIR}/srv.tar.gz && tar zcf ${PUB_DIR}/srv.tar.gz server/ebin/*.beam server/tpl/* # server/merge_tools/*
        # echo ">> server打包完成，目标文件存放在:${PUB_DIR}/srv.tar.gz"
    fi
    if [ "$2" != "srv" ]; then
        rsync -avHR --delete --progress --exclude .git web $PUB_DIR/
        echo ">> web打包完成，目标文件存放在:${PUB_DIR}/web"
        # rm -f ${PUB_DIR}/web.tar.gz && tar zcf ${PUB_DIR}/web.tar.gz web/*
        # echo ">> web打包完成，目标文件存放在:${PUB_DIR}/web.tar.gz"
    fi
}

DOC[srv_code_update]="上传版本代码到相应物理机, 参数:[物理机编号][版本号]"
fun_srv_code_update(){
    machine=$1
    ver=$2
    ver_s=${ver/%_*}
    eval "$(mysql_get_row "select * from machines where product_id=$PRODUCT_ID and name = '${machine}'")"
    if [ "${row['code_path']}" = "" ] || [ "${row['ip']}" = "" ]; then
        echo ">> [错误]无法获取物理机[$machine]的信息"
        return
    fi

    if [ "$3" == "web" ]; then
        files=( "web" )
        # files=( "web.tar.gz" )
    elif [ "$3" == "srv" ]; then
        files=( "server" )
        # files=( "srv.tar.gz" )
    else
        files=( "server" "web" )
        # files=( "srv.tar.gz" "web.tar.gz" )
    fi
    path=${ROOT}/release/${ver_s}
    f=""
    for v in ${files[@]}; do
        if [ ! -e ${path}/${v} ]; then
            echo ">> [错误]没有找到文件${path}/${v}，请检查是否已经准备好代码库"
            exit 1
        fi
        f="${f} ${path}/${v}"
    done
    echo ">> 正在更新物理机${machine}上的代码库到版本[$ver]:"
    if [ "$3" == "local" ]; then
        mkdir -p ${row['code_path']}/${ver_s}
        for v in ${files[@]}; do
            yes | cp -f ${path}/${v} ${row['code_path']}/${ver_s}/
            cd ${row['code_path']}/${ver_s}/ && tar zxf ${v} && rm -f ${v}
        done
        # test -d ${row['code_path']}/${ver_s}/web/www/g || ln -s ${row['code_path']}/${ver_s}/web/g.app/www ${row['code_path']}/${ver_s}/web/www/g
    else
        ssh -p${row['ssh_port']} ${row['ssh_user']}@${row['ip']} "mkdir -p ${row['code_path']}/${ver_s}"
        for v in ${files[@]}; do
            rsync -avH -e "ssh -p ${row['ssh_port']}" --progress ${path}/${v}/ ${row['ssh_user']}@${row['ip']}:${row['code_path']}/${ver_s}/${v}/
            # scp -P${row['ssh_port']} ${path}/${v} ${row['ssh_user']}@${row['ip']}:${row['code_path']}/${ver_s}/
        done
        # for v in ${files[@]}; do
        #     ssh -p${row['ssh_port']} ${row['ssh_user']}@${row['ip']} "cd ${row['code_path']}/${ver_s}/ && tar zxf ${v} && rm -f ${v}"
        # done
        # ssh -p${row['ssh_port']} ${row['ssh_user']}@${row['ip']} "test -d ${row['code_path']}/${ver_s}/web/www/g || ln -s ${row['code_path']}/${ver_s}/web/g.app/www ${row['code_path']}/${ver_s}/web/www/g"
    fi
    echo ">> 物理机${machine}上的代码库已经更新，请确认是否有错误输出"
}

DOC[srv_gen_ctl]="生成节点控制脚本, 参数:[平台标识][区号]"
fun_srv_gen_ctl(){
    platform=$1
    zone_id=$2
    update=$3
    if [ "" = "${platform}" ] || [ "" = "${zone_id}" ]; then
        echo ">> [错误]没有输入有效的平台标识和区号"
        exit 1
    fi
    lines=( $(mysql -h$OMS_DB_HOST -P$OMS_DB_PORT -u$OMS_DB_USER -p$OMS_DB_PASS -ss -D${OMS_DB_NAME} -e"set names utf8; select a.name product_name, b.name platform, c.*, d.*, e.name machine, e.code_path, e.ip, e.ip_internal, e.ssh_port, e.ssh_user,f.value center_node from products a, platforms b, zones c, nodes d, machines e, zones_events f where a.product_id = $PRODUCT_ID and b.product_id = $PRODUCT_ID and c.product_id = $PRODUCT_ID and c.product_id = $PRODUCT_ID and d.product_id = $PRODUCT_ID and e.product_id = $PRODUCT_ID  and a.product_id = b.product_id  and b.platform_id = c.platform_id  and b.platform_id = d.platform_id and c.zone_id = d.zone_id and d.machine_id = e.machine_id and b.name='${platform}' and c.zone_id=${zone_id} and d.zone_increment_id=f.zone_increment_id and f.key='center_node'\G") )
    lines=( ${lines[*]//\**/} ) # 删除分隔符
    lines=( ${lines[*]//:\ /\'\]=\"} ) # 替换等号
    lines=( ${lines[*]/#/tmp\[\'} ) # 替换变量名
    lines=( ${lines[*]/%/\"} ) # 增加尾部双引号
    declare -A tmp info
    eval "$(echo "${lines[*]}")" # 转成关联数组
    # 去除多余空格
    for k in ${!tmp[@]}; do
        info[${k/#* /}]=${tmp[$k]}
    done
    # if [ "${platform}_${zone_id}" = "symlf_1" ] && [ -f $ROOT/server/tpl/game.py ]; then
    if [ -f $ROOT/server/tpl/game.py ]; then
        python $ROOT/server/tpl/game.py $platform $zone_id
    else

        # 生成控制脚本
        file="${ROOT}/server/tpl/ctl.sh"
        text=$(<"${file}")
        for k in ${!info[@]}; do
            # text=${text//\{\{$k\}\}/${info[$k]}} # 貌似效率很低，要等好久
            v=${info[$k]//&/\\&}
            v=${v//\//\\/}
            text="$(echo "${text}" | sed -e "s/{{$k}}/${v}/g")"
        done
        echo "${text}" > /tmp/${GAME_CODE}_${platform}_${zone_id}_ctl.sh
    fi

    # 复制到目标服务器
    echo ">> 正在将ctl.sh传输到目标服务器..."
    ssh -p${info['ssh_port']} ${info['ssh_user']}@${info['ip']} "mkdir -p ${info['root']}"
    scp -P${info['ssh_port']} /tmp/${GAME_CODE}_${platform}_${zone_id}_ctl.sh ${info['ssh_user']}@${info['ip']}:${info['root']}/ctl.sh
    ssh -p${info['ssh_port']} ${info['ssh_user']}@${info['ip']} "chmod +x ${info['root']}/ctl.sh"
    if [ "$update" = "update_cfg" ]; then
        ssh -p${info['ssh_port']} ${info['ssh_user']}@${info['ip']} "${info['root']}/ctl.sh update_cfg"
    fi
    rm -f /tmp/${GAME_CODE}_${platform}_${zone_id}_ctl.sh
    echo ">> [${platform}_${zone_id}]节点控制脚本已经生成"
}

DOC[srv_xref_init]="生成检查代码配置, 参数:[平台] [区号]"
fun_srv_xref_init(){
    INFO "正在进行生成代码检查配置..."
    declare -A cfg
    check_node_cfg $@
    cd ${cfg[root]} || exit 1
    pwd
    cat > xref.config <<EOF
[
    {xref, [
        {config, #{dirs => ["${cfg[code_path]}/server/ebin"]}}
        ,{checks, [ undefined_functions
                , undefined_function_calls
                , locals_not_used
                %%, exports_not_used
                , deprecated_function_calls
                , deprecated_functions
              ]}
        ,{xref_default, {verbose}}
        ]
    }
].
EOF
    INFO "生成代码检测配置文件完成"
}

DOC[srv_table]="从A服同步指定表到B服 Pa Za Pb Zb Table"
fun_srv_table(){
    declare -A row1
    eval "$(fun_main_srv_info $1 $2)"
    for k in ${!row[@]}; do
        row1[${k}]=${row[$k]}
    done
    eval "$(fun_main_srv_info $3 $4)"
    table=$5
    if [ "$table" = '' ]; then
        echo "表名不能为空"
        exit 1
    fi
    echo "开始从[${1}_${2}]同步数据表[$table]到[$3_$4].."
    if [ "${row1['ip']}" = "${row['ip']}" ]; then
        ssh -p${row1['ssh_port']} ${row1['ssh_user']}@${row1['ip']} "mysqldump -uroot -p\$(cat /data/save/mysql_root) -t ${row1['db_name']} ${table} > /data/temp_${table}.sql"
        ssh -p${row['ssh_port']} ${row['ssh_user']}@${row['ip']} "mysql -uroot -p\$(cat /data/save/mysql_root) -D${row['db_name']} -e 'source /data/temp_${table}.sql'"
    else
        ssh -p${row1['ssh_port']} ${row1['ssh_user']}@${row1['ip']} "mysqldump -uroot -p\$(cat /data/save/mysql_root) -t ${row1['db_name']} ${table} > /data/temp_${table}.sql"
        scp -P${row1['ssh_port']} ${row1['ssh_user']}@${row1['ip']}:/data/temp_${table}.sql ./
        scp -P${row['ssh_port']} ./temp_${table}.sql ${row['ssh_user']}@${row['ip']}:/data/
        ssh -p${row['ssh_port']} ${row['ssh_user']}@${row['ip']} "mysql -uroot -p\$(cat /data/save/mysql_root) -D${row['db_name']} -e 'source /data/temp_${table}.sql'"
    fi
    echo "同步数据表[$table]完成.."
}

DOC[srv_copy]="把指定服数据库和dets搬到B物理机 P Z M"
fun_srv_copy(){
    declare -A row1
    eval "$(fun_main_srv_info $1 $2)"
    for k in ${!row[@]}; do
        row1[${k}]=${row[$k]}
    done
    echo "开始把服[${1}_${2}]数据表和dets同步到物理机[$3].."
    zipfile=temp_$1_$2.tar.gz
    ssh -p${row1['ssh_port']} ${row1['ssh_user']}@${row1['ip']} "cd ${row1['root']} && mysqldump -uroot -p\$(cat /data/save/mysql_root) --single-transaction ${row1['db_name']} > ${row1['db_name']}.sql && tar zcf $zipfile ${row1['db_name']}.sql dets"
    scp -P${row1['ssh_port']} ${row1['ssh_user']}@${row1['ip']}:${row1['root']}/$zipfile ./
    if [ "$3" != "" ]; then
        eval "$(mysql_get_row "select * from machines where product_id=$PRODUCT_ID and name = '${3}'")"
        scp -P${row['ssh_port']} ./$zipfile ${row['ssh_user']}@${row['ip']}:/data/
    fi
    echo "同步完成.."
}

DOC[srv_gen_mod]="模块生成 erl|gf|gs|rpc|proto|ver Dir Mod Desc"
fun_srv_gen_mod(){
    type=$(check_empty "请输入类型(erl|gf|gs|rpc|proto|ver): " $1)
    dir=$(check_empty "请输入模块目录: " $2)
    mod=$(check_empty "请输入模块名称: " $3)
    desc=$(check_empty "请输入模块简述: " $4)
    tplfile=$ROOT/server/template/$type.erl
    if [ ! -f "$tplfile" ]; then
        echo "($type)类型不存在"
        exit 1
    fi
    lines=$(<"${tplfile}")
    lines=${lines//\{\{mod\}\}/${mod}}
    lines=${lines//\{\{desc\}\}/${desc}}
    lines=${lines//\{\{author\}\}/${AUTHOR}}
    if [ "$type" == "proto" ]; then
        if [ -f "$ROOT/tools/gen_proto/cfg/proto_$mod.erl" ]; then
            echo "相应模块已存在"
            exit 1
        fi
        echo "${lines}" > $ROOT/tools/gen_proto/cfg/proto_$mod.erl
        echo "生成文件 $ROOT/tools/gen_proto/cfg/proto_$mod.erl"
    else
        if [ ! -d "$ROOT/server/src/mod/$dir" ]; then
            mkdir $ROOT/server/src/mod/$dir
        fi
        if [ -f "$ROOT/server/src/mod/$dir/$mod.erl" ]; then
            echo "相应模块已存在"
            exit 1
        fi
        echo "${lines}" > $ROOT/server/src/mod/$dir/$mod.erl
        echo "生成文件 $ROOT/server/src/mod/$dir/$mod.erl"
    fi
}

DOC[srv_add_user]="增加用户信息 UserName"
fun_srv_add_user(){
    user=$1
    # pass=$(openssl rand -base64 512 | tr -cd 'a-zA-Z' |head -c 50)
    pass=$(cat ~/.ssh/id_rsa.pub|sed "s/ssh-rsa //g"|sed "s/ .*//g")
    echo "[{username,\"$user\"}, {pass, \"$pass\"}]." > $ROOT/server/tpl/userinfo.txt
    cat $ROOT/server/tpl/userinfo.txt
}
