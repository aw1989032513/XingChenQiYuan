#!/usr/bin/env bash
#-------------------------------------------------
# 客户端相关开发工具
# @author yeahoo2000@gmail.com
#-------------------------------------------------
if [ "" == "$ROOT" ]; then
    echo -e "\e[91m>>\e[0;0m 此脚本必须通过tools/dev.sh调用才能正常工作"
    exit 1
fi

DOC[make_subpack]="编译客户源码"
fun_make_subpack(){
    local platform=$1
    local ver=$2
    local version=$2
    local hash=$3
    local lock_name=make_subpack
    if [ ! -d ${ROOT}/resources ]; then
        ERR "找不到目录: ${ROOT}/resources"
        exit 1
    fi
    if [ "" != "$ver" ]; then
        ver="-${ver}"
    fi
    if [ "" != "$hash" ]; then
        hash="-${hash}"
    fi
    # check_unity
    path=${ROOT}/release/client_packages
    case $platform in 
        mac) target=mac; dir=${path}/temp; file=${APP_NAME}.app;;
        ios) target=ios; dir=${path}/temp; file=${APP_NAME}.ipa;;
        android) target=apk; dir=${path}/temp; file=${APP_NAME}.apk;;
        windows) target=x86; dir=${path}/temp; file=${APP_NAME}.exe;;
        *)
            ERR "不支持的编译平台，以下是有效平台:"
            echo "mac       OSX应用程序"
            echo "ios       IOS应用程序"
            echo "android   Android应用程序"
            echo "windows   Windows应用程序"
            exit 1
    esac

    lock_check $lock_name "编译客户端应用程序"
    INFO "正在编译客户端应用程序..."
    rm -rf $dir
    mkdir -p $dir
    mkdir -p $path
    if [ "" != "$hash" ]; then
        find $path -type f ! -name "${APP_NAME}${ver}${hash}*" -exec rm -f {} \;
    fi
    logfile=/dev/stdout
    if $(in_cygwin); then
        logfile=${ROOT}/client/log.text
        INFO "日志保存在 ${logfile} 文件中"
    fi
    # 编译移动端时将资源打包进StreamingAssets目录中
    case $platform in
        android)
            if [ ! -d ${ROOT}/release/android ]; then
                ERR "编译Android客户端前请先编译相关资源"
                lock_release $lock_name
                exit 1
            fi
            INFO "正在链接资源文件到StreamingAssets目录"
            # ln -s ${ROOT}/release/android/ ${ROOT}/client/Assets/StreamingAssets
            cp -R ${ROOT}/release/subpackage_android/* ${ROOT}/client/Assets/StreamingAssets/
            # cp -R ${ROOT}/release/android/* ${ROOT}/client/Assets/StreamingAssets/
            mkdir ${ROOT}/client/Assets/StreamingAssets/kkk_res
            cp ${ROOT}/resources/Assets/kkk_res/kkk_sdk_v3.3_charge.apk ${ROOT}/client/Assets/StreamingAssets/kkk_res/
            cp ${ROOT}/resources/Assets/kkk_res/kkk_agreement.txt ${ROOT}/client/Assets/StreamingAssets/kkk_res/
            ;;
        ios)
            if [ ! -d ${ROOT}/release/ios ]; then
                ERR "编译IOS客户端前请先编译相关资源"
                lock_release $lock_name
                exit 1
            fi

            INFO "正在链接资源文件到StreamingAssets目录"
            # ln -s ${ROOT}/release/ios ${ROOT}/client/Assets/StreamingAssets
            cp -R ${ROOT}/release/subpackage_ios/* ${ROOT}/client/Assets/StreamingAssets/
            ;;
        *)
            if [ ! -d ${ROOT}/release/pc ]; then
                ERR "编译pc客户端前请先编译相关资源"
                lock_release $lock_name
                exit 1
            fi
            INFO "正在链接资源文件到StreamingAssets目录"
            ln -s ${ROOT}/release/pc ${ROOT}/client/Assets/StreamingAssets
            ;;
    esac
    $UNITY -batchmode -projectPath "${ROOT}/client" -executeMethod GameBuilder.Make -CustomArgs:BuildTarget=${target}\;Filename=${dir}/${file} -quit -nographics -logFile ${logfile} 
    # rm -f ${ROOT}/client/Assets/StreamingAssets*
    rm -rf ${ROOT}/client/Assets/StreamingAssets/*
    lock_release $lock_name
    pack=${path}
    mkdir -p ${pack}
    if [ -e ${dir}/${file} ]; then
        # 打包文件
        case $platform in
            android)
                f=${APP_NAME}${ver}${hash}-${platform}-subpack.apk
                mv ${dir}/${file} ${pack}/${f}
                ;;
            ios)
                cd $dir/${file}

                INFO "正在执行xcode编译..."
                xcodebuild clean -project Unity-iPhone.xcodeproj -configuration Release -alltargets
                xcodebuild archive -project Unity-iPhone.xcodeproj -scheme Unity-iPhone -archivePath build/fswy.xcarchive
                if [ ! -e build/fswy.xcarchive ]; then
                    ERR "xcodebuild失败，请检查日志输出"
                    exit 1
                fi
                INFO "正在打包ipa文件..."
                f=${APP_NAME}${ver}${hash}-${platform}.ipa
                xcodebuild -exportArchive -archivePath build/fswy.xcarchive -exportPath ${pack}/${f} -exportFormat ipa -exportProvisioningProfile "iOSTeam Provisioning Profile: *"
                if [ ! -e ${pack}/${f} ]; then
                    ERR "打包ipa失败，请检查日志输出"
                    exit 1
                fi
                ;;
            *) 
                f=${APP_NAME}${ver}${hash}-${platform}.zip
                cd ${dir}
                zip -r ${pack}/${f} *
                ;;
        esac
        INFO "编译完成，目标文件: ${pack}/${f}"
    else
        ERR "unity3d编译失败，请检查日志输出中的错误信息"
        exit 1
    fi
}
