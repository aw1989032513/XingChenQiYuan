-- 该文件由程序生成, 请勿手动修改
local M = {}

-- 接收协议数据格式
M.recv = {
    [1010] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "list", type = "array", fields = {
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"}
        }}
    },
    [1011] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "list", type = "array", fields = {
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"}
        }}
    },
    [1020] = {

    },
    [1080] = {
        {name = "msg", type = "string"}
    },
    [1097] = {
        {name = "version", type = "string"}
    },
    [1098] = {
        {name = "client_time", type = "uint32"},
        {name = "server_time", type = "uint32"}
    },
    [1099] = {
        {name = "client_time", type = "uint32"},
        {name = "server_time", type = "uint32"}
    },
    [10000] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "time_reg", type = "uint32"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "label", type = "uint8"},
        {name = "hp", type = "uint32"},
        {name = "mp", type = "uint32"},
        {name = "lover_id", type = "uint32"},
        {name = "lover_platform", type = "string"},
        {name = "lover_zone_id", type = "uint16"},
        {name = "lover_name", type = "string"},
        {name = "wedding_status", type = "uint8"},
        {name = "lev_break_times", type = "uint8"},
        {name = "last_classes_modify_time", type = "uint32"},
        {name = "classes_modify_times", type = "uint32"},
        {name = "fc", type = "uint32"},
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"},
        {name = "atk_speed", type = "uint16"},
        {name = "phy_dmg", type = "uint32"},
        {name = "magic_dmg", type = "uint32"},
        {name = "phy_def", type = "uint32"},
        {name = "magic_def", type = "uint32"},
        {name = "crit", type = "uint16"},
        {name = "tenacity", type = "uint16"},
        {name = "accuracy", type = "uint16"},
        {name = "evasion", type = "uint16"},
        {name = "dmg_ratio", type = "uint16"},
        {name = "def_ratio", type = "uint16"},
        {name = "enhance_control", type = "uint16"},
        {name = "anti_control", type = "uint16"},
        {name = "heal_val", type = "uint16"},
        {name = "strength", type = "uint16"},
        {name = "constitution", type = "uint16"},
        {name = "magic", type = "uint16"},
        {name = "agility", type = "uint16"},
        {name = "endurance", type = "uint16"},
        {name = "speed", type = "uint32"},
        {name = "point", type = "uint16"},
        {name = "fid", type = "uint32"},
        {name = "family_platform", type = "string"},
        {name = "family_zone_id", type = "uint16"}
    },
    [10001] = {
        {name = "hp", type = "uint32"},
        {name = "mp", type = "uint32"},
        {name = "fc", type = "uint32"},
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"},
        {name = "atk_speed", type = "uint16"},
        {name = "phy_dmg", type = "uint32"},
        {name = "magic_dmg", type = "uint32"},
        {name = "phy_def", type = "uint32"},
        {name = "magic_def", type = "uint32"},
        {name = "crit", type = "uint16"},
        {name = "tenacity", type = "uint16"},
        {name = "accuracy", type = "uint16"},
        {name = "evasion", type = "uint16"},
        {name = "dmg_ratio", type = "uint16"},
        {name = "def_ratio", type = "uint16"},
        {name = "enhance_control", type = "uint16"},
        {name = "anti_control", type = "uint16"},
        {name = "heal_val", type = "uint16"},
        {name = "strength", type = "uint16"},
        {name = "constitution", type = "uint16"},
        {name = "magic", type = "uint16"},
        {name = "agility", type = "uint16"},
        {name = "endurance", type = "uint16"},
        {name = "speed", type = "uint32"}
    },
    [10002] = {
        {name = "coin", type = "uint32"},
        {name = "gold", type = "uint32"},
        {name = "gold_bind", type = "uint32"},
        {name = "debt_coin", type = "uint32"},
        {name = "debt_gold", type = "uint32"},
        {name = "debt_gold_bind", type = "uint32"}
    },
    [10003] = {
        {name = "intelligs", type = "uint32"},
        {name = "guild", type = "uint32"},
        {name = "energy", type = "uint32"},
        {name = "stars_score", type = "uint32"},
        {name = "satiety", type = "uint32"},
        {name = "character", type = "uint32"},
        {name = "alchemy", type = "uint32"},
        {name = "love", type = "uint32"},
        {name = "teacher_score", type = "uint32"},
        {name = "tournament", type = "uint32"},
        {name = "lottery_luck", type = "uint32"},
        {name = "handbook_point", type = "uint32"},
        {name = "endless_challenge", type = "uint32"},
        {name = "autumn_score", type = "uint32"},
        {name = "star_gold", type = "uint32"},
        {name = "halloween", type = "uint32"},
        {name = "thanksgiving", type = "uint32"},
        {name = "new_year", type = "uint32"},
        {name = "firecracker", type = "uint32"},
        {name = "glue_pudding", type = "uint32"},
        {name = "crystal", type = "uint32"},
        {name = "ticket", type = "uint32"},
        {name = "brother", type = "uint32"},
        {name = "egg", type = "uint32"},
        {name = "exchange", type = "uint32"},
        {name = "turn", type = "uint32"},
        {name = "father", type = "uint32"},
        {name = "lucky_ticket", type = "uint32"},
        {name = "dollar", type = "uint32"},
        {name = "naughty", type = "uint32"},
        {name = "concentric", type = "uint32"},
        {name = "qixiIntegral", type = "uint32"},
        {name = "sunshine", type = "uint32"},
        {name = "cut_price", type = "uint32"},
        {name = "single_dog", type = "uint32"},
        {name = "panda_score", type = "uint32"},
        {name = "joyful_egg", type = "uint32"},
        {name = "godswar", type = "uint32"},
        {name = "skl_unique_exp", type = "uint32"},
        {name = "happy_score", type = "uint32"},
        {name = "slot_machine", type = "uint32"},
        {name = "reserve_gold", type = "uint32"},
        {name = "zillionaire_sc", type = "uint32"},
        {name = "score_exchange", type = "uint32"},
        {name = "new_open_turn", type = "uint32"},
        {name = "long_score", type = "uint32"},
        {name = "camp_pray_sc", type = "uint32"}
    },
    [10004] = {
        {name = "lev", type = "uint16"},
        {name = "exp", type = "uint32"},
        {name = "reserve_exp", type = "uint32"}
    },
    [10005] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10006] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10007] = {
        {name = "ext_point", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "point", type = "uint16"}
        }}, 
        {name = "first_free", type = "uint8"},
        {name = "valid_plan", type = "uint8"},
        {name = "change_plan_times", type = "uint32"},
        {name = "plan_data", type = "array", fields = {
            {name = "index", type = "uint8"},
            {name = "plan_name", type = "string"},
            {name = "strength", type = "uint16"},
            {name = "constitution", type = "uint16"},
            {name = "magic", type = "uint16"},
            {name = "agility", type = "uint16"},
            {name = "endurance", type = "uint16"},
            {name = "pre_str", type = "uint16"},
            {name = "pre_con", type = "uint16"},
            {name = "pre_magic", type = "uint16"},
            {name = "pre_agi", type = "uint16"},
            {name = "pre_end", type = "uint16"}
        }}, 
        {name = "point_data", type = "array", fields = {
            {name = "index", type = "uint8"},
            {name = "point", type = "uint32"}
        }}
    },
    [10008] = {

    },
    [10009] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10010] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10011] = {
        {name = "hp", type = "uint32"},
        {name = "mp", type = "uint32"},
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"}
    },
    [10012] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10013] = {
        {name = "msg", type = "string"}
    },
    [10014] = {
        {name = "num", type = "uint8"},
        {name = "pay_num", type = "uint8"}
    },
    [10015] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "name", type = "string"},
        {name = "num", type = "uint8"},
        {name = "pay_num", type = "uint8"}
    },
    [10016] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "name_used", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "face", type = "uint32"},
        {name = "fc", type = "uint32"},
        {name = "looks", type = "array", fields = {
            {name = "looks_type", type = "uint32"},
            {name = "looks_mode", type = "uint32"},
            {name = "looks_val", type = "uint32"},
            {name = "looks_str", type = "string"}
        }}, 
        {name = "team_status", type = "int8"},
        {name = "status", type = "uint8"},
        {name = "achievement_point", type = "int32"},
        {name = "g_id", type = "uint32"},
        {name = "g_platform", type = "string"},
        {name = "g_zone_id", type = "uint16"},
        {name = "honor_id", type = "uint32"},
        {name = "guild_name", type = "string"},
        {name = "lover_name", type = "string"},
        {name = "teacher_name", type = "string"},
        {name = "tournament_lev", type = "uint8"},
        {name = "fid", type = "uint32"},
        {name = "family_platform", type = "string"},
        {name = "family_zone_id", type = "uint16"},
        {name = "pre_honor_id", type = "uint32"}
    },
    [10017] = {
        {name = "role_name_used", type = "array", fields = {
            {name = "name", type = "string"},
            {name = "time", type = "uint32"}
        }}
    },
    [10018] = {
        {name = "mine", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "score", type = "uint32"}
        }}, 
        {name = "max", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "score", type = "uint32"}
        }}, 
        {name = "sub_mine", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "score", type = "uint32"}
        }}, 
        {name = "sub_max", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "score", type = "uint32"}
        }}, 
        {name = "fc_speed_flag", type = "uint8"}
    },
    [10019] = {
        {name = "cross_type", type = "uint32"}
    },
    [10020] = {
        {name = "type", type = "uint32"}
    },
    [10021] = {
        {name = "list", type = "array", fields = {
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"}
        }}
    },
    [10022] = {

    },
    [10023] = {
        {name = "left_point", type = "uint32"}
    },
    [10024] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10025] = {
        {name = "hp", type = "uint32"},
        {name = "mp", type = "uint32"},
        {name = "fc", type = "uint32"},
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"},
        {name = "atk_speed", type = "uint16"},
        {name = "phy_dmg", type = "uint32"},
        {name = "magic_dmg", type = "uint32"},
        {name = "phy_def", type = "uint32"},
        {name = "magic_def", type = "uint32"},
        {name = "crit", type = "uint16"},
        {name = "tenacity", type = "uint16"},
        {name = "accuracy", type = "uint16"},
        {name = "evasion", type = "uint16"},
        {name = "dmg_ratio", type = "uint16"},
        {name = "def_ratio", type = "uint16"},
        {name = "enhance_control", type = "uint16"},
        {name = "anti_control", type = "uint16"},
        {name = "heal_val", type = "uint16"},
        {name = "strength", type = "uint16"},
        {name = "constitution", type = "uint16"},
        {name = "magic", type = "uint16"},
        {name = "agility", type = "uint16"},
        {name = "endurance", type = "uint16"},
        {name = "speed", type = "uint32"}
    },
    [10026] = {
        {name = "strength", type = "int16"},
        {name = "constitution", type = "int16"},
        {name = "magic", type = "int16"},
        {name = "agility", type = "int16"},
        {name = "endurance", type = "int16"}
    },
    [10027] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "cost", type = "uint32"},
        {name = "cost_gold", type = "uint32"},
        {name = "rate", type = "uint32"}
    },
    [10028] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "classes", type = "uint8"}
    },
    [10029] = {
        {name = "classes", type = "uint8"},
        {name = "last_classes_modify_time", type = "uint32"},
        {name = "classes_modify_times", type = "uint32"}
    },
    [10030] = {
        {name = "is_auth", type = "uint8"},
        {name = "is_adult", type = "uint8"}
    },
    [10031] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10032] = {
        {name = "lev", type = "uint16"}
    },
    [10033] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10034] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10035] = {
        {name = "auth_sfz_cfg", type = "array", fields = {
            {name = "platform", type = "string"},
            {name = "channel_reg", type = "uint32"},
            {name = "can_charge", type = "uint8"},
            {name = "is_nonage", type = "uint8"},
            {name = "charge_limit", type = "uint32"},
            {name = "is_show_phone", type = "uint8"},
            {name = "show_info", type = "string"},
            {name = "is_lev_60", type = "uint8"},
            {name = "is_need_check", type = "uint8"}
        }}
    },
    [10036] = {
        {name = "mod", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [10037] = {
        {name = "msg", type = "string"}
    },
    [10038] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10039] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10040] = {
        {name = "last_classes", type = "uint8"},
        {name = "is_use_chance", type = "uint8"}
    },
    [10041] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10100] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [10101] = {
        {name = "flag", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "x", type = "uint16"},
        {name = "y", type = "uint16"},
        {name = "ride", type = "uint8"},
        {name = "event", type = "uint8"},
        {name = "speed", type = "uint16"}
    },
    [10102] = {
        {name = "base_id", type = "uint32"},
        {name = "flag", type = "uint8"},
        {name = "pos", type = "array", fields = {
            {name = "x", type = "uint16"},
            {name = "y", type = "uint16"}
        }}
    },
    [10103] = {
        {name = "base_id", type = "uint32"},
        {name = "pos", type = "array", fields = {
            {name = "x", type = "uint16"},
            {name = "y", type = "uint16"}
        }}
    },
    [10110] = {
        {name = "base_id", type = "uint32"},
        {name = "res_id", type = "uint32"},
        {name = "x", type = "uint16"},
        {name = "y", type = "uint16"},
        {name = "ride", type = "uint8"},
        {name = "event", type = "uint8"},
        {name = "speed", type = "uint16"}
    },
    [10111] = {
        {name = "res_id", type = "uint32"}
    },
    [10112] = {

    },
    [10113] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "speed", type = "uint16"},
        {name = "dir", type = "uint8"},
        {name = "x", type = "uint16"},
        {name = "y", type = "uint16"},
        {name = "gx", type = "uint16"},
        {name = "gy", type = "uint16"},
        {name = "status", type = "uint8"},
        {name = "action", type = "uint8"},
        {name = "ride", type = "uint8"},
        {name = "event", type = "uint8"},
        {name = "hidden", type = "uint8"},
        {name = "label", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "realm", type = "uint8"},
        {name = "face", type = "uint32"},
        {name = "fc", type = "uint32"},
        {name = "looks", type = "array", fields = {
            {name = "looks_type", type = "uint32"},
            {name = "looks_mode", type = "uint32"},
            {name = "looks_val", type = "uint32"},
            {name = "looks_str", type = "string"}
        }}, 
        {name = "guild", type = "string"},
        {name = "guild_post", type = "string"},
        {name = "guild_signature", type = "string"},
        {name = "guild_id", type = "uint32"},
        {name = "guild_platform", type = "string"},
        {name = "guild_zone", type = "uint16"},
        {name = "team_status", type = "int8"},
        {name = "team_num", type = "uint8"},
        {name = "lover_rid", type = "uint32"},
        {name = "lover_platform", type = "string"},
        {name = "lover_zone_id", type = "uint16"},
        {name = "lover_name", type = "string"},
        {name = "lover_status", type = "uint32"},
        {name = "team_mark", type = "uint16"},
        {name = "foot_mark", type = "uint16"}
    },
    [10114] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [10115] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "dir", type = "uint8"},
        {name = "x", type = "uint16"},
        {name = "y", type = "uint16"},
        {name = "dx", type = "uint16"},
        {name = "dy", type = "uint16"},
        {name = "gx", type = "uint16"},
        {name = "gy", type = "uint16"}
    },
    [10116] = {
        {name = "role_list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "speed", type = "uint16"},
            {name = "dir", type = "uint8"},
            {name = "x", type = "uint16"},
            {name = "y", type = "uint16"},
            {name = "gx", type = "uint16"},
            {name = "gy", type = "uint16"},
            {name = "status", type = "uint8"},
            {name = "action", type = "uint8"},
            {name = "ride", type = "uint8"},
            {name = "event", type = "uint8"},
            {name = "hidden", type = "uint8"},
            {name = "label", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "realm", type = "uint8"},
            {name = "face", type = "uint32"},
            {name = "fc", type = "uint32"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "guild", type = "string"},
            {name = "guild_post", type = "string"},
            {name = "guild_signature", type = "string"},
            {name = "guild_id", type = "uint32"},
            {name = "guild_platform", type = "string"},
            {name = "guild_zone", type = "uint16"},
            {name = "team_status", type = "int8"},
            {name = "team_num", type = "uint8"},
            {name = "lover_rid", type = "uint32"},
            {name = "lover_platform", type = "string"},
            {name = "lover_zone_id", type = "uint16"},
            {name = "lover_name", type = "string"},
            {name = "lover_status", type = "uint32"},
            {name = "team_mark", type = "uint16"},
            {name = "foot_mark", type = "uint16"}
        }}
    },
    [10117] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "classes", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "looks", type = "array", fields = {
            {name = "looks_type", type = "uint32"},
            {name = "looks_mode", type = "uint32"},
            {name = "looks_val", type = "uint32"},
            {name = "looks_str", type = "string"}
        }}, 
        {name = "ride", type = "uint8"},
        {name = "guild", type = "string"},
        {name = "guild_post", type = "string"},
        {name = "guild_signature", type = "string"},
        {name = "guild_id", type = "uint32"},
        {name = "guild_platform", type = "string"},
        {name = "guild_zone", type = "uint16"},
        {name = "team_status", type = "int8"},
        {name = "team_num", type = "uint8"},
        {name = "speed", type = "uint16"},
        {name = "event", type = "uint8"},
        {name = "action", type = "uint8"},
        {name = "lover_rid", type = "uint32"},
        {name = "lover_platform", type = "string"},
        {name = "lover_zone_id", type = "uint16"},
        {name = "lover_name", type = "string"},
        {name = "lover_status", type = "uint32"},
        {name = "team_mark", type = "uint16"},
        {name = "foot_mark", type = "uint16"}
    },
    [10118] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "mode", type = "uint8"},
        {name = "speed", type = "uint16"},
        {name = "dir", type = "uint8"},
        {name = "x", type = "uint16"},
        {name = "y", type = "uint16"},
        {name = "dest", type = "array", fields = {
            {name = "dx", type = "uint16"},
            {name = "dy", type = "uint16"}
        }}, 
        {name = "gx", type = "uint16"},
        {name = "gy", type = "uint16"}
    },
    [10119] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10120] = {
        {name = "unit_list", type = "array", fields = {
            {name = "battle_id", type = "uint32"},
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "type", type = "uint16"},
            {name = "name", type = "string"},
            {name = "status", type = "uint8"},
            {name = "guide_lev", type = "uint8"},
            {name = "speed", type = "uint16"},
            {name = "x", type = "uint16"},
            {name = "y", type = "uint16"},
            {name = "gx", type = "uint16"},
            {name = "gy", type = "uint16"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "prop", type = "array", fields = {
                {name = "prop_key", type = "uint32"},
                {name = "prop_val", type = "string"}
            }}
        }}
    },
    [10122] = {
        {name = "role_list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "speed", type = "uint16"},
            {name = "dir", type = "uint8"},
            {name = "x", type = "uint16"},
            {name = "y", type = "uint16"},
            {name = "gx", type = "uint16"},
            {name = "gy", type = "uint16"},
            {name = "status", type = "uint8"},
            {name = "action", type = "uint8"},
            {name = "ride", type = "uint8"},
            {name = "event", type = "uint8"},
            {name = "hidden", type = "uint8"},
            {name = "label", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "realm", type = "uint8"},
            {name = "face", type = "uint32"},
            {name = "fc", type = "uint32"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "guild", type = "string"},
            {name = "guild_post", type = "string"},
            {name = "guild_signature", type = "string"},
            {name = "guild_id", type = "uint32"},
            {name = "guild_platform", type = "string"},
            {name = "guild_zone", type = "uint16"},
            {name = "team_status", type = "int8"},
            {name = "team_num", type = "uint8"},
            {name = "lover_rid", type = "uint32"},
            {name = "lover_platform", type = "string"},
            {name = "lover_zone_id", type = "uint16"},
            {name = "lover_name", type = "string"},
            {name = "lover_status", type = "uint32"},
            {name = "team_mark", type = "uint16"},
            {name = "foot_mark", type = "uint16"}
        }}
    },
    [10123] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "status", type = "uint8"},
        {name = "team_status", type = "int8"},
        {name = "team_num", type = "uint8"},
        {name = "lover_rid", type = "uint32"},
        {name = "lover_platform", type = "string"},
        {name = "lover_zone_id", type = "uint16"},
        {name = "lover_name", type = "string"},
        {name = "lover_status", type = "uint32"},
        {name = "event", type = "uint8"},
        {name = "team_mark", type = "uint16"},
        {name = "foot_mark", type = "uint16"}
    },
    [10150] = {
        {name = "role_list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"}
        }}, 
        {name = "act_type", type = "uint32"},
        {name = "num", type = "uint8"}
    },
    [10160] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "type", type = "uint16"},
        {name = "name", type = "string"},
        {name = "status", type = "uint8"},
        {name = "guide_lev", type = "uint8"},
        {name = "speed", type = "uint16"},
        {name = "x", type = "uint16"},
        {name = "y", type = "uint16"},
        {name = "gx", type = "uint16"},
        {name = "gy", type = "uint16"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "looks", type = "array", fields = {
            {name = "looks_type", type = "uint32"},
            {name = "looks_mode", type = "uint32"},
            {name = "looks_val", type = "uint32"},
            {name = "looks_str", type = "string"}
        }}, 
        {name = "prop", type = "array", fields = {
            {name = "prop_key", type = "uint32"},
            {name = "prop_val", type = "string"}
        }}
    },
    [10162] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [10164] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "x", type = "uint16"},
        {name = "y", type = "uint16"},
        {name = "dx", type = "uint16"},
        {name = "dy", type = "uint16"}
    },
    [10165] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [10166] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "type", type = "uint16"},
        {name = "name", type = "string"},
        {name = "status", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "looks", type = "array", fields = {
            {name = "looks_type", type = "uint32"},
            {name = "looks_mode", type = "uint32"},
            {name = "looks_val", type = "uint32"},
            {name = "looks_str", type = "string"}
        }}
    },
    [10167] = {

    },
    [10168] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "dir", type = "int32"}
    },
    [10169] = {
        {name = "role_list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "dir", type = "uint8"}
        }}
    },
    [10170] = {
        {name = "flag", type = "uint8"}
    },
    [10171] = {
        {name = "flag", type = "uint8"}
    },
    [10172] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"}
    },
    [10173] = {
        {name = "reason", type = "uint8"}
    },
    [10174] = {
        {name = "flag", type = "uint8"}
    },
    [10175] = {
        {name = "driver_id", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"}
        }}, 
        {name = "passenger_id", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"}
        }}
    },
    [10200] = {
        {name = "quest_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "finish", type = "uint8"},
            {name = "accept_time", type = "uint32"},
            {name = "progress", type = "array", fields = {
                {name = "id", type = "int16"},
                {name = "finish", type = "uint8"},
                {name = "target", type = "uint32"},
                {name = "target_val", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "ext_data", type = "array", fields = {
                    {name = "key", type = "uint8"},
                    {name = "value", type = "uint32"}
                }}
            }}
        }}
    },
    [10201] = {
        {name = "can_accept_quest_list", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [10202] = {
        {name = "flag", type = "int8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10203] = {
        {name = "quest_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "finish", type = "uint8"},
            {name = "accept_time", type = "uint32"},
            {name = "progress", type = "array", fields = {
                {name = "id", type = "int16"},
                {name = "finish", type = "uint8"},
                {name = "target", type = "uint32"},
                {name = "target_val", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "ext_data", type = "array", fields = {
                    {name = "key", type = "uint8"},
                    {name = "value", type = "uint32"}
                }}
            }}
        }}
    },
    [10204] = {
        {name = "can_accept_quest_list", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [10205] = {
        {name = "flag", type = "int8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10206] = {
        {name = "flag", type = "int8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10207] = {
        {name = "can_accept_quest_list", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [10208] = {
        {name = "quest_list", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [10209] = {
        {name = "quest_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "finish", type = "uint8"},
            {name = "accept_time", type = "uint32"},
            {name = "progress", type = "array", fields = {
                {name = "id", type = "int16"},
                {name = "finish", type = "uint8"},
                {name = "target", type = "uint32"},
                {name = "target_val", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "ext_data", type = "array", fields = {
                    {name = "key", type = "uint8"},
                    {name = "value", type = "uint32"}
                }}
            }}
        }}
    },
    [10210] = {
        {name = "quest_rewards", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "rewards", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "num", type = "uint32"}
            }}
        }}
    },
    [10211] = {

    },
    [10212] = {
        {name = "id", type = "uint32"},
        {name = "state", type = "uint32"}
    },
    [10213] = {
        {name = "part", type = "uint8"},
        {name = "chapter", type = "uint8"},
        {name = "section", type = "uint8"}
    },
    [10214] = {
        {name = "quest_stats", type = "array", fields = {
            {name = "sec_type", type = "uint8"},
            {name = "stats", type = "array", fields = {
                {name = "key", type = "uint8"},
                {name = "value", type = "uint32"}
            }}, 
            {name = "desc", type = "array", fields = {
                {name = "prog_id", type = "uint8"},
                {name = "desc_array", type = "array", fields = {
                    {name = "key", type = "uint8"},
                    {name = "string", type = "string"}
                }}
            }}
        }}
    },
    [10215] = {
        {name = "day_finished", type = "array", fields = {
            {name = "sec_type", type = "uint8"},
            {name = "quest_ids", type = "array", fields = {
                {name = "id", type = "uint8"}
            }}
        }}
    },
    [10216] = {

    },
    [10217] = {

    },
    [10218] = {

    },
    [10219] = {
        {name = "achievement_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "finish", type = "uint8"},
            {name = "end_time", type = "uint32"},
            {name = "finish_time", type = "uint32"},
            {name = "progress", type = "array", fields = {
                {name = "id", type = "int16"},
                {name = "finish", type = "uint8"},
                {name = "target", type = "uint32"},
                {name = "target_val", type = "uint32"},
                {name = "value", type = "uint32"}
            }}
        }}
    },
    [10220] = {
        {name = "achievement_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "finish", type = "uint8"},
            {name = "end_time", type = "uint32"},
            {name = "finish_time", type = "uint32"},
            {name = "progress", type = "array", fields = {
                {name = "id", type = "int16"},
                {name = "finish", type = "uint8"},
                {name = "target", type = "uint32"},
                {name = "target_val", type = "uint32"},
                {name = "value", type = "uint32"}
            }}
        }}
    },
    [10221] = {
        {name = "flag", type = "int8"}
    },
    [10222] = {
        {name = "num", type = "uint32"},
        {name = "assets_num", type = "uint32"}
    },
    [10223] = {
        {name = "op_code", type = "uint8"},
        {name = "quest_id", type = "uint32"},
        {name = "talk_type", type = "uint8"}
    },
    [10224] = {
        {name = "phase", type = "uint8"},
        {name = "unit_id", type = "uint32"},
        {name = "last_commited", type = "uint32"},
        {name = "map", type = "uint32"},
        {name = "x", type = "uint32"},
        {name = "y", type = "uint32"}
    },
    [10225] = {
        {name = "flag", type = "int8"},
        {name = "msg", type = "string"}
    },
    [10226] = {
        {name = "shop_type", type = "uint8"},
        {name = "goods_list", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "state", type = "int8"},
            {name = "expire", type = "int32"}
        }}
    },
    [10227] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10228] = {
        {name = "result", type = "uint8"}
    },
    [10229] = {
        {name = "id", type = "uint32"},
        {name = "accept", type = "uint32"},
        {name = "finish", type = "uint32"},
        {name = "total", type = "uint32"}
    },
    [10230] = {
        {name = "achievement_log", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "accept", type = "uint32"},
            {name = "finish", type = "uint32"}
        }}, 
        {name = "total", type = "uint32"}
    },
    [10231] = {
        {name = "result", type = "uint8"},
        {name = "id", type = "uint32"}
    },
    [10232] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [10233] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "num", type = "uint32"},
        {name = "assets_num", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "type", type = "uint32"},
            {name = "finish", type = "uint32"}
        }}
    },
    [10234] = {
        {name = "result", type = "uint8"},
        {name = "id", type = "uint32"}
    },
    [10235] = {
        {name = "goal_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "finish", type = "uint8"},
            {name = "end_time", type = "uint32"},
            {name = "finish_time", type = "uint32"},
            {name = "progress", type = "array", fields = {
                {name = "id", type = "int16"},
                {name = "finish", type = "uint8"},
                {name = "target", type = "uint32"},
                {name = "target_val", type = "uint32"},
                {name = "value", type = "uint32"}
            }}
        }}
    },
    [10236] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10237] = {
        {name = "day_reward", type = "array", fields = {
            {name = "day", type = "uint32"},
            {name = "quest_id", type = "uint32"}
        }}
    },
    [10238] = {
        {name = "discount", type = "array", fields = {
            {name = "discount_id", type = "uint32"},
            {name = "day", type = "uint32"}
        }}
    },
    [10239] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10240] = {
        {name = "day", type = "uint32"}
    },
    [10241] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10242] = {
        {name = "complete_list", type = "array", fields = {
            {name = "count", type = "uint16"}
        }}
    },
    [10243] = {
        {name = "try_fill", type = "uint32"},
        {name = "unit_id", type = "uint32"},
        {name = "last_commited", type = "uint32"},
        {name = "last_accepted", type = "uint32"},
        {name = "round", type = "uint8"}
    },
    [10244] = {
        {name = "flag", type = "int8"},
        {name = "msg", type = "string"}
    },
    [10245] = {
        {name = "flag", type = "int8"},
        {name = "msg", type = "string"}
    },
    [10246] = {
        {name = "flag", type = "int8"},
        {name = "mode", type = "int8"},
        {name = "msg", type = "string"}
    },
    [10247] = {
        {name = "last_commited", type = "uint32"},
        {name = "last_accepted", type = "uint32"},
        {name = "round", type = "uint8"}
    },
    [10248] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [10249] = {
        {name = "flag", type = "int8"},
        {name = "msg", type = "string"}
    },
    [10250] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"}
    },
    [10251] = {
        {name = "stage", type = "uint8"},
        {name = "finish", type = "array", fields = {
            {name = "envelop", type = "uint8"},
            {name = "quest_id", type = "uint32"},
            {name = "status", type = "uint8"}
        }}, 
        {name = "doing", type = "array", fields = {
            {name = "envelop", type = "uint8"},
            {name = "quest_id", type = "uint32"}
        }}, 
        {name = "rf_times", type = "uint32"}
    },
    [10252] = {
        {name = "flag", type = "int8"},
        {name = "msg", type = "string"}
    },
    [10253] = {
        {name = "finish", type = "array", fields = {
            {name = "quest_id", type = "uint32"}
        }}, 
        {name = "doing", type = "array", fields = {
            {name = "quest_id", type = "uint32"}
        }}, 
        {name = "score", type = "uint32"},
        {name = "rewarded", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "times", type = "uint8"}
        }}
    },
    [10254] = {
        {name = "flag", type = "int8"},
        {name = "msg", type = "string"}
    },
    [10255] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10256] = {
        {name = "times", type = "uint8"},
        {name = "order", type = "uint8"},
        {name = "gain_list", type = "array", fields = {
            {name = "item_id1", type = "uint32"},
            {name = "num1", type = "uint32"}
        }}
    },
    [10257] = {
        {name = "flag", type = "uint8"}
    },
    [10258] = {

    },
    [10259] = {
        {name = "flag", type = "uint8"},
        {name = "val", type = "uint32"},
        {name = "target_val", type = "uint32"}
    },
    [10260] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10261] = {
        {name = "finish", type = "array", fields = {
            {name = "quest_id", type = "uint32"}
        }}, 
        {name = "doing", type = "array", fields = {
            {name = "quest_id", type = "uint32"}
        }}
    },
    [10300] = {
        {name = "volume", type = "uint32"},
        {name = "item_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "craft", type = "uint8"},
            {name = "enchant", type = "int8"},
            {name = "quantity", type = "uint32"},
            {name = "pos", type = "uint16"},
            {name = "step", type = "uint8"},
            {name = "expire_type", type = "uint8"},
            {name = "expire_time", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "extra", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "str", type = "string"}
            }}
        }}
    },
    [10301] = {
        {name = "volume", type = "uint32"},
        {name = "item_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "craft", type = "uint8"},
            {name = "enchant", type = "int8"},
            {name = "quantity", type = "uint32"},
            {name = "pos", type = "uint16"},
            {name = "step", type = "uint8"},
            {name = "expire_type", type = "uint8"},
            {name = "expire_time", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "extra", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "str", type = "string"}
            }}
        }}
    },
    [10302] = {
        {name = "item_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "craft", type = "uint8"},
            {name = "enchant", type = "int8"},
            {name = "quantity", type = "uint32"},
            {name = "pos", type = "uint16"},
            {name = "step", type = "uint8"},
            {name = "growth_lev", type = "uint8"},
            {name = "growth_val", type = "uint16"},
            {name = "expire_type", type = "uint8"},
            {name = "expire_time", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "extra", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "str", type = "string"}
            }}
        }}
    },
    [10303] = {
        {name = "item_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "craft", type = "uint8"},
            {name = "enchant", type = "int8"},
            {name = "quantity", type = "uint32"},
            {name = "pos", type = "uint16"},
            {name = "step", type = "uint8"},
            {name = "expire_type", type = "uint8"},
            {name = "expire_time", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "extra", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "str", type = "string"}
            }}
        }}, 
        {name = "looks", type = "array", fields = {
            {name = "looks_type", type = "uint32"},
            {name = "looks_mode", type = "uint32"},
            {name = "looks_val", type = "uint32"},
            {name = "looks_str", type = "string"}
        }}
    },
    [10310] = {
        {name = "item_list", type = "array", fields = {
            {name = "storage", type = "uint8"},
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "craft", type = "uint8"},
            {name = "enchant", type = "int8"},
            {name = "quantity", type = "uint32"},
            {name = "pos", type = "uint16"},
            {name = "step", type = "uint8"},
            {name = "growth_lev", type = "uint8"},
            {name = "growth_val", type = "uint16"},
            {name = "expire_type", type = "uint8"},
            {name = "expire_time", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "extra", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "str", type = "string"}
            }}
        }}
    },
    [10311] = {
        {name = "item_list", type = "array", fields = {
            {name = "storage", type = "uint8"},
            {name = "id", type = "uint32"},
            {name = "pos", type = "uint16"}
        }}
    },
    [10312] = {
        {name = "item_list", type = "array", fields = {
            {name = "storage", type = "uint8"},
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "craft", type = "uint8"},
            {name = "enchant", type = "int8"},
            {name = "quantity", type = "uint32"},
            {name = "pos", type = "uint16"},
            {name = "step", type = "uint8"},
            {name = "growth_lev", type = "uint8"},
            {name = "growth_val", type = "uint16"},
            {name = "expire_type", type = "uint8"},
            {name = "expire_time", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "extra", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "str", type = "string"}
            }}
        }}
    },
    [10315] = {
        {name = "flag", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [10316] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10317] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10318] = {
        {name = "flag", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "pos", type = "uint16"},
        {name = "msg", type = "string"}
    },
    [10319] = {
        {name = "flag", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "pos", type = "uint16"},
        {name = "msg", type = "string"}
    },
    [10320] = {
        {name = "id", type = "uint32"},
        {name = "storage", type = "uint8"},
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10321] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10322] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10323] = {
        {name = "flag", type = "uint8"},
        {name = "new_volume", type = "uint8"},
        {name = "times", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10324] = {
        {name = "flag", type = "uint8"},
        {name = "new_volume", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10329] = {
        {name = "flag", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "pos", type = "uint16"},
        {name = "msg", type = "string"}
    },
    [10330] = {
        {name = "volume", type = "uint32"},
        {name = "item_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "craft", type = "uint8"},
            {name = "enchant", type = "int8"},
            {name = "quantity", type = "uint32"},
            {name = "pos", type = "uint16"},
            {name = "step", type = "uint8"},
            {name = "expire_type", type = "uint8"},
            {name = "expire_time", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "extra", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "str", type = "string"}
            }}
        }}
    },
    [10331] = {
        {name = "num", type = "uint8"}
    },
    [10332] = {
        {name = "new_volume", type = "uint8"}
    },
    [10333] = {
        {name = "craft", type = "uint8"},
        {name = "classes", type = "uint8"}
    },
    [10334] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10335] = {
        {name = "flag", type = "uint8"},
        {name = "open", type = "string"},
        {name = "msg", type = "string"}
    },
    [10336] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10337] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10338] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10339] = {
        {name = "id", type = "uint32"},
        {name = "item_list", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "number", type = "uint32"}
        }}
    },
    [10340] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10400] = {
        {name = "channel", type = "uint8"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "guild_name", type = "string"},
        {name = "special", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "val", type = "uint32"}
        }}
    },
    [10401] = {
        {name = "flag", type = "uint8"},
        {name = "channel", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10402] = {
        {name = "t_id", type = "uint32"},
        {name = "t_platform", type = "string"},
        {name = "t_zone_id", type = "uint16"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "face", type = "uint32"},
        {name = "sex", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "guild", type = "string"},
        {name = "msg", type = "string"},
        {name = "special", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "val", type = "uint32"}
        }}
    },
    [10403] = {
        {name = "channel", type = "uint8"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "special", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "val", type = "uint32"}
        }}, 
        {name = "id", type = "uint32"},
        {name = "time", type = "uint8"},
        {name = "text", type = "string"}
    },
    [10404] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "id", type = "uint32"},
        {name = "voice", type = "byte"}
    },
    [10405] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "id", type = "uint32"}
    },
    [10406] = {
        {name = "flag", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [10407] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "query_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "bind", type = "uint8"},
        {name = "craft", type = "uint8"},
        {name = "enchant", type = "int8"},
        {name = "expire_type", type = "uint8"},
        {name = "expire_time", type = "uint32"},
        {name = "attr", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "flag", type = "uint32"},
            {name = "val", type = "int32"}
        }}, 
        {name = "extra", type = "array", fields = {
            {name = "name", type = "uint32"},
            {name = "value", type = "uint32"},
            {name = "str", type = "string"}
        }}
    },
    [10408] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "happy", type = "uint8"},
        {name = "grade", type = "uint8"},
        {name = "talent", type = "uint16"},
        {name = "genre", type = "uint8"},
        {name = "growth", type = "uint16"},
        {name = "growth_type", type = "uint8"},
        {name = "hp", type = "uint32"},
        {name = "mp", type = "uint32"},
        {name = "feed_point", type = "uint32"},
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"},
        {name = "atk_speed", type = "uint16"},
        {name = "phy_dmg", type = "uint32"},
        {name = "magic_dmg", type = "uint32"},
        {name = "phy_def", type = "uint32"},
        {name = "magic_def", type = "uint32"},
        {name = "hp_aptitude", type = "uint16"},
        {name = "phy_aptitude", type = "uint16"},
        {name = "pdef_aptitude", type = "uint16"},
        {name = "magic_aptitude", type = "uint16"},
        {name = "aspd_aptitude", type = "uint16"},
        {name = "max_hp_aptitude", type = "uint16"},
        {name = "max_phy_aptitude", type = "uint16"},
        {name = "max_pdef_aptitude", type = "uint16"},
        {name = "max_magic_aptitude", type = "uint16"},
        {name = "max_aspd_aptitude", type = "uint16"},
        {name = "skills", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "source", type = "uint8"}
        }}, 
        {name = "stones", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "reset_attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "extra", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "str", type = "string"}
            }}
        }}, 
        {name = "mount_skills", type = "array", fields = {
            {name = "skill_index", type = "uint8"},
            {name = "skill_id", type = "uint32"},
            {name = "skill_lev", type = "uint32"}
        }}, 
        {name = "handbook_attr", type = "array", fields = {
            {name = "attr_name", type = "uint32"},
            {name = "attr_val", type = "uint32"}
        }}, 
        {name = "handbook_num", type = "uint8"},
        {name = "star_handbook_num", type = "uint8"},
        {name = "use_skin", type = "uint32"},
        {name = "spirit_info", type = "array", fields = {
            {name = "spirit_base_id", type = "uint32"},
            {name = "spirit_talent", type = "uint32"},
            {name = "spirit_lev", type = "uint16"}
        }}, 
        {name = "unreal", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "timeout", type = "uint32"}
        }}, 
        {name = "unreal_looks_flag", type = "uint8"},
        {name = "pet_rune", type = "array", fields = {
            {name = "rune_index", type = "uint8"},
            {name = "rune_type", type = "uint8"},
            {name = "rune_status", type = "uint8"},
            {name = "rune_id", type = "uint32"},
            {name = "rune_lev", type = "uint8"},
            {name = "is_resonance", type = "uint8"},
            {name = "resonances", type = "array", fields = {
                {name = "resonance_index", type = "uint8"},
                {name = "resonance_id", type = "uint32"},
                {name = "rune_index", type = "uint8"}
            }}
        }}
    },
    [10409] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "query_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "bind", type = "uint8"},
        {name = "craft", type = "uint8"},
        {name = "enchant", type = "int8"},
        {name = "expire_type", type = "uint8"},
        {name = "expire_time", type = "uint32"},
        {name = "attr", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "flag", type = "uint32"},
            {name = "val", type = "int32"}
        }}, 
        {name = "extra", type = "array", fields = {
            {name = "name", type = "uint32"},
            {name = "value", type = "uint32"},
            {name = "str", type = "string"}
        }}
    },
    [10410] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "query_id", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "score", type = "uint32"},
        {name = "quality", type = "uint8"},
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"},
        {name = "atk_speed", type = "uint16"},
        {name = "phy_dmg", type = "uint32"},
        {name = "magic_dmg", type = "uint32"},
        {name = "phy_def", type = "uint32"},
        {name = "magic_def", type = "uint32"},
        {name = "heal_val", type = "uint16"},
        {name = "eqm", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "eqm_attrs", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "gem", type = "array", fields = {
                {name = "id", type = "uint8"},
                {name = "base_id", type = "uint32"},
                {name = "type", type = "uint8"}
            }}, 
            {name = "timeout", type = "uint32"}
        }}, 
        {name = "aroused", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "lev", type = "uint16"},
            {name = "exp", type = "uint32"},
            {name = "attrs", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "val", type = "int32"}
            }}
        }}, 
        {name = "attrs", type = "array", fields = {
            {name = "name", type = "uint32"},
            {name = "val", type = "int32"}
        }}, 
        {name = "skills", type = "array", fields = {
            {name = "skill_id", type = "uint32"},
            {name = "skill_lev", type = "uint8"}
        }}, 
        {name = "growth", type = "uint32"},
        {name = "active", type = "uint8"}
    },
    [10411] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "face", type = "uint32"},
        {name = "sex", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "guild", type = "string"},
        {name = "cache_id", type = "uint32"},
        {name = "time", type = "uint8"},
        {name = "text", type = "string"},
        {name = "special", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "val", type = "uint32"}
        }}
    },
    [10412] = {

    },
    [10413] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "msg", type = "string"}
    },
    [10414] = {
        {name = "list", type = "array", fields = {
            {name = "val", type = "uint32"}
        }}
    },
    [10415] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10416] = {
        {name = "bubble_id", type = "uint16"}
    },
    [10417] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "query_id", type = "uint32"},
        {name = "grade", type = "uint8"},
        {name = "wing_id", type = "uint32"},
        {name = "growth", type = "uint8"},
        {name = "enhance", type = "uint8"},
        {name = "tmp_grade", type = "uint8"},
        {name = "tmp_wing_id", type = "uint32"},
        {name = "tmp_growth", type = "uint8"},
        {name = "star", type = "uint32"},
        {name = "skill_data", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "lev", type = "uint8"}
        }}, 
        {name = "tmp_skill_data", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "lev", type = "uint8"}
        }}, 
        {name = "break_skills", type = "array", fields = {
            {name = "skill_grade", type = "uint8"},
            {name = "skill_id", type = "uint32"},
            {name = "skill_lev", type = "uint8"}
        }}
    },
    [10418] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "query_id", type = "uint32"},
        {name = "index", type = "uint8"},
        {name = "mount_base_id", type = "uint32"},
        {name = "transformation_id", type = "uint32"},
        {name = "lev", type = "uint32"},
        {name = "skill_point", type = "uint32"},
        {name = "fail_times", type = "uint32"},
        {name = "upgrade_lev", type = "uint32"},
        {name = "live_status", type = "uint8"},
        {name = "skill_list", type = "array", fields = {
            {name = "skill_index", type = "uint8"},
            {name = "skill_id", type = "uint32"},
            {name = "skill_lev", type = "uint32"}
        }}, 
        {name = "spirit", type = "uint32"},
        {name = "fight_times", type = "uint32"},
        {name = "growth", type = "uint32"},
        {name = "growth_item_num", type = "uint32"},
        {name = "speed_lev", type = "uint32"},
        {name = "manger_pets", type = "array", fields = {
            {name = "pet_id", type = "uint32"}
        }}, 
        {name = "decorate_list", type = "array", fields = {
            {name = "decorate_index", type = "uint8"},
            {name = "decorate_base_id", type = "uint32"},
            {name = "is_hide", type = "uint8"}
        }}, 
        {name = "tmp_growth", type = "uint32"},
        {name = "tmp_skill_list", type = "array", fields = {
            {name = "skill_index", type = "uint8"},
            {name = "skill_id", type = "uint32"}
        }}, 
        {name = "score", type = "uint32"},
        {name = "appearance_list", type = "array", fields = {
            {name = "appearance_id", type = "uint32"},
            {name = "expire_time", type = "uint32"}
        }}, 
        {name = "dye_id", type = "uint32"}
    },
    [10419] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10420] = {
        {name = "flag", type = "uint8"},
        {name = "id", type = "uint32"}
    },
    [10421] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "classes_type", type = "uint8"},
        {name = "status", type = "uint8"},
        {name = "stage", type = "uint8"},
        {name = "grade", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "embryo", type = "uint8"},
        {name = "growth", type = "uint16"},
        {name = "growth_type", type = "uint8"},
        {name = "maturity", type = "uint16"},
        {name = "hungry", type = "uint8"},
        {name = "add_point", type = "uint8"},
        {name = "pregnant_time", type = "uint32"},
        {name = "birth_time", type = "uint32"},
        {name = "study_easy", type = "uint8"},
        {name = "study_easy_time", type = "uint32"},
        {name = "day_easy", type = "uint8"},
        {name = "study_hard", type = "uint8"},
        {name = "study_hard_time", type = "uint32"},
        {name = "day_hard", type = "uint8"},
        {name = "talent", type = "uint16"},
        {name = "hp", type = "uint32"},
        {name = "mp", type = "uint32"},
        {name = "name_changed", type = "uint32"},
        {name = "follow_id", type = "uint32"},
        {name = "f_platform", type = "string"},
        {name = "f_zone_id", type = "uint16"},
        {name = "parents", type = "array", fields = {
            {name = "parent_id", type = "uint32"},
            {name = "p_platform", type = "string"},
            {name = "p_zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "intimacy", type = "uint32"}
        }}, 
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"},
        {name = "atk_speed", type = "uint16"},
        {name = "phy_dmg", type = "uint32"},
        {name = "magic_dmg", type = "uint32"},
        {name = "phy_def", type = "uint32"},
        {name = "magic_def", type = "uint32"},
        {name = "hp_aptitude", type = "uint16"},
        {name = "phy_aptitude", type = "uint16"},
        {name = "pdef_aptitude", type = "uint16"},
        {name = "magic_aptitude", type = "uint16"},
        {name = "aspd_aptitude", type = "uint16"},
        {name = "max_hp_aptitude", type = "uint16"},
        {name = "max_phy_aptitude", type = "uint16"},
        {name = "max_pdef_aptitude", type = "uint16"},
        {name = "max_magic_aptitude", type = "uint16"},
        {name = "max_aspd_aptitude", type = "uint16"},
        {name = "study_str", type = "uint16"},
        {name = "study_con", type = "uint16"},
        {name = "study_agi", type = "uint16"},
        {name = "study_mag", type = "uint16"},
        {name = "study_end", type = "uint16"},
        {name = "skills", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "source", type = "uint8"},
            {name = "is_open", type = "uint8"}
        }}, 
        {name = "talent_skills", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "grade", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "exp", type = "uint32"}
        }}, 
        {name = "stones", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "reset_attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "extra", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "str", type = "string"}
            }}
        }}, 
        {name = "spirit_info", type = "array", fields = {
            {name = "spirit_base_id", type = "uint32"},
            {name = "spirit_talent", type = "uint32"},
            {name = "spirit_lev", type = "uint16"}
        }}, 
        {name = "child_skin", type = "array", fields = {
            {name = "skin_id", type = "uint32"},
            {name = "skin_active_flag", type = "uint8"},
            {name = "expire_time", type = "uint32"}
        }}
    },
    [10422] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10423] = {
        {name = "type", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [10424] = {
        {name = "channel", type = "uint8"},
        {name = "group_id", type = "uint32"},
        {name = "group_platform", type = "string"},
        {name = "group_zone_id", type = "uint16"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "guild_name", type = "string"},
        {name = "special", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "val", type = "uint32"}
        }}
    },
    [10425] = {
        {name = "channel", type = "uint8"},
        {name = "group_id", type = "uint32"},
        {name = "group_platform", type = "string"},
        {name = "group_zone_id", type = "uint16"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "special", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "val", type = "uint32"}
        }}, 
        {name = "id", type = "uint32"},
        {name = "time", type = "uint8"},
        {name = "text", type = "string"}
    },
    [10426] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10427] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "query_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "fc", type = "uint32"},
        {name = "attr", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "flag", type = "uint32"},
            {name = "val", type = "int32"}
        }}
    },
    [10428] = {
        {name = "m_list", type = "array", fields = {
            {name = "val", type = "uint32"}
        }}, 
        {name = "b_list", type = "array", fields = {
            {name = "val", type = "uint32"}
        }}
    },
    [10429] = {
        {name = "val", type = "uint32"},
        {name = "type", type = "uint8"},
        {name = "num", type = "uint32"},
        {name = "own", type = "uint8"}
    },
    [10430] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10431] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10432] = {
        {name = "flag", type = "uint8"},
        {name = "channel", type = "uint8"},
        {name = "code", type = "uint32"}
    },
    [10500] = {
        {name = "pet_nums", type = "uint8"},
        {name = "fresh_id", type = "uint8"},
        {name = "time", type = "uint32"},
        {name = "pet_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "exp", type = "uint32"},
            {name = "max_exp", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "base_id", type = "uint32"},
            {name = "happy", type = "uint32"},
            {name = "grade", type = "uint8"},
            {name = "talent", type = "uint16"},
            {name = "genre", type = "uint8"},
            {name = "growth", type = "uint16"},
            {name = "growth_type", type = "uint8"},
            {name = "hp", type = "uint32"},
            {name = "mp", type = "uint32"},
            {name = "feed_point", type = "uint32"},
            {name = "free_reset_flag", type = "uint32"},
            {name = "use_growth", type = "uint8"},
            {name = "lock", type = "uint8"},
            {name = "hp_max", type = "uint32"},
            {name = "mp_max", type = "uint32"},
            {name = "atk_speed", type = "uint16"},
            {name = "phy_dmg", type = "uint32"},
            {name = "magic_dmg", type = "uint32"},
            {name = "phy_def", type = "uint32"},
            {name = "magic_def", type = "uint32"},
            {name = "strength", type = "uint16"},
            {name = "constitution", type = "uint16"},
            {name = "magic", type = "uint16"},
            {name = "agility", type = "uint16"},
            {name = "endurance", type = "uint16"},
            {name = "point", type = "uint16"},
            {name = "p_str", type = "uint16"},
            {name = "p_con", type = "uint16"},
            {name = "p_mag", type = "uint16"},
            {name = "p_agi", type = "uint16"},
            {name = "p_end", type = "uint16"},
            {name = "hp_aptitude", type = "uint16"},
            {name = "phy_aptitude", type = "uint16"},
            {name = "pdef_aptitude", type = "uint16"},
            {name = "magic_aptitude", type = "uint16"},
            {name = "aspd_aptitude", type = "uint16"},
            {name = "max_hp_aptitude", type = "uint16"},
            {name = "max_phy_aptitude", type = "uint16"},
            {name = "max_pdef_aptitude", type = "uint16"},
            {name = "max_magic_aptitude", type = "uint16"},
            {name = "max_aspd_aptitude", type = "uint16"},
            {name = "max_hp_apt_used", type = "uint8"},
            {name = "max_phy_apt_used", type = "uint8"},
            {name = "max_pdef_apt_used", type = "uint8"},
            {name = "max_magic_apt_used", type = "uint8"},
            {name = "max_aspd_apt_used", type = "uint8"},
            {name = "skills", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "source", type = "uint8"},
                {name = "is_lock", type = "uint8"}
            }}, 
            {name = "stones", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "base_id", type = "uint32"},
                {name = "attr", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "flag", type = "uint32"},
                    {name = "val", type = "int32"}
                }}, 
                {name = "reset_attr", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "flag", type = "uint32"},
                    {name = "val", type = "int32"}
                }}, 
                {name = "extra", type = "array", fields = {
                    {name = "name", type = "uint32"},
                    {name = "value", type = "uint32"},
                    {name = "str", type = "string"}
                }}
            }}, 
            {name = "grade_attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "break_times", type = "uint8"},
            {name = "handbook_attr", type = "array", fields = {
                {name = "attr_name", type = "uint32"},
                {name = "attr_val", type = "uint32"}
            }}, 
            {name = "handbook_num", type = "uint8"},
            {name = "star_handbook_num", type = "uint8"},
            {name = "use_skin", type = "uint32"},
            {name = "has_skin", type = "array", fields = {
                {name = "skin_id", type = "uint32"}
            }}, 
            {name = "spirit_attached", type = "uint8"},
            {name = "spirit_attached_id", type = "uint32"},
            {name = "unreal", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "timeout", type = "uint32"}
            }}, 
            {name = "spirit_child_flag", type = "uint8"},
            {name = "child_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "unreal_looks_flag", type = "uint8"},
            {name = "pet_rune", type = "array", fields = {
                {name = "rune_index", type = "uint8"},
                {name = "rune_type", type = "uint8"},
                {name = "rune_status", type = "uint8"},
                {name = "rune_id", type = "uint32"},
                {name = "rune_lev", type = "uint8"},
                {name = "is_resonance", type = "uint8"},
                {name = "resonances", type = "array", fields = {
                    {name = "resonance_index", type = "uint8"},
                    {name = "resonance_id", type = "uint32"},
                    {name = "rune_index", type = "uint8"}
                }}
            }}
        }}
    },
    [10501] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10502] = {
        {name = "id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "exp", type = "uint32"},
        {name = "max_exp", type = "uint32"},
        {name = "lev", type = "uint8"},
        {name = "happy", type = "uint32"},
        {name = "status", type = "uint8"}
    },
    [10503] = {
        {name = "id", type = "uint32"},
        {name = "talent", type = "uint16"},
        {name = "genre", type = "uint8"},
        {name = "growth", type = "uint16"},
        {name = "growth_type", type = "uint8"},
        {name = "hp", type = "uint32"},
        {name = "mp", type = "uint32"},
        {name = "feed_point", type = "uint32"},
        {name = "free_reset_flag", type = "uint32"},
        {name = "use_growth", type = "uint8"},
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"},
        {name = "atk_speed", type = "uint16"},
        {name = "phy_dmg", type = "uint32"},
        {name = "magic_dmg", type = "uint32"},
        {name = "phy_def", type = "uint32"},
        {name = "magic_def", type = "uint32"},
        {name = "strength", type = "uint16"},
        {name = "constitution", type = "uint16"},
        {name = "magic", type = "uint16"},
        {name = "agility", type = "uint16"},
        {name = "endurance", type = "uint16"},
        {name = "point", type = "uint16"},
        {name = "p_str", type = "uint16"},
        {name = "p_con", type = "uint16"},
        {name = "p_mag", type = "uint16"},
        {name = "p_agi", type = "uint16"},
        {name = "p_end", type = "uint16"},
        {name = "hp_aptitude", type = "uint16"},
        {name = "phy_aptitude", type = "uint16"},
        {name = "pdef_aptitude", type = "uint16"},
        {name = "magic_aptitude", type = "uint16"},
        {name = "aspd_aptitude", type = "uint16"},
        {name = "max_hp_aptitude", type = "uint16"},
        {name = "max_phy_aptitude", type = "uint16"},
        {name = "max_pdef_aptitude", type = "uint16"},
        {name = "max_magic_aptitude", type = "uint16"},
        {name = "max_aspd_aptitude", type = "uint16"},
        {name = "max_hp_apt_used", type = "uint8"},
        {name = "max_phy_apt_used", type = "uint8"},
        {name = "max_pdef_apt_used", type = "uint8"},
        {name = "max_magic_apt_used", type = "uint8"},
        {name = "max_aspd_apt_used", type = "uint8"},
        {name = "grade_attr", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "flag", type = "uint32"},
            {name = "val", type = "int32"}
        }}, 
        {name = "break_times", type = "uint8"},
        {name = "handbook_attr", type = "array", fields = {
            {name = "attr_name", type = "uint32"},
            {name = "attr_val", type = "uint32"}
        }}, 
        {name = "handbook_num", type = "uint8"},
        {name = "star_handbook_num", type = "uint8"},
        {name = "spirit_attached", type = "uint8"},
        {name = "spirit_attached_id", type = "uint32"},
        {name = "unreal", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "timeout", type = "uint32"}
        }}, 
        {name = "spirit_child_flag", type = "uint8"},
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "unreal_looks_flag", type = "uint8"}
    },
    [10504] = {
        {name = "pet_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "exp", type = "uint32"},
            {name = "max_exp", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "base_id", type = "uint32"},
            {name = "happy", type = "uint32"},
            {name = "grade", type = "uint8"},
            {name = "talent", type = "uint16"},
            {name = "genre", type = "uint8"},
            {name = "growth", type = "uint16"},
            {name = "growth_type", type = "uint8"},
            {name = "hp", type = "uint32"},
            {name = "mp", type = "uint32"},
            {name = "feed_point", type = "uint32"},
            {name = "free_reset_flag", type = "uint32"},
            {name = "lock", type = "uint8"},
            {name = "hp_max", type = "uint32"},
            {name = "mp_max", type = "uint32"},
            {name = "atk_speed", type = "uint16"},
            {name = "phy_dmg", type = "uint32"},
            {name = "magic_dmg", type = "uint32"},
            {name = "phy_def", type = "uint32"},
            {name = "magic_def", type = "uint32"},
            {name = "strength", type = "uint16"},
            {name = "constitution", type = "uint16"},
            {name = "magic", type = "uint16"},
            {name = "agility", type = "uint16"},
            {name = "endurance", type = "uint16"},
            {name = "point", type = "uint16"},
            {name = "p_str", type = "uint16"},
            {name = "p_con", type = "uint16"},
            {name = "p_mag", type = "uint16"},
            {name = "p_agi", type = "uint16"},
            {name = "p_end", type = "uint16"},
            {name = "hp_aptitude", type = "uint16"},
            {name = "phy_aptitude", type = "uint16"},
            {name = "pdef_aptitude", type = "uint16"},
            {name = "magic_aptitude", type = "uint16"},
            {name = "aspd_aptitude", type = "uint16"},
            {name = "max_hp_aptitude", type = "uint16"},
            {name = "max_phy_aptitude", type = "uint16"},
            {name = "max_pdef_aptitude", type = "uint16"},
            {name = "max_magic_aptitude", type = "uint16"},
            {name = "max_aspd_aptitude", type = "uint16"},
            {name = "max_hp_apt_used", type = "uint8"},
            {name = "max_phy_apt_used", type = "uint8"},
            {name = "max_pdef_apt_used", type = "uint8"},
            {name = "max_magic_apt_used", type = "uint8"},
            {name = "max_aspd_apt_used", type = "uint8"},
            {name = "skills", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "source", type = "uint8"},
                {name = "is_lock", type = "uint8"}
            }}, 
            {name = "stones", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "base_id", type = "uint32"},
                {name = "attr", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "flag", type = "uint32"},
                    {name = "val", type = "int32"}
                }}, 
                {name = "reset_attr", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "flag", type = "uint32"},
                    {name = "val", type = "int32"}
                }}, 
                {name = "extra", type = "array", fields = {
                    {name = "name", type = "uint32"},
                    {name = "value", type = "uint32"},
                    {name = "str", type = "string"}
                }}
            }}, 
            {name = "grade_attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "break_times", type = "uint8"},
            {name = "handbook_attr", type = "array", fields = {
                {name = "attr_name", type = "uint32"},
                {name = "attr_val", type = "uint32"}
            }}, 
            {name = "handbook_num", type = "uint8"},
            {name = "star_handbook_num", type = "uint8"},
            {name = "use_skin", type = "uint32"},
            {name = "has_skin", type = "array", fields = {
                {name = "skin_id", type = "uint32"}
            }}, 
            {name = "spirit_attached", type = "uint8"},
            {name = "spirit_attached_id", type = "uint32"},
            {name = "unreal", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "timeout", type = "uint32"}
            }}, 
            {name = "spirit_child_flag", type = "uint8"},
            {name = "child_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "unreal_looks_flag", type = "uint8"},
            {name = "pet_rune", type = "array", fields = {
                {name = "rune_index", type = "uint8"},
                {name = "rune_type", type = "uint8"},
                {name = "rune_status", type = "uint8"},
                {name = "rune_id", type = "uint32"},
                {name = "rune_lev", type = "uint8"},
                {name = "is_resonance", type = "uint8"},
                {name = "resonances", type = "array", fields = {
                    {name = "resonance_index", type = "uint8"},
                    {name = "resonance_id", type = "uint32"},
                    {name = "rune_index", type = "uint8"}
                }}
            }}
        }}
    },
    [10505] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"},
        {name = "genre", type = "uint8"},
        {name = "wash_time", type = "uint16"}
    },
    [10507] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10508] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10509] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"},
        {name = "grade", type = "uint8"}
    },
    [10510] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10511] = {
        {name = "id", type = "uint32"},
        {name = "skills", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "source", type = "uint8"},
            {name = "is_lock", type = "uint8"}
        }}
    },
    [10512] = {
        {name = "id", type = "uint32"},
        {name = "grade", type = "uint8"},
        {name = "stones", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "reset_attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "extra", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "str", type = "string"}
            }}
        }}
    },
    [10513] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10515] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10516] = {
        {name = "rest", type = "uint8"},
        {name = "pets", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "stock", type = "uint8"}
        }}, 
        {name = "own_pets", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "stock", type = "uint8"}
        }}
    },
    [10517] = {
        {name = "flag", type = "uint8"}
    },
    [10518] = {
        {name = "flag", type = "uint8"},
        {name = "id", type = "uint32"}
    },
    [10519] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"},
        {name = "name", type = "string"}
    },
    [10520] = {
        {name = "id", type = "uint32"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "pre_str", type = "uint16"},
        {name = "pre_con", type = "uint16"},
        {name = "pre_mag", type = "uint16"},
        {name = "pre_agi", type = "uint16"},
        {name = "pre_end", type = "uint16"}
    },
    [10521] = {
        {name = "id", type = "uint32"},
        {name = "pre_str", type = "uint16"},
        {name = "pre_con", type = "uint16"},
        {name = "pre_mag", type = "uint16"},
        {name = "pre_agi", type = "uint16"},
        {name = "pre_end", type = "uint16"}
    },
    [10522] = {
        {name = "id", type = "uint32"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10523] = {
        {name = "pet_nums", type = "uint8"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10524] = {
        {name = "base_id", type = "uint32"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10525] = {
        {name = "id", type = "uint32"},
        {name = "hp", type = "uint32"},
        {name = "mp", type = "uint32"},
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"}
    },
    [10526] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10527] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "fresh_id", type = "uint8"},
        {name = "time", type = "uint32"}
    },
    [10528] = {
        {name = "pet_nums", type = "uint8"},
        {name = "pet_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "exp", type = "uint32"},
            {name = "max_exp", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "happy", type = "uint32"},
            {name = "grade", type = "uint8"},
            {name = "talent", type = "uint16"},
            {name = "genre", type = "uint8"},
            {name = "growth", type = "uint16"},
            {name = "growth_type", type = "uint8"},
            {name = "hp", type = "uint32"},
            {name = "mp", type = "uint32"},
            {name = "feed_point", type = "uint32"},
            {name = "free_reset_flag", type = "uint32"},
            {name = "use_growth", type = "uint8"},
            {name = "hp_max", type = "uint32"},
            {name = "mp_max", type = "uint32"},
            {name = "atk_speed", type = "uint16"},
            {name = "phy_dmg", type = "uint32"},
            {name = "magic_dmg", type = "uint32"},
            {name = "phy_def", type = "uint32"},
            {name = "magic_def", type = "uint32"},
            {name = "strength", type = "uint16"},
            {name = "constitution", type = "uint16"},
            {name = "magic", type = "uint16"},
            {name = "agility", type = "uint16"},
            {name = "endurance", type = "uint16"},
            {name = "point", type = "uint16"},
            {name = "p_str", type = "uint16"},
            {name = "p_con", type = "uint16"},
            {name = "p_mag", type = "uint16"},
            {name = "p_agi", type = "uint16"},
            {name = "p_end", type = "uint16"},
            {name = "hp_aptitude", type = "uint16"},
            {name = "phy_aptitude", type = "uint16"},
            {name = "pdef_aptitude", type = "uint16"},
            {name = "magic_aptitude", type = "uint16"},
            {name = "aspd_aptitude", type = "uint16"},
            {name = "max_hp_aptitude", type = "uint16"},
            {name = "max_phy_aptitude", type = "uint16"},
            {name = "max_pdef_aptitude", type = "uint16"},
            {name = "max_magic_aptitude", type = "uint16"},
            {name = "max_aspd_aptitude", type = "uint16"},
            {name = "skills", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "source", type = "uint8"},
                {name = "is_lock", type = "uint8"}
            }}, 
            {name = "stones", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "base_id", type = "uint32"},
                {name = "attr", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "flag", type = "uint32"},
                    {name = "val", type = "int32"}
                }}, 
                {name = "reset_attr", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "flag", type = "uint32"},
                    {name = "val", type = "int32"}
                }}, 
                {name = "extra", type = "array", fields = {
                    {name = "name", type = "uint32"},
                    {name = "value", type = "uint32"},
                    {name = "str", type = "string"}
                }}
            }}, 
            {name = "grade_attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "use_skin", type = "uint32"},
            {name = "has_skin", type = "array", fields = {
                {name = "skin_id", type = "uint32"}
            }}, 
            {name = "spirit_attached", type = "uint8"},
            {name = "spirit_attached_id", type = "uint32"},
            {name = "unreal", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "timeout", type = "uint32"}
            }}, 
            {name = "spirit_child_flag", type = "uint8"},
            {name = "child_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "unreal_looks_flag", type = "uint8"},
            {name = "pet_rune", type = "array", fields = {
                {name = "rune_index", type = "uint8"},
                {name = "rune_type", type = "uint8"},
                {name = "rune_status", type = "uint8"},
                {name = "rune_id", type = "uint32"},
                {name = "rune_lev", type = "uint8"},
                {name = "is_resonance", type = "uint8"},
                {name = "resonances", type = "array", fields = {
                    {name = "resonance_index", type = "uint8"},
                    {name = "resonance_id", type = "uint32"},
                    {name = "rune_index", type = "uint8"}
                }}
            }}
        }}
    },
    [10529] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10530] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10531] = {
        {name = "pet_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "exp", type = "uint32"},
            {name = "max_exp", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "base_id", type = "uint32"},
            {name = "happy", type = "uint32"},
            {name = "grade", type = "uint8"},
            {name = "talent", type = "uint16"},
            {name = "genre", type = "uint8"},
            {name = "growth", type = "uint16"},
            {name = "growth_type", type = "uint8"},
            {name = "hp", type = "uint32"},
            {name = "mp", type = "uint32"},
            {name = "feed_point", type = "uint32"},
            {name = "free_reset_flag", type = "uint32"},
            {name = "hp_max", type = "uint32"},
            {name = "mp_max", type = "uint32"},
            {name = "atk_speed", type = "uint16"},
            {name = "phy_dmg", type = "uint32"},
            {name = "magic_dmg", type = "uint32"},
            {name = "phy_def", type = "uint32"},
            {name = "magic_def", type = "uint32"},
            {name = "strength", type = "uint16"},
            {name = "constitution", type = "uint16"},
            {name = "magic", type = "uint16"},
            {name = "agility", type = "uint16"},
            {name = "endurance", type = "uint16"},
            {name = "point", type = "uint16"},
            {name = "p_str", type = "uint16"},
            {name = "p_con", type = "uint16"},
            {name = "p_mag", type = "uint16"},
            {name = "p_agi", type = "uint16"},
            {name = "p_end", type = "uint16"},
            {name = "hp_aptitude", type = "uint16"},
            {name = "phy_aptitude", type = "uint16"},
            {name = "pdef_aptitude", type = "uint16"},
            {name = "magic_aptitude", type = "uint16"},
            {name = "aspd_aptitude", type = "uint16"},
            {name = "max_hp_aptitude", type = "uint16"},
            {name = "max_phy_aptitude", type = "uint16"},
            {name = "max_pdef_aptitude", type = "uint16"},
            {name = "max_magic_aptitude", type = "uint16"},
            {name = "max_aspd_aptitude", type = "uint16"},
            {name = "skills", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "source", type = "uint8"},
                {name = "is_lock", type = "uint8"}
            }}, 
            {name = "stones", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "base_id", type = "uint32"},
                {name = "attr", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "flag", type = "uint32"},
                    {name = "val", type = "int32"}
                }}, 
                {name = "reset_attr", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "flag", type = "uint32"},
                    {name = "val", type = "int32"}
                }}, 
                {name = "extra", type = "array", fields = {
                    {name = "name", type = "uint32"},
                    {name = "value", type = "uint32"},
                    {name = "str", type = "string"}
                }}
            }}, 
            {name = "grade_attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "use_skin", type = "uint32"},
            {name = "has_skin", type = "array", fields = {
                {name = "skin_id", type = "uint32"}
            }}, 
            {name = "spirit_attached", type = "uint8"},
            {name = "spirit_attached_id", type = "uint32"},
            {name = "unreal", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "timeout", type = "uint32"}
            }}, 
            {name = "spirit_child_flag", type = "uint8"},
            {name = "child_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "unreal_looks_flag", type = "uint8"},
            {name = "pet_rune", type = "array", fields = {
                {name = "rune_index", type = "uint8"},
                {name = "rune_type", type = "uint8"},
                {name = "rune_status", type = "uint8"},
                {name = "rune_id", type = "uint32"},
                {name = "rune_lev", type = "uint8"},
                {name = "is_resonance", type = "uint8"},
                {name = "resonances", type = "array", fields = {
                    {name = "resonance_index", type = "uint8"},
                    {name = "resonance_id", type = "uint32"},
                    {name = "rune_index", type = "uint8"}
                }}
            }}
        }}
    },
    [10532] = {
        {name = "id", type = "uint32"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10533] = {
        {name = "pet_nums", type = "uint8"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10534] = {
        {name = "id", type = "uint32"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "pay_flag", type = "uint8"}
    },
    [10535] = {
        {name = "id", type = "uint32"},
        {name = "combat_talk", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "msg", type = "string"}
        }}
    },
    [10536] = {
        {name = "id", type = "uint32"},
        {name = "result", type = "uint8"},
        {name = "reason", type = "string"},
        {name = "type", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10537] = {
        {name = "op_code", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [10538] = {
        {name = "op_code", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [10539] = {
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10540] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10541] = {
        {name = "result", type = "uint8"},
        {name = "pet_id", type = "uint32"},
        {name = "item_id", type = "uint32"}
    },
    [10542] = {
        {name = "result", type = "uint8"},
        {name = "pet_id", type = "uint32"},
        {name = "item_id", type = "uint32"}
    },
    [10543] = {
        {name = "num", type = "uint32"}
    },
    [10544] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10545] = {
        {name = "base_id", type = "uint32"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10546] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10547] = {
        {name = "pet_base_id", type = "uint32"},
        {name = "genre", type = "uint8"}
    },
    [10548] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10549] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "moon", type = "uint16"},
        {name = "sun", type = "uint16"}
    },
    [10550] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10551] = {
        {name = "moon", type = "uint16"},
        {name = "sun", type = "uint16"}
    },
    [10552] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10553] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10554] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10555] = {
        {name = "id", type = "uint32"},
        {name = "is_valid", type = "uint8"},
        {name = "tmp_genre", type = "uint8"},
        {name = "point", type = "uint16"},
        {name = "p_str", type = "uint16"},
        {name = "p_con", type = "uint16"},
        {name = "p_mag", type = "uint16"},
        {name = "p_agi", type = "uint16"},
        {name = "p_end", type = "uint16"},
        {name = "hp_aptitude", type = "uint16"},
        {name = "phy_aptitude", type = "uint16"},
        {name = "pdef_aptitude", type = "uint16"},
        {name = "magic_aptitude", type = "uint16"},
        {name = "aspd_aptitude", type = "uint16"},
        {name = "max_hp_aptitude", type = "uint16"},
        {name = "max_phy_aptitude", type = "uint16"},
        {name = "max_pdef_aptitude", type = "uint16"},
        {name = "max_magic_aptitude", type = "uint16"},
        {name = "max_aspd_aptitude", type = "uint16"},
        {name = "tmp_skills", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "source", type = "uint8"},
            {name = "is_lock", type = "uint8"}
        }}, 
        {name = "tmp_growth", type = "uint16"},
        {name = "tmp_growth_type", type = "uint8"},
        {name = "tmp_happy", type = "uint32"},
        {name = "talent", type = "uint16"}
    },
    [10556] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10557] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10558] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10559] = {
        {name = "id", type = "uint32"},
        {name = "use_skin", type = "uint32"},
        {name = "has_skin", type = "array", fields = {
            {name = "skin_id", type = "uint32"}
        }}
    },
    [10560] = {
        {name = "base_id", type = "uint32"},
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10561] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10562] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10563] = {
        {name = "id", type = "uint32"},
        {name = "attr", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "flag", type = "uint32"},
            {name = "val", type = "int32"}
        }}
    },
    [10564] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10565] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10566] = {
        {name = "attr", type = "array", fields = {
            {name = "type", type = "uint32"},
            {name = "value", type = "uint32"}
        }}
    },
    [10567] = {
        {name = "id", type = "uint32"},
        {name = "extra_attr", type = "array", fields = {
            {name = "type", type = "uint32"},
            {name = "hp_max", type = "uint32"},
            {name = "mp_max", type = "uint32"},
            {name = "atk_speed", type = "uint16"},
            {name = "phy_dmg", type = "uint32"},
            {name = "magic_dmg", type = "uint32"},
            {name = "phy_def", type = "uint32"},
            {name = "magic_def", type = "uint32"},
            {name = "strength", type = "uint16"},
            {name = "constitution", type = "uint16"},
            {name = "magic", type = "uint16"},
            {name = "agility", type = "uint16"},
            {name = "endurance", type = "uint16"}
        }}
    },
    [10568] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10569] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10570] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "pet_id", type = "uint32"},
        {name = "reward", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "spec_effects", type = "uint32"}
        }}
    },
    [10571] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10572] = {
        {name = "flag", type = "uint8"},
        {name = "times", type = "uint8"}
    },
    [10573] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10574] = {

    },
    [10575] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "rune_index", type = "uint8"},
        {name = "rune_id", type = "uint32"}
    },
    [10576] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10577] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10578] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "resonance_index", type = "uint8"}
    },
    [10579] = {
        {name = "id", type = "uint32"},
        {name = "pet_rune", type = "array", fields = {
            {name = "rune_index", type = "uint8"},
            {name = "rune_type", type = "uint8"},
            {name = "rune_status", type = "uint8"},
            {name = "rune_id", type = "uint32"},
            {name = "rune_lev", type = "uint8"},
            {name = "is_resonance", type = "uint8"},
            {name = "resonances", type = "array", fields = {
                {name = "resonance_index", type = "uint8"},
                {name = "resonance_id", type = "uint32"},
                {name = "rune_index", type = "uint8"}
            }}
        }}
    },
    [10600] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10602] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10603] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"},
        {name = "reset_attr", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "flag", type = "uint32"},
            {name = "val", type = "int32"}
        }}, 
        {name = "reset_val", type = "uint16"},
        {name = "lucky_val", type = "uint16"}
    },
    [10604] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10605] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10606] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10607] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "next_base_id", type = "uint32"}
    },
    [10608] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10609] = {
        {name = "id", type = "uint32"},
        {name = "backup_attr", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "flag", type = "uint32"},
            {name = "val", type = "int32"}
        }}, 
        {name = "lucky_val", type = "uint16"}
    },
    [10610] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "next_base_id", type = "uint32"}
    },
    [10611] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10612] = {
        {name = "reset_val", type = "uint16"}
    },
    [10613] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "reset_val", type = "uint16"}
    },
    [10614] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10615] = {
        {name = "id", type = "uint32"},
        {name = "reset_attr", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "flag", type = "uint32"},
            {name = "val", type = "int32"}
        }}
    },
    [10616] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10617] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"},
        {name = "lock", type = "uint8"}
    },
    [10618] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10619] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10620] = {
        {name = "id", type = "uint32"},
        {name = "back_lev", type = "uint8"},
        {name = "now_lev", type = "uint8"},
        {name = "attr_list", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "flag", type = "uint32"},
            {name = "val", type = "int32"}
        }}
    },
    [10621] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10622] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10623] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10624] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10625] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10626] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10627] = {
        {name = "talisman_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "reset_list", type = "array", fields = {
                {name = "reset_base_id", type = "uint32"},
                {name = "reset_flag", type = "uint8"}
            }}
        }}
    },
    [10628] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10629] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10705] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10706] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10707] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10710] = {
        {name = "combat_type", type = "uint8"},
        {name = "enter_type", type = "uint8"},
        {name = "enter_view", type = "uint8"},
        {name = "start_time", type = "uint32"},
        {name = "atk_formation", type = "uint8"},
        {name = "atk_formation_lev", type = "uint8"},
        {name = "dfd_formation", type = "uint8"},
        {name = "dfd_formation_lev", type = "uint8"},
        {name = "round", type = "uint16"},
        {name = "guide", type = "uint16"},
        {name = "status", type = "uint8"},
        {name = "wait_time", type = "uint8"},
        {name = "time", type = "uint8"},
        {name = "fighter_list", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "group", type = "uint8"},
            {name = "type", type = "uint8"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "base_id", type = "uint32"},
            {name = "master_fid", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint16"},
            {name = "face_id", type = "uint32"},
            {name = "is_die", type = "uint8"},
            {name = "is_die_disappear", type = "uint8"},
            {name = "hp", type = "int32"},
            {name = "tmp_hp_max", type = "int32"},
            {name = "mp", type = "int32"},
            {name = "pos", type = "uint8"},
            {name = "order", type = "uint8"},
            {name = "self_preside_status", type = "uint8"},
            {name = "self_preside_text", type = "string"},
            {name = "target_preside_status", type = "uint8"},
            {name = "target_preside_text", type = "string"},
            {name = "is_auto", type = "uint8"},
            {name = "is_hosted", type = "uint8"},
            {name = "fc", type = "uint32"},
            {name = "hp_max", type = "int32"},
            {name = "mp_max", type = "int32"},
            {name = "model_id", type = "uint32"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "buff_infos", type = "array", fields = {
                {name = "buff_id", type = "uint32"},
                {name = "layer", type = "uint8"},
                {name = "duration", type = "uint8"},
                {name = "duration_left", type = "uint8"},
                {name = "can_dispel", type = "uint8"}
            }}
        }}, 
        {name = "summon_num", type = "uint8"},
        {name = "use_item_num", type = "uint8"},
        {name = "anger", type = "uint16"},
        {name = "use_anger_ratio", type = "uint16"},
        {name = "skill_infos", type = "array", fields = {
            {name = "skill_type_1", type = "uint8"},
            {name = "skill_data_1", type = "array", fields = {
                {name = "skill_id_1", type = "uint32"},
                {name = "skill_lev_1", type = "uint8"}
            }}
        }}, 
        {name = "pet_skill_infos", type = "array", fields = {
            {name = "pet_id", type = "uint32"},
            {name = "pet_skill_infos", type = "array", fields = {
                {name = "skill_type_2", type = "uint8"},
                {name = "skill_data_2", type = "array", fields = {
                    {name = "skill_id_2", type = "uint32"},
                    {name = "skill_lev_2", type = "uint8"}
                }}
            }}
        }}, 
        {name = "child_skill_infos", type = "array", fields = {
            {name = "child_id", type = "uint32"},
            {name = "child_skill_infos", type = "array", fields = {
                {name = "skill_type_3", type = "uint8"},
                {name = "skill_data_3", type = "array", fields = {
                    {name = "skill_id_3", type = "uint32"},
                    {name = "skill_lev_3", type = "uint8"}
                }}
            }}
        }}, 
        {name = "skill_cooldown_list", type = "array", fields = {
            {name = "skill_id", type = "uint32"},
            {name = "cd_left", type = "uint16"}
        }}, 
        {name = "skill_cooldown_list_pet", type = "array", fields = {
            {name = "skill_id", type = "uint32"},
            {name = "cd_left", type = "uint16"}
        }}, 
        {name = "backup_pets", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "can_summon", type = "uint8"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"}
        }}, 
        {name = "backup_childs", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "can_summon", type = "uint8"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "hungry", type = "uint32"}
        }}
    },
    [10711] = {
        {name = "result", type = "uint8"}
    },
    [10720] = {
        {name = "round", type = "uint16"},
        {name = "start_time", type = "uint32"},
        {name = "action_list", type = "array", fields = {
            {name = "order", type = "uint8"},
            {name = "sub_action_list", type = "array", fields = {
                {name = "self_id", type = "uint16"},
                {name = "target_id", type = "uint16"},
                {name = "sub_order", type = "uint8"},
                {name = "skill_id", type = "uint32"},
                {name = "skill_lev", type = "uint8"},
                {name = "attack_type", type = "uint8"},
                {name = "action_type", type = "uint8"},
                {name = "self_changes", type = "array", fields = {
                    {name = "change_type", type = "uint8"},
                    {name = "change_val", type = "int32"},
                    {name = "other_val", type = "int32"}
                }}, 
                {name = "target_changes", type = "array", fields = {
                    {name = "change_type", type = "uint8"},
                    {name = "change_val", type = "int32"},
                    {name = "other_val", type = "int32"}
                }}, 
                {name = "show_passive_skills", type = "array", fields = {
                    {name = "id", type = "uint16"},
                    {name = "skill_id", type = "uint32"},
                    {name = "show_type", type = "uint8"}
                }}, 
                {name = "is_hit", type = "uint8"},
                {name = "is_crit", type = "uint8"},
                {name = "is_defence", type = "uint8"},
                {name = "is_self_die", type = "uint8"},
                {name = "is_self_die_disappear", type = "uint8"},
                {name = "is_target_die", type = "uint8"},
                {name = "is_target_die_disappear", type = "uint8"},
                {name = "talk", type = "string"},
                {name = "action_msg", type = "string"}
            }}
        }}, 
        {name = "buff_play_list", type = "array", fields = {
            {name = "order", type = "uint8"},
            {name = "sub_order", type = "uint8"},
            {name = "action_type", type = "uint8"},
            {name = "buff_id", type = "uint32"},
            {name = "layer", type = "uint8"},
            {name = "duration", type = "uint8"},
            {name = "duration_left", type = "uint8"},
            {name = "is_hit", type = "uint8"},
            {name = "can_dispel", type = "uint8"},
            {name = "caster_id", type = "uint16"},
            {name = "target_id", type = "uint16"},
            {name = "skill_fid", type = "uint16"},
            {name = "target_changes", type = "array", fields = {
                {name = "change_type", type = "uint8"},
                {name = "change_val", type = "int32"},
                {name = "other_val", type = "int32"}
            }}
        }}, 
        {name = "summon_play_list", type = "array", fields = {
            {name = "order", type = "uint8"},
            {name = "sub_order", type = "uint8"},
            {name = "summon_type", type = "uint8"},
            {name = "summoner_id", type = "uint16"},
            {name = "summons", type = "array", fields = {
                {name = "id", type = "uint16"},
                {name = "group", type = "uint8"},
                {name = "type", type = "uint8"},
                {name = "rid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"},
                {name = "base_id", type = "uint32"},
                {name = "master_fid", type = "uint16"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "lev", type = "uint16"},
                {name = "face_id", type = "uint32"},
                {name = "is_die", type = "uint8"},
                {name = "is_die_disappear", type = "uint8"},
                {name = "hp", type = "int32"},
                {name = "tmp_hp_max", type = "int32"},
                {name = "mp", type = "int32"},
                {name = "pos", type = "uint8"},
                {name = "order", type = "uint8"},
                {name = "fc", type = "uint32"},
                {name = "hp_max", type = "int32"},
                {name = "mp_max", type = "int32"},
                {name = "looks", type = "array", fields = {
                    {name = "looks_type", type = "uint32"},
                    {name = "looks_mode", type = "uint32"},
                    {name = "looks_val", type = "uint32"},
                    {name = "looks_str", type = "string"}
                }}, 
                {name = "model_id", type = "uint32"},
                {name = "buff_infos", type = "array", fields = {
                    {name = "buff_id", type = "uint32"},
                    {name = "layer", type = "uint8"},
                    {name = "duration", type = "uint8"},
                    {name = "duration_left", type = "uint8"},
                    {name = "can_dispel", type = "uint8"}
                }}
            }}
        }}, 
        {name = "buff_list", type = "array", fields = {
            {name = "fighter_id", type = "uint16"},
            {name = "buffs", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "layer", type = "uint8"},
                {name = "duration", type = "uint8"},
                {name = "duration_left", type = "uint8"}
            }}
        }}, 
        {name = "buff_play_list2", type = "array", fields = {
            {name = "order", type = "uint8"},
            {name = "sub_order", type = "uint8"},
            {name = "action_type", type = "uint8"},
            {name = "buff_id", type = "uint32"},
            {name = "layer", type = "uint8"},
            {name = "duration", type = "uint8"},
            {name = "duration_left", type = "uint8"},
            {name = "is_hit", type = "uint8"},
            {name = "can_dispel", type = "uint8"},
            {name = "caster_id", type = "uint16"},
            {name = "target_id", type = "uint16"},
            {name = "skill_fid", type = "uint16"},
            {name = "target_changes", type = "array", fields = {
                {name = "change_type", type = "uint8"},
                {name = "change_val", type = "int32"},
                {name = "other_val", type = "int32"}
            }}
        }}, 
        {name = "fighter_status_list", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "hp", type = "int32"},
            {name = "tmp_hp_max", type = "int32"},
            {name = "mp", type = "int32"},
            {name = "hp_max", type = "int32"},
            {name = "mp_max", type = "int32"},
            {name = "is_die", type = "uint8"},
            {name = "is_die_disappear", type = "uint8"},
            {name = "pos", type = "uint8"},
            {name = "order", type = "uint8"},
            {name = "is_escape", type = "uint8"}
        }}, 
        {name = "combat_result", type = "uint8"},
        {name = "guide", type = "uint16"},
        {name = "time", type = "uint8"},
        {name = "fighter_changes", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "self_changes", type = "array", fields = {
                {name = "change_type", type = "uint8"},
                {name = "change_val", type = "int32"},
                {name = "other_val", type = "int32"}
            }}
        }}, 
        {name = "summon_num", type = "uint8"},
        {name = "use_item_num", type = "uint8"},
        {name = "skill_cooldown_list", type = "array", fields = {
            {name = "skill_id", type = "uint32"},
            {name = "cd_left", type = "uint16"}
        }}, 
        {name = "skill_cooldown_list_pet", type = "array", fields = {
            {name = "skill_id", type = "uint32"},
            {name = "cd_left", type = "uint16"}
        }}, 
        {name = "backup_pets", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "can_summon", type = "uint8"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"}
        }}, 
        {name = "backup_childs", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "can_summon", type = "uint8"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "hungry", type = "uint32"}
        }}
    },
    [10722] = {
        {name = "start_time", type = "uint32"},
        {name = "fighter_changes", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "self_changes", type = "array", fields = {
                {name = "change_type", type = "uint8"},
                {name = "change_val", type = "int32"},
                {name = "other_val", type = "int32"}
            }}
        }}
    },
    [10723] = {
        {name = "start_time", type = "uint32"},
        {name = "fighter_changes", type = "array", fields = {
            {name = "sid", type = "uint16"},
            {name = "tid", type = "uint16"},
            {name = "self_changes", type = "array", fields = {
                {name = "change_type", type = "uint8"},
                {name = "change_val", type = "int32"},
                {name = "other_val", type = "string"}
            }}
        }}
    },
    [10731] = {
        {name = "msg", type = "string"}
    },
    [10732] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10733] = {
        {name = "id", type = "uint16"},
        {name = "result", type = "uint8"},
        {name = "target_id", type = "uint16"},
        {name = "skill_id", type = "uint32"},
        {name = "skill_lev", type = "uint8"}
    },
    [10734] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10735] = {
        {name = "id", type = "uint16"},
        {name = "result", type = "uint8"}
    },
    [10740] = {
        {name = "flag", type = "uint8"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10741] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10742] = {
        {name = "self_preside", type = "array", fields = {
            {name = "flag1", type = "uint8"},
            {name = "text2", type = "string"}
        }}, 
        {name = "target_preside", type = "array", fields = {
            {name = "flag2", type = "uint8"},
            {name = "text2", type = "string"}
        }}
    },
    [10743] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10744] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10745] = {

    },
    [10746] = {

    },
    [10747] = {
        {name = "list", type = "array", fields = {
            {name = "likable", type = "uint8"},
            {name = "type", type = "uint8"},
            {name = "rec_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "combat_type", type = "uint8"},
            {name = "atk_name", type = "string"},
            {name = "dfd_name", type = "string"},
            {name = "atk_sex", type = "uint8"},
            {name = "atk_classes", type = "uint8"},
            {name = "dfd_sex", type = "uint8"},
            {name = "dfd_classes", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "liked", type = "uint32"},
            {name = "replayed", type = "uint32"},
            {name = "shared", type = "uint32"},
            {name = "round", type = "uint32"},
            {name = "avg_lev", type = "uint32"}
        }}
    },
    [10748] = {
        {name = "list", type = "array", fields = {
            {name = "likable", type = "uint8"},
            {name = "type", type = "uint8"},
            {name = "rec_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "combat_type", type = "uint8"},
            {name = "atk_name", type = "string"},
            {name = "dfd_name", type = "string"},
            {name = "atk_sex", type = "uint8"},
            {name = "atk_classes", type = "uint8"},
            {name = "dfd_sex", type = "uint8"},
            {name = "dfd_classes", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "liked", type = "uint32"},
            {name = "replayed", type = "uint32"},
            {name = "shared", type = "uint32"},
            {name = "round", type = "uint32"},
            {name = "avg_lev", type = "uint32"}
        }}
    },
    [10749] = {
        {name = "list", type = "array", fields = {
            {name = "likable", type = "uint8"},
            {name = "type", type = "uint8"},
            {name = "rec_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "combat_type", type = "uint8"},
            {name = "atk_name", type = "string"},
            {name = "dfd_name", type = "string"},
            {name = "atk_sex", type = "uint8"},
            {name = "atk_classes", type = "uint8"},
            {name = "dfd_sex", type = "uint8"},
            {name = "dfd_classes", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "liked", type = "uint32"},
            {name = "replayed", type = "uint32"},
            {name = "shared", type = "uint32"},
            {name = "round", type = "uint32"},
            {name = "avg_lev", type = "uint32"}
        }}
    },
    [10750] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10751] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10752] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10753] = {
        {name = "likable", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "rec_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "combat_type", type = "uint8"},
        {name = "atk_name", type = "string"},
        {name = "dfd_name", type = "string"},
        {name = "atk_sex", type = "uint8"},
        {name = "atk_classes", type = "uint8"},
        {name = "dfd_sex", type = "uint8"},
        {name = "dfd_classes", type = "uint8"},
        {name = "time", type = "uint32"},
        {name = "liked", type = "uint32"},
        {name = "replayed", type = "uint32"},
        {name = "shared", type = "uint32"},
        {name = "round", type = "uint32"},
        {name = "avg_lev", type = "uint32"},
        {name = "fighters", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "r_platform", type = "string"},
            {name = "r_zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint16"},
            {name = "group", type = "uint8"}
        }}
    },
    [10754] = {
        {name = "rank_type", type = "uint8"},
        {name = "list", type = "array", fields = {
            {name = "likable", type = "uint8"},
            {name = "type", type = "uint8"},
            {name = "rec_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "combat_type", type = "uint8"},
            {name = "atk_name", type = "string"},
            {name = "dfd_name", type = "string"},
            {name = "atk_sex", type = "uint8"},
            {name = "atk_classes", type = "uint8"},
            {name = "dfd_sex", type = "uint8"},
            {name = "dfd_classes", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "liked", type = "uint32"},
            {name = "replayed", type = "uint32"},
            {name = "shared", type = "uint32"},
            {name = "round", type = "uint32"},
            {name = "avg_lev", type = "uint32"}
        }}
    },
    [10755] = {
        {name = "list", type = "array", fields = {
            {name = "likable", type = "uint8"},
            {name = "type", type = "uint8"},
            {name = "rec_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "combat_type", type = "uint8"},
            {name = "atk_name", type = "string"},
            {name = "dfd_name", type = "string"},
            {name = "atk_sex", type = "uint8"},
            {name = "atk_classes", type = "uint8"},
            {name = "dfd_sex", type = "uint8"},
            {name = "dfd_classes", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "liked", type = "uint32"},
            {name = "replayed", type = "uint32"},
            {name = "shared", type = "uint32"},
            {name = "round", type = "uint32"},
            {name = "avg_lev", type = "uint32"}
        }}
    },
    [10756] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10757] = {
        {name = "online", type = "uint32"},
        {name = "liked", type = "uint32"}
    },
    [10758] = {
        {name = "combat_type", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "likable", type = "uint8"},
            {name = "type", type = "uint8"},
            {name = "rec_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "combat_type", type = "uint32"},
            {name = "atk_name", type = "string"},
            {name = "dfd_name", type = "string"},
            {name = "atk_sex", type = "uint8"},
            {name = "atk_classes", type = "uint8"},
            {name = "dfd_sex", type = "uint8"},
            {name = "dfd_classes", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "liked", type = "uint32"},
            {name = "replayed", type = "uint32"},
            {name = "shared", type = "uint32"},
            {name = "round", type = "uint32"},
            {name = "avg_lev", type = "uint32"}
        }}
    },
    [10759] = {
        {name = "list", type = "array", fields = {
            {name = "combat_tyeo", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [10760] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10761] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "type", type = "uint8"}
    },
    [10762] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10763] = {
        {name = "valid_plan", type = "uint8"},
        {name = "plan_data", type = "array", fields = {
            {name = "index", type = "uint8"},
            {name = "name", type = "string"},
            {name = "skill_plan", type = "array", fields = {
                {name = "skill_index", type = "uint8"},
                {name = "skill_id", type = "uint32"}
            }}
        }}
    },
    [10764] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10765] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10766] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10767] = {
        {name = "skill_id", type = "uint32"}
    },
    [10768] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10769] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10770] = {
        {name = "combat_record_chat_mgr", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint16"},
            {name = "sex", type = "uint8"},
            {name = "break_times", type = "uint8"},
            {name = "msg", type = "string"}
        }}
    },
    [10771] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10772] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10773] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10774] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10775] = {
        {name = "help_combat_info", type = "array", fields = {
            {name = "skill_id", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "skill_status", type = "uint8"}
        }}, 
        {name = "round", type = "uint16"}
    },
    [10776] = {
        {name = "observer_skill_cd", type = "array", fields = {
            {name = "skill_id", type = "uint32"},
            {name = "skill_status", type = "uint8"}
        }}
    },
    [10777] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10778] = {
        {name = "reward", type = "array", fields = {
            {name = "reward_id", type = "uint32"},
            {name = "id", type = "uint32"},
            {name = "type", type = "uint32"},
            {name = "end_time", type = "uint32"}
        }}
    },
    [10779] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10780] = {
        {name = "end_time", type = "uint32"}
    },
    [10789] = {
        {name = "result", type = "uint8"}
    },
    [10790] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "gl_list", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [10800] = {
        {name = "skill_data", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "lev", type = "uint8"}
        }}, 
        {name = "speed", type = "array", fields = {
            {name = "skill_id", type = "uint32"}
        }}
    },
    [10801] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10802] = {
        {name = "id", type = "uint32"},
        {name = "lev", type = "uint8"}
    },
    [10803] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10804] = {
        {name = "tips_args", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [10805] = {
        {name = "selected_id", type = "uint32"},
        {name = "skl_prac", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "lev", type = "uint8"},
            {name = "exp", type = "uint32"},
            {name = "enhance", type = "array", fields = {
                {name = "source", type = "uint8"},
                {name = "lev", type = "uint8"}
            }}
        }}, 
        {name = "skl_prac_times", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "times", type = "uint32"}
        }}
    },
    [10806] = {
        {name = "flag", type = "uint8"},
        {name = "id", type = "uint32"}
    },
    [10807] = {
        {name = "id", type = "uint32"},
        {name = "lev", type = "uint8"},
        {name = "exp", type = "uint32"},
        {name = "prac_times", type = "uint32"}
    },
    [10808] = {
        {name = "skills", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "lev", type = "uint8"},
            {name = "exp", type = "uint32"}
        }}
    },
    [10809] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10810] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "base_id", type = "uint32"}
    },
    [10811] = {
        {name = "op_code", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "lev", type = "uint8"},
        {name = "exp", type = "uint32"}
    },
    [10812] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "exps", type = "array", fields = {
            {name = "exp", type = "uint32"}
        }}
    },
    [10813] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "exp", type = "uint32"},
        {name = "gain_exp", type = "uint32"}
    },
    [10814] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10815] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10816] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "base_id", type = "uint32"}
    },
    [10817] = {
        {name = "note_times", type = "uint32"}
    },
    [10818] = {
        {name = "skl_prac", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "lev", type = "uint8"},
            {name = "exp", type = "uint32"},
            {name = "enhance", type = "array", fields = {
                {name = "source", type = "uint8"},
                {name = "lev", type = "uint8"}
            }}
        }}, 
        {name = "skl_prac_times", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "times", type = "uint32"}
        }}
    },
    [10819] = {
        {name = "flag", type = "uint8"}
    },
    [10820] = {
        {name = "id", type = "uint32"},
        {name = "lev", type = "uint8"}
    },
    [10821] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10822] = {
        {name = "skill_data", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "lev", type = "uint8"}
        }}
    },
    [10823] = {
        {name = "skill_data", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "lev", type = "uint8"},
            {name = "exp", type = "uint32"}
        }}
    },
    [10824] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10825] = {
        {name = "flag", type = "uint8"},
        {name = "skill_unique", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "lev", type = "uint8"}
        }}
    },
    [10826] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10827] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "gl_list", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [10828] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10829] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10830] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10831] = {
        {name = "chief_classes", type = "array", fields = {
            {name = "leader_id", type = "uint32"},
            {name = "classes", type = "uint32"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint32"},
            {name = "sex", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}
        }}
    },
    [10832] = {
        {name = "skill_clsld_done", type = "array", fields = {
            {name = "leader_id", type = "uint32"}
        }}, 
        {name = "cooldown", type = "uint32"}
    },
    [10833] = {
        {name = "sq_point", type = "uint32"}
    },
    [10834] = {
        {name = "sq_double", type = "uint32"},
        {name = "sq_exp_statistics", type = "array", fields = {
            {name = "combat_type", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "real_gain", type = "uint32"},
            {name = "gain", type = "uint32"}
        }}
    },
    [10835] = {
        {name = "msg", type = "string"}
    },
    [10900] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "recruit_guard", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "war_id", type = "uint8"},
            {name = "status", type = "uint8"},
            {name = "score", type = "uint32"},
            {name = "quality", type = "uint8"},
            {name = "hp_max", type = "uint32"},
            {name = "mp_max", type = "uint32"},
            {name = "atk_speed", type = "uint16"},
            {name = "phy_dmg", type = "uint32"},
            {name = "magic_dmg", type = "uint32"},
            {name = "phy_def", type = "uint32"},
            {name = "magic_def", type = "uint32"},
            {name = "heal_val", type = "uint16"},
            {name = "eqm", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "eqm_attrs", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "val", type = "int32"}
                }}, 
                {name = "is_init", type = "uint8"},
                {name = "timeout", type = "uint32"}
            }}, 
            {name = "aroused", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "lev", type = "uint16"},
                {name = "exp", type = "uint32"},
                {name = "attrs", type = "array", fields = {
                    {name = "name", type = "uint32"},
                    {name = "val", type = "int32"}
                }}
            }}, 
            {name = "attrs", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "skills", type = "array", fields = {
                {name = "skill_id", type = "uint32"},
                {name = "skill_lev", type = "uint8"}
            }}, 
            {name = "growth", type = "uint32"},
            {name = "active", type = "uint8"}
        }}
    },
    [10901] = {
        {name = "guards", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "war_id", type = "uint8"},
            {name = "tac_pos", type = "uint8"},
            {name = "score", type = "uint32"},
            {name = "quality", type = "uint8"},
            {name = "hp_max", type = "uint32"},
            {name = "mp_max", type = "uint32"},
            {name = "atk_speed", type = "uint16"},
            {name = "phy_dmg", type = "uint32"},
            {name = "magic_dmg", type = "uint32"},
            {name = "phy_def", type = "uint32"},
            {name = "magic_def", type = "uint32"},
            {name = "heal_val", type = "uint16"},
            {name = "eqm", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "eqm_attrs", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "val", type = "int32"}
                }}, 
                {name = "reset_base_id", type = "uint32"},
                {name = "reset_attrs", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "val", type = "int32"}
                }}, 
                {name = "gem", type = "array", fields = {
                    {name = "id", type = "uint8"},
                    {name = "base_id", type = "uint32"},
                    {name = "type", type = "uint8"}
                }}, 
                {name = "is_init", type = "uint8"},
                {name = "timeout", type = "uint32"},
                {name = "back_effect_timeout", type = "uint32"},
                {name = "back_effect_attr", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "val", type = "int32"}
                }}
            }}, 
            {name = "aroused", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "lev", type = "uint16"},
                {name = "exp", type = "uint32"},
                {name = "attrs", type = "array", fields = {
                    {name = "name", type = "uint32"},
                    {name = "val", type = "int32"}
                }}
            }}, 
            {name = "attrs", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "skills", type = "array", fields = {
                {name = "skill_id", type = "uint32"},
                {name = "skill_lev", type = "uint8"}
            }}, 
            {name = "growth", type = "uint32"},
            {name = "active", type = "uint8"}
        }}
    },
    [10902] = {
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "eqm_attrs", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "val", type = "int32"}
        }}, 
        {name = "reset_base_id", type = "uint32"},
        {name = "reset_attrs", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "val", type = "int32"}
        }}, 
        {name = "is_init", type = "uint8"},
        {name = "timeout", type = "uint32"},
        {name = "back_effect_timeout", type = "uint32"},
        {name = "back_effect_attr", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "val", type = "int32"}
        }}
    },
    [10903] = {
        {name = "base_id", type = "uint32"},
        {name = "status", type = "uint8"},
        {name = "war_id", type = "uint8"},
        {name = "tac_pos", type = "uint8"},
        {name = "score", type = "uint32"},
        {name = "quality", type = "uint8"},
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"},
        {name = "atk_speed", type = "uint16"},
        {name = "phy_dmg", type = "uint32"},
        {name = "magic_dmg", type = "uint32"},
        {name = "phy_def", type = "uint32"},
        {name = "magic_def", type = "uint32"},
        {name = "heal_val", type = "uint16"},
        {name = "eqm", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "eqm_attrs", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "reset_base_id", type = "uint32"},
            {name = "reset_attrs", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "gem", type = "array", fields = {
                {name = "id", type = "uint8"},
                {name = "base_id", type = "uint32"},
                {name = "type", type = "uint8"}
            }}, 
            {name = "is_init", type = "uint8"},
            {name = "timeout", type = "uint32"},
            {name = "back_effect_timeout", type = "uint32"},
            {name = "back_effect_attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "val", type = "int32"}
            }}
        }}, 
        {name = "aroused", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "lev", type = "uint16"},
            {name = "exp", type = "uint32"},
            {name = "attrs", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "val", type = "int32"}
            }}
        }}, 
        {name = "attrs", type = "array", fields = {
            {name = "name", type = "uint32"},
            {name = "val", type = "int32"}
        }}, 
        {name = "skills", type = "array", fields = {
            {name = "skill_id", type = "uint32"},
            {name = "skill_lev", type = "uint8"}
        }}, 
        {name = "growth", type = "uint32"},
        {name = "active", type = "uint8"}
    },
    [10905] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "change_fields", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "pos", type = "uint8"}
        }}
    },
    [10906] = {
        {name = "tac_attr", type = "array", fields = {
            {name = "name", type = "uint32"},
            {name = "val", type = "int32"}
        }}
    },
    [10907] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10909] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "base_id", type = "uint32"}
    },
    [10910] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10911] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10912] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10913] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10914] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "base_id", type = "uint32"},
        {name = "star_id", type = "uint32"}
    },
    [10915] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "base_id", type = "uint32"},
        {name = "quality", type = "uint8"}
    },
    [10916] = {
        {name = "base_id", type = "uint32"},
        {name = "aroused", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "lev", type = "uint16"},
            {name = "exp", type = "uint32"},
            {name = "attrs", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "val", type = "int32"}
            }}
        }}, 
        {name = "attrs", type = "array", fields = {
            {name = "name", type = "uint32"},
            {name = "val", type = "int32"}
        }}, 
        {name = "skills", type = "array", fields = {
            {name = "skill_id", type = "uint32"},
            {name = "skill_lev", type = "uint8"}
        }}, 
        {name = "growth", type = "uint32"},
        {name = "active", type = "uint8"}
    },
    [10917] = {
        {name = "num", type = "uint8"},
        {name = "score", type = "uint32"},
        {name = "attrs", type = "array", fields = {
            {name = "name", type = "uint32"},
            {name = "val", type = "int32"}
        }}
    },
    [10918] = {
        {name = "id", type = "uint32"},
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "base_id", type = "uint32"},
        {name = "eqm_attrs", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "val", type = "int32"}
        }}, 
        {name = "timeout", type = "uint32"},
        {name = "back_effect_timeout", type = "uint32"},
        {name = "back_effect_attr", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "val", type = "int32"}
        }}
    },
    [10919] = {
        {name = "id", type = "uint32"},
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "base_id", type = "uint32"},
        {name = "eqm_attrs", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "val", type = "int32"}
        }}, 
        {name = "timeout", type = "uint32"},
        {name = "back_effect_timeout", type = "uint32"},
        {name = "back_effect_attr", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "val", type = "int32"}
        }}
    },
    [10920] = {
        {name = "err_code", type = "uint8"},
        {name = "base_id1", type = "uint32"},
        {name = "base_id2", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [10921] = {
        {name = "minlev_gem_list", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "lev", type = "uint8"},
            {name = "total_lev", type = "uint8"}
        }}
    },
    [10922] = {
        {name = "val", type = "uint32"}
    },
    [1100] = {
        {name = "msg", type = "string"},
        {name = "role_list", type = "array", fields = {
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "classes", type = "uint8"}
        }}, 
        {name = "cdkey", type = "uint8"}
    },
    [1101] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [1110] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "vip_lev", type = "uint8"},
        {name = "gold", type = "uint32"},
        {name = "time_reg", type = "uint32"}
    },
    [1120] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "vip_lev", type = "uint8"},
        {name = "gold", type = "uint32"},
        {name = "time_reg", type = "uint32"}
    },
    [11000] = {

    },
    [11001] = {

    },
    [11002] = {

    },
    [11003] = {
        {name = "hide", type = "uint8"}
    },
    [11004] = {
        {name = "flag", type = "uint8"}
    },
    [11005] = {
        {name = "flag", type = "uint8"},
        {name = "res_list", type = "array", fields = {
            {name = "res", type = "string"}
        }}
    },
    [11006] = {
        {name = "flag", type = "uint8"}
    },
    [11007] = {

    },
    [11010] = {
        {name = "id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "can_skip", type = "uint8"},
        {name = "hide_layer", type = "uint8"},
        {name = "action_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "type", type = "uint16"},
            {name = "need_next", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "mode", type = "int32"},
            {name = "unit_id", type = "uint32"},
            {name = "unit_base_id", type = "uint32"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "battle_id", type = "uint32"},
            {name = "mapid", type = "uint32"},
            {name = "x", type = "uint32"},
            {name = "y", type = "uint32"},
            {name = "val", type = "int32"},
            {name = "ext_val", type = "int32"},
            {name = "res_id", type = "uint32"},
            {name = "color", type = "string"},
            {name = "msg", type = "string"},
            {name = "ext_msg", type = "string"},
            {name = "ext_info", type = "array", fields = {
                {name = "val", type = "uint32"},
                {name = "msg", type = "string"}
            }}, 
            {name = "gain", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "value", type = "uint32"}
            }}, 
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"}
        }}
    },
    [11020] = {
        {name = "plot_id", type = "uint32"}
    },
    [11021] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "r_zone_id", type = "uint32"},
        {name = "unit_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "base_id", type = "uint32"},
            {name = "type", type = "uint32"},
            {name = "fun_type", type = "uint32"},
            {name = "dun_id", type = "uint32"},
            {name = "map", type = "uint32"},
            {name = "x", type = "uint32"},
            {name = "y", type = "uint32"},
            {name = "dir", type = "uint32"},
            {name = "act_type", type = "string"},
            {name = "quest_id", type = "uint32"},
            {name = "quest_prog_id", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "classes", type = "uint32"}
        }}
    },
    [11022] = {
        {name = "type", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [11023] = {
        {name = "flag", type = "uint8"},
        {name = "id", type = "uint32"}
    },
    [11024] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [11100] = {
        {name = "guild_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "name_used", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "id", type = "uint8"},
        {name = "changeable", type = "uint32"},
        {name = "last_changed", type = "uint32"},
        {name = "academy_lev", type = "uint8"},
        {name = "exchequer_lev", type = "uint8"},
        {name = "store_lev", type = "uint8"},
        {name = "lev_time", type = "uint32"},
        {name = "academy_time", type = "uint32"},
        {name = "exchequer_time", type = "uint32"},
        {name = "store_time", type = "uint32"},
        {name = "board", type = "string"},
        {name = "announcement", type = "string"},
        {name = "assets", type = "int32"},
        {name = "max_assets", type = "uint32"},
        {name = "upkeep", type = "uint32"},
        {name = "leader_name", type = "string"},
        {name = "rid", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint16"},
        {name = "leader_sex", type = "uint8"},
        {name = "leader_classes", type = "uint8"},
        {name = "leader_lev", type = "uint8"},
        {name = "mem_num", type = "uint16"},
        {name = "max_mem_num", type = "uint16"},
        {name = "fresh_num", type = "uint16"},
        {name = "max_fresh_num", type = "uint16"},
        {name = "health", type = "uint16"},
        {name = "create_time", type = "uint32"},
        {name = "formalizing_lev", type = "uint8"},
        {name = "element_info", type = "array", fields = {
            {name = "build_type", type = "uint8"},
            {name = "lev", type = "uint16"},
            {name = "time", type = "uint32"}
        }}, 
        {name = "upgrade_element_time", type = "uint32"},
        {name = "limit_mode", type = "uint8"},
        {name = "post", type = "uint8"}
    },
    [11101] = {
        {name = "members", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "post", type = "uint8"},
            {name = "enter_time", type = "uint32"},
            {name = "last_login", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "signature", type = "string"},
            {name = "value", type = "uint32"},
            {name = "total_value", type = "uint32"},
            {name = "cup", type = "uint32"},
            {name = "signed", type = "uint16"},
            {name = "last_signed", type = "uint32"},
            {name = "fc", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "remain", type = "uint32"},
            {name = "amount", type = "uint32"},
            {name = "requirement", type = "array", fields = {
                {name = "requirement_type", type = "uint8"},
                {name = "requirement_digit", type = "array", fields = {
                    {name = "digit_key", type = "uint8"},
                    {name = "digit_value", type = "uint32"}
                }}
            }}, 
            {name = "active", type = "uint32"},
            {name = "ability", type = "uint32"}
        }}, 
        {name = "mem_num", type = "uint16"},
        {name = "max_mem_num", type = "uint16"},
        {name = "fresh_num", type = "uint16"},
        {name = "max_fresh_num", type = "uint16"},
        {name = "insist_pray", type = "uint8"},
        {name = "pious_pray", type = "uint8"},
        {name = "grace_pray", type = "uint8"}
    },
    [11102] = {
        {name = "guild_list", type = "array", fields = {
            {name = "guild_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "id", type = "uint8"},
            {name = "leader_name", type = "string"},
            {name = "rid", type = "uint32"},
            {name = "r_platform", type = "string"},
            {name = "r_zone_id", type = "uint16"},
            {name = "leader_sex", type = "uint8"},
            {name = "leader_classes", type = "uint8"},
            {name = "leader_lev", type = "uint8"},
            {name = "mem_num", type = "uint16"},
            {name = "max_mem_num", type = "uint16"},
            {name = "fresh_num", type = "uint16"},
            {name = "max_fresh_num", type = "uint16"},
            {name = "health", type = "uint16"}
        }}
    },
    [11103] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11104] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11105] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11106] = {
        {name = "guild_list", type = "array", fields = {
            {name = "guild_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "id", type = "uint8"},
            {name = "leader_name", type = "string"},
            {name = "rid", type = "uint32"},
            {name = "r_platform", type = "string"},
            {name = "r_zone_id", type = "uint16"},
            {name = "leader_sex", type = "uint8"},
            {name = "leader_classes", type = "uint8"},
            {name = "leader_lev", type = "uint8"},
            {name = "mem_num", type = "uint16"},
            {name = "max_mem_num", type = "uint16"},
            {name = "fresh_num", type = "uint16"},
            {name = "max_fresh_num", type = "uint16"},
            {name = "board", type = "string"},
            {name = "announcement", type = "string"},
            {name = "activity", type = "uint16"},
            {name = "health", type = "uint16"}
        }}
    },
    [11107] = {
        {name = "post", type = "uint8"}
    },
    [11108] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11109] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11110] = {
        {name = "flag", type = "uint8"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "post", type = "uint8"},
        {name = "enter_time", type = "uint32"},
        {name = "last_login", type = "uint32"},
        {name = "status", type = "uint8"},
        {name = "signature", type = "string"},
        {name = "value", type = "uint32"},
        {name = "total_value", type = "uint32"},
        {name = "cup", type = "uint32"},
        {name = "signed", type = "uint16"},
        {name = "last_signed", type = "uint32"},
        {name = "fc", type = "uint32"},
        {name = "num", type = "uint32"},
        {name = "remain", type = "uint32"},
        {name = "amount", type = "uint32"},
        {name = "requirement", type = "array", fields = {
            {name = "requirement_type", type = "uint8"},
            {name = "requirement_digit", type = "array", fields = {
                {name = "digit_key", type = "uint8"},
                {name = "digit_value", type = "uint32"}
            }}
        }}, 
        {name = "active", type = "uint32"},
        {name = "ability", type = "uint32"}
    },
    [11111] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11112] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11113] = {
        {name = "lev", type = "uint8"},
        {name = "academy_lev", type = "uint8"},
        {name = "exchequer_lev", type = "uint8"},
        {name = "store_lev", type = "uint8"},
        {name = "formalizing_lev", type = "uint8"},
        {name = "lev_time", type = "uint32"},
        {name = "academy_time", type = "uint32"},
        {name = "exchequer_time", type = "uint32"},
        {name = "store_time", type = "uint32"},
        {name = "assets", type = "uint32"},
        {name = "element_info", type = "array", fields = {
            {name = "build_type", type = "uint8"},
            {name = "lev", type = "uint16"},
            {name = "time", type = "uint32"}
        }}, 
        {name = "upgrade_element_time", type = "uint32"},
        {name = "limit_mode", type = "uint8"}
    },
    [11114] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "type", type = "uint8"},
        {name = "content", type = "string"}
    },
    [11115] = {
        {name = "daily", type = "uint8"},
        {name = "weekly", type = "uint8"}
    },
    [11116] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11117] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11118] = {
        {name = "store_list", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint16"},
            {name = "price", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "val", type = "uint32"}
            }}, 
            {name = "limit", type = "uint16"},
            {name = "role_num", type = "uint16"}
        }}, 
        {name = "normal_goods", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "base_id", type = "uint32"},
            {name = "price", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "val", type = "uint32"}
            }}, 
            {name = "limit", type = "uint16"},
            {name = "role_num", type = "uint16"}
        }}
    },
    [11119] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "flag", type = "uint8"}
    },
    [11120] = {
        {name = "time", type = "uint32"}
    },
    [11121] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11122] = {
        {name = "flag", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "lev", type = "uint8"}
    },
    [11123] = {
        {name = "apply_list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "tag", type = "uint8"},
            {name = "msg", type = "string"}
        }}
    },
    [11124] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "flag", type = "uint8"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11125] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11126] = {
        {name = "event_list", type = "array", fields = {
            {name = "time", type = "uint32"},
            {name = "type", type = "uint8"},
            {name = "msg", type = "string"}
        }}
    },
    [11127] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11128] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11129] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11130] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11131] = {
        {name = "title", type = "string"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"}
    },
    [11132] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "title", type = "string"},
        {name = "amount", type = "uint32"},
        {name = "remain", type = "uint32"},
        {name = "num", type = "int32"},
        {name = "total", type = "int32"},
        {name = "time", type = "uint32"},
        {name = "log", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "r_platform", type = "string"},
            {name = "r_zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "val", type = "uint32"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "time", type = "uint32"}
        }}
    },
    [11133] = {
        {name = "s_id", type = "uint32"},
        {name = "s_platform", type = "string"},
        {name = "s_zone_id", type = "uint16"},
        {name = "s_name", type = "string"},
        {name = "t_id", type = "uint32"},
        {name = "t_platform", type = "string"},
        {name = "t_zone_id", type = "uint16"},
        {name = "t_name", type = "string"}
    },
    [11134] = {
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "step", type = "uint8"},
        {name = "exp", type = "int32"},
        {name = "called", type = "uint8"},
        {name = "last_renamed", type = "uint32"},
        {name = "log", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "r_platform", type = "string"},
            {name = "r_zone_id", type = "uint16"},
            {name = "rname", type = "string"},
            {name = "type", type = "uint8"},
            {name = "exp", type = "uint32"}
        }}
    },
    [11135] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11136] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11137] = {
        {name = "mercenarys", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint32"},
            {name = "recruited", type = "uint8"},
            {name = "dispatched", type = "uint32"},
            {name = "base_id", type = "uint32"}
        }}
    },
    [11138] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11139] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11140] = {
        {name = "looks", type = "array", fields = {
            {name = "looks_type", type = "uint32"},
            {name = "looks_mode", type = "uint32"},
            {name = "looks_val", type = "uint32"},
            {name = "looks_str", type = "string"}
        }}
    },
    [11141] = {
        {name = "mercenarys", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "lev", type = "uint32"},
            {name = "recruited", type = "uint8"},
            {name = "dispatched", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "base_id", type = "uint32"}
        }}
    },
    [11142] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint32"},
        {name = "recruited", type = "uint8"},
        {name = "dispatched", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"},
        {name = "atk_speed", type = "uint16"},
        {name = "phy_dmg", type = "uint32"},
        {name = "magic_dmg", type = "uint32"},
        {name = "phy_def", type = "uint32"},
        {name = "magic_def", type = "uint32"},
        {name = "eqm", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "eqm_attrs", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "val", type = "int32"}
            }}
        }}, 
        {name = "score", type = "uint32"}
    },
    [11143] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "name", type = "string"}
    },
    [11144] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "totem", type = "uint8"}
    },
    [11145] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "changeable", type = "uint32"}
    },
    [11146] = {
        {name = "result", type = "uint8"},
        {name = "timeout", type = "uint32"}
    },
    [11147] = {
        {name = "id", type = "uint32"},
        {name = "asked", type = "uint32"},
        {name = "answer", type = "uint8"},
        {name = "asked_num", type = "uint16"},
        {name = "answers", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "option", type = "uint8"},
            {name = "result", type = "uint8"},
            {name = "answered", type = "uint32"}
        }}, 
        {name = "cheat_off", type = "uint8"},
        {name = "cheat_num", type = "uint16"},
        {name = "today_right", type = "uint16"},
        {name = "today_max", type = "uint16"}
    },
    [11148] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "option", type = "uint8"}
    },
    [11149] = {
        {name = "answers", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "name", type = "string"},
            {name = "guild_name", type = "string"},
            {name = "totem_id", type = "uint32"},
            {name = "score", type = "uint32"}
        }}
    },
    [11150] = {
        {name = "option", type = "uint8"}
    },
    [11151] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "option", type = "uint8"},
        {name = "result", type = "uint8"},
        {name = "answered", type = "uint32"}
    },
    [11152] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11153] = {
        {name = "exp", type = "uint32"}
    },
    [11154] = {
        {name = "guild_name", type = "string"}
    },
    [11155] = {
        {name = "my_score", type = "uint32"},
        {name = "my_rank", type = "uint32"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "name", type = "string"},
        {name = "guild_name", type = "string"},
        {name = "totem_id", type = "uint32"},
        {name = "score", type = "uint32"}
    },
    [11156] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "time", type = "uint32"}
    },
    [11157] = {
        {name = "usurpers", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "ctime", type = "uint32"}
        }}
    },
    [11158] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11159] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11160] = {

    },
    [11161] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11162] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11163] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11164] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11165] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11166] = {
        {name = "owner_id", type = "uint32"},
        {name = "owner_platform", type = "string"},
        {name = "owner_zone_id", type = "uint16"},
        {name = "owner_name", type = "string"},
        {name = "sowed", type = "uint32"},
        {name = "unit_base_id", type = "uint32"},
        {name = "battle_id", type = "uint32"},
        {name = "uid", type = "uint32"},
        {name = "irrigations", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "ctime", type = "uint32"}
        }}
    },
    [11167] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11168] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11169] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [11170] = {
        {name = "applys", type = "array", fields = {
            {name = "g_id", type = "uint32"},
            {name = "g_platform", type = "string"},
            {name = "g_zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "r_id", type = "uint32"},
            {name = "r_platform", type = "string"},
            {name = "r_zone_id", type = "uint16"},
            {name = "leader_name", type = "string"},
            {name = "ctime", type = "uint32"}
        }}
    },
    [11171] = {
        {name = "applyed", type = "array", fields = {
            {name = "a_id", type = "uint32"},
            {name = "a_platform", type = "string"},
            {name = "a_zone_id", type = "uint16"}
        }}
    },
    [11172] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11173] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11174] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11175] = {
        {name = "remain", type = "uint32"}
    },
    [11176] = {
        {name = "g_id", type = "uint32"},
        {name = "g_platform", type = "string"},
        {name = "g_zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "r_id", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint16"},
        {name = "leader_name", type = "string"},
        {name = "ctime", type = "uint32"}
    },
    [11177] = {
        {name = "can_open", type = "uint8"},
        {name = "setting_chance", type = "uint8"},
        {name = "setting_time", type = "uint32"},
        {name = "is_win", type = "uint8"}
    },
    [11178] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11179] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11180] = {
        {name = "items", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint16"}
        }}, 
        {name = "allocated", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "r_platform", type = "string"},
            {name = "r_zone_id", type = "uint16"},
            {name = "base_id", type = "uint16"},
            {name = "num", type = "uint16"},
            {name = "time", type = "uint32"}
        }}, 
        {name = "log", type = "array", fields = {
            {name = "msg", type = "string"},
            {name = "base_id", type = "uint16"},
            {name = "ctime", type = "uint32"}
        }}
    },
    [11181] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11182] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11183] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11184] = {
        {name = "invitations", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "ctime", type = "uint32"},
            {name = "gid", type = "uint32"},
            {name = "g_platform", type = "string"},
            {name = "g_zone_id", type = "uint16"},
            {name = "guild_name", type = "string"}
        }}
    },
    [11185] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "ctime", type = "uint32"},
        {name = "gid", type = "uint32"},
        {name = "g_platform", type = "string"},
        {name = "g_zone_id", type = "uint16"},
        {name = "guild_name", type = "string"}
    },
    [11186] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11187] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "name", type = "string"},
        {name = "name_used", type = "string"}
    },
    [11188] = {
        {name = "num", type = "uint32"},
        {name = "left_num", type = "uint32"}
    },
    [11189] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11190] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11191] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11192] = {
        {name = "element_attr", type = "array", fields = {
            {name = "effect_obj", type = "uint8"},
            {name = "attr", type = "array", fields = {
                {name = "effect_type", type = "uint32"},
                {name = "val", type = "uint32"}
            }}, 
            {name = "high_attr", type = "array", fields = {
                {name = "effect_type", type = "uint32"},
                {name = "val", type = "uint32"}
            }}, 
            {name = "add_skill_list", type = "array", fields = {
                {name = "skill_id", type = "uint32"},
                {name = "lev", type = "uint32"}
            }}, 
            {name = "end_time", type = "uint32"}
        }}, 
        {name = "tmp_element_attr", type = "array", fields = {
            {name = "effect_obj", type = "uint8"},
            {name = "attr", type = "array", fields = {
                {name = "effect_type", type = "uint32"},
                {name = "val", type = "uint32"}
            }}, 
            {name = "high_attr", type = "array", fields = {
                {name = "effect_type", type = "uint32"},
                {name = "val", type = "uint32"}
            }}, 
            {name = "add_skill_list", type = "array", fields = {
                {name = "skill_id", type = "uint32"},
                {name = "lev", type = "uint32"}
            }}, 
            {name = "end_time", type = "uint32"}
        }}
    },
    [11193] = {
        {name = "cost", type = "uint32"}
    },
    [11194] = {
        {name = "element_info", type = "array", fields = {
            {name = "build_type", type = "uint8"},
            {name = "lev", type = "uint16"}
        }}
    },
    [11195] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11196] = {
        {name = "remain", type = "uint32"}
    },
    [11197] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11198] = {
        {name = "total_donate", type = "uint32"}
    },
    [11199] = {
        {name = "limit_mode", type = "uint8"}
    },
    [11200] = {
        {name = "fid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "master_name", type = "string"},
        {name = "map_id", type = "uint32"},
        {name = "lev", type = "uint32"},
        {name = "env_val", type = "uint32"},
        {name = "furnishings", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "num", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "x", type = "uint16"},
            {name = "y", type = "uint16"},
            {name = "gx", type = "uint16"},
            {name = "gy", type = "uint16"},
            {name = "dir", type = "uint8"}
        }}, 
        {name = "floor_lev", type = "uint32"},
        {name = "bdg_info", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "lev", type = "uint32"},
            {name = "exp", type = "uint32"}
        }}, 
        {name = "cleanness", type = "uint32"},
        {name = "housekeeper_action_times", type = "uint32"},
        {name = "is_upgrade_bdg", type = "array", fields = {
            {name = "bad_type", type = "uint8"},
            {name = "done", type = "uint8"}
        }}, 
        {name = "visit_lock", type = "uint8"},
        {name = "growth", type = "uint32"},
        {name = "flower_num", type = "uint8"},
        {name = "wake_time", type = "uint32"},
        {name = "event_record", type = "array", fields = {
            {name = "time", type = "uint32"},
            {name = "wid", type = "uint32"},
            {name = "wplatform", type = "string"},
            {name = "wzone_id", type = "uint16"},
            {name = "role_name", type = "string"},
            {name = "event", type = "int8"}
        }}, 
        {name = "inviters", type = "array", fields = {
            {name = "ivtid", type = "uint32"},
            {name = "ivtplatform", type = "string"},
            {name = "ivtzone_id", type = "uint16"}
        }}, 
        {name = "fosters", type = "array", fields = {
            {name = "fsttid", type = "uint32"},
            {name = "fstplatform", type = "string"},
            {name = "fstzone_id", type = "uint16"}
        }}, 
        {name = "beans_rewards", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "gvid", type = "uint32"},
            {name = "gvplatform", type = "string"},
            {name = "gvzone_id", type = "uint16"},
            {name = "giver_name", type = "string"},
            {name = "blid", type = "uint32"},
            {name = "blplatform", type = "string"},
            {name = "blzone_id", type = "uint16"},
            {name = "pos_x", type = "uint16"},
            {name = "pos_y", type = "uint16"}
        }}, 
        {name = "battle_id", type = "uint32"}
    },
    [11201] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11202] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11203] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11204] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [11205] = {
        {name = "update_info", type = "array", fields = {
            {name = "flag", type = "uint8"},
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "num", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "x", type = "uint16"},
            {name = "y", type = "uint16"},
            {name = "gx", type = "uint16"},
            {name = "gy", type = "uint16"},
            {name = "dir", type = "uint8"}
        }}
    },
    [11206] = {
        {name = "fid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11207] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11208] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11209] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11210] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11211] = {
        {name = "goods_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "store_type", type = "uint8"},
            {name = "base_id", type = "uint32"},
            {name = "type", type = "uint32"},
            {name = "val", type = "uint32"},
            {name = "count", type = "uint32"}
        }}
    },
    [11212] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11213] = {
        {name = "bdg_info", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "lev", type = "uint32"},
            {name = "exp", type = "uint32"}
        }}
    },
    [11214] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11215] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11216] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11217] = {
        {name = "effect_list", type = "array", fields = {
            {name = "effect_type", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [11218] = {
        {name = "fid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "map_id", type = "uint32"},
        {name = "lev", type = "uint32"},
        {name = "env_val", type = "uint32"},
        {name = "floor_lev", type = "uint32"},
        {name = "cleanness", type = "uint32"},
        {name = "housekeeper_action_times", type = "uint32"},
        {name = "is_upgrade_bdg", type = "array", fields = {
            {name = "bad_type", type = "uint8"},
            {name = "done", type = "uint8"}
        }}, 
        {name = "visit_lock", type = "uint8"},
        {name = "battle_id", type = "uint32"}
    },
    [11219] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11220] = {
        {name = "train_info", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "pet_id", type = "uint32"},
            {name = "end_time", type = "uint32"}
        }}
    },
    [11221] = {
        {name = "use_info", type = "array", fields = {
            {name = "effect_type", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [11222] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11223] = {
        {name = "type", type = "uint8"},
        {name = "family_info", type = "array", fields = {
            {name = "fid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "mid", type = "uint32"},
            {name = "mplatform", type = "string"},
            {name = "mzone_id", type = "uint16"},
            {name = "master_name", type = "string"},
            {name = "master_lev", type = "uint32"},
            {name = "master_classes", type = "uint8"},
            {name = "master_sex", type = "uint8"},
            {name = "lid", type = "uint32"},
            {name = "lplatform", type = "string"},
            {name = "lzone_id", type = "uint16"},
            {name = "lover_name", type = "string"},
            {name = "lev", type = "uint32"},
            {name = "env_val", type = "uint32"},
            {name = "visit_lock", type = "uint32"}
        }}
    },
    [11224] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11225] = {
        {name = "growth", type = "uint32"},
        {name = "flower_num", type = "uint8"},
        {name = "wake_time", type = "uint32"},
        {name = "event_record", type = "array", fields = {
            {name = "time", type = "uint32"},
            {name = "wid", type = "uint32"},
            {name = "wplatform", type = "string"},
            {name = "wzone_id", type = "uint16"},
            {name = "role_name", type = "string"},
            {name = "event", type = "int8"}
        }}, 
        {name = "inviters", type = "array", fields = {
            {name = "ivtid", type = "uint32"},
            {name = "ivtplatform", type = "string"},
            {name = "ivtzone_id", type = "uint16"}
        }}, 
        {name = "fosters", type = "array", fields = {
            {name = "fsttid", type = "uint32"},
            {name = "fstplatform", type = "string"},
            {name = "fstzone_id", type = "uint16"}
        }}, 
        {name = "beans_rewards", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "gvid", type = "uint32"},
            {name = "gvplatform", type = "string"},
            {name = "gvzone_id", type = "uint16"},
            {name = "giver_name", type = "string"},
            {name = "blid", type = "uint32"},
            {name = "blplatform", type = "string"},
            {name = "blzone_id", type = "uint16"},
            {name = "pos_x", type = "uint16"},
            {name = "pos_y", type = "uint16"}
        }}
    },
    [11226] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11227] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11228] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11229] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11230] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11231] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11232] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11233] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11234] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11235] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11300] = {
        {name = "tab", type = "uint8"},
        {name = "reload", type = "uint8"}
    },
    [11301] = {
        {name = "tab", type = "uint8"},
        {name = "itemlist", type = "array", fields = {
            {name = "tab2", type = "uint8"},
            {name = "label", type = "uint8"},
            {name = "id", type = "uint16"},
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "price", type = "int32"},
            {name = "limit_role", type = "int16"},
            {name = "discount", type = "int32"},
            {name = "privilege_lev", type = "int32"},
            {name = "min_break", type = "int32"},
            {name = "max_break", type = "int32"},
            {name = "rencounter_lev", type = "int32"},
            {name = "ext_args", type = "string"},
            {name = "assets_type", type = "string"},
            {name = "limit_type", type = "string"},
            {name = "sort", type = "uint32"},
            {name = "privilege_role", type = "array", fields = {
                {name = "p_lev", type = "int32"},
                {name = "p_num", type = "uint32"}
            }}, 
            {name = "achievement_limit", type = "array", fields = {
                {name = "min", type = "int32"},
                {name = "max", type = "int32"},
                {name = "discount", type = "int32"}
            }}
        }}
    },
    [11302] = {
        {name = "buy_info", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "num", type = "uint16"}
        }}
    },
    [11303] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11400] = {

    },
    [11500] = {
        {name = "game_opts", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "val", type = "uint8"}
        }}
    },
    [11501] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11600] = {
        {name = "grade", type = "uint8"},
        {name = "wing_id", type = "uint32"},
        {name = "growth", type = "uint8"},
        {name = "enhance", type = "uint8"},
        {name = "tmp_grade", type = "uint8"},
        {name = "tmp_wing_id", type = "uint32"},
        {name = "tmp_growth", type = "uint8"},
        {name = "star", type = "uint32"},
        {name = "valid_plan", type = "uint8"},
        {name = "plan_data", type = "array", fields = {
            {name = "index", type = "uint8"},
            {name = "plan_name", type = "string"},
            {name = "skills", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "lev", type = "uint8"},
                {name = "is_lock", type = "uint8"}
            }}, 
            {name = "tmp_skills", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "lev", type = "uint8"},
                {name = "is_lock", type = "uint8"}
            }}
        }}, 
        {name = "change_times", type = "uint32"},
        {name = "reset_times", type = "uint32"},
        {name = "break_skills", type = "array", fields = {
            {name = "skill_grade", type = "uint8"},
            {name = "skill_id", type = "uint32"},
            {name = "skill_lev", type = "uint8"},
            {name = "skill_val", type = "uint8"}
        }}, 
        {name = "wing_ids", type = "array", fields = {
            {name = "elem_wing_id", type = "uint32"}
        }}, 
        {name = "exp", type = "uint32"},
        {name = "appearance", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "timeout", type = "uint32"}
        }}, 
        {name = "speed", type = "uint8"},
        {name = "wing_groups", type = "array", fields = {
            {name = "group_id", type = "uint32"},
            {name = "wing_ids", type = "array", fields = {
                {name = "wing_id", type = "uint32"}
            }}, 
            {name = "wing_times", type = "uint32"},
            {name = "rewarded", type = "uint8"}
        }}, 
        {name = "wing_power", type = "uint32"}
    },
    [11601] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11602] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11603] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "crit", type = "uint8"}
    },
    [11604] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11605] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11606] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11607] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11608] = {
        {name = "skills", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "lev", type = "uint8"},
            {name = "is_lock", type = "uint8"}
        }}
    },
    [11609] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11610] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11611] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "skill_grade", type = "uint8"},
        {name = "skill_id", type = "uint32"},
        {name = "skill_lev", type = "uint8"},
        {name = "skill_val", type = "uint8"}
    },
    [11613] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11614] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11615] = {
        {name = "result", type = "uint8"},
        {name = "index", type = "uint8"},
        {name = "items", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "msg", type = "string"}
    },
    [11616] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11617] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11618] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "group_id", type = "uint32"}
    },
    [11700] = {
        {name = "type", type = "uint8"},
        {name = "lev_flag", type = "uint8"},
        {name = "team_formation", type = "uint8"},
        {name = "team_formation_lev", type = "uint8"},
        {name = "status", type = "uint8"},
        {name = "last_join_time", type = "uint32"},
        {name = "combat_num", type = "uint32"},
        {name = "members", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "face_id", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "join_type", type = "uint8"},
            {name = "join_sub_type", type = "uint8"},
            {name = "join_time", type = "uint32"},
            {name = "combat_num", type = "uint32"}
        }}, 
        {name = "order", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"}
        }}
    },
    [11701] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11702] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11703] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11704] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11705] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11706] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11707] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11708] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11709] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11710] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11711] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11712] = {
        {name = "matching_teams", type = "uint16"},
        {name = "matching_roles", type = "uint16"}
    },
    [11713] = {
        {name = "inviting", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "type", type = "uint8"},
            {name = "member_num", type = "uint8"},
            {name = "inviter_status", type = "uint8"}
        }}
    },
    [11714] = {
        {name = "result", type = "uint8"},
        {name = "types", type = "array", fields = {
            {name = "type", type = "uint8"}
        }}, 
        {name = "msg", type = "string"},
        {name = "mtime", type = "uint32"}
    },
    [11715] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "member_num", type = "uint8"},
        {name = "inviter_status", type = "uint8"},
        {name = "cross_type", type = "uint8"}
    },
    [11716] = {
        {name = "applys", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "face_id", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}
        }}
    },
    [11717] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "face_id", type = "uint32"},
        {name = "status", type = "uint8"},
        {name = "looks", type = "array", fields = {
            {name = "looks_type", type = "uint32"},
            {name = "looks_mode", type = "uint32"},
            {name = "looks_val", type = "uint32"},
            {name = "looks_str", type = "string"}
        }}
    },
    [11718] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11719] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11720] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11721] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11722] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "status", type = "uint8"}
    },
    [11723] = {
        {name = "add", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "face_id", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "lev_min", type = "uint8"},
            {name = "lev_max", type = "uint8"},
            {name = "team_type", type = "uint8"},
            {name = "member_num", type = "uint8"},
            {name = "matched", type = "uint32"},
            {name = "args", type = "array", fields = {
                {name = "key", type = "uint8"},
                {name = "value", type = "uint32"}
            }}
        }}, 
        {name = "update", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "face_id", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "lev_min", type = "uint8"},
            {name = "lev_max", type = "uint8"},
            {name = "team_type", type = "uint8"},
            {name = "member_num", type = "uint8"},
            {name = "matched", type = "uint32"},
            {name = "args", type = "array", fields = {
                {name = "key", type = "uint8"},
                {name = "value", type = "uint32"}
            }}
        }}, 
        {name = "del", type = "array", fields = {
            {name = "id", type = "uint8"}
        }}
    },
    [11724] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11725] = {
        {name = "type", type = "uint8"},
        {name = "lev_flag", type = "uint8"},
        {name = "team_formation", type = "uint8"},
        {name = "team_formation_lev", type = "uint8"},
        {name = "status", type = "uint8"},
        {name = "last_join_time", type = "uint32"},
        {name = "combat_num", type = "uint32"}
    },
    [11726] = {
        {name = "members", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "face_id", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "join_type", type = "uint8"},
            {name = "join_sub_type", type = "uint8"},
            {name = "join_time", type = "uint32"},
            {name = "combat_num", type = "uint32"}
        }}, 
        {name = "order", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"}
        }}
    },
    [11727] = {
        {name = "members", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"}
        }}, 
        {name = "order", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"}
        }}
    },
    [11728] = {
        {name = "recruitment_list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "type", type = "uint8"},
            {name = "member_num", type = "uint8"}
        }}
    },
    [11729] = {
        {name = "members", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "combat_num", type = "uint32"}
        }}
    },
    [11730] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11731] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11732] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"}
    },
    [11733] = {
        {name = "add", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "face_id", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "lev_min", type = "uint8"},
            {name = "lev_max", type = "uint8"},
            {name = "team_type", type = "uint8"},
            {name = "member_num", type = "uint8"},
            {name = "matched", type = "uint32"},
            {name = "args", type = "array", fields = {
                {name = "key", type = "uint8"},
                {name = "value", type = "uint32"}
            }}
        }}, 
        {name = "update", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "face_id", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "lev_min", type = "uint8"},
            {name = "lev_max", type = "uint8"},
            {name = "team_type", type = "uint8"},
            {name = "member_num", type = "uint8"},
            {name = "matched", type = "uint32"},
            {name = "args", type = "array", fields = {
                {name = "key", type = "uint8"},
                {name = "value", type = "uint32"}
            }}
        }}, 
        {name = "del", type = "array", fields = {
            {name = "id", type = "uint8"}
        }}
    },
    [11734] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11735] = {
        {name = "team_mark", type = "uint16"}
    },
    [11736] = {
        {name = "members", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "face_id", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "join_type", type = "uint8"},
            {name = "join_sub_type", type = "uint8"},
            {name = "join_time", type = "uint32"},
            {name = "combat_num", type = "uint32"}
        }}
    },
    [11737] = {
        {name = "flag", type = "uint16"}
    },
    [11738] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "cross_type", type = "uint8"}
    },
    [11739] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11800] = {
        {name = "signature", type = "string"},
        {name = "fans", type = "uint16"},
        {name = "glamor", type = "uint32"},
        {name = "offline_push", type = "uint8"},
        {name = "max_num", type = "uint16"}
    },
    [11801] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "type", type = "uint8"},
            {name = "intimacy", type = "uint32"},
            {name = "name", type = "string"},
            {name = "online", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "fc", type = "uint32"},
            {name = "total_fc", type = "uint32"},
            {name = "face", type = "uint32"},
            {name = "glamor", type = "uint32"},
            {name = "signature", type = "string"},
            {name = "city", type = "string"},
            {name = "online_time", type = "uint32"},
            {name = "guild", type = "string"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "offline_push", type = "uint8"}
        }}
    },
    [11802] = {
        {name = "type", type = "uint8"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "type", type = "uint8"},
            {name = "intimacy", type = "uint32"},
            {name = "name", type = "string"},
            {name = "online", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "fc", type = "uint32"},
            {name = "total_fc", type = "uint32"},
            {name = "face", type = "uint32"},
            {name = "glamor", type = "uint32"},
            {name = "signature", type = "string"},
            {name = "city", type = "string"},
            {name = "online_time", type = "uint32"},
            {name = "guild", type = "string"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "offline_push", type = "uint8"}
        }}
    },
    [11803] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11804] = {

    },
    [11805] = {

    },
    [11806] = {
        {name = "flag", type = "uint8"}
    },
    [11807] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11808] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "fc", type = "uint16"},
        {name = "guild", type = "string"}
    },
    [11809] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "fc", type = "uint32"},
        {name = "total_fc", type = "uint32"},
        {name = "face", type = "uint32"}
    },
    [11810] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "online", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "fc", type = "uint32"},
            {name = "total_fc", type = "uint32"},
            {name = "face", type = "uint32"},
            {name = "glamor", type = "uint32"},
            {name = "signature", type = "string"},
            {name = "city", type = "string"},
            {name = "online_time", type = "uint32"},
            {name = "guild", type = "string"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "offline_push", type = "uint8"}
        }}
    },
    [11811] = {
        {name = "friend_request", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "fc", type = "uint32"},
            {name = "total_fc", type = "uint32"},
            {name = "face", type = "uint32"}
        }}
    },
    [11820] = {
        {name = "name", type = "string"},
        {name = "name_used", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "birth", type = "string"},
        {name = "constellation", type = "uint8"},
        {name = "abo", type = "uint8"},
        {name = "signature", type = "string"},
        {name = "spouse_name", type = "string"},
        {name = "guild", type = "string"},
        {name = "region", type = "string"},
        {name = "city", type = "string"},
        {name = "is_shared_region", type = "uint8"},
        {name = "visited", type = "uint32"},
        {name = "privacy", type = "uint8"},
        {name = "liked", type = "uint32"},
        {name = "prize_num", type = "uint32"},
        {name = "present_num", type = "uint32"},
        {name = "honor_id", type = "uint32"},
        {name = "lover_name", type = "string"},
        {name = "teacher_name", type = "string"},
        {name = "theme", type = "uint16"},
        {name = "photo_frame", type = "uint16"},
        {name = "sworn_name", type = "string"},
        {name = "photo", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "auditing", type = "uint8"},
            {name = "uploaded", type = "uint32"}
        }}, 
        {name = "badges", type = "array", fields = {
            {name = "badge_id", type = "uint16"}
        }}, 
        {name = "visitors", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "time", type = "uint32"}
        }}, 
        {name = "subscribed", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "cared", type = "uint8"},
            {name = "interacted", type = "uint32"}
        }}, 
        {name = "fans", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "cared", type = "uint8"},
            {name = "interacted", type = "uint32"}
        }}, 
        {name = "tags", type = "array", fields = {
            {name = "tag_id", type = "uint8"},
            {name = "tag", type = "string"}
        }}, 
        {name = "show_honor", type = "uint16"},
        {name = "pre_honor_id", type = "uint32"},
        {name = "privacy_zone", type = "uint8"},
        {name = "privacy_moments", type = "uint8"}
    },
    [11821] = {
        {name = "trends", type = "array", fields = {
            {name = "likable", type = "uint8"},
            {name = "id", type = "uint32"},
            {name = "type", type = "uint8"},
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "content", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "ctime", type = "uint32"},
            {name = "liked", type = "uint32"},
            {name = "presents", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "num", type = "uint32"}
            }}
        }}
    },
    [11822] = {
        {name = "name", type = "string"},
        {name = "name_used", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint16"},
        {name = "birth", type = "string"},
        {name = "constellation", type = "uint8"},
        {name = "abo", type = "uint8"},
        {name = "signature", type = "string"},
        {name = "spouse_name", type = "string"},
        {name = "guild", type = "string"},
        {name = "region", type = "string"},
        {name = "city", type = "string"},
        {name = "is_shared_region", type = "uint8"},
        {name = "visited", type = "uint32"},
        {name = "privacy", type = "uint8"},
        {name = "liked", type = "uint32"},
        {name = "prize_num", type = "uint32"},
        {name = "present_num", type = "uint32"},
        {name = "honor_id", type = "uint32"},
        {name = "lover_name", type = "string"},
        {name = "teacher_name", type = "string"},
        {name = "theme", type = "uint16"},
        {name = "photo_frame", type = "uint16"},
        {name = "sworn_name", type = "string"},
        {name = "photo", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "auditing", type = "uint8"},
            {name = "uploaded", type = "uint32"}
        }}, 
        {name = "badges", type = "array", fields = {
            {name = "badge_id", type = "uint16"}
        }}, 
        {name = "visitors", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "time", type = "uint32"}
        }}, 
        {name = "subscribed", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "cared", type = "uint8"},
            {name = "interacted", type = "uint32"}
        }}, 
        {name = "fans", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "cared", type = "uint8"},
            {name = "interacted", type = "uint32"}
        }}, 
        {name = "tags", type = "array", fields = {
            {name = "tag_id", type = "uint8"},
            {name = "tag", type = "string"}
        }}, 
        {name = "show_honor", type = "uint16"},
        {name = "pre_honor_id", type = "uint32"},
        {name = "is_subscribed", type = "uint8"},
        {name = "likable", type = "uint8"}
    },
    [11823] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11824] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11825] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11826] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11827] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11828] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11829] = {
        {name = "trends", type = "array", fields = {
            {name = "likable", type = "uint8"},
            {name = "id", type = "uint32"},
            {name = "type", type = "uint8"},
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "content", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "ctime", type = "uint32"},
            {name = "liked", type = "uint32"},
            {name = "presents", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "num", type = "uint32"}
            }}
        }}
    },
    [11830] = {
        {name = "id", type = "uint32"},
        {name = "type", type = "uint8"},
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "content", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "ctime", type = "uint32"},
        {name = "liked", type = "uint32"},
        {name = "presents", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [11831] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11832] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11833] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11834] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11835] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11836] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "item_base_id", type = "uint32"}
    },
    [11837] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11838] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "photo", type = "uint8"},
            {name = "liked", type = "uint32"},
            {name = "prize_num", type = "uint32"}
        }}
    },
    [11839] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "photo", type = "uint8"},
            {name = "liked", type = "uint32"},
            {name = "prize_num", type = "uint32"}
        }}
    },
    [11840] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "got_prize", type = "uint8"},
            {name = "time", type = "uint32"}
        }}
    },
    [11841] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11842] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11843] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "base_id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [11844] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "num", type = "uint32"},
            {name = "time", type = "uint32"}
        }}
    },
    [11845] = {
        {name = "photo", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "photo_bin", type = "byte"},
            {name = "auditing", type = "uint8"},
            {name = "default", type = "uint8"},
            {name = "uploaded", type = "uint32"}
        }}
    },
    [11846] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11847] = {
        {name = "rewarded", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "time", type = "uint32"}
        }}
    },
    [11848] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11849] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11850] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11851] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11852] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11853] = {
        {name = "photo", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "photo_bin", type = "byte"}
        }}
    },
    [11854] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11855] = {
        {name = "friend_role", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "online", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "guild", type = "string"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "offline_push", type = "uint8"}
        }}
    },
    [11856] = {
        {name = "page", type = "uint8"},
        {name = "moments", type = "array", fields = {
            {name = "m_id", type = "uint32"},
            {name = "m_platform", type = "string"},
            {name = "m_zone_id", type = "uint16"},
            {name = "type", type = "uint8"},
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "content", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "ctime", type = "uint32"},
            {name = "likes", type = "array", fields = {
                {name = "liker_id", type = "uint32"},
                {name = "liker_platform", type = "string"},
                {name = "liker_zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "ctime", type = "uint32"}
            }}, 
            {name = "friend_comment", type = "array", fields = {
                {name = "commentator_id", type = "uint32"},
                {name = "commentator_platform", type = "string"},
                {name = "commentator_zone_id", type = "uint16"},
                {name = "id", type = "uint32"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "ctime", type = "uint32"},
                {name = "msg", type = "string"}
            }}, 
            {name = "friend_moment_photo", type = "array", fields = {
                {name = "id", type = "uint8"},
                {name = "auditing", type = "uint8"},
                {name = "uploaded", type = "uint32"}
            }}
        }}
    },
    [11857] = {
        {name = "circle_id", type = "uint32"},
        {name = "circle_platform", type = "string"},
        {name = "circle_zone_id", type = "uint16"},
        {name = "page", type = "uint8"},
        {name = "moments", type = "array", fields = {
            {name = "m_id", type = "uint32"},
            {name = "m_platform", type = "string"},
            {name = "m_zone_id", type = "uint16"},
            {name = "type", type = "uint8"},
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "content", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "ctime", type = "uint32"},
            {name = "likes", type = "array", fields = {
                {name = "liker_id", type = "uint32"},
                {name = "liker_platform", type = "string"},
                {name = "liker_zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "ctime", type = "uint32"}
            }}, 
            {name = "friend_comment", type = "array", fields = {
                {name = "commentator_id", type = "uint32"},
                {name = "commentator_platform", type = "string"},
                {name = "commentator_zone_id", type = "uint16"},
                {name = "id", type = "uint32"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "ctime", type = "uint32"},
                {name = "msg", type = "string"}
            }}, 
            {name = "friend_moment_photo", type = "array", fields = {
                {name = "id", type = "uint8"},
                {name = "auditing", type = "uint8"},
                {name = "uploaded", type = "uint32"}
            }}
        }}
    },
    [11858] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11859] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11860] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11861] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11862] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11863] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11864] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "moment_id", type = "uint32"},
        {name = "photo_id", type = "uint32"}
    },
    [11865] = {
        {name = "up_type", type = "uint8"},
        {name = "m_id", type = "uint32"},
        {name = "m_platform", type = "string"},
        {name = "m_zone_id", type = "uint16"},
        {name = "type", type = "uint8"},
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "content", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "ctime", type = "uint32"},
        {name = "likes", type = "array", fields = {
            {name = "liker_id", type = "uint32"},
            {name = "liker_platform", type = "string"},
            {name = "liker_zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "ctime", type = "uint32"}
        }}, 
        {name = "friend_moment_photo", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "auditing", type = "uint8"},
            {name = "uploaded", type = "uint32"}
        }}
    },
    [11866] = {
        {name = "type", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "m_id", type = "uint32"},
        {name = "m_platform", type = "string"},
        {name = "m_zone_id", type = "uint16"},
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "msg", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "ctime", type = "uint32"}
    },
    [11867] = {
        {name = "type", type = "uint8"},
        {name = "m_id", type = "uint32"},
        {name = "m_platform", type = "string"},
        {name = "m_zone_id", type = "uint16"},
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "ctime", type = "uint32"}
    },
    [11868] = {
        {name = "photo", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "m_id", type = "uint32"},
            {name = "m_platform", type = "string"},
            {name = "m_zone_id", type = "uint16"},
            {name = "photo_bin", type = "byte"},
            {name = "auditing", type = "uint8"},
            {name = "uploaded", type = "uint32"}
        }}
    },
    [11869] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11870] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11871] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11872] = {
        {name = "thumb", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "m_id", type = "uint32"},
            {name = "m_platform", type = "string"},
            {name = "m_zone_id", type = "uint16"},
            {name = "thumb_bin", type = "byte"},
            {name = "auditing", type = "uint8"},
            {name = "uploaded", type = "uint32"}
        }}
    },
    [11873] = {
        {name = "page", type = "uint8"},
        {name = "moments", type = "array", fields = {
            {name = "m_id", type = "uint32"},
            {name = "m_platform", type = "string"},
            {name = "m_zone_id", type = "uint16"},
            {name = "type", type = "uint8"},
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "content", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "ctime", type = "uint32"},
            {name = "likes", type = "array", fields = {
                {name = "liker_id", type = "uint32"},
                {name = "liker_platform", type = "string"},
                {name = "liker_zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "ctime", type = "uint32"}
            }}, 
            {name = "friend_comment", type = "array", fields = {
                {name = "commentator_id", type = "uint32"},
                {name = "commentator_platform", type = "string"},
                {name = "commentator_zone_id", type = "uint16"},
                {name = "id", type = "uint32"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "ctime", type = "uint32"},
                {name = "msg", type = "string"}
            }}, 
            {name = "friend_moment_photo", type = "array", fields = {
                {name = "id", type = "uint8"},
                {name = "auditing", type = "uint8"},
                {name = "uploaded", type = "uint32"}
            }}
        }}
    },
    [11874] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11875] = {
        {name = "page", type = "uint8"},
        {name = "moments", type = "array", fields = {
            {name = "m_id", type = "uint32"},
            {name = "m_platform", type = "string"},
            {name = "m_zone_id", type = "uint16"},
            {name = "type", type = "uint8"},
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "content", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "ctime", type = "uint32"},
            {name = "likes", type = "array", fields = {
                {name = "liker_id", type = "uint32"},
                {name = "liker_platform", type = "string"},
                {name = "liker_zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "ctime", type = "uint32"}
            }}, 
            {name = "friend_comment", type = "array", fields = {
                {name = "commentator_id", type = "uint32"},
                {name = "commentator_platform", type = "string"},
                {name = "commentator_zone_id", type = "uint16"},
                {name = "id", type = "uint32"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "ctime", type = "uint32"},
                {name = "msg", type = "string"}
            }}, 
            {name = "friend_moment_photo", type = "array", fields = {
                {name = "id", type = "uint8"},
                {name = "auditing", type = "uint8"},
                {name = "uploaded", type = "uint32"}
            }}
        }}
    },
    [11876] = {
        {name = "notifications_num", type = "uint8"}
    },
    [11877] = {
        {name = "unread_num", type = "uint8"}
    },
    [11878] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11879] = {
        {name = "id", type = "string"},
        {name = "lists", type = "array", fields = {
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "pos", type = "uint8"},
            {name = "login", type = "uint8"}
        }}, 
        {name = "rewards", type = "array", fields = {
            {name = "id", type = "uint8"}
        }}, 
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "role_name_bind", type = "string"}
    },
    [11880] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11881] = {
        {name = "status", type = "uint8"},
        {name = "bind", type = "uint8"},
        {name = "time_return", type = "uint32"},
        {name = "rewards", type = "array", fields = {
            {name = "id", type = "uint8"}
        }}, 
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "role_name_recall", type = "string"}
    },
    [11882] = {
        {name = "id", type = "uint8"},
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11884] = {
        {name = "id", type = "uint8"},
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11885] = {
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "activite", type = "uint32"},
        {name = "time_return", type = "uint32"}
    },
    [11886] = {
        {name = "buffs", type = "array", fields = {
            {name = "buff_id", type = "uint16"}
        }}
    },
    [11887] = {
        {name = "times", type = "uint16"}
    },
    [11888] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11889] = {
        {name = "item_id", type = "uint32"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "role_name", type = "string"},
        {name = "times", type = "uint32"}
    },
    [11890] = {
        {name = "flag", type = "int8"},
        {name = "msg", type = "string"}
    },
    [11891] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11892] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11893] = {
        {name = "camp_id", type = "uint32"},
        {name = "req_type", type = "uint8"},
        {name = "moments", type = "array", fields = {
            {name = "m_id", type = "uint32"},
            {name = "m_platform", type = "string"},
            {name = "m_zone_id", type = "uint16"},
            {name = "type", type = "uint8"},
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "content", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "ctime", type = "uint32"},
            {name = "likes", type = "array", fields = {
                {name = "liker_id", type = "uint32"},
                {name = "liker_platform", type = "string"},
                {name = "liker_zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "ctime", type = "uint32"}
            }}, 
            {name = "friend_comment", type = "array", fields = {
                {name = "commentator_id", type = "uint32"},
                {name = "commentator_platform", type = "string"},
                {name = "commentator_zone_id", type = "uint16"},
                {name = "id", type = "uint32"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "ctime", type = "uint32"},
                {name = "msg", type = "string"}
            }}, 
            {name = "friend_moment_photo", type = "array", fields = {
                {name = "id", type = "uint8"},
                {name = "auditing", type = "uint8"},
                {name = "uploaded", type = "uint32"}
            }}
        }}, 
        {name = "lucky_list", type = "array", fields = {
            {name = "moment_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"}
        }}
    },
    [11894] = {
        {name = "contents", type = "array", fields = {
            {name = "content", type = "string"}
        }}
    },
    [11895] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11896] = {
        {name = "flag", type = "uint8"}
    },
    [11897] = {
        {name = "camp_wish", type = "array", fields = {
            {name = "camp_id", type = "uint32"},
            {name = "moments", type = "array", fields = {
                {name = "m_id", type = "uint32"},
                {name = "m_platform", type = "string"},
                {name = "m_zone_id", type = "uint16"},
                {name = "type", type = "uint8"},
                {name = "role_id", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "content", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "ctime", type = "uint32"},
                {name = "likes", type = "array", fields = {
                    {name = "liker_id", type = "uint32"},
                    {name = "liker_platform", type = "string"},
                    {name = "liker_zone_id", type = "uint16"},
                    {name = "name", type = "string"},
                    {name = "sex", type = "uint8"},
                    {name = "classes", type = "uint8"},
                    {name = "ctime", type = "uint32"}
                }}, 
                {name = "friend_comment", type = "array", fields = {
                    {name = "commentator_id", type = "uint32"},
                    {name = "commentator_platform", type = "string"},
                    {name = "commentator_zone_id", type = "uint16"},
                    {name = "id", type = "uint32"},
                    {name = "name", type = "string"},
                    {name = "sex", type = "uint8"},
                    {name = "classes", type = "uint8"},
                    {name = "ctime", type = "uint32"},
                    {name = "msg", type = "string"}
                }}, 
                {name = "friend_moment_photo", type = "array", fields = {
                    {name = "id", type = "uint8"},
                    {name = "auditing", type = "uint8"},
                    {name = "uploaded", type = "uint32"}
                }}
            }}
        }}
    },
    [11898] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11899] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12000] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "engaged", type = "uint16"},
            {name = "max_try", type = "uint8"}
        }}, 
        {name = "recommends", type = "array", fields = {
            {name = "rcd_id", type = "uint32"}
        }}
    },
    [12001] = {
        {name = "double_point", type = "uint16"},
        {name = "max_double_point", type = "uint16"}
    },
    [12002] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12003] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12004] = {
        {name = "activity", type = "uint16"},
        {name = "rewarded", type = "array", fields = {
            {name = "item_id", type = "uint32"}
        }}
    },
    [12005] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12006] = {
        {name = "energy_added", type = "uint32"}
    },
    [12007] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12008] = {
        {name = "buy_list", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "is_buy", type = "uint8"}
        }}
    },
    [12009] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint8"}
    },
    [12010] = {
        {name = "activity", type = "uint32"},
        {name = "rewards_info", type = "array", fields = {
            {name = "activity_need", type = "uint32"},
            {name = "reward", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "bind", type = "uint8"},
                {name = "num", type = "uint32"}
            }}, 
            {name = "name", type = "string"},
            {name = "icon", type = "uint32"},
            {name = "desc", type = "string"},
            {name = "flag", type = "uint8"}
        }}
    },
    [12011] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12100] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12101] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12102] = {

    },
    [12103] = {
        {name = "id", type = "uint32"},
        {name = "unit_id", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint8"}
        }}, 
        {name = "extra", type = "array", fields = {
            {name = "key", type = "uint32"},
            {name = "val_1", type = "uint32"},
            {name = "val_2", type = "uint32"},
            {name = "str_1", type = "string"},
            {name = "str_2", type = "string"}
        }}
    },
    [12104] = {
        {name = "id", type = "uint32"},
        {name = "unit_id", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint8"}
        }}
    },
    [12110] = {
        {name = "grade", type = "uint8"},
        {name = "score", type = "uint32"},
        {name = "max_dmg", type = "uint32"},
        {name = "round", type = "uint16"},
        {name = "hurt", type = "uint32"},
        {name = "time", type = "uint8"},
        {name = "dun_id", type = "uint32"},
        {name = "floor", type = "uint8"}
    },
    [12111] = {
        {name = "pos", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "num", type = "uint32"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "msg", type = "string"}
    },
    [12112] = {
        {name = "id", type = "uint32"},
        {name = "unit_reward", type = "array", fields = {
            {name = "unit_base_id", type = "uint32"},
            {name = "num", type = "uint8"}
        }}
    },
    [12114] = {
        {name = "id", type = "uint32"},
        {name = "floor_cound", type = "array", fields = {
            {name = "floor", type = "uint8"},
            {name = "num", type = "uint8"}
        }}, 
        {name = "time", type = "uint8"}
    },
    [12116] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"},
        {name = "time", type = "uint8"}
    },
    [12117] = {
        {name = "id", type = "uint32"},
        {name = "floor_list", type = "array", fields = {
            {name = "floor", type = "uint8"},
            {name = "status", type = "uint8"}
        }}
    },
    [12118] = {
        {name = "gain", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "value", type = "uint32"}
        }}
    },
    [12119] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"},
        {name = "floor", type = "uint8"}
    },
    [12120] = {
        {name = "list", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [12121] = {
        {name = "id", type = "uint32"},
        {name = "floor", type = "uint8"},
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint32"},
            {name = "classes", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "fc", type = "uint32"},
            {name = "rank", type = "uint32"},
            {name = "val1", type = "uint32"},
            {name = "val2", type = "uint32"},
            {name = "val3", type = "uint32"},
            {name = "val4", type = "uint32"},
            {name = "msg1", type = "string"},
            {name = "msg2", type = "string"},
            {name = "msg3", type = "string"}
        }}
    },
    [12122] = {
        {name = "id", type = "uint32"},
        {name = "floor", type = "uint32"}
    },
    [12123] = {
        {name = "list", type = "array", fields = {
            {name = "key", type = "uint32"},
            {name = "val_1", type = "uint32"},
            {name = "val_2", type = "uint32"},
            {name = "val_3", type = "uint32"},
            {name = "val_4", type = "uint32"},
            {name = "str_1", type = "string"},
            {name = "str_2", type = "string"}
        }}
    },
    [12130] = {
        {name = "team_id", type = "uint32"},
        {name = "team_platform", type = "string"},
        {name = "team_zone_id", type = "uint32"},
        {name = "dun_id", type = "uint32"},
        {name = "status", type = "uint8"},
        {name = "members", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "face_id", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}
        }}
    },
    [12131] = {
        {name = "dun_id", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "team_id", type = "uint32"},
            {name = "team_platform", type = "string"},
            {name = "team_zone_id", type = "uint32"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint32"},
            {name = "classes", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "face_id", type = "uint32"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "member_num", type = "uint8"}
        }}
    },
    [12132] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12133] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12134] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12135] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12136] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12137] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12138] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12139] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12140] = {
        {name = "is_matching", type = "uint8"},
        {name = "dun_id", type = "uint32"}
    },
    [12141] = {
        {name = "members", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "face_id", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}
        }}
    },
    [12142] = {
        {name = "members", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"}
        }}
    },
    [12143] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12144] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12145] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "dun_id", type = "uint32"},
        {name = "dun_name", type = "string"},
        {name = "time", type = "uint32"},
        {name = "t_id", type = "uint32"},
        {name = "t_platform", type = "string"},
        {name = "t_zone_id", type = "uint16"}
    },
    [12146] = {
        {name = "dun_id", type = "uint32"},
        {name = "gain", type = "array", fields = {
            {name = "g_id", type = "uint32"},
            {name = "value", type = "uint32"}
        }}, 
        {name = "cards", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "item_num", type = "uint32"},
            {name = "selected", type = "uint8"}
        }}, 
        {name = "buy_loss", type = "array", fields = {
            {name = "l_id", type = "uint32"},
            {name = "l_value", type = "uint32"}
        }}
    },
    [12147] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12148] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12149] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "dun_id", type = "uint32"}
    },
    [12150] = {
        {name = "pass_list", type = "array", fields = {
            {name = "dun_id", type = "uint32"},
            {name = "times", type = "uint32"}
        }}, 
        {name = "rewards", type = "array", fields = {
            {name = "dun_id", type = "uint32"},
            {name = "gains", type = "array", fields = {
                {name = "gid", type = "uint32"},
                {name = "value", type = "uint32"}
            }}
        }}
    },
    [12151] = {
        {name = "cards", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "item_num", type = "uint32"},
            {name = "selected", type = "uint8"}
        }}, 
        {name = "buy_loss", type = "array", fields = {
            {name = "l_id", type = "uint32"},
            {name = "l_value", type = "uint32"}
        }}
    },
    [12152] = {
        {name = "has_cards", type = "uint8"}
    },
    [12200] = {
        {name = "cup", type = "uint16"},
        {name = "has_soul", type = "uint8"},
        {name = "enemy", type = "array", fields = {
            {name = "order", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "cup", type = "uint16"},
            {name = "soul", type = "uint8"}
        }}, 
        {name = "log", type = "array", fields = {
            {name = "log_id", type = "uint16"},
            {name = "s_id", type = "uint32"},
            {name = "s_platform", type = "string"},
            {name = "s_zone", type = "uint16"},
            {name = "s_name", type = "string"},
            {name = "result", type = "uint8"},
            {name = "t_id", type = "uint32"},
            {name = "t_platform", type = "string"},
            {name = "t_zone", type = "uint16"},
            {name = "t_name", type = "string"},
            {name = "feedback", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "s_cup", type = "uint16"},
            {name = "s_cup_change", type = "int8"},
            {name = "t_cup", type = "uint16"},
            {name = "t_cup_change", type = "int8"}
        }}
    },
    [12201] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12202] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "enemy", type = "array", fields = {
            {name = "order", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "cup", type = "uint16"},
            {name = "soul", type = "uint8"}
        }}
    },
    [12203] = {
        {name = "cup", type = "uint16"},
        {name = "has_soul", type = "uint8"},
        {name = "log", type = "array", fields = {
            {name = "log_id", type = "uint16"},
            {name = "s_id", type = "uint32"},
            {name = "s_platform", type = "string"},
            {name = "s_zone", type = "uint16"},
            {name = "s_name", type = "string"},
            {name = "result", type = "uint8"},
            {name = "t_id", type = "uint32"},
            {name = "t_platform", type = "string"},
            {name = "t_zone", type = "uint16"},
            {name = "t_name", type = "string"},
            {name = "feedback", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "s_cup", type = "uint16"},
            {name = "s_cup_change", type = "int8"},
            {name = "t_cup", type = "uint16"},
            {name = "t_cup_change", type = "int8"}
        }}
    },
    [12204] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12205] = {
        {name = "times", type = "uint8"},
        {name = "score", type = "uint16"},
        {name = "roll_time", type = "uint8"}
    },
    [12206] = {
        {name = "world_max_cup", type = "uint16"},
        {name = "acc_num", type = "uint32"},
        {name = "win", type = "uint32"},
        {name = "def_acc_num", type = "uint32"},
        {name = "def_win", type = "uint32"},
        {name = "max_cup", type = "uint16"},
        {name = "acc_sword_num", type = "uint32"},
        {name = "acc_mage_num", type = "uint32"},
        {name = "acc_archer_num", type = "uint32"},
        {name = "acc_orc_num", type = "uint32"},
        {name = "acc_devine_num", type = "uint32"},
        {name = "acc_moon_num", type = "uint32"},
        {name = "acc_templar_num", type = "uint32"},
        {name = "win_sword", type = "uint32"},
        {name = "win_mage", type = "uint32"},
        {name = "win_archer", type = "uint32"},
        {name = "win_orc", type = "uint32"},
        {name = "win_devine", type = "uint32"},
        {name = "win_moon", type = "uint32"},
        {name = "win_templar", type = "uint32"},
        {name = "init_def", type = "uint8"},
        {name = "formation", type = "uint8"},
        {name = "formation_lev", type = "uint8"},
        {name = "guards", type = "array", fields = {
            {name = "guard_id", type = "uint32"},
            {name = "war_id", type = "uint8"}
        }}, 
        {name = "pet_id", type = "uint32"}
    },
    [12207] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "formation", type = "uint8"},
        {name = "formation_lev", type = "uint8"},
        {name = "guards", type = "array", fields = {
            {name = "guard_id", type = "uint32"},
            {name = "war_id", type = "uint8"}
        }}
    },
    [12208] = {
        {name = "page", type = "uint8"},
        {name = "page_total", type = "uint8"},
        {name = "record_total", type = "uint16"},
        {name = "rank_list", type = "array", fields = {
            {name = "role_id", type = "uint32"},
            {name = "rank", type = "uint8"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "val1", type = "int32"},
            {name = "val2", type = "int32"},
            {name = "val3", type = "int32"},
            {name = "val4", type = "int32"},
            {name = "desc", type = "string"}
        }}
    },
    [12209] = {
        {name = "order", type = "uint8"},
        {name = "guards", type = "array", fields = {
            {name = "guard_id", type = "uint32"},
            {name = "war_id", type = "uint8"}
        }}
    },
    [12210] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "soul", type = "uint8"},
        {name = "gain", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [12211] = {
        {name = "roll_time", type = "uint8"},
        {name = "roll_id", type = "uint8"},
        {name = "roll_graph", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "quality", type = "uint8"}
        }}
    },
    [12212] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "roll_val", type = "uint8"},
        {name = "roll_time", type = "uint8"},
        {name = "roll_id", type = "uint8"},
        {name = "id", type = "uint8"},
        {name = "gain", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [12213] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12214] = {
        {name = "has_soul", type = "uint8"}
    },
    [12215] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12216] = {
        {name = "result", type = "uint8"},
        {name = "t_id", type = "uint32"},
        {name = "t_platform", type = "string"},
        {name = "t_zone", type = "uint16"},
        {name = "t_name", type = "string"},
        {name = "t_classes", type = "uint8"},
        {name = "t_sex", type = "uint8"},
        {name = "t_lev", type = "uint16"},
        {name = "s_cup", type = "uint16"},
        {name = "s_cup_change", type = "int8"},
        {name = "t_cup", type = "uint16"},
        {name = "t_cup_change", type = "int8"},
        {name = "s_statistics", type = "array", fields = {
            {name = "type_1", type = "uint8"},
            {name = "base_id_1", type = "uint32"},
            {name = "dmg_1", type = "uint32"},
            {name = "heal_1", type = "uint32"}
        }}, 
        {name = "t_statistics", type = "array", fields = {
            {name = "type_2", type = "uint8"},
            {name = "base_id_2", type = "uint32"},
            {name = "dmg_2", type = "uint32"},
            {name = "heal_2", type = "uint32"}
        }}
    },
    [12217] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "pet_id", type = "uint32"}
    },
    [12300] = {
        {name = "roll_id", type = "uint16"},
        {name = "mode", type = "uint8"},
        {name = "key", type = "uint32"},
        {name = "end_tick", type = "uint32"},
        {name = "roll_item", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "has_reward", type = "uint8"},
            {name = "roles", type = "array", fields = {
                {name = "r_id", type = "uint32"},
                {name = "r_platform", type = "string"},
                {name = "r_zone", type = "uint16"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "rand_num", type = "uint8"},
                {name = "choice", type = "uint8"},
                {name = "reward", type = "uint8"}
            }}
        }}
    },
    [12301] = {
        {name = "roll_id", type = "uint16"},
        {name = "end_tick", type = "uint32"},
        {name = "id", type = "uint8"},
        {name = "roles", type = "array", fields = {
            {name = "r_id", type = "uint32"},
            {name = "r_platform", type = "string"},
            {name = "r_zone", type = "uint16"},
            {name = "rand_num", type = "uint8"},
            {name = "choice", type = "uint8"},
            {name = "reward", type = "uint8"}
        }}
    },
    [12302] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12320] = {
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "from_name", type = "string"},
        {name = "mode", type = "uint8"},
        {name = "dungeon_id", type = "uint32"},
        {name = "floor", type = "uint32"},
        {name = "end_time", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "pos", type = "uint32"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "item_id", type = "uint32"},
            {name = "bind", type = "uint32"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "roles", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "flag", type = "uint8"}
        }}
    },
    [12321] = {
        {name = "card_id", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "pos", type = "uint32"},
        {name = "item_id", type = "uint32"},
        {name = "bind", type = "uint32"},
        {name = "num", type = "uint32"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"}
    },
    [12400] = {
        {name = "catalg_1", type = "uint32"},
        {name = "catalg_2", type = "uint32"},
        {name = "goods", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "cur_price", type = "uint32"},
            {name = "margin", type = "uint32"}
        }}
    },
    [12401] = {
        {name = "flag", type = "uint8"}
    },
    [12402] = {

    },
    [12403] = {
        {name = "base_id", type = "uint32"},
        {name = "num", type = "uint16"},
        {name = "price", type = "uint32"}
    },
    [12404] = {

    },
    [12405] = {
        {name = "err_code", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "id", type = "uint8"},
        {name = "status", type = "uint8"},
        {name = "num", type = "uint8"}
    },
    [12406] = {
        {name = "cell_id", type = "uint8"},
        {name = "flag", type = "uint8"}
    },
    [12407] = {
        {name = "free_ids", type = "array", fields = {
            {name = "cell_id", type = "uint8"}
        }}, 
        {name = "cells", type = "array", fields = {
            {name = "cell_id", type = "uint8"},
            {name = "item_base_id", type = "uint32"},
            {name = "num", type = "uint8"},
            {name = "price", type = "uint32"},
            {name = "expiry", type = "uint32"},
            {name = "item_attrs", type = "array", fields = {
                {name = "attr", type = "uint8"},
                {name = "value", type = "uint32"}
            }}, 
            {name = "status", type = "uint8"}
        }}
    },
    [12408] = {
        {name = "item_base_id", type = "uint32"},
        {name = "price", type = "uint32"}
    },
    [12409] = {
        {name = "refresh_time", type = "uint32"},
        {name = "data", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "goods", type = "array", fields = {
                {name = "id", type = "uint8"},
                {name = "item_base_id", type = "uint32"},
                {name = "num", type = "uint8"},
                {name = "price", type = "uint32"},
                {name = "status", type = "uint8"},
                {name = "item_attrs", type = "array", fields = {
                    {name = "attr", type = "uint8"},
                    {name = "value", type = "uint32"}
                }}
            }}
        }}
    },
    [12410] = {
        {name = "type", type = "uint8"},
        {name = "goods", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "item_base_id", type = "uint32"},
            {name = "num", type = "uint8"},
            {name = "price", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "item_attrs", type = "array", fields = {
                {name = "attr", type = "uint8"},
                {name = "value", type = "uint32"}
            }}
        }}
    },
    [12411] = {
        {name = "cell_id", type = "uint8"},
        {name = "flag", type = "uint8"}
    },
    [12412] = {
        {name = "cell_id", type = "uint8"},
        {name = "flag", type = "uint8"}
    },
    [12413] = {

    },
    [12414] = {

    },
    [12415] = {
        {name = "item_base_id", type = "uint32"},
        {name = "price", type = "uint32"}
    },
    [12416] = {
        {name = "market_price", type = "array", fields = {
            {name = "source", type = "uint8"},
            {name = "base_id", type = "uint32"},
            {name = "assets", type = "uint32"},
            {name = "price", type = "uint32"},
            {name = "val1", type = "uint32"},
            {name = "val2", type = "uint32"},
            {name = "val3", type = "uint32"},
            {name = "val4", type = "uint32"}
        }}
    },
    [12417] = {
        {name = "flag", type = "uint8"}
    },
    [12418] = {
        {name = "goods", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "cur_price", type = "uint32"},
            {name = "margin", type = "uint32"}
        }}
    },
    [12419] = {

    },
    [12420] = {
        {name = "limit_data", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "count", type = "uint32"}
        }}
    },
    [12421] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12422] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12500] = {
        {name = "type", type = "uint8"},
        {name = "sub_type", type = "uint8"},
        {name = "page", type = "uint8"},
        {name = "page_total", type = "uint8"},
        {name = "record_total", type = "uint16"},
        {name = "rank_list", type = "array", fields = {
            {name = "role_id", type = "uint32"},
            {name = "rank", type = "uint8"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "val1", type = "int32"},
            {name = "val2", type = "int32"},
            {name = "val3", type = "int32"},
            {name = "val4", type = "int32"},
            {name = "desc", type = "string"}
        }}
    },
    [12501] = {
        {name = "type", type = "uint8"},
        {name = "rank", type = "uint8"},
        {name = "val1", type = "int32"}
    },
    [12502] = {
        {name = "type", type = "uint8"},
        {name = "sub_type", type = "uint8"},
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "exp", type = "uint32"},
        {name = "max_exp", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "happy", type = "uint8"},
        {name = "grade", type = "uint8"},
        {name = "talent", type = "uint16"},
        {name = "genre", type = "uint8"},
        {name = "growth", type = "uint16"},
        {name = "growth_type", type = "uint8"},
        {name = "hp", type = "uint32"},
        {name = "mp", type = "uint32"},
        {name = "feed_point", type = "uint32"},
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"},
        {name = "atk_speed", type = "uint16"},
        {name = "phy_dmg", type = "uint32"},
        {name = "magic_dmg", type = "uint32"},
        {name = "phy_def", type = "uint32"},
        {name = "magic_def", type = "uint32"},
        {name = "strength", type = "uint16"},
        {name = "constitution", type = "uint16"},
        {name = "magic", type = "uint16"},
        {name = "agility", type = "uint16"},
        {name = "endurance", type = "uint16"},
        {name = "hp_aptitude", type = "uint16"},
        {name = "phy_aptitude", type = "uint16"},
        {name = "pdef_aptitude", type = "uint16"},
        {name = "magic_aptitude", type = "uint16"},
        {name = "aspd_aptitude", type = "uint16"},
        {name = "max_hp_aptitude", type = "uint16"},
        {name = "max_phy_aptitude", type = "uint16"},
        {name = "max_pdef_aptitude", type = "uint16"},
        {name = "max_magic_aptitude", type = "uint16"},
        {name = "max_aspd_aptitude", type = "uint16"},
        {name = "skills", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "source", type = "uint8"}
        }}, 
        {name = "stones", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "reset_attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "extra", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "str", type = "string"}
            }}
        }}, 
        {name = "mount_skills", type = "array", fields = {
            {name = "skill_index", type = "uint8"},
            {name = "skill_id", type = "uint32"},
            {name = "skill_lev", type = "uint32"}
        }}, 
        {name = "use_skin", type = "uint32"},
        {name = "handbook_attr", type = "array", fields = {
            {name = "attr_name", type = "uint32"},
            {name = "attr_val", type = "uint32"}
        }}, 
        {name = "handbook_num", type = "uint8"},
        {name = "star_handbook_num", type = "uint8"},
        {name = "spirit_info", type = "array", fields = {
            {name = "spirit_base_id", type = "uint32"},
            {name = "spirit_talent", type = "uint32"},
            {name = "spirit_lev", type = "uint16"}
        }}, 
        {name = "pet_rune", type = "array", fields = {
            {name = "rune_index", type = "uint8"},
            {name = "rune_type", type = "uint8"},
            {name = "rune_status", type = "uint8"},
            {name = "rune_id", type = "uint32"},
            {name = "rune_lev", type = "uint8"},
            {name = "is_resonance", type = "uint8"},
            {name = "resonances", type = "array", fields = {
                {name = "resonance_index", type = "uint8"},
                {name = "resonance_id", type = "uint32"},
                {name = "rune_index", type = "uint8"}
            }}
        }}
    },
    [12503] = {
        {name = "type", type = "uint8"},
        {name = "sub_type", type = "uint8"},
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "base_id", type = "uint32"},
        {name = "score", type = "uint32"},
        {name = "quality", type = "uint8"},
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"},
        {name = "atk_speed", type = "uint16"},
        {name = "phy_dmg", type = "uint32"},
        {name = "magic_dmg", type = "uint32"},
        {name = "phy_def", type = "uint32"},
        {name = "magic_def", type = "uint32"},
        {name = "heal_val", type = "uint16"},
        {name = "eqm", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "eqm_attrs", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "gem", type = "array", fields = {
                {name = "id", type = "uint8"},
                {name = "base_id", type = "uint32"},
                {name = "type", type = "uint8"}
            }}
        }}
    },
    [12505] = {
        {name = "type", type = "uint8"},
        {name = "sub_type", type = "uint8"},
        {name = "page", type = "uint8"},
        {name = "page_total", type = "uint8"},
        {name = "record_total", type = "uint16"},
        {name = "rank_list", type = "array", fields = {
            {name = "role_id", type = "uint32"},
            {name = "rank", type = "uint8"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "val1", type = "int32"},
            {name = "val2", type = "int32"},
            {name = "val3", type = "int32"},
            {name = "val4", type = "int32"},
            {name = "desc", type = "string"}
        }}
    },
    [12506] = {
        {name = "team_name", type = "string"},
        {name = "mate_list", type = "array", fields = {
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "break_times", type = "uint8"},
            {name = "position", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}
        }}
    },
    [12600] = {
        {name = "quest_id", type = "uint32"},
        {name = "image_id", type = "uint32"},
        {name = "start_time", type = "uint32"},
        {name = "box_unit_id", type = "uint32"},
        {name = "box_hp", type = "uint32"},
        {name = "box_max_hp", type = "uint32"},
        {name = "answered", type = "uint8"},
        {name = "corrected", type = "uint8"},
        {name = "done_lottery", type = "uint8"},
        {name = "battle_id", type = "uint32"},
        {name = "uid", type = "uint32"},
        {name = "free_refresh", type = "uint8"},
        {name = "acceptable", type = "uint8"}
    },
    [12601] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12602] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12603] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12604] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12605] = {
        {name = "quest_id", type = "uint32"},
        {name = "image_id", type = "uint32"},
        {name = "start_time", type = "uint32"},
        {name = "box_unit_id", type = "uint32"},
        {name = "box_hp", type = "uint32"},
        {name = "box_max_hp", type = "uint32"},
        {name = "answered", type = "uint8"},
        {name = "battle_id", type = "uint32"},
        {name = "uid", type = "uint32"}
    },
    [12606] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "question", type = "uint8"},
        {name = "question_time", type = "uint32"}
    },
    [12607] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "option", type = "uint8"}
    },
    [12608] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "reward_type", type = "uint8"},
        {name = "reward_val", type = "uint32"}
    },
    [12700] = {
        {name = "use_id", type = "uint32"},
        {name = "honor_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "end_time", type = "uint32"}
        }}, 
        {name = "use_pre_id", type = "uint32"},
        {name = "pre_honor_list", type = "array", fields = {
            {name = "pre_id", type = "uint32"},
            {name = "end_time", type = "uint32"}
        }}, 
        {name = "pre_reward_list", type = "array", fields = {
            {name = "reward_id", type = "uint32"}
        }}
    },
    [12701] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12702] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12703] = {
        {name = "id", type = "uint32"}
    },
    [12704] = {
        {name = "id", type = "uint32"}
    },
    [12705] = {
        {name = "honor_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "end_time", type = "uint32"}
        }}
    },
    [12706] = {
        {name = "id", type = "uint32"}
    },
    [12707] = {
        {name = "pre_code", type = "uint8"},
        {name = "pre_id", type = "uint32"}
    },
    [12708] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12709] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12710] = {
        {name = "reward_id", type = "uint32"},
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12800] = {
        {name = "buff_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "duration", type = "int32"},
            {name = "cancel", type = "uint8"},
            {name = "effect_lev", type = "uint8"},
            {name = "start_time", type = "uint32"},
            {name = "dynamic_attr", type = "array", fields = {
                {name = "attr", type = "uint8"},
                {name = "value", type = "uint32"}
            }}, 
            {name = "pvped", type = "uint16"}
        }}
    },
    [12801] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12802] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "show", type = "uint8"}
    },
    [12803] = {
        {name = "show", type = "uint8"}
    },
    [12804] = {
        {name = "msg", type = "string"},
        {name = "base_id", type = "uint32"}
    },
    [12900] = {
        {name = "id", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "formation_list", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "exp", type = "uint16"}
        }}
    },
    [12901] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint8"},
        {name = "lev", type = "uint8"}
    },
    [12902] = {
        {name = "guards", type = "array", fields = {
            {name = "guard_id", type = "uint32"},
            {name = "number", type = "uint8"},
            {name = "status", type = "uint8"},
            {name = "quality", type = "uint8"}
        }}
    },
    [12903] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12904] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12905] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12906] = {
        {name = "id", type = "uint8"},
        {name = "lev1", type = "uint8"},
        {name = "exp1", type = "uint16"},
        {name = "lev2", type = "uint8"},
        {name = "exp2", type = "uint16"}
    },
    [12907] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [12908] = {
        {name = "guards", type = "array", fields = {
            {name = "guard_id", type = "uint32"}
        }}
    },
    [13000] = {
        {name = "boss_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "last_killed", type = "int32"},
            {name = "first_killer", type = "array", fields = {
                {name = "rid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint32"},
                {name = "name", type = "string"},
                {name = "classes", type = "uint8"},
                {name = "sex", type = "uint8"},
                {name = "round", type = "uint16"},
                {name = "is_leader", type = "uint8"}
            }}, 
            {name = "round_first", type = "array", fields = {
                {name = "rid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint32"},
                {name = "name", type = "string"},
                {name = "is_leader", type = "uint8"}
            }}, 
            {name = "map_id", type = "uint32"},
            {name = "x", type = "uint32"},
            {name = "y", type = "uint32"}
        }}, 
        {name = "rewardable", type = "uint32"}
    },
    [13001] = {
        {name = "kill_rank", type = "array", fields = {
            {name = "rank_round", type = "uint16"},
            {name = "finished", type = "uint32"},
            {name = "team", type = "array", fields = {
                {name = "rid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint32"},
                {name = "name", type = "string"},
                {name = "is_leader", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "sex", type = "uint8"},
                {name = "round", type = "uint16"}
            }}
        }}
    },
    [13002] = {
        {name = "base_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "killer", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "is_leader", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}
        }}
    },
    [13003] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13004] = {
        {name = "world_boss_killer", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "is_leader", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "round", type = "uint16"}
        }}
    },
    [13005] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13006] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13007] = {
        {name = "id", type = "uint32"},
        {name = "is_kill", type = "uint8"},
        {name = "is_live", type = "uint8"}
    },
    [13100] = {
        {name = "mode", type = "uint8"},
        {name = "order", type = "uint8"},
        {name = "direct_order", type = "uint8"},
        {name = "reset", type = "uint8"},
        {name = "round", type = "uint16"},
        {name = "coin", type = "uint32"},
        {name = "times", type = "uint8"},
        {name = "max_times", type = "uint8"},
        {name = "clear_normal", type = "uint8"},
        {name = "max_order_easy", type = "uint8"},
        {name = "max_order_hard", type = "uint8"},
        {name = "battle_id", type = "uint32"},
        {name = "unit_id", type = "uint32"},
        {name = "unit_baseid", type = "uint32"},
        {name = "unit_name", type = "string"},
        {name = "classes", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "dir", type = "uint8"},
        {name = "map_id", type = "uint32"},
        {name = "x", type = "uint32"},
        {name = "y", type = "uint32"},
        {name = "lev", type = "uint8"},
        {name = "looks", type = "array", fields = {
            {name = "looks_type", type = "uint32"},
            {name = "looks_mode", type = "uint32"},
            {name = "looks_val", type = "uint32"},
            {name = "looks_str", type = "string"}
        }}, 
        {name = "can_ask", type = "uint8"}
    },
    [13101] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "reset", type = "uint8"}
    },
    [13102] = {
        {name = "mode", type = "uint8"},
        {name = "order", type = "uint8"},
        {name = "direct_order", type = "uint8"},
        {name = "round", type = "uint16"},
        {name = "coin", type = "uint32"},
        {name = "times", type = "uint8"},
        {name = "max_times", type = "uint8"},
        {name = "clear_normal", type = "uint8"},
        {name = "max_order_easy", type = "uint8"},
        {name = "max_order_hard", type = "uint8"},
        {name = "battle_id", type = "uint32"},
        {name = "unit_id", type = "uint32"},
        {name = "unit_baseid", type = "uint32"},
        {name = "unit_name", type = "string"},
        {name = "classes", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "dir", type = "uint8"},
        {name = "map_id", type = "uint32"},
        {name = "x", type = "uint32"},
        {name = "y", type = "uint32"},
        {name = "lev", type = "uint8"},
        {name = "looks", type = "array", fields = {
            {name = "looks_type", type = "uint32"},
            {name = "looks_mode", type = "uint32"},
            {name = "looks_val", type = "uint32"},
            {name = "looks_str", type = "string"}
        }}, 
        {name = "can_ask", type = "uint8"}
    },
    [13103] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13104] = {
        {name = "flag", type = "uint8"},
        {name = "gain_items", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [13105] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13106] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13107] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13108] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "unit_name", type = "string"},
        {name = "time", type = "uint32"}
    },
    [13200] = {
        {name = "dress", type = "array", fields = {
            {name = "dress_type", type = "uint8"},
            {name = "fashion_dress", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "is_wear", type = "uint8"},
                {name = "expire_time", type = "uint32"}
            }}
        }}, 
        {name = "dyeing", type = "array", fields = {
            {name = "dyeing_type", type = "uint8"},
            {name = "fashion_dyeing", type = "array", fields = {
                {name = "dyeing_id", type = "uint32"},
                {name = "is_use", type = "uint8"}
            }}
        }}, 
        {name = "collect_lev", type = "uint8"},
        {name = "collect_val", type = "uint16"},
        {name = "classes_eqm", type = "uint16"},
        {name = "weapon", type = "uint32"},
        {name = "flag", type = "uint32"}
    },
    [13201] = {
        {name = "dress", type = "array", fields = {
            {name = "dress_type", type = "uint8"},
            {name = "fashion_dress", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "is_wear", type = "uint8"},
                {name = "expire_time", type = "uint32"}
            }}
        }}, 
        {name = "dyeing", type = "array", fields = {
            {name = "dyeing_type", type = "uint8"},
            {name = "fashion_dyeing", type = "array", fields = {
                {name = "dyeing_id", type = "uint32"},
                {name = "is_use", type = "uint8"}
            }}
        }}
    },
    [13202] = {
        {name = "falg", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13203] = {
        {name = "falg", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13204] = {
        {name = "falg", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "collect_lev", type = "uint8"},
        {name = "collect_val", type = "uint16"}
    },
    [13205] = {
        {name = "falg", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13206] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"}
        }}
    },
    [13207] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"}
        }}, 
        {name = "list1", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"}
        }}, 
        {name = "list2", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"}
        }}
    },
    [13208] = {
        {name = "base_id", type = "uint32"}
    },
    [13300] = {
        {name = "status", type = "uint8"},
        {name = "timeout", type = "uint32"}
    },
    [13301] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13302] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13303] = {
        {name = "parade_procession", type = "array", fields = {
            {name = "battle_id", type = "uint32"},
            {name = "uid", type = "uint32"},
            {name = "unit_base_id", type = "uint32"},
            {name = "participants", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "lev", type = "uint8"},
                {name = "g_id", type = "uint32"},
                {name = "g_platform", type = "string"},
                {name = "g_zone_id", type = "uint16"},
                {name = "guild", type = "string"},
                {name = "guild_post", type = "string"},
                {name = "figure", type = "uint8"},
                {name = "figure_score", type = "uint16"},
                {name = "last_ate", type = "uint32"},
                {name = "has_food", type = "uint8"}
            }}
        }}
    },
    [13304] = {
        {name = "battle_id", type = "uint32"},
        {name = "uid", type = "uint32"},
        {name = "unit_base_id", type = "uint32"},
        {name = "map_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "g_id", type = "uint32"},
        {name = "g_platform", type = "string"},
        {name = "g_zone_id", type = "uint16"},
        {name = "guild", type = "string"},
        {name = "guild_post", type = "string"},
        {name = "figure", type = "uint8"},
        {name = "figure_score", type = "uint16"},
        {name = "last_ate", type = "uint32"},
        {name = "has_food", type = "uint8"}
    },
    [13305] = {
        {name = "battle_id", type = "uint32"},
        {name = "uid", type = "uint32"},
        {name = "unit_base_id", type = "uint32"},
        {name = "map_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"}
    },
    [13306] = {
        {name = "exp", type = "uint32"},
        {name = "figure_score", type = "uint16"}
    },
    [13307] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13308] = {
        {name = "battle_id", type = "uint32"},
        {name = "uid", type = "uint32"},
        {name = "unit_base_id", type = "uint32"},
        {name = "map_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "figure", type = "uint8"},
        {name = "figure_score", type = "uint16"},
        {name = "last_ate", type = "uint32"},
        {name = "has_food", type = "uint8"}
    },
    [13400] = {
        {name = "mail_list", type = "array", fields = {
            {name = "sess_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "type", type = "uint8"},
            {name = "del_type", type = "uint8"},
            {name = "status", type = "uint8"},
            {name = "title", type = "string"},
            {name = "content", type = "string"},
            {name = "from_id", type = "uint32"},
            {name = "from_platform", type = "string"},
            {name = "from_zone_id", type = "uint16"},
            {name = "from_face", type = "uint32"},
            {name = "from_name", type = "string"},
            {name = "to_face", type = "uint32"},
            {name = "to_name", type = "string"},
            {name = "ts", type = "uint32"},
            {name = "rev_ts", type = "uint32"},
            {name = "item_list", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "base_id", type = "uint32"},
                {name = "bind", type = "uint8"},
                {name = "craft", type = "uint8"},
                {name = "enchant", type = "int8"},
                {name = "quantity", type = "uint32"},
                {name = "pos", type = "uint16"},
                {name = "step", type = "uint8"},
                {name = "look_id", type = "uint32"},
                {name = "expire_type", type = "uint8"},
                {name = "expire_time", type = "uint32"},
                {name = "attr", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "flag", type = "uint32"},
                    {name = "val", type = "uint32"}
                }}, 
                {name = "extra", type = "array", fields = {
                    {name = "name", type = "uint32"},
                    {name = "value", type = "uint32"},
                    {name = "str", type = "string"}
                }}
            }}
        }}
    },
    [13401] = {
        {name = "sess_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [13402] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "sess_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [13403] = {
        {name = "sess_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "result", type = "uint8"}
    },
    [13404] = {
        {name = "mail_list", type = "array", fields = {
            {name = "sess_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "type", type = "uint8"},
            {name = "del_type", type = "uint8"},
            {name = "status", type = "uint8"},
            {name = "title", type = "string"},
            {name = "content", type = "string"},
            {name = "from_id", type = "uint32"},
            {name = "from_platform", type = "string"},
            {name = "from_zone_id", type = "uint16"},
            {name = "from_face", type = "uint32"},
            {name = "from_name", type = "string"},
            {name = "to_face", type = "uint32"},
            {name = "to_name", type = "string"},
            {name = "ts", type = "uint32"},
            {name = "rev_ts", type = "uint32"},
            {name = "item_list", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "base_id", type = "uint32"},
                {name = "bind", type = "uint8"},
                {name = "craft", type = "uint8"},
                {name = "enchant", type = "int8"},
                {name = "quantity", type = "uint32"},
                {name = "pos", type = "uint16"},
                {name = "look_id", type = "uint32"},
                {name = "expire_type", type = "uint8"},
                {name = "expire_time", type = "uint32"},
                {name = "attr", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "flag", type = "uint32"},
                    {name = "val", type = "uint32"}
                }}, 
                {name = "extra", type = "array", fields = {
                    {name = "name", type = "uint32"},
                    {name = "value", type = "uint32"},
                    {name = "str", type = "string"}
                }}
            }}
        }}
    },
    [13405] = {
        {name = "sess_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [13500] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13501] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13502] = {
        {name = "status", type = "uint8"},
        {name = "time", type = "uint32"},
        {name = "season_time", type = "uint32"}
    },
    [13503] = {
        {name = "type", type = "uint8"},
        {name = "teammate", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "rank_lev", type = "uint8"},
            {name = "rank_point", type = "uint16"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}
        }}, 
        {name = "enemy", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "rank_lev", type = "uint8"},
            {name = "rank_point", type = "uint16"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}
        }}
    },
    [13504] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "rank_lev", type = "uint8"},
        {name = "rank_point", type = "uint16"},
        {name = "season_win_count", type = "uint16"},
        {name = "season_combat_count", type = "uint16"},
        {name = "thumb_up", type = "uint16"},
        {name = "season_max_rank_point", type = "uint32"},
        {name = "up_ranklev_reward", type = "array", fields = {
            {name = "rank_lev", type = "int8"},
            {name = "is_get", type = "uint8"}
        }}
    },
    [13505] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "rank_lev", type = "uint8"},
        {name = "rank_point", type = "uint16"},
        {name = "up_ranklev_reward", type = "array", fields = {
            {name = "rank_lev", type = "int8"},
            {name = "is_get", type = "uint8"}
        }}
    },
    [13506] = {
        {name = "result", type = "uint8"},
        {name = "b_rank_point", type = "uint16"},
        {name = "a_rank_point", type = "uint16"},
        {name = "assets", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "val", type = "uint32"}
        }}, 
        {name = "team_list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"}
        }}
    },
    [13508] = {
        {name = "type", type = "uint8"},
        {name = "idx", type = "uint8"},
        {name = "max_idx", type = "uint8"},
        {name = "qualifying_roles", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "rank_lev", type = "uint8"},
            {name = "rank_point", type = "uint32"},
            {name = "season_win_count", type = "uint16"},
            {name = "season_combat_count", type = "uint16"}
        }}
    },
    [13509] = {
        {name = "msg_list", type = "array", fields = {
            {name = "time", type = "uint32"},
            {name = "msg", type = "string"}
        }}
    },
    [13510] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13511] = {
        {name = "sign_type", type = "uint8"},
        {name = "win", type = "uint8"},
        {name = "win_flag", type = "uint8"},
        {name = "win_five_flag", type = "uint8"},
        {name = "count_list", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "num", type = "uint8"}
        }}
    },
    [13512] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13513] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13514] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13600] = {
        {name = "status", type = "uint8"},
        {name = "can_num", type = "uint8"},
        {name = "gain_id", type = "uint8"},
        {name = "time", type = "uint32"},
        {name = "table", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "type", type = "uint8"},
            {name = "val", type = "uint32"},
            {name = "num", type = "uint8"}
        }}, 
        {name = "compass_id", type = "uint8"},
        {name = "compass_end_time", type = "uint32"},
        {name = "map_id", type = "uint16"},
        {name = "x", type = "uint16"},
        {name = "y", type = "uint16"}
    },
    [13601] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13602] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13603] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13604] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "can_num", type = "uint8"}
    },
    [13700] = {
        {name = "shipping", type = "array", fields = {
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "shipping_type", type = "uint8"},
            {name = "shipping_status", type = "uint8"},
            {name = "start_time", type = "uint32"},
            {name = "help_num", type = "uint8"},
            {name = "shipping_cell", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "type", type = "uint8"},
                {name = "status", type = "uint8"},
                {name = "help_type", type = "uint8"},
                {name = "item_base_id", type = "uint32"},
                {name = "quest_id", type = "uint32"},
                {name = "need_num", type = "uint8"},
                {name = "rewards", type = "array", fields = {
                    {name = "assets", type = "uint32"},
                    {name = "val", type = "uint32"}
                }}
            }}
        }}
    },
    [13701] = {
        {name = "flag", type = "uint8"},
        {name = "ids", type = "array", fields = {
            {name = "item_base_id", type = "uint32"}
        }}
    },
    [13702] = {

    },
    [13703] = {
        {name = "id", type = "uint32"},
        {name = "status", type = "uint8"},
        {name = "help_type", type = "uint8"}
    },
    [13704] = {
        {name = "id", type = "uint32"},
        {name = "status", type = "uint8"},
        {name = "help_type", type = "uint8"}
    },
    [13705] = {
        {name = "op_code", type = "uint8"}
    },
    [13706] = {
        {name = "op_code", type = "uint8"},
        {name = "cell_id", type = "uint32"}
    },
    [13707] = {
        {name = "op_code", type = "uint8"},
        {name = "cell_id", type = "uint8"}
    },
    [13708] = {

    },
    [13709] = {
        {name = "status", type = "uint8"},
        {name = "start_time", type = "uint32"}
    },
    [13710] = {
        {name = "op_code", type = "uint8"},
        {name = "shipping_cell", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "type", type = "uint8"},
            {name = "status", type = "uint8"},
            {name = "help_type", type = "uint8"},
            {name = "item_base_id", type = "uint32"},
            {name = "quest_id", type = "uint32"},
            {name = "need_num", type = "uint8"},
            {name = "rewards", type = "array", fields = {
                {name = "assets", type = "uint32"},
                {name = "val", type = "uint32"}
            }}
        }}
    },
    [13711] = {
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "cell_id", type = "uint32"}
    },
    [13712] = {
        {name = "op_code", type = "uint8"}
    },
    [13713] = {
        {name = "op_code", type = "uint8"},
        {name = "type", type = "uint32"},
        {name = "num", type = "uint32"},
        {name = "quest_id", type = "uint32"},
        {name = "ratio", type = "uint32"},
        {name = "item", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [13714] = {
        {name = "num", type = "uint32"},
        {name = "wave", type = "uint32"}
    },
    [13715] = {
        {name = "flag", type = "uint32"}
    },
    [13716] = {
        {name = "battle_id", type = "uint32"},
        {name = "uid", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "num", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "bind", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [13717] = {

    },
    [13800] = {

    },
    [13801] = {
        {name = "count", type = "uint8"},
        {name = "item_base_id", type = "uint32"},
        {name = "star", type = "uint8"}
    },
    [13802] = {
        {name = "star", type = "uint8"}
    },
    [13803] = {
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint32"},
        {name = "classes", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "star", type = "uint8"},
        {name = "self_star", type = "uint8"}
    },
    [13804] = {
        {name = "quest_kill", type = "array", fields = {
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint32"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "star", type = "uint8"}
        }}
    },
    [13805] = {
        {name = "quest_kill_star_record", type = "array", fields = {
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "type", type = "uint8"},
            {name = "help_name", type = "string"},
            {name = "time", type = "uint32"},
            {name = "star", type = "uint8"},
            {name = "help_star", type = "uint8"}
        }}
    },
    [13806] = {
        {name = "quest_id", type = "uint32"},
        {name = "star", type = "uint8"},
        {name = "count", type = "uint8"},
        {name = "item_base_id", type = "uint32"}
    },
    [13807] = {
        {name = "star", type = "uint8"},
        {name = "name", type = "string"}
    },
    [13900] = {
        {name = "last_view", type = "uint32"},
        {name = "next_time", type = "uint32"},
        {name = "items", type = "array", fields = {
            {name = "idx", type = "uint16"},
            {name = "id", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "type", type = "uint32"},
            {name = "val", type = "uint32"},
            {name = "flag", type = "uint8"}
        }}, 
        {name = "refresh", type = "uint32"},
        {name = "refreshed", type = "uint32"}
    },
    [13901] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [13902] = {
        {name = "last_view", type = "uint32"}
    },
    [13903] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14000] = {
        {name = "reward_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "value", type = "uint32"},
            {name = "target_val", type = "uint32"},
            {name = "ext_val", type = "uint32"},
            {name = "reward_max", type = "uint16"},
            {name = "reward_can", type = "uint16"}
        }}
    },
    [14001] = {
        {name = "flag", type = "uint8"},
        {name = "id", type = "uint32"}
    },
    [14002] = {
        {name = "reward_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "value", type = "uint32"},
            {name = "target_val", type = "uint32"},
            {name = "ext_val", type = "uint32"},
            {name = "reward_max", type = "uint16"},
            {name = "reward_can", type = "uint16"}
        }}
    },
    [14003] = {
        {name = "camp_list", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "start_time", type = "uint32"},
            {name = "end_time", type = "uint32"}
        }}
    },
    [14004] = {
        {name = "open_srv_time", type = "uint32"},
        {name = "merge_srv_time", type = "uint32"},
        {name = "merge_num", type = "uint32"}
    },
    [14005] = {
        {name = "list", type = "array", fields = {
            {name = "rank", type = "uint32"},
            {name = "male_id", type = "uint32"},
            {name = "male_platform", type = "string"},
            {name = "male_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint32"},
            {name = "classes", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "photo", type = "uint32"},
            {name = "photo_auditing", type = "uint32"},
            {name = "g_id", type = "uint32"},
            {name = "g_platform", type = "string"},
            {name = "g_zone_id", type = "uint32"},
            {name = "guild_name", type = "string"},
            {name = "score", type = "uint32"},
            {name = "role_reward", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "bind", type = "uint8"},
                {name = "num", type = "uint32"}
            }}, 
            {name = "guild_reward", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "bind", type = "uint8"},
                {name = "num", type = "uint32"}
            }}, 
            {name = "honor", type = "uint32"}
        }}
    },
    [14006] = {
        {name = "location", type = "uint32"},
        {name = "rolled", type = "uint32"},
        {name = "last_moved", type = "uint32"},
        {name = "footprints", type = "array", fields = {
            {name = "fp", type = "uint32"}
        }}, 
        {name = "rewarded", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "time", type = "uint32"}
        }}, 
        {name = "can_roll", type = "uint8"}
    },
    [14007] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "point", type = "uint8"},
        {name = "base_id", type = "uint32"}
    },
    [14008] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14009] = {
        {name = "last_filled", type = "uint32"},
        {name = "rewarded", type = "uint8"},
        {name = "collected", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "status", type = "uint8"}
        }}, 
        {name = "bag_rewards", type = "array", fields = {
            {name = "c_id", type = "uint32"},
            {name = "rewards", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "base_num", type = "uint32"}
            }}
        }}
    },
    [14010] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14011] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14012] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14013] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14014] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14019] = {
        {name = "open_time", type = "uint32"},
        {name = "charged", type = "array", fields = {
            {name = "gold", type = "uint32"},
            {name = "time", type = "uint32"}
        }}
    },
    [14021] = {
        {name = "r_id", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint32"},
        {name = "help", type = "uint32"},
        {name = "helped", type = "uint32"},
        {name = "start_time", type = "uint32"},
        {name = "end_time", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "need_num", type = "uint32"},
            {name = "start_time", type = "uint32"},
            {name = "end_time", type = "uint32"},
            {name = "guilds", type = "array", fields = {
                {name = "g_id", type = "uint32"},
                {name = "g_platform", type = "string"},
                {name = "g_zone_id", type = "uint32"}
            }}, 
            {name = "friends", type = "array", fields = {
                {name = "g_id", type = "uint32"},
                {name = "g_platform", type = "string"},
                {name = "g_zone_id", type = "uint32"}
            }}
        }}
    },
    [14022] = {
        {name = "flag", type = "uint8"},
        {name = "type", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [14023] = {
        {name = "flag", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [14024] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14025] = {
        {name = "flag", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [14026] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14027] = {
        {name = "num", type = "uint32"},
        {name = "days", type = "array", fields = {
            {name = "day", type = "uint32"}
        }}, 
        {name = "buys", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "time", type = "uint32"}
        }}
    },
    [14029] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14030] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14031] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14032] = {
        {name = "group", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}, 
        {name = "is_reward", type = "uint32"},
        {name = "active_list", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [14033] = {
        {name = "list", type = "array", fields = {
            {name = "battle_id", type = "uint32"},
            {name = "u_id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "map", type = "uint32"},
            {name = "map_base_id", type = "uint32"},
            {name = "x", type = "uint32"},
            {name = "y", type = "uint32"}
        }}
    },
    [14034] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14035] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14036] = {
        {name = "r_id", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "need_num", type = "uint32"},
            {name = "start_time", type = "uint32"},
            {name = "end_time", type = "uint32"},
            {name = "guilds", type = "array", fields = {
                {name = "g_id", type = "uint32"},
                {name = "g_platform", type = "string"},
                {name = "g_zone_id", type = "uint32"}
            }}, 
            {name = "friends", type = "array", fields = {
                {name = "g_id", type = "uint32"},
                {name = "g_platform", type = "string"},
                {name = "g_zone_id", type = "uint32"}
            }}
        }}
    },
    [14037] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14038] = {
        {name = "list", type = "array", fields = {
            {name = "type", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [14039] = {
        {name = "flag", type = "uint8"},
        {name = "type", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [14040] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "item_id", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "bind", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [14041] = {
        {name = "flag", type = "uint8"},
        {name = "type", type = "uint32"},
        {name = "ids", type = "array", fields = {
            {name = "id", type = "uint16"}
        }}, 
        {name = "msg", type = "string"}
    },
    [14042] = {
        {name = "order", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "gain_list", type = "array", fields = {
            {name = "item_id1", type = "uint32"},
            {name = "num1", type = "uint8"}
        }}, 
        {name = "show_list", type = "array", fields = {
            {name = "item_id2", type = "uint32"},
            {name = "num2", type = "uint8"}
        }}
    },
    [14043] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14044] = {
        {name = "maps", type = "array", fields = {
            {name = "map_id", type = "uint16"}
        }}
    },
    [14045] = {
        {name = "campaign_group_purchase_item", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "price_type", type = "uint32"},
            {name = "price", type = "uint32"},
            {name = "discount", type = "uint16"},
            {name = "start_time", type = "uint32"},
            {name = "end_time", type = "uint32"},
            {name = "buy_num", type = "uint32"},
            {name = "limit_num", type = "uint32"},
            {name = "discount_list", type = "array", fields = {
                {name = "id", type = "uint16"},
                {name = "need_num", type = "uint16"}
            }}, 
            {name = "list1", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "num", type = "uint32"}
            }}, 
            {name = "list2", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "num", type = "uint32"}
            }}
        }}, 
        {name = "buy_list", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "self_buy_num", type = "uint32"}
        }}, 
        {name = "reward_base_id", type = "uint32"},
        {name = "reward_num", type = "uint32"},
        {name = "has_reward", type = "uint8"}
    },
    [14046] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint16"},
        {name = "discount", type = "uint16"},
        {name = "buy_num", type = "uint32"},
        {name = "self_buy_num", type = "uint32"},
        {name = "has_reward", type = "uint8"}
    },
    [14047] = {
        {name = "card_list", type = "array", fields = {
            {name = "flag", type = "uint8"},
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "num", type = "uint32"}
        }}
    },
    [14048] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14049] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14050] = {
        {name = "mod", type = "uint8"},
        {name = "camp_web_ico_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "title", type = "string"},
            {name = "ico", type = "string"},
            {name = "alert", type = "string"},
            {name = "gif", type = "string"},
            {name = "start_time", type = "uint32"},
            {name = "end_time", type = "uint32"},
            {name = "login_open", type = "uint8"},
            {name = "is_show_time", type = "uint8"},
            {name = "menu_list", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "type", type = "uint32"},
                {name = "sec_type", type = "uint32"},
                {name = "reward_mod", type = "uint8"},
                {name = "title", type = "string"},
                {name = "title2", type = "string"},
                {name = "title_ico", type = "string"},
                {name = "ico", type = "string"},
                {name = "type_ico", type = "string"},
                {name = "total_ico", type = "uint32"},
                {name = "start_time", type = "uint32"},
                {name = "end_time", type = "uint32"},
                {name = "sort_val", type = "uint32"},
                {name = "top_banner", type = "string"},
                {name = "rule_str", type = "string"},
                {name = "time_str", type = "string"},
                {name = "bottom_alert", type = "string"},
                {name = "reward_title", type = "string"},
                {name = "panel_type", type = "string"},
                {name = "button_text", type = "string"},
                {name = "is_button", type = "uint8"},
                {name = "cli_reward", type = "string"},
                {name = "tran_info", type = "string"},
                {name = "camp_list", type = "array", fields = {
                    {name = "n", type = "uint8"},
                    {name = "status", type = "uint8"},
                    {name = "value", type = "uint32"},
                    {name = "tar_val", type = "uint32"},
                    {name = "ext_val", type = "uint32"},
                    {name = "reward_num", type = "uint32"},
                    {name = "reward_can", type = "uint32"},
                    {name = "cond_msg", type = "string"},
                    {name = "val1", type = "uint32"},
                    {name = "val2", type = "uint32"},
                    {name = "val3", type = "uint32"},
                    {name = "val4", type = "uint32"},
                    {name = "str1", type = "string"},
                    {name = "str2", type = "string"},
                    {name = "str3", type = "string"},
                    {name = "str4", type = "string"},
                    {name = "loss_items", type = "array", fields = {
                        {name = "base_id", type = "uint32"},
                        {name = "num", type = "uint32"}
                    }}, 
                    {name = "items", type = "array", fields = {
                        {name = "base_id", type = "uint32"},
                        {name = "bind", type = "uint32"},
                        {name = "num", type = "uint32"}
                    }}
                }}
            }}
        }}
    },
    [14051] = {
        {name = "id", type = "uint32"}
    },
    [14052] = {
        {name = "camp_web_update_list", type = "array", fields = {
            {name = "total_id", type = "uint32"},
            {name = "menu_id", type = "uint32"},
            {name = "n", type = "uint8"},
            {name = "status", type = "uint8"},
            {name = "value", type = "uint32"},
            {name = "tar_val", type = "uint32"},
            {name = "ext_val", type = "uint32"},
            {name = "reward_can", type = "uint32"},
            {name = "items", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "bind", type = "uint32"},
                {name = "num", type = "uint32"}
            }}
        }}
    },
    [14053] = {
        {name = "flag", type = "uint8"}
    },
    [14054] = {
        {name = "type", type = "uint32"},
        {name = "rank_list", type = "array", fields = {
            {name = "role_id", type = "uint32"},
            {name = "rank", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint32"},
            {name = "val1", type = "int32"},
            {name = "val2", type = "int32"},
            {name = "val3", type = "int32"},
            {name = "val4", type = "int32"},
            {name = "desc", type = "string"}
        }}
    },
    [14055] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "askid", type = "uint32"}
    },
    [14056] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "result", type = "uint8"},
        {name = "anwer", type = "uint8"}
    },
    [14057] = {
        {name = "left_time", type = "uint32"},
        {name = "state", type = "uint8"},
        {name = "wave", type = "uint32"},
        {name = "left_role", type = "uint32"},
        {name = "left_lanterns", type = "uint32"}
    },
    [14058] = {
        {name = "rewards", type = "array", fields = {
            {name = "assets", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [14059] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14060] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14061] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14062] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14063] = {
        {name = "wish_msg", type = "array", fields = {
            {name = "msg", type = "string"}
        }}
    },
    [14064] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14065] = {
        {name = "left_time", type = "uint32"},
        {name = "add_exp", type = "uint32"},
        {name = "wish_val", type = "uint32"},
        {name = "rank_info", type = "array", fields = {
            {name = "rank", type = "uint8"},
            {name = "guild_name", type = "string"},
            {name = "wish_val", type = "uint32"}
        }}
    },
    [14066] = {
        {name = "status", type = "uint8"},
        {name = "left_time", type = "uint32"}
    },
    [14067] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14068] = {
        {name = "role_info", type = "array", fields = {
            {name = "r_id", type = "uint32"},
            {name = "r_platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "guild_id", type = "uint32"},
            {name = "guild_platform", type = "string"},
            {name = "guild_zone_id", type = "uint32"},
            {name = "guild_name", type = "string"},
            {name = "wish_val", type = "uint32"}
        }}
    },
    [14069] = {
        {name = "info", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "flag", type = "uint8"}
        }}
    },
    [14070] = {
        {name = "status", type = "uint8"},
        {name = "askid", type = "uint32"},
        {name = "left_time", type = "uint32"}
    },
    [14071] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "askid", type = "uint32"},
        {name = "done_answer", type = "uint8"},
        {name = "lockylist", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint32"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "rank", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}
        }}
    },
    [14072] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "result", type = "uint8"},
        {name = "anwer", type = "uint8"}
    },
    [14073] = {
        {name = "rainbow_prize_list", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "assets", type = "uint32"},
            {name = "val", type = "uint32"},
            {name = "is_hit", type = "uint8"}
        }}, 
        {name = "notice_msg", type = "array", fields = {
            {name = "content", type = "string"}
        }}, 
        {name = "last_free_time", type = "uint32"}
    },
    [14074] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint16"}
    },
    [14075] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "result", type = "array", fields = {
            {name = "assets", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [14076] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14077] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint16"}
    },
    [14078] = {
        {name = "result", type = "uint8"},
        {name = "answer_times", type = "uint8"},
        {name = "gains", type = "array", fields = {
            {name = "assets", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [14080] = {
        {name = "status", type = "uint8"},
        {name = "finish", type = "uint32"},
        {name = "end_time", type = "uint32"},
        {name = "refre_time", type = "uint32"},
        {name = "cake", type = "uint32"},
        {name = "max", type = "uint32"}
    },
    [14081] = {
        {name = "info", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "status", type = "uint32"}
        }}
    },
    [14082] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "answer", type = "uint32"},
        {name = "right_answer", type = "uint32"}
    },
    [14083] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14084] = {
        {name = "reward_list", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [14085] = {
        {name = "buff_id", type = "uint32"}
    },
    [14086] = {
        {name = "times", type = "uint32"},
        {name = "max", type = "uint32"}
    },
    [14087] = {
        {name = "id", type = "uint8"},
        {name = "day", type = "uint16"},
        {name = "roll_times", type = "uint16"},
        {name = "status", type = "uint8"},
        {name = "reward", type = "array", fields = {
            {name = "reward_id", type = "uint16"}
        }}, 
        {name = "reward_get", type = "array", fields = {
            {name = "reward_id_get", type = "uint16"}
        }}
    },
    [14088] = {
        {name = "reward_id", type = "uint16"},
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14089] = {
        {name = "val", type = "uint16"},
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14090] = {
        {name = "msg", type = "string"}
    },
    [14091] = {
        {name = "day_now", type = "uint8"},
        {name = "first_time", type = "uint32"},
        {name = "reward", type = "array", fields = {
            {name = "day_id", type = "uint8"},
            {name = "day_status", type = "uint8"}
        }}
    },
    [14092] = {
        {name = "id", type = "uint16"},
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14093] = {

    },
    [14094] = {
        {name = "pmd_list", type = "array", fields = {
            {name = "msg", type = "string"},
            {name = "time", type = "uint32"}
        }}
    },
    [14095] = {
        {name = "gold", type = "uint32"}
    },
    [14096] = {
        {name = "gold", type = "uint32"},
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14097] = {
        {name = "times", type = "uint16"}
    },
    [14098] = {
        {name = "camp_id", type = "uint32"},
        {name = "base_id", type = "uint32"}
    },
    [14099] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [14100] = {
        {name = "seven_day", type = "array", fields = {
            {name = "year", type = "uint16"},
            {name = "month", type = "uint8"},
            {name = "day", type = "uint8"},
            {name = "order", type = "uint8"},
            {name = "rewarded", type = "uint8"}
        }}
    },
    [14101] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14102] = {
        {name = "signed", type = "uint8"},
        {name = "last_time", type = "uint32"},
        {name = "log", type = "array", fields = {
            {name = "year", type = "uint16"},
            {name = "month", type = "uint8"},
            {name = "day", type = "uint8"},
            {name = "rewarded", type = "uint8"}
        }}, 
        {name = "flag", type = "uint8"},
        {name = "add_sign", type = "uint32"},
        {name = "rand_reward", type = "uint32"},
        {name = "rand_num", type = "uint32"},
        {name = "continue_num", type = "uint32"},
        {name = "repeatflag", type = "uint8"}
    },
    [14103] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14104] = {
        {name = "charge_day", type = "array", fields = {
            {name = "order", type = "uint8"},
            {name = "rewarded", type = "uint8"}
        }}
    },
    [14105] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14106] = {
        {name = "day_charge", type = "uint32"}
    },
    [14107] = {
        {name = "discount_info", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "count", type = "uint32"}
        }}
    },
    [14108] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "type", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [14109] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14200] = {
        {name = "phase", type = "uint8"},
        {name = "time", type = "uint32"}
    },
    [14201] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "combat_mode", type = "uint8"}
    },
    [14202] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14203] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14204] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14205] = {
        {name = "warrior_magic_buff", type = "array", fields = {
            {name = "buff_id", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "camp", type = "uint8"},
            {name = "owner_name", type = "string"},
            {name = "time", type = "uint32"}
        }}
    },
    [14206] = {
        {name = "group_id", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "green_score", type = "uint32"},
        {name = "green_num", type = "uint32"},
        {name = "white_score", type = "uint32"},
        {name = "white_num", type = "uint32"},
        {name = "combat_mode", type = "uint8"}
    },
    [14207] = {
        {name = "revive", type = "uint8"},
        {name = "rank", type = "uint8"},
        {name = "score", type = "uint32"},
        {name = "camp", type = "uint8"}
    },
    [14208] = {
        {name = "warrior", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "magic_buff", type = "array", fields = {
                {name = "buff_id", type = "uint32"}
            }}, 
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "face_id", type = "uint32"},
            {name = "camp", type = "uint8"},
            {name = "kill", type = "uint16"},
            {name = "revive", type = "uint8"},
            {name = "rank", type = "uint8"},
            {name = "score", type = "uint32"}
        }}
    },
    [14209] = {
        {name = "num", type = "uint8"}
    },
    [14210] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14212] = {
        {name = "victory", type = "uint8"},
        {name = "camp", type = "uint8"},
        {name = "score", type = "uint32"},
        {name = "ext_score", type = "uint32"},
        {name = "reward", type = "array", fields = {
            {name = "assets", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [14213] = {
        {name = "combat_mode", type = "uint8"}
    },
    [14214] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14215] = {
        {name = "pets", type = "array", fields = {
            {name = "pos", type = "uint16"},
            {name = "id", type = "uint32"}
        }}, 
        {name = "guards", type = "array", fields = {
            {name = "pos", type = "uint16"},
            {name = "id", type = "uint32"}
        }}
    },
    [14300] = {
        {name = "pass_boss", type = "array", fields = {
            {name = "floor", type = "uint8"},
            {name = "is_pass_gain", type = "uint8"},
            {name = "unit_list", type = "array", fields = {
                {name = "unit_id", type = "uint32"}
            }}
        }}
    },
    [14301] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14302] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14303] = {
        {name = "order", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "gain_list", type = "array", fields = {
            {name = "item_id1", type = "uint32"},
            {name = "num1", type = "uint32"}
        }}, 
        {name = "show_list", type = "array", fields = {
            {name = "item_id2", type = "uint32"},
            {name = "num2", type = "uint32"}
        }}
    },
    [14304] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14305] = {
        {name = "num", type = "uint8"}
    },
    [14400] = {
        {name = "id", type = "uint8"},
        {name = "title_id", type = "uint8"},
        {name = "end_time", type = "uint32"}
    },
    [14401] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14404] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14405] = {
        {name = "id", type = "uint8"},
        {name = "rid", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint16"},
        {name = "first_name", type = "string"},
        {name = "first_lev", type = "uint8"},
        {name = "first_classes", type = "uint8"},
        {name = "best_rank", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "r_platform", type = "string"},
            {name = "r_zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "time", type = "uint16"}
        }}, 
        {name = "recent", type = "array", fields = {
            {name = "rid_r", type = "uint32"},
            {name = "platform_r", type = "string"},
            {name = "zone_id_r", type = "uint16"},
            {name = "name_r", type = "string"},
            {name = "lev_r", type = "uint8"},
            {name = "classes_r", type = "uint8"},
            {name = "time_r", type = "uint16"}
        }}
    },
    [14406] = {
        {name = "id", type = "uint8"},
        {name = "time", type = "uint16"},
        {name = "round", type = "uint8"},
        {name = "title_id", type = "uint8"}
    },
    [14407] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14408] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14420] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14421] = {
        {name = "wave", type = "uint32"}
    },
    [14422] = {
        {name = "wave", type = "uint32"},
        {name = "reward_info", type = "array", fields = {
            {name = "assets", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [14423] = {
        {name = "result", type = "uint8"},
        {name = "buff_id", type = "uint32"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint8"},
        {name = "time", type = "uint16"},
        {name = "round", type = "uint8"},
        {name = "title_id", type = "uint8"},
        {name = "gl_list", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "val", type = "uint32"}
        }}, 
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "classes", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "new_id", type = "uint32"},
            {name = "max_id", type = "uint32"},
            {name = "new_title_id", type = "uint32"}
        }}, 
        {name = "is_beyond", type = "uint8"},
        {name = "is_break", type = "uint8"}
    },
    [14424] = {
        {name = "new_id", type = "uint32"},
        {name = "new_title_id", type = "uint32"},
        {name = "max_id", type = "uint32"},
        {name = "mtime", type = "uint32"},
        {name = "reset_time", type = "uint32"},
        {name = "last_week", type = "uint32"},
        {name = "day_reward", type = "uint32"},
        {name = "day_times", type = "uint32"},
        {name = "total_times", type = "uint32"},
        {name = "lost_times", type = "uint32"},
        {name = "end_time", type = "uint32"},
        {name = "last_week_flag", type = "uint32"},
        {name = "floor_num", type = "uint32"}
    },
    [14425] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14426] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "classes", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "new_id", type = "uint32"},
            {name = "max_id", type = "uint32"},
            {name = "new_title_id", type = "uint32"},
            {name = "mtime", type = "uint32"}
        }}
    },
    [14427] = {
        {name = "list", type = "array", fields = {
            {name = "floor", type = "uint32"},
            {name = "role_list", type = "array", fields = {
                {name = "rid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"}
            }}
        }}
    },
    [14428] = {
        {name = "floor", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "rec_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "combat_type", type = "uint8"},
            {name = "atk_name", type = "string"},
            {name = "dfd_name", type = "string"},
            {name = "atk_sex", type = "uint8"},
            {name = "atk_classes", type = "uint8"},
            {name = "dfd_sex", type = "uint8"},
            {name = "dfd_classes", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "liked", type = "uint32"},
            {name = "replayed", type = "uint32"},
            {name = "shared", type = "uint32"},
            {name = "round", type = "uint32"},
            {name = "avg_lev", type = "uint32"}
        }}
    },
    [14429] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14500] = {
        {name = "status", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "timeout", type = "uint32"}
    },
    [14501] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "unit_base", type = "uint32"}
    },
    [14502] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14503] = {
        {name = "question", type = "uint32"},
        {name = "started", type = "uint32"},
        {name = "expire", type = "uint32"},
        {name = "subject", type = "uint8"},
        {name = "next_subject", type = "uint8"},
        {name = "answered", type = "uint8"},
        {name = "right_num", type = "uint8"},
        {name = "successive_right", type = "uint8"},
        {name = "dynamics", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "desc", type = "string"},
            {name = "options", type = "array", fields = {
                {name = "opt_id", type = "uint8"},
                {name = "opt_desc", type = "string"}
            }}
        }}, 
        {name = "total", type = "uint8"},
        {name = "elapsed", type = "uint32"},
        {name = "score", type = "uint32"},
        {name = "exp", type = "uint32"},
        {name = "pet_ext", type = "uint32"},
        {name = "coin", type = "uint32"},
        {name = "score_all", type = "uint32"},
        {name = "elapsed_all", type = "uint32"},
        {name = "can_ask", type = "uint8"}
    },
    [14504] = {
        {name = "flag", type = "uint8"},
        {name = "option", type = "uint8"},
        {name = "answer", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "successive_right", type = "uint8"}
    },
    [14505] = {
        {name = "score", type = "uint32"},
        {name = "elapsed", type = "uint32"},
        {name = "coin", type = "uint32"},
        {name = "exp", type = "uint32"},
        {name = "pet_exp", type = "uint32"},
        {name = "right_num", type = "uint8"},
        {name = "answered", type = "uint8"},
        {name = "total", type = "uint8"}
    },
    [14506] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14507] = {
        {name = "bottom_rank_score", type = "uint32"},
        {name = "elapsed", type = "uint32"},
        {name = "score", type = "uint32"},
        {name = "rank", type = "uint32"},
        {name = "results", type = "array", fields = {
            {name = "day", type = "uint8"},
            {name = "day_score", type = "uint32"},
            {name = "day_elapsed", type = "uint32"}
        }}
    },
    [14508] = {
        {name = "flag", type = "uint8"}
    },
    [14509] = {
        {name = "status", type = "uint8"},
        {name = "timeout", type = "uint32"}
    },
    [14510] = {
        {name = "qid", type = "uint32"},
        {name = "asked", type = "uint32"},
        {name = "expire", type = "uint32"},
        {name = "asked_num", type = "uint8"},
        {name = "total_question", type = "uint8"},
        {name = "answers", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "choice", type = "uint8"},
            {name = "result", type = "uint8"},
            {name = "time", type = "uint32"}
        }}
    },
    [14511] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "choice", type = "uint8"},
        {name = "right_answer", type = "uint8"}
    },
    [14512] = {
        {name = "examination_taker", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "name", type = "string"},
            {name = "score", type = "uint32"}
        }}
    },
    [14513] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "choice", type = "uint8"},
        {name = "result", type = "uint8"},
        {name = "time", type = "uint32"}
    },
    [14514] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "choice", type = "uint8"},
        {name = "result", type = "uint8"},
        {name = "time", type = "uint32"}
    },
    [14515] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "right_answer", type = "uint8"}
    },
    [14516] = {
        {name = "score", type = "uint32"},
        {name = "peeked", type = "uint8"},
        {name = "eased", type = "uint8"},
        {name = "double_used", type = "uint8"},
        {name = "max_peeking", type = "uint8"},
        {name = "max_easing", type = "uint8"},
        {name = "max_doubling", type = "uint8"}
    },
    [14517] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14518] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "id", type = "uint32"},
        {name = "question", type = "uint32"},
        {name = "str_array", type = "array", fields = {
            {name = "key", type = "uint32"},
            {name = "value", type = "string"}
        }}
    },
    [14519] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14600] = {
        {name = "status", type = "uint8"},
        {name = "timeout", type = "uint32"}
    },
    [14601] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14602] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14603] = {
        {name = "floor", type = "uint8"},
        {name = "last_joined", type = "uint32"},
        {name = "exp", type = "uint32"},
        {name = "keys", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "num", type = "uint16"}
        }}, 
        {name = "forward_envoys", type = "array", fields = {
            {name = "floor", type = "uint8"},
            {name = "unit_base", type = "uint32"}
        }}
    },
    [14604] = {
        {name = "boss_id", type = "uint32"}
    },
    [14605] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "item_id", type = "uint32"}
    },
    [14606] = {
        {name = "base_id", type = "uint32"},
        {name = "type", type = "uint8"},
        {name = "num", type = "uint16"}
    },
    [14700] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14701] = {
        {name = "version", type = "string"},
        {name = "msg", type = "string"}
    },
    [14702] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14703] = {
        {name = "name", type = "string"},
        {name = "borad", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "content", type = "string"},
            {name = "publish_name", type = "string"}
        }}
    },
    [14704] = {
        {name = "name", type = "string"},
        {name = "mail", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "title", type = "string"},
            {name = "content", type = "string"},
            {name = "publish_name", type = "string"}
        }}
    },
    [14705] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14800] = {
        {name = "status", type = "uint8"},
        {name = "timeout", type = "uint32"}
    },
    [14801] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14802] = {
        {name = "id", type = "uint8"},
        {name = "round", type = "uint32"},
        {name = "time_span", type = "uint32"},
        {name = "done_list", type = "array", fields = {
            {name = "done_id", type = "uint8"}
        }}, 
        {name = "rewarded", type = "array", fields = {
            {name = "done_id", type = "uint8"}
        }}
    },
    [14803] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14804] = {
        {name = "star", type = "uint32"},
        {name = "time_span", type = "uint32"},
        {name = "gains", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [14805] = {
        {name = "rank", type = "array", fields = {
            {name = "rank", type = "uint32"},
            {name = "star", type = "uint32"},
            {name = "time_span", type = "uint32"},
            {name = "members", type = "array", fields = {
                {name = "rid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint32"},
                {name = "name", type = "string"},
                {name = "classes", type = "uint8"},
                {name = "sex", type = "uint8"},
                {name = "is_leader", type = "uint8"}
            }}
        }}, 
        {name = "my_time_span", type = "uint32"},
        {name = "my_rank", type = "uint32"}
    },
    [14809] = {
        {name = "id", type = "uint8"},
        {name = "time_span", type = "uint32"},
        {name = "done_list", type = "array", fields = {
            {name = "done_id", type = "uint8"}
        }}, 
        {name = "rewarded", type = "array", fields = {
            {name = "done_id", type = "uint8"}
        }}
    },
    [14810] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14811] = {
        {name = "gains", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [14900] = {
        {name = "shops", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "volume", type = "uint8"},
            {name = "is_auto", type = "uint8"},
            {name = "products", type = "array", fields = {
                {name = "time", type = "uint32"}
            }}
        }}
    },
    [14901] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14902] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14903] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14904] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14905] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14906] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14907] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14908] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14909] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14910] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15000] = {
        {name = "flag", type = "uint8"}
    },
    [15001] = {
        {name = "type", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "classes", type = "uint32"},
        {name = "sex", type = "uint32"},
        {name = "lev", type = "uint32"},
        {name = "face", type = "uint32"},
        {name = "name", type = "string"},
        {name = "str", type = "string"}
    },
    [15002] = {
        {name = "flag", type = "uint8"}
    },
    [15003] = {
        {name = "status", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "start_time", type = "uint32"},
        {name = "end_time", type = "uint32"},
        {name = "male_id", type = "uint32"},
        {name = "male_platform", type = "string"},
        {name = "male_zone_id", type = "uint32"},
        {name = "male_classes", type = "uint32"},
        {name = "male_sex", type = "uint32"},
        {name = "male_lev", type = "uint32"},
        {name = "male_face", type = "uint32"},
        {name = "male_name", type = "string"},
        {name = "female_id", type = "uint32"},
        {name = "female_platform", type = "string"},
        {name = "female_zone_id", type = "uint32"},
        {name = "female_classes", type = "uint32"},
        {name = "female_sex", type = "uint32"},
        {name = "female_lev", type = "uint32"},
        {name = "female_face", type = "uint32"},
        {name = "female_name", type = "string"},
        {name = "time", type = "uint32"}
    },
    [15004] = {
        {name = "type", type = "uint8"},
        {name = "time", type = "uint32"},
        {name = "male_id", type = "uint32"},
        {name = "male_platform", type = "string"},
        {name = "male_zone_id", type = "uint32"},
        {name = "male_classes", type = "uint32"},
        {name = "male_sex", type = "uint32"},
        {name = "male_lev", type = "uint32"},
        {name = "male_face", type = "uint32"},
        {name = "male_name", type = "string"},
        {name = "female_id", type = "uint32"},
        {name = "female_platform", type = "string"},
        {name = "female_zone_id", type = "uint32"},
        {name = "female_classes", type = "uint32"},
        {name = "female_sex", type = "uint32"},
        {name = "female_lev", type = "uint32"},
        {name = "female_face", type = "uint32"},
        {name = "female_name", type = "string"},
        {name = "msg", type = "string"}
    },
    [15005] = {
        {name = "type", type = "uint8"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "face", type = "uint32"}
        }}
    },
    [15006] = {
        {name = "flag", type = "uint8"},
        {name = "id", type = "uint8"}
    },
    [15007] = {
        {name = "type", type = "uint8"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "num", type = "uint32"},
            {name = "mtime", type = "uint32"}
        }}
    },
    [15008] = {
        {name = "flag", type = "uint8"}
    },
    [15009] = {

    },
    [15010] = {

    },
    [15011] = {
        {name = "atmosp", type = "uint32"}
    },
    [15012] = {
        {name = "type", type = "uint8"},
        {name = "act_logs", type = "array", fields = {
            {name = "msg", type = "string"},
            {name = "time", type = "uint32"}
        }}
    },
    [15013] = {
        {name = "invit", type = "uint32"},
        {name = "online", type = "uint32"},
        {name = "max", type = "uint32"}
    },
    [15014] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "classes", type = "uint32"},
        {name = "sex", type = "uint32"},
        {name = "lev", type = "uint32"},
        {name = "face", type = "uint32"},
        {name = "fc", type = "uint32"},
        {name = "time", type = "uint32"},
        {name = "intimacy", type = "uint32"},
        {name = "status", type = "uint32"},
        {name = "str", type = "string"}
    },
    [15015] = {
        {name = "type", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "m_id", type = "uint32"},
            {name = "m_platform", type = "string"},
            {name = "m_zone_id", type = "uint32"},
            {name = "male_name", type = "string"},
            {name = "rank", type = "uint32"},
            {name = "time", type = "uint32"},
            {name = "male_sex", type = "uint32"},
            {name = "male_classes", type = "uint32"},
            {name = "male_lev", type = "uint32"},
            {name = "f_id", type = "uint32"},
            {name = "f_platform", type = "string"},
            {name = "f_zone_id", type = "uint32"},
            {name = "female_name", type = "string"},
            {name = "female_sex", type = "uint32"},
            {name = "female_classes", type = "uint32"},
            {name = "female_lev", type = "uint32"},
            {name = "val1", type = "uint32"},
            {name = "val2", type = "uint32"},
            {name = "val3", type = "uint32"},
            {name = "val4", type = "uint32"},
            {name = "desc", type = "string"}
        }}
    },
    [15016] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "status", type = "uint32"}
    },
    [15017] = {
        {name = "type", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "id2", type = "uint32"},
        {name = "id3", type = "uint32"},
        {name = "x", type = "uint32"},
        {name = "y", type = "uint32"},
        {name = "time", type = "uint32"}
    },
    [15018] = {
        {name = "type", type = "uint8"},
        {name = "use_item_id", type = "uint32"},
        {name = "g_item_id", type = "uint32"},
        {name = "g_bind", type = "uint32"},
        {name = "g_num", type = "uint32"},
        {name = "show_list", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "bind", type = "uint32"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "pos", type = "uint32"},
        {name = "msg", type = "string"},
        {name = "max_times", type = "uint32"},
        {name = "times", type = "uint32"}
    },
    [15019] = {
        {name = "op_type", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15020] = {
        {name = "flag", type = "uint8"},
        {name = "self_type", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15021] = {
        {name = "type", type = "uint8"},
        {name = "self_type", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "status", type = "uint32"}
    },
    [15022] = {
        {name = "flag", type = "uint8"}
    },
    [15023] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"}
        }}
    },
    [15024] = {
        {name = "family_info", type = "array", fields = {
            {name = "fid", type = "uint32"},
            {name = "fplatform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "lev", type = "uint32"}
        }}
    },
    [15025] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "times", type = "uint16"}
        }}
    },
    [15026] = {
        {name = "id", type = "uint16"},
        {name = "times", type = "uint16"}
    },
    [15027] = {
        {name = "honor_id_now", type = "uint32"},
        {name = "honor_list", type = "array", fields = {
            {name = "honor_id", type = "uint32"}
        }}
    },
    [15028] = {
        {name = "honor_id", type = "uint32"}
    },
    [15029] = {
        {name = "male_name", type = "string"},
        {name = "male_sex", type = "uint8"},
        {name = "male_classes", type = "uint8"},
        {name = "male_id", type = "uint32"},
        {name = "male_platform", type = "string"},
        {name = "male_zone_id", type = "uint32"},
        {name = "male_face_index", type = "uint32"},
        {name = "male_face_time", type = "uint32"},
        {name = "female_name", type = "string"},
        {name = "female_sex", type = "uint8"},
        {name = "female_classes", type = "uint8"},
        {name = "female_id", type = "uint32"},
        {name = "female_platform", type = "string"},
        {name = "female_zone_id", type = "uint32"},
        {name = "female_face_index", type = "uint32"},
        {name = "female_face_time", type = "uint32"},
        {name = "intimacy", type = "uint32"},
        {name = "time", type = "uint32"}
    },
    [15100] = {
        {name = "status", type = "uint8"},
        {name = "time", type = "uint32"}
    },
    [15101] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15102] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15103] = {
        {name = "win", type = "uint8"},
        {name = "times", type = "uint8"},
        {name = "die", type = "uint8"},
        {name = "score", type = "uint16"},
        {name = "exp", type = "uint32"}
    },
    [15104] = {
        {name = "self_score", type = "uint16"},
        {name = "sefl_rank_point", type = "uint16"},
        {name = "top_compete_role", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "score", type = "uint16"},
            {name = "rank_point", type = "uint16"}
        }}
    },
    [15105] = {
        {name = "gain_base_id", type = "uint32"},
        {name = "gain_num", type = "uint32"},
        {name = "show", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "msg", type = "string"}
    },
    [15200] = {
        {name = "status", type = "uint8"},
        {name = "timeout", type = "uint32"}
    },
    [15201] = {
        {name = "lev", type = "uint8"},
        {name = "summoned", type = "array", fields = {
            {name = "map", type = "uint32"},
            {name = "x", type = "uint32"},
            {name = "y", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "lev", type = "uint8"},
            {name = "time", type = "uint32"}
        }}, 
        {name = "today_summoned", type = "uint32"}
    },
    [15202] = {
        {name = "constellation_unit", type = "array", fields = {
            {name = "map_id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "lev", type = "uint8"}
        }}
    },
    [15203] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15204] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15205] = {
        {name = "map_num", type = "array", fields = {
            {name = "map_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "constellation_unit", type = "array", fields = {
            {name = "map_id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "lev", type = "uint8"}
        }}
    },
    [15206] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "title_lev", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "max_kill", type = "uint8"},
        {name = "id_now", type = "uint32"},
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15207] = {
        {name = "lev", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "status", type = "uint32"},
        {name = "mtime", type = "uint32"},
        {name = "rate", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "is_leader", type = "uint32"}
        }}
    },
    [15208] = {
        {name = "lev", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"}
        }}
    },
    [15300] = {
        {name = "seven_day", type = "array", fields = {
            {name = "year", type = "uint16"},
            {name = "month", type = "uint8"},
            {name = "day", type = "uint8"},
            {name = "order", type = "uint8"},
            {name = "rewarded", type = "uint8"}
        }}, 
        {name = "id", type = "uint8"}
    },
    [15301] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15302] = {
        {name = "seven_day", type = "array", fields = {
            {name = "year", type = "uint16"},
            {name = "month", type = "uint8"},
            {name = "day", type = "uint8"},
            {name = "order", type = "uint8"},
            {name = "rewarded", type = "uint8"}
        }}
    },
    [15303] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15400] = {
        {name = "sid", type = "uint8"},
        {name = "qid", type = "uint32"},
        {name = "start_time", type = "uint32"},
        {name = "status", type = "uint8"},
        {name = "option", type = "uint8"}
    },
    [15401] = {
        {name = "sid", type = "uint8"},
        {name = "qid", type = "uint32"},
        {name = "status", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15402] = {
        {name = "sid", type = "uint8"},
        {name = "qid", type = "uint32"},
        {name = "result", type = "uint8"},
        {name = "opts", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "option", type = "uint8"}
        }}
    },
    [15403] = {
        {name = "stats", type = "array", fields = {
            {name = "result", type = "uint8"}
        }}, 
        {name = "gains", type = "array", fields = {
            {name = "assets", type = "uint32"},
            {name = "value", type = "uint32"}
        }}
    },
    [15500] = {
        {name = "status", type = "uint8"},
        {name = "timeout", type = "uint32"}
    },
    [15501] = {
        {name = "guild_war_alliance", type = "array", fields = {
            {name = "gids", type = "array", fields = {
                {name = "guild_id", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"}
            }}, 
            {name = "names", type = "array", fields = {
                {name = "name", type = "string"}
            }}, 
            {name = "totems", type = "array", fields = {
                {name = "totem", type = "uint8"}
            }}, 
            {name = "side", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "type", type = "uint8"},
            {name = "is_win", type = "uint8"},
            {name = "match_type", type = "uint8"},
            {name = "match_local_id", type = "uint32"},
            {name = "member_num", type = "uint32"},
            {name = "remain_num", type = "uint32"},
            {name = "movability", type = "uint32"}
        }}
    },
    [15502] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15503] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15504] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15505] = {
        {name = "movability", type = "uint32"},
        {name = "win", type = "uint32"}
    },
    [15506] = {
        {name = "guild_war_guild", type = "array", fields = {
            {name = "guild_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "totem", type = "uint8"},
            {name = "side", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "type", type = "uint8"},
            {name = "match_type", type = "uint8"},
            {name = "match_local_id", type = "uint32"},
            {name = "is_win", type = "uint8"}
        }}, 
        {name = "mode", type = "uint8"}
    },
    [15507] = {
        {name = "guild_war_role", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "win", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "movability", type = "uint32"}
        }}
    },
    [15508] = {
        {name = "guild_war_role", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "win", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "movability", type = "uint32"}
        }}
    },
    [15509] = {
        {name = "type", type = "uint8"}
    },
    [15600] = {
        {name = "phase", type = "uint8"},
        {name = "time", type = "uint32"}
    },
    [15601] = {
        {name = "pet_base_id", type = "array", fields = {
            {name = "base_id", type = "uint32"}
        }}
    },
    [15602] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "pet_base_id", type = "uint32"}
    },
    [15603] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15604] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15605] = {
        {name = "status", type = "uint8"},
        {name = "pet_base_id", type = "uint32"}
    },
    [15607] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15608] = {
        {name = "round", type = "uint8"},
        {name = "camp_id", type = "uint32"},
        {name = "status", type = "uint8"}
    },
    [15609] = {
        {name = "camp_id", type = "uint32"}
    },
    [15610] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "pet_base_id", type = "uint32"}
    },
    [15700] = {
        {name = "sid", type = "uint8"},
        {name = "qid", type = "uint32"},
        {name = "start_time", type = "uint32"},
        {name = "status", type = "uint8"},
        {name = "option", type = "uint8"}
    },
    [15701] = {
        {name = "sid", type = "uint8"},
        {name = "qid", type = "uint32"},
        {name = "status", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15702] = {
        {name = "sid", type = "uint8"},
        {name = "qid", type = "uint32"},
        {name = "result", type = "uint8"},
        {name = "opts", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "option", type = "uint8"}
        }}
    },
    [15703] = {
        {name = "stats", type = "array", fields = {
            {name = "result", type = "uint8"}
        }}, 
        {name = "gains", type = "array", fields = {
            {name = "assets", type = "uint32"},
            {name = "value", type = "uint32"}
        }}
    },
    [15800] = {
        {name = "flag", type = "uint8"}
    },
    [15801] = {
        {name = "type", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "classes", type = "uint32"},
        {name = "sex", type = "uint32"},
        {name = "lev", type = "uint32"},
        {name = "face", type = "uint32"},
        {name = "fc", type = "uint32"},
        {name = "name", type = "string"},
        {name = "str", type = "string"}
    },
    [15802] = {
        {name = "flag", type = "uint8"}
    },
    [15804] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "status", type = "uint32"},
        {name = "evaluation", type = "array", fields = {
            {name = "lev", type = "uint32"}
        }}, 
        {name = "study_lev", type = "uint32"},
        {name = "mtime", type = "uint32"}
    },
    [15805] = {
        {name = "tar_rid", type = "uint32"},
        {name = "tar_platform", type = "string"},
        {name = "tar_zone_id", type = "uint32"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint32"},
        {name = "classes", type = "uint32"},
        {name = "lev", type = "uint32"},
        {name = "fc", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "finish", type = "uint32"},
            {name = "progress", type = "array", fields = {
                {name = "id", type = "int16"},
                {name = "finish", type = "uint8"},
                {name = "target", type = "uint32"},
                {name = "target_val", type = "uint16"},
                {name = "value", type = "uint16"},
                {name = "ext_data", type = "array", fields = {
                    {name = "key", type = "uint8"},
                    {name = "value", type = "uint32"}
                }}
            }}
        }}, 
        {name = "daily_reward", type = "uint32"}
    },
    [15806] = {
        {name = "tar_rid", type = "uint32"},
        {name = "tar_platform", type = "string"},
        {name = "tar_zone_id", type = "uint32"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint32"},
        {name = "classes", type = "uint32"},
        {name = "lev", type = "uint32"},
        {name = "fc", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "finish", type = "uint32"},
            {name = "progress", type = "array", fields = {
                {name = "id", type = "int16"},
                {name = "finish", type = "uint8"},
                {name = "target", type = "uint32"},
                {name = "target_val", type = "uint16"},
                {name = "value", type = "uint16"},
                {name = "ext_data", type = "array", fields = {
                    {name = "key", type = "uint8"},
                    {name = "value", type = "uint32"}
                }}
            }}
        }}, 
        {name = "target_reward", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}, 
        {name = "target_rewarded", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [15807] = {
        {name = "t_id", type = "uint32"},
        {name = "t_platform", type = "string"},
        {name = "t_zone_id", type = "uint32"},
        {name = "t_name", type = "string"},
        {name = "t_sex", type = "uint32"},
        {name = "t_classes", type = "uint32"},
        {name = "t_lev", type = "uint32"},
        {name = "t_g_id", type = "uint32"},
        {name = "t_g_platform", type = "string"},
        {name = "t_g_zone_id", type = "uint32"},
        {name = "t_g_name", type = "string"},
        {name = "msg", type = "string"},
        {name = "teacher_score", type = "uint32"},
        {name = "login_time", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint32"},
            {name = "classes", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "in_time", type = "uint32"},
            {name = "out_time", type = "uint32"},
            {name = "login_time", type = "uint32"},
            {name = "g_id", type = "uint32"},
            {name = "g_platform", type = "string"},
            {name = "g_zone_id", type = "uint32"},
            {name = "guild_name", type = "string"},
            {name = "encourage_time", type = "uint32"},
            {name = "fc", type = "uint32"},
            {name = "teacher_score", type = "uint32"}
        }}
    },
    [15808] = {
        {name = "r_id", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint32"},
        {name = "t_name", type = "string"},
        {name = "flag", type = "uint8"},
        {name = "encourage_time", type = "uint32"}
    },
    [15809] = {
        {name = "type", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "flag", type = "uint8"}
    },
    [15810] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint32"},
        {name = "type", type = "uint32"},
        {name = "flag", type = "uint8"}
    },
    [15811] = {
        {name = "flag", type = "uint8"},
        {name = "self_type", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15812] = {
        {name = "type", type = "uint8"},
        {name = "self_type", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"}
    },
    [15813] = {
        {name = "flag", type = "uint8"}
    },
    [15814] = {
        {name = "flag", type = "uint8"}
    },
    [15815] = {
        {name = "flag", type = "uint8"}
    },
    [15816] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint32"},
            {name = "classes", type = "uint32"},
            {name = "lev", type = "uint32"}
        }}
    },
    [15817] = {
        {name = "type", type = "uint32"},
        {name = "op_type", type = "uint32"},
        {name = "flag", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"}
    },
    [15818] = {
        {name = "flag", type = "uint8"}
    },
    [15819] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint32"},
        {name = "classes", type = "uint32"},
        {name = "lev", type = "uint32"}
    },
    [15820] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "flag", type = "uint32"}
        }}
    },
    [15821] = {
        {name = "flag", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "score", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "bind", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [15822] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint32"},
            {name = "classes", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "msg", type = "string"}
        }}
    },
    [15823] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint32"},
            {name = "classes", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "msg", type = "string"}
        }}
    },
    [15824] = {
        {name = "num", type = "uint32"},
        {name = "max_num", type = "uint32"}
    },
    [15900] = {
        {name = "day_best", type = "uint8"},
        {name = "free_rf_count", type = "uint8"},
        {name = "pay_rf_count", type = "uint8"},
        {name = "pray_result", type = "array", fields = {
            {name = "pray_lv", type = "uint8"}
        }}, 
        {name = "rewards", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "count", type = "uint32"}
        }}, 
        {name = "is_receive", type = "uint8"},
        {name = "buff", type = "uint32"}
    },
    [15901] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15902] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15903] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16000] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16001] = {
        {name = "help_msg", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "help_id", type = "uint32"},
            {name = "digit_array", type = "array", fields = {
                {name = "key", type = "uint32"},
                {name = "value", type = "uint32"}
            }}, 
            {name = "str_array", type = "array", fields = {
                {name = "key", type = "uint32"},
                {name = "value", type = "string"}
            }}
        }}
    },
    [16002] = {
        {name = "add_help_msg", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "help_id", type = "uint32"},
            {name = "r_id", type = "uint32"},
            {name = "r_platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "digit_array", type = "array", fields = {
                {name = "digit_key", type = "uint32"},
                {name = "digit_val", type = "uint32"}
            }}, 
            {name = "str_array", type = "array", fields = {
                {name = "str_key", type = "uint32"},
                {name = "str_val", type = "string"}
            }}
        }}, 
        {name = "del_help_msg", type = "array", fields = {
            {name = "id", type = "uint8"}
        }}
    },
    [16003] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16004] = {
        {name = "help_msg", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "help_id", type = "uint32"},
            {name = "digit_array", type = "array", fields = {
                {name = "key", type = "uint32"},
                {name = "value", type = "uint32"}
            }}, 
            {name = "str_array", type = "array", fields = {
                {name = "key", type = "uint32"},
                {name = "value", type = "string"}
            }}
        }}
    },
    [16005] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16100] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "ask_id", type = "uint32"},
        {name = "fun_type", type = "uint8"},
        {name = "sid", type = "uint8"},
        {name = "qid", type = "uint32"},
        {name = "start_time", type = "uint32"},
        {name = "status", type = "uint8"},
        {name = "option", type = "uint8"}
    },
    [16101] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "ask_id", type = "uint32"},
        {name = "fun_type", type = "uint8"},
        {name = "sid", type = "uint8"},
        {name = "qid", type = "uint32"},
        {name = "status", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16102] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "ask_id", type = "uint32"},
        {name = "fun_type", type = "uint8"},
        {name = "sid", type = "uint8"},
        {name = "qid", type = "uint32"},
        {name = "result", type = "uint8"},
        {name = "opts", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "option", type = "uint8"}
        }}
    },
    [16103] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "ask_id", type = "uint32"},
        {name = "fun_type", type = "uint8"},
        {name = "stats", type = "array", fields = {
            {name = "result", type = "uint8"}
        }}, 
        {name = "gains", type = "array", fields = {
            {name = "assets", type = "uint32"},
            {name = "value", type = "uint32"}
        }}
    },
    [16200] = {
        {name = "status", type = "uint8"},
        {name = "timeout", type = "uint32"}
    },
    [16201] = {
        {name = "guild_hero_team_leader", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "position", type = "uint32"}
        }}
    },
    [16202] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16203] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16204] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16205] = {
        {name = "g_id1", type = "uint32"},
        {name = "g_platform1", type = "string"},
        {name = "g_zone_id1", type = "uint16"},
        {name = "g_name1", type = "string"},
        {name = "g_id2", type = "uint32"},
        {name = "g_platform2", type = "string"},
        {name = "g_zone_id2", type = "uint16"},
        {name = "g_name2", type = "string"},
        {name = "time", type = "uint32"},
        {name = "round", type = "uint8"},
        {name = "leaders", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "g_id", type = "uint32"},
            {name = "g_platform", type = "string"},
            {name = "g_zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "position", type = "uint32"},
            {name = "is_win", type = "uint8"},
            {name = "is_fighting", type = "uint8"}
        }}
    },
    [16206] = {
        {name = "logs", type = "array", fields = {
            {name = "time", type = "uint32"},
            {name = "name", type = "string"},
            {name = "match_type", type = "uint8"},
            {name = "match_local_id", type = "uint32"},
            {name = "position", type = "uint32"}
        }}
    },
    [16207] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16300] = {
        {name = "statue", type = "uint8"},
        {name = "mtime", type = "uint32"}
    },
    [16301] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16302] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16303] = {
        {name = "series", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "score", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "offline_num", type = "uint32"}
        }}
    },
    [16304] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "win_streak", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "die", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "zone_id", type = "uint32"},
            {name = "match", type = "uint32"},
            {name = "group", type = "uint32"},
            {name = "series", type = "uint32"}
        }}
    },
    [16305] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "win_streak", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "die", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "zone_id", type = "uint32"},
            {name = "match", type = "uint32"},
            {name = "group", type = "uint32"},
            {name = "series", type = "uint32"}
        }}
    },
    [16306] = {
        {name = "series", type = "uint32"},
        {name = "succ_group", type = "uint32"},
        {name = "fail_group", type = "uint32"},
        {name = "group_list", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "score", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "offline_num", type = "uint32"}
        }}, 
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "win_streak", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "die", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "zone_id", type = "uint32"},
            {name = "match", type = "uint32"},
            {name = "group", type = "uint32"},
            {name = "series", type = "uint32"}
        }}, 
        {name = "rank_list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "win_streak", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "die", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "zone_id", type = "uint32"},
            {name = "match", type = "uint32"},
            {name = "group", type = "uint32"},
            {name = "series", type = "uint32"}
        }}
    },
    [16307] = {
        {name = "gain_base_id", type = "uint32"},
        {name = "gain_num", type = "uint32"},
        {name = "show", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "msg", type = "string"}
    },
    [16308] = {
        {name = "is_win", type = "uint32"},
        {name = "die", type = "uint32"},
        {name = "show", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [16309] = {
        {name = "list", type = "array", fields = {
            {name = "group", type = "uint8"},
            {name = "num", type = "uint32"},
            {name = "fight", type = "uint32"},
            {name = "match", type = "uint32"}
        }}
    },
    [16400] = {
        {name = "status", type = "uint8"},
        {name = "time", type = "uint32"},
        {name = "pk_type", type = "uint32"},
        {name = "season_id", type = "uint32"}
    },
    [16401] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16402] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16403] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16404] = {
        {name = "teammate", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "rank_lev", type = "uint8"},
            {name = "rank_point", type = "uint16"},
            {name = "formation_id", type = "uint8"},
            {name = "formation_lev", type = "uint8"},
            {name = "is_leader", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "guards", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "status", type = "uint8"},
                {name = "war_id", type = "uint8"},
                {name = "quality", type = "uint8"}
            }}, 
            {name = "show_badge_id", type = "uint32"}
        }}, 
        {name = "pk_type", type = "uint32"},
        {name = "order", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"}
        }}, 
        {name = "matched_time", type = "uint32"}
    },
    [16405] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "rank_lev", type = "uint8"},
        {name = "rank_point", type = "uint16"},
        {name = "season_rank_lev", type = "uint8"},
        {name = "season_rank_point", type = "uint16"},
        {name = "win_count", type = "uint16"},
        {name = "win_sustained", type = "uint16"},
        {name = "combat_count", type = "uint16"},
        {name = "best_rank_lev", type = "uint8"},
        {name = "best_rank_point", type = "uint16"},
        {name = "best_win_count", type = "uint16"},
        {name = "best_win_sustained", type = "uint16"},
        {name = "liked", type = "uint32"},
        {name = "best_partner", type = "array", fields = {
            {name = "partner_rid", type = "uint32"},
            {name = "partner_platform", type = "string"},
            {name = "partner_zone_id", type = "uint32"},
            {name = "partner_name", type = "string"},
            {name = "co_rank_lev", type = "uint16"}
        }}, 
        {name = "historical_high", type = "uint8"},
        {name = "show_badge_id", type = "uint16"},
        {name = "promotion_win", type = "uint8"}
    },
    [16406] = {
        {name = "r_id", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint32"},
        {name = "result", type = "uint8"},
        {name = "pk_type", type = "uint32"},
        {name = "honor_point", type = "uint8"},
        {name = "b_store_point", type = "uint16"},
        {name = "win_point", type = "int16"},
        {name = "b_rank_point", type = "uint16"},
        {name = "a_rank_point", type = "uint16"},
        {name = "b_rank_lev", type = "uint8"},
        {name = "a_rank_lev", type = "uint8"},
        {name = "assets", type = "array", fields = {
            {name = "assets_id", type = "uint32"},
            {name = "val", type = "uint32"}
        }}, 
        {name = "combat_reward", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "mates", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "rank_lev", type = "uint8"},
            {name = "rank_point", type = "uint16"},
            {name = "total_hurt", type = "uint32"},
            {name = "total_dmg", type = "uint32"},
            {name = "total_heal", type = "uint32"},
            {name = "kill_num", type = "uint16"},
            {name = "dead_num", type = "uint16"},
            {name = "control_num", type = "uint16"},
            {name = "mvp_score", type = "uint16"}
        }}, 
        {name = "rival", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "rank_lev", type = "uint8"},
            {name = "rank_point", type = "uint16"},
            {name = "total_hurt", type = "uint32"},
            {name = "total_dmg", type = "uint32"},
            {name = "total_heal", type = "uint32"},
            {name = "kill_num", type = "uint16"},
            {name = "dead_num", type = "uint16"},
            {name = "control_num", type = "uint16"},
            {name = "mvp_score", type = "uint16"}
        }}, 
        {name = "hornor_show", type = "uint8"},
        {name = "promotion_win", type = "uint8"}
    },
    [16407] = {
        {name = "is_matching", type = "uint8"},
        {name = "pk_type", type = "uint32"},
        {name = "last_matched", type = "uint32"},
        {name = "day_win", type = "uint8"},
        {name = "day_matched", type = "uint8"},
        {name = "day_win_sustained", type = "uint8"},
        {name = "max_join", type = "uint8"},
        {name = "teammate", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "rank_lev", type = "uint8"},
            {name = "rank_point", type = "uint16"},
            {name = "formation_id", type = "uint8"},
            {name = "formation_lev", type = "uint8"},
            {name = "is_leader", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "guards", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "status", type = "uint8"},
                {name = "war_id", type = "uint8"},
                {name = "quality", type = "uint8"}
            }}, 
            {name = "show_badge_id", type = "uint32"}
        }}, 
        {name = "order", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"}
        }}
    },
    [16408] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16409] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16410] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16411] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"}
    },
    [16412] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16413] = {
        {name = "teammate", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "rank_lev", type = "uint8"},
            {name = "rank_point", type = "uint16"},
            {name = "formation_id", type = "uint8"},
            {name = "formation_lev", type = "uint8"},
            {name = "is_leader", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "guards", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "status", type = "uint8"},
                {name = "war_id", type = "uint8"},
                {name = "quality", type = "uint8"}
            }}
        }}, 
        {name = "order", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"}
        }}
    },
    [16414] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16415] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16416] = {
        {name = "type", type = "uint8"},
        {name = "group", type = "uint8"},
        {name = "rank", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "rank_lev", type = "uint8"},
            {name = "rank_point", type = "uint16"}
        }}
    },
    [16417] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16418] = {
        {name = "type", type = "uint8"},
        {name = "range", type = "uint8"},
        {name = "rank", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "val1", type = "uint32"},
            {name = "val2", type = "uint32"}
        }}
    },
    [16419] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [16420] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16421] = {
        {name = "season_id", type = "uint32"},
        {name = "new_lev", type = "uint8"},
        {name = "reward_lev", type = "uint8"},
        {name = "rewarded", type = "uint32"},
        {name = "final_reward", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [16422] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16423] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16424] = {
        {name = "r_id", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint32"},
        {name = "is_win", type = "uint8"},
        {name = "mates", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "rank_lev", type = "uint8"},
            {name = "rank_point", type = "uint16"},
            {name = "total_hurt", type = "uint32"},
            {name = "total_dmg", type = "uint32"},
            {name = "total_heal", type = "uint32"},
            {name = "kill_num", type = "uint16"},
            {name = "dead_num", type = "uint16"},
            {name = "control_num", type = "uint16"},
            {name = "mvp_score", type = "uint16"}
        }}, 
        {name = "rival", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "rank_lev", type = "uint8"},
            {name = "rank_point", type = "uint16"},
            {name = "total_hurt", type = "uint32"},
            {name = "total_dmg", type = "uint32"},
            {name = "total_heal", type = "uint32"},
            {name = "kill_num", type = "uint16"},
            {name = "dead_num", type = "uint16"},
            {name = "control_num", type = "uint16"},
            {name = "mvp_score", type = "uint16"}
        }}
    },
    [16425] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [16426] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16427] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "rank_lev", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "rank_point", type = "uint16"},
        {name = "season_rank_lev", type = "uint8"},
        {name = "season_rank_point", type = "uint16"},
        {name = "win_count", type = "uint16"},
        {name = "win_sustained", type = "uint16"},
        {name = "combat_count", type = "uint16"},
        {name = "best_rank_lev", type = "uint8"},
        {name = "best_rank_point", type = "uint16"},
        {name = "best_win_count", type = "uint16"},
        {name = "best_win_sustained", type = "uint16"},
        {name = "liked", type = "uint32"},
        {name = "best_partner", type = "array", fields = {
            {name = "partner_rid", type = "uint32"},
            {name = "partner_platform", type = "string"},
            {name = "partner_zone_id", type = "uint32"},
            {name = "partner_name", type = "string"},
            {name = "co_rank_lev", type = "uint16"}
        }}, 
        {name = "awesome_kill", type = "uint16"},
        {name = "awesome_dmg", type = "uint16"},
        {name = "awesome_kill_num", type = "uint16"},
        {name = "mvp", type = "uint16"},
        {name = "awesome_heal", type = "uint16"},
        {name = "awesome_control", type = "uint16"},
        {name = "loss_mvp", type = "uint16"},
        {name = "season_awesome_kill", type = "uint16"},
        {name = "season_awesome_dmg", type = "uint16"},
        {name = "season_awesome_kill_num", type = "uint16"},
        {name = "season_mvp", type = "uint16"},
        {name = "season_awesome_heal", type = "uint16"},
        {name = "season_awesome_control", type = "uint16"},
        {name = "season_loss_mvp", type = "uint16"}
    },
    [16428] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "last_recent", type = "array", fields = {
            {name = "time", type = "uint32"},
            {name = "rank_lev", type = "uint8"},
            {name = "is_win", type = "uint8"},
            {name = "best_result", type = "uint8"},
            {name = "r_id", type = "uint32"},
            {name = "r_platform", type = "string"},
            {name = "r_zone_id", type = "uint32"}
        }}
    },
    [16429] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16430] = {
        {name = "max_lev", type = "uint8"}
    },
    [16431] = {
        {name = "num", type = "uint32"},
        {name = "starlev", type = "uint32"}
    },
    [16432] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16433] = {
        {name = "reward", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "bound", type = "uint8"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "badge_id", type = "uint32"}
    },
    [16434] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16435] = {
        {name = "badge_id", type = "uint32"},
        {name = "badgelist", type = "array", fields = {
            {name = "badge_id", type = "uint32"}
        }}, 
        {name = "setlist", type = "array", fields = {
            {name = "set_id", type = "uint32"}
        }}
    },
    [16436] = {
        {name = "classes", type = "uint8"},
        {name = "badgelist", type = "array", fields = {
            {name = "badge_id", type = "uint32"}
        }}, 
        {name = "setlist", type = "array", fields = {
            {name = "set_id", type = "uint32"}
        }}
    },
    [16437] = {
        {name = "badge_id", type = "uint32"}
    },
    [16438] = {
        {name = "badge_id", type = "uint32"},
        {name = "classes", type = "uint8"},
        {name = "order", type = "uint32"}
    },
    [16500] = {
        {name = "statue", type = "uint8"},
        {name = "mtime", type = "uint32"}
    },
    [16501] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16502] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16503] = {
        {name = "group", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "map_base_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [16504] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "win_streak", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "die", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "zone_id", type = "uint32"},
            {name = "match", type = "uint32"},
            {name = "group", type = "uint32"},
            {name = "rank", type = "uint32"},
            {name = "exp", type = "uint32"},
            {name = "map_base_id", type = "uint32"}
        }}
    },
    [16505] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "win_streak", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "die", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "zone_id", type = "uint32"},
            {name = "match", type = "uint32"},
            {name = "group", type = "uint32"},
            {name = "map_base_id", type = "uint32"}
        }}
    },
    [16506] = {
        {name = "group", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "win_streak", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "die", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "zone_id", type = "uint32"},
            {name = "match", type = "uint32"},
            {name = "group", type = "uint32"},
            {name = "map_base_id", type = "uint32"}
        }}, 
        {name = "rank_list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "win_streak", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "die", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "zone_id", type = "uint32"},
            {name = "match", type = "uint32"},
            {name = "group", type = "uint32"},
            {name = "map_base_id", type = "uint32"}
        }}
    },
    [16508] = {
        {name = "is_win", type = "uint32"},
        {name = "die", type = "uint32"},
        {name = "show", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [16509] = {

    },
    [16600] = {
        {name = "order", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "page", type = "uint8"},
        {name = "page_total", type = "uint8"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "state", type = "uint8"},
            {name = "comment_num", type = "uint16"},
            {name = "like_num", type = "uint16"},
            {name = "time", type = "uint32"},
            {name = "order", type = "uint32"}
        }}
    },
    [16602] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "local_id", type = "uint32"}
    },
    [16603] = {
        {name = "order", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "page", type = "uint8"},
        {name = "page_total", type = "uint8"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "gm", type = "uint8"},
            {name = "comment_num", type = "uint16"},
            {name = "like_num", type = "uint16"},
            {name = "time", type = "uint32"},
            {name = "order", type = "uint32"}
        }}
    },
    [16604] = {
        {name = "id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "role_name", type = "string"},
        {name = "content", type = "string"},
        {name = "comment_num", type = "uint16"},
        {name = "like_num", type = "uint16"},
        {name = "gm", type = "uint8"},
        {name = "answer", type = "uint8"},
        {name = "time", type = "uint32"},
        {name = "reward", type = "uint8"},
        {name = "like", type = "uint8"},
        {name = "type", type = "uint8"}
    },
    [16605] = {
        {name = "title_id", type = "uint32"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16606] = {
        {name = "title_id", type = "uint32"},
        {name = "answer", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "name", type = "string"},
            {name = "list", type = "array", fields = {
                {name = "question_num", type = "uint8"},
                {name = "question_name", type = "string"}
            }}, 
            {name = "correct", type = "uint8"}
        }}
    },
    [16607] = {
        {name = "title_id", type = "uint32"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16608] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "local_id", type = "uint32"}
    },
    [16700] = {
        {name = "auction_list", type = "array", fields = {
            {name = "idx", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "item_count", type = "uint16"},
            {name = "gold", type = "uint32"},
            {name = "gold_my", type = "uint32"},
            {name = "gold_once", type = "uint16"},
            {name = "over_time", type = "uint32"},
            {name = "focus", type = "uint8"},
            {name = "state", type = "uint8"}
        }}
    },
    [16701] = {
        {name = "list", type = "array", fields = {
            {name = "idx", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "item_count", type = "uint16"},
            {name = "gold", type = "uint32"},
            {name = "gold_my", type = "uint32"},
            {name = "gold_once", type = "uint16"},
            {name = "over_time", type = "uint32"},
            {name = "state", type = "uint8"}
        }}
    },
    [16702] = {
        {name = "idx", type = "uint32"},
        {name = "focus", type = "uint8"}
    },
    [16703] = {
        {name = "idx", type = "uint32"},
        {name = "gold", type = "uint32"},
        {name = "gold_my", type = "uint32"},
        {name = "once", type = "uint16"},
        {name = "over_time", type = "uint32"},
        {name = "state", type = "uint8"}
    },
    [16704] = {
        {name = "idx", type = "uint32"},
        {name = "item_id", type = "uint32"},
        {name = "item_count", type = "uint16"},
        {name = "gold", type = "uint32"},
        {name = "gold_my", type = "uint32"},
        {name = "gold_once", type = "uint16"},
        {name = "over_time", type = "uint32"},
        {name = "focus", type = "uint8"}
    },
    [16705] = {

    },
    [16706] = {
        {name = "time_list", type = "array", fields = {
            {name = "start_time", type = "uint32"},
            {name = "end_time", type = "uint32"}
        }}
    },
    [16707] = {
        {name = "item_list", type = "array", fields = {
            {name = "idx", type = "uint32"},
            {name = "gold", type = "uint32"},
            {name = "gold_my", type = "uint32"},
            {name = "once", type = "uint16"},
            {name = "over_time", type = "uint32"},
            {name = "state", type = "uint8"}
        }}
    },
    [16800] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [16801] = {
        {name = "goodvoice_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "time", type = "uint16"},
            {name = "update_time", type = "uint32"},
            {name = "summary", type = "string"},
            {name = "liked", type = "uint32"},
            {name = "caster_num", type = "uint32"},
            {name = "only_liked", type = "uint32"}
        }}, 
        {name = "follow", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"}
        }}
    },
    [16802] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "update_time", type = "uint32"},
        {name = "voice", type = "byte"}
    },
    [16803] = {
        {name = "id", type = "uint32"},
        {name = "time", type = "uint16"},
        {name = "update_time", type = "uint32"},
        {name = "summary", type = "string"},
        {name = "liked", type = "uint32"},
        {name = "caster_num", type = "uint32"}
    },
    [16804] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [16805] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [16806] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "follow", type = "uint8"}
    },
    [16807] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [16808] = {
        {name = "id", type = "uint32"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "time", type = "uint16"},
        {name = "update_time", type = "uint32"},
        {name = "summary", type = "string"},
        {name = "liked", type = "uint32"},
        {name = "caster_num", type = "uint32"}
    },
    [16809] = {
        {name = "status", type = "uint8"}
    },
    [16810] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "liked", type = "uint32"},
        {name = "vote_num", type = "uint8"}
    },
    [16811] = {
        {name = "logs", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "type", type = "uint8"},
            {name = "val", type = "uint8"}
        }}
    },
    [16812] = {
        {name = "flag", type = "uint8"}
    },
    [16813] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"}
        }}
    },
    [16814] = {
        {name = "type", type = "uint8"},
        {name = "goodvoice_rank", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "time", type = "uint16"},
            {name = "update_time", type = "uint32"},
            {name = "summary", type = "string"},
            {name = "liked", type = "uint32"},
            {name = "caster_num", type = "uint32"},
            {name = "rank", type = "uint32"},
            {name = "only_liked", type = "uint32"}
        }}
    },
    [16815] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "update_time", type = "uint32"},
        {name = "voice", type = "byte"}
    },
    [16900] = {
        {name = "type", type = "uint32"},
        {name = "time", type = "uint32"},
        {name = "lottery", type = "array", fields = {
            {name = "idx", type = "string"},
            {name = "pos", type = "uint8"},
            {name = "item_idx", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "item_count", type = "uint32"},
            {name = "times_sum", type = "uint32"},
            {name = "times_now", type = "uint32"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "times_lottery", type = "uint32"},
            {name = "gold_type", type = "uint32"},
            {name = "gold_once", type = "uint16"},
            {name = "state", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "lucky_num", type = "uint32"},
            {name = "hot", type = "uint8"},
            {name = "price", type = "uint32"},
            {name = "rare", type = "uint8"},
            {name = "sort", type = "uint8"}
        }}, 
        {name = "my_list", type = "array", fields = {
            {name = "idx", type = "string"},
            {name = "times_my", type = "uint32"}
        }}, 
        {name = "history_list", type = "array", fields = {
            {name = "idx", type = "string"},
            {name = "role_name", type = "string"},
            {name = "item_idx", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "item_count", type = "uint16"},
            {name = "times_buy", type = "uint32"},
            {name = "times_sum", type = "uint32"},
            {name = "time", type = "uint32"}
        }}, 
        {name = "times_all", type = "uint32"},
        {name = "focus_list", type = "array", fields = {
            {name = "focus_id", type = "uint32"}
        }}, 
        {name = "time_list", type = "array", fields = {
            {name = "hour_start", type = "uint8"},
            {name = "min_start", type = "uint8"},
            {name = "hour_end", type = "uint8"},
            {name = "min_end", type = "uint8"}
        }}
    },
    [16901] = {
        {name = "lottery", type = "array", fields = {
            {name = "idx", type = "string"},
            {name = "pos", type = "uint8"},
            {name = "item_idx", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "item_count", type = "uint32"},
            {name = "times_sum", type = "uint32"},
            {name = "times_now", type = "uint32"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "times_lottery", type = "uint32"},
            {name = "gold_type", type = "uint32"},
            {name = "gold_once", type = "uint16"},
            {name = "state", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "lucky_num", type = "uint32"},
            {name = "hot", type = "uint8"},
            {name = "price", type = "uint32"},
            {name = "rare", type = "uint8"},
            {name = "sort", type = "uint8"}
        }}, 
        {name = "my_list", type = "array", fields = {
            {name = "idx", type = "string"},
            {name = "times_my", type = "uint32"}
        }}, 
        {name = "page_sum", type = "uint16"},
        {name = "page_now", type = "uint16"}
    },
    [16902] = {
        {name = "idx", type = "string"},
        {name = "pos", type = "uint8"},
        {name = "item_idx", type = "uint32"},
        {name = "item_id", type = "uint32"},
        {name = "item_count", type = "uint32"},
        {name = "times_sum", type = "uint32"},
        {name = "times_now", type = "uint32"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "role_name", type = "string"},
        {name = "times_lottery", type = "uint32"},
        {name = "gold_type", type = "uint32"},
        {name = "gold_once", type = "uint16"},
        {name = "state", type = "uint8"},
        {name = "time", type = "uint32"},
        {name = "lucky_num", type = "uint32"},
        {name = "hot", type = "uint8"},
        {name = "price", type = "uint32"},
        {name = "rare", type = "uint8"},
        {name = "sort", type = "uint8"},
        {name = "times_my", type = "uint32"},
        {name = "msg", type = "uint8"}
    },
    [16903] = {
        {name = "idx", type = "string"},
        {name = "pos", type = "uint8"},
        {name = "item_idx", type = "uint32"},
        {name = "item_id", type = "uint32"},
        {name = "item_count", type = "uint32"},
        {name = "times_sum", type = "uint32"},
        {name = "times_now", type = "uint32"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "role_name", type = "string"},
        {name = "times_lottery", type = "uint32"},
        {name = "gold_type", type = "uint32"},
        {name = "gold_once", type = "uint16"},
        {name = "state", type = "uint8"},
        {name = "time", type = "uint32"},
        {name = "lucky_num", type = "uint32"},
        {name = "hot", type = "uint8"},
        {name = "price", type = "uint32"},
        {name = "rare", type = "uint8"},
        {name = "sort", type = "uint8"},
        {name = "times_my", type = "uint32"},
        {name = "num_sum", type = "uint32"},
        {name = "history_list", type = "array", fields = {
            {name = "time", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "item_id", type = "uint32"},
            {name = "count", type = "uint16"}
        }}, 
        {name = "page_sum", type = "uint16"},
        {name = "page_now", type = "uint16"},
        {name = "num_list", type = "array", fields = {
            {name = "num", type = "uint32"}
        }}
    },
    [16904] = {
        {name = "state", type = "uint8"},
        {name = "time_start", type = "uint32"},
        {name = "time_end", type = "uint32"}
    },
    [16906] = {
        {name = "idx", type = "string"},
        {name = "page_sum", type = "uint16"},
        {name = "page_now", type = "uint16"},
        {name = "num_list", type = "array", fields = {
            {name = "num", type = "uint32"}
        }}
    },
    [16907] = {
        {name = "page_sum", type = "uint16"},
        {name = "page_now", type = "uint16"},
        {name = "lottery", type = "array", fields = {
            {name = "idx", type = "string"},
            {name = "pos", type = "uint8"},
            {name = "item_idx", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "item_count", type = "uint32"},
            {name = "times_sum", type = "uint32"},
            {name = "times_now", type = "uint32"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "times_lottery", type = "uint32"},
            {name = "gold_type", type = "uint32"},
            {name = "gold_once", type = "uint16"},
            {name = "state", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "lucky_num", type = "uint32"},
            {name = "hot", type = "uint8"},
            {name = "price", type = "uint32"},
            {name = "rare", type = "uint8"},
            {name = "sort", type = "uint8"}
        }}
    },
    [16908] = {
        {name = "idx", type = "string"},
        {name = "item_idx", type = "uint32"},
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17000] = {
        {name = "ride_mount", type = "int32"},
        {name = "mount_list", type = "array", fields = {
            {name = "index", type = "uint8"},
            {name = "mount_base_id", type = "uint32"},
            {name = "transformation_id", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "skill_point", type = "uint32"},
            {name = "fail_times", type = "uint32"},
            {name = "upgrade_lev", type = "uint32"},
            {name = "live_status", type = "uint8"},
            {name = "skill_list", type = "array", fields = {
                {name = "skill_index", type = "uint8"},
                {name = "skill_id", type = "uint32"},
                {name = "skill_lev", type = "uint32"}
            }}, 
            {name = "spirit", type = "uint32"},
            {name = "fight_times", type = "uint32"},
            {name = "growth", type = "uint32"},
            {name = "growth_item_num", type = "uint32"},
            {name = "speed_lev", type = "uint32"},
            {name = "manger_pets", type = "array", fields = {
                {name = "pet_id", type = "uint32"}
            }}, 
            {name = "decorate_list", type = "array", fields = {
                {name = "decorate_index", type = "uint8"},
                {name = "decorate_base_id", type = "uint32"},
                {name = "is_hide", type = "uint8"}
            }}, 
            {name = "tmp_growth", type = "uint32"},
            {name = "tmp_skill_list", type = "array", fields = {
                {name = "skill_index", type = "uint8"},
                {name = "skill_id", type = "uint32"}
            }}, 
            {name = "score", type = "uint32"}
        }}, 
        {name = "appearance_list", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "expire_time", type = "uint32"}
        }}, 
        {name = "pre_egg", type = "uint8"},
        {name = "egg", type = "uint8"},
        {name = "combat_active_times", type = "array", fields = {
            {name = "combat_type", type = "uint32"},
            {name = "fighter_times", type = "uint32"}
        }}, 
        {name = "dye_list", type = "array", fields = {
            {name = "trans_id", type = "uint32"},
            {name = "dye_id", type = "uint32"},
            {name = "cache_dye_list", type = "array", fields = {
                {name = "dye_id", type = "uint32"}
            }}
        }}, 
        {name = "evolution_list", type = "array", fields = {
            {name = "trans_id", type = "uint32"},
            {name = "evolution_id", type = "uint32"}
        }}
    },
    [17001] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17002] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17003] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17004] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17005] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17006] = {
        {name = "errc_ode", type = "uint8"},
        {name = "is_success", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17007] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17008] = {
        {name = "goal_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "finish", type = "uint8"},
            {name = "end_time", type = "uint32"},
            {name = "finish_time", type = "uint32"},
            {name = "progress", type = "array", fields = {
                {name = "id", type = "int16"},
                {name = "finish", type = "uint8"},
                {name = "target", type = "uint32"},
                {name = "target_val", type = "uint32"},
                {name = "value", type = "uint32"}
            }}
        }}
    },
    [17009] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17010] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "mount_base_id", type = "uint32"}
    },
    [17011] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "skill_list", type = "array", fields = {
            {name = "skill_index", type = "uint8"},
            {name = "skill_id", type = "uint32"},
            {name = "skill_lev", type = "uint32"}
        }}
    },
    [17012] = {
        {name = "index", type = "uint8"},
        {name = "mount_base_id", type = "uint32"},
        {name = "transformation_id", type = "uint32"},
        {name = "lev", type = "uint32"},
        {name = "skill_point", type = "uint32"},
        {name = "fail_times", type = "uint32"},
        {name = "upgrade_lev", type = "uint32"},
        {name = "live_status", type = "uint8"},
        {name = "skill_list", type = "array", fields = {
            {name = "skill_index", type = "uint8"},
            {name = "skill_id", type = "uint32"},
            {name = "skill_lev", type = "uint32"}
        }}, 
        {name = "spirit", type = "uint32"},
        {name = "fight_times", type = "uint32"},
        {name = "growth", type = "uint32"},
        {name = "growth_item_num", type = "uint32"},
        {name = "speed_lev", type = "uint32"},
        {name = "manger_pets", type = "array", fields = {
            {name = "pet_id", type = "uint32"}
        }}, 
        {name = "decorate_list", type = "array", fields = {
            {name = "decorate_index", type = "uint8"},
            {name = "decorate_base_id", type = "uint32"},
            {name = "is_hide", type = "uint8"}
        }}, 
        {name = "tmp_growth", type = "uint32"},
        {name = "tmp_skill_list", type = "array", fields = {
            {name = "skill_index", type = "uint8"},
            {name = "skill_id", type = "uint32"}
        }}, 
        {name = "score", type = "uint32"}
    },
    [17013] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17014] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17015] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17016] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17017] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17018] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17019] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "appearance_id", type = "uint32"}
    },
    [17020] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17021] = {
        {name = "base_id", type = "uint32"},
        {name = "expire_time", type = "uint32"}
    },
    [17022] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "base_id", type = "uint32"},
        {name = "cache_dye_list", type = "array", fields = {
            {name = "dye_id", type = "uint32"}
        }}
    },
    [17023] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17024] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17025] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17026] = {
        {name = "errc_ode", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [17027] = {
        {name = "errc_ode", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [17028] = {
        {name = "errc_ode", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "remain_time", type = "uint32"}
    },
    [17029] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "base_id", type = "uint32"}
    },
    [17030] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "base_id", type = "uint32"}
    },
    [17031] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17032] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"}
    },
    [17033] = {
        {name = "flag", type = "uint8"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"}
    },
    [17034] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17035] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17100] = {
        {name = "handbook_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "active_step", type = "uint8"},
            {name = "star_step", type = "uint8"},
            {name = "star_val", type = "uint8"}
        }}, 
        {name = "ban_speed_set_list", type = "array", fields = {
            {name = "set_id", type = "uint8"}
        }}
    },
    [17101] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17102] = {
        {name = "id", type = "uint32"},
        {name = "status", type = "uint8"},
        {name = "active_step", type = "uint8"},
        {name = "star_step", type = "uint8"},
        {name = "star_val", type = "uint8"}
    },
    [17103] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17106] = {
        {name = "next_time", type = "uint32"},
        {name = "store_items", type = "array", fields = {
            {name = "idx", type = "uint16"},
            {name = "id", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "val", type = "uint32"},
            {name = "flag", type = "uint8"}
        }}
    },
    [17107] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17108] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17109] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17110] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17111] = {
        {name = "need_list", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [17112] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17113] = {
        {name = "result", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [17114] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17200] = {
        {name = "mates", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "lev", type = "uint16"},
            {name = "is_prepare", type = "uint8"},
            {name = "best_wave", type = "uint32"},
            {name = "choose_skills", type = "array", fields = {
                {name = "index", type = "uint8"},
                {name = "skill_id", type = "uint32"}
            }}
        }}
    },
    [17201] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17202] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17203] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17204] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17205] = {
        {name = "wave", type = "uint32"},
        {name = "reward_info", type = "array", fields = {
            {name = "assets", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [17206] = {
        {name = "rank_list", type = "array", fields = {
            {name = "rank", type = "uint32"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "lev", type = "uint16"},
            {name = "wave", type = "uint16"},
            {name = "use_time", type = "uint32"},
            {name = "mate_datas", type = "array", fields = {
                {name = "rid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint32"},
                {name = "name", type = "string"},
                {name = "classes", type = "uint8"},
                {name = "sex", type = "uint8"},
                {name = "lev", type = "uint16"},
                {name = "choose_skills", type = "array", fields = {
                    {name = "index", type = "uint8"},
                    {name = "skill_id", type = "uint32"}
                }}
            }}
        }}
    },
    [17207] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17208] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "is_prepare", type = "uint8"},
        {name = "choose_skills", type = "array", fields = {
            {name = "index", type = "uint8"},
            {name = "skill_id", type = "uint32"}
        }}
    },
    [17209] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "gl_list", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [17210] = {
        {name = "reward_info", type = "array", fields = {
            {name = "assets", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [17211] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17212] = {
        {name = "skill_list", type = "array", fields = {
            {name = "skill_id", type = "uint32"}
        }}, 
        {name = "choose_skills", type = "array", fields = {
            {name = "index", type = "uint8"},
            {name = "skill_id", type = "uint32"}
        }}
    },
    [17213] = {
        {name = "order", type = "uint8"},
        {name = "best_wave", type = "uint16"},
        {name = "free_count", type = "uint8"},
        {name = "turn_count", type = "uint8"},
        {name = "gain_list", type = "array", fields = {
            {name = "item_id1", type = "uint32"},
            {name = "num1", type = "uint8"}
        }}
    },
    [17214] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17215] = {
        {name = "fight_times", type = "uint8"},
        {name = "best_wave", type = "uint32"}
    },
    [17216] = {
        {name = "errc_ode", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17300] = {
        {name = "id_now", type = "uint8"},
        {name = "head", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "time_buy", type = "uint32"},
            {name = "day", type = "uint32"},
            {name = "list", type = "array", fields = {
                {name = "type", type = "uint8"},
                {name = "num", type = "uint32"}
            }}
        }}, 
        {name = "frame_id_now", type = "uint32"},
        {name = "head_frame", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "time_buy", type = "uint32"},
            {name = "day", type = "uint32"},
            {name = "list", type = "array", fields = {
                {name = "type", type = "uint8"},
                {name = "num", type = "uint32"}
            }}
        }}, 
        {name = "gold", type = "uint32"}
    },
    [17301] = {

    },
    [17302] = {
        {name = "id", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17303] = {

    },
    [17304] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "num", type = "uint16"}
        }}
    },
    [17305] = {

    },
    [17306] = {
        {name = "id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [17400] = {
        {name = "times", type = "uint8"},
        {name = "trial", type = "uint8"},
        {name = "goals", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "progress", type = "array", fields = {
                {name = "id", type = "int16"},
                {name = "finish", type = "uint8"},
                {name = "target", type = "uint32"},
                {name = "target_val", type = "uint16"},
                {name = "value", type = "uint16"},
                {name = "ext_data", type = "array", fields = {
                    {name = "key", type = "uint8"},
                    {name = "value", type = "uint32"}
                }}
            }}, 
            {name = "finish", type = "uint8"}
        }}
    },
    [17401] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17402] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17403] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17404] = {
        {name = "contribution", type = "uint32"},
        {name = "need", type = "uint32"}
    },
    [17405] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "attr_point", type = "uint16"}
    },
    [17500] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17501] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17502] = {
        {name = "key", type = "string"},
        {name = "key_time", type = "uint32"},
        {name = "ships", type = "array", fields = {
            {name = "rid_1", type = "uint32"},
            {name = "platform_1", type = "string"},
            {name = "zone_id_1", type = "uint32"},
            {name = "name", type = "string"},
            {name = "score", type = "uint32"},
            {name = "key", type = "string"},
            {name = "time", type = "uint32"}
        }}, 
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "apply_key", type = "string"},
        {name = "apply_name", type = "string"},
        {name = "day_score", type = "uint32"}
    },
    [17503] = {
        {name = "rid_1", type = "uint32"},
        {name = "platform_1", type = "string"},
        {name = "zone_id_1", type = "uint32"},
        {name = "name", type = "string"},
        {name = "score", type = "uint32"},
        {name = "key", type = "string"},
        {name = "time", type = "uint32"}
    },
    [17504] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17505] = {
        {name = "gain_list", type = "array", fields = {
            {name = "gain_id", type = "uint8"},
            {name = "time", type = "uint32"}
        }}
    },
    [17506] = {

    },
    [17600] = {
        {name = "status", type = "uint8"},
        {name = "timeout", type = "uint32"}
    },
    [17601] = {
        {name = "guild_league_alliance", type = "array", fields = {
            {name = "gids", type = "array", fields = {
                {name = "guild_id", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"}
            }}, 
            {name = "names", type = "array", fields = {
                {name = "name", type = "string"}
            }}, 
            {name = "totems", type = "array", fields = {
                {name = "totem", type = "uint8"}
            }}, 
            {name = "side", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "phase", type = "uint8"},
            {name = "season", type = "uint32"},
            {name = "is_win", type = "uint8"},
            {name = "match_id", type = "uint32"},
            {name = "member_num", type = "uint32"},
            {name = "remain_num", type = "uint32"},
            {name = "movability", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "guarded_unit", type = "uint32"},
            {name = "attacked_unit", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "remain_unit", type = "uint8"},
            {name = "grade", type = "uint8"}
        }}
    },
    [17602] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17603] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17604] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17605] = {
        {name = "movability", type = "uint32"},
        {name = "win", type = "uint32"},
        {name = "is_trump", type = "uint8"}
    },
    [17606] = {
        {name = "guild_league_guild", type = "array", fields = {
            {name = "guild_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "totem", type = "uint8"},
            {name = "side", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "phase", type = "uint8"},
            {name = "season", type = "uint32"},
            {name = "match_id", type = "uint32"},
            {name = "is_win", type = "uint8"}
        }}
    },
    [17607] = {
        {name = "guild_league_role", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "is_trump", type = "uint8"},
            {name = "win", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "movability", type = "uint32"}
        }}
    },
    [17608] = {
        {name = "guild_league_role", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "is_trump", type = "uint8"},
            {name = "win", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "movability", type = "uint32"}
        }}
    },
    [17609] = {
        {name = "type", type = "uint8"}
    },
    [17610] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [17611] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17612] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [17613] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17614] = {
        {name = "guild_league_unit", type = "array", fields = {
            {name = "match_id", type = "uint32"},
            {name = "unit_id", type = "uint32"},
            {name = "battle_id", type = "uint32"},
            {name = "last_operated", type = "uint32"},
            {name = "duration", type = "uint32"},
            {name = "side", type = "uint8"}
        }}
    },
    [17615] = {
        {name = "guild_league_trump", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "pos", type = "uint8"}
        }}
    },
    [17616] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17617] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [17618] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "status", type = "uint8"}
    },
    [17619] = {
        {name = "season_id", type = "uint32"},
        {name = "cur_phase", type = "uint8"},
        {name = "trump_enable", type = "uint8"},
        {name = "name", type = "string"},
        {name = "ld_id", type = "uint32"},
        {name = "ld_platform", type = "string"},
        {name = "ld_zone_id", type = "uint16"},
        {name = "leader_name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "totem", type = "uint8"},
        {name = "season_win", type = "uint32"},
        {name = "season_score", type = "int32"},
        {name = "total_win", type = "uint32"},
        {name = "grade", type = "uint8"},
        {name = "rank", type = "uint32"},
        {name = "group", type = "uint8"},
        {name = "guild_league_guild", type = "array", fields = {
            {name = "guild_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "totem", type = "uint8"},
            {name = "side", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "phase", type = "uint8"},
            {name = "season", type = "uint32"},
            {name = "match_id", type = "uint32"},
            {name = "is_win", type = "uint8"}
        }}
    },
    [17620] = {
        {name = "grade", type = "uint8"},
        {name = "guild_league_summary", type = "array", fields = {
            {name = "name", type = "string"},
            {name = "ld_id", type = "uint32"},
            {name = "ld_platform", type = "string"},
            {name = "ld_zone_id", type = "uint16"},
            {name = "leader_name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "totem", type = "uint8"},
            {name = "season_win", type = "uint32"},
            {name = "season_lost", type = "uint32"},
            {name = "season_draw", type = "uint32"},
            {name = "season_score", type = "int32"},
            {name = "total_win", type = "uint32"},
            {name = "grade", type = "uint8"},
            {name = "group", type = "uint8"},
            {name = "rank", type = "uint32"}
        }}
    },
    [17621] = {
        {name = "guild_league_alliance", type = "array", fields = {
            {name = "gids", type = "array", fields = {
                {name = "guild_id", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"}
            }}, 
            {name = "names", type = "array", fields = {
                {name = "name", type = "string"}
            }}, 
            {name = "totems", type = "array", fields = {
                {name = "totem", type = "uint8"}
            }}, 
            {name = "side", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "phase", type = "uint8"},
            {name = "season", type = "uint32"},
            {name = "is_win", type = "uint8"},
            {name = "match_id", type = "uint32"},
            {name = "member_num", type = "uint32"},
            {name = "remain_num", type = "uint32"},
            {name = "movability", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "guarded_unit", type = "uint32"},
            {name = "attacked_unit", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "remain_unit", type = "uint8"}
        }}
    },
    [17622] = {
        {name = "cd", type = "uint32"}
    },
    [17623] = {
        {name = "guild_league_guild", type = "array", fields = {
            {name = "guild_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "totem", type = "uint8"},
            {name = "side", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "phase", type = "uint8"},
            {name = "season", type = "uint32"},
            {name = "match_id", type = "uint32"},
            {name = "group", type = "uint8"},
            {name = "order", type = "uint8"},
            {name = "is_win", type = "uint8"},
            {name = "season_consecutive_win", type = "uint8"}
        }}
    },
    [17624] = {
        {name = "gid", type = "array", fields = {
            {name = "guild_id", type = "uint32"},
            {name = "g_platform", type = "string"},
            {name = "g_zone_id", type = "uint16"}
        }}, 
        {name = "guild_league_alliance", type = "array", fields = {
            {name = "gids", type = "array", fields = {
                {name = "guild_id", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"}
            }}, 
            {name = "names", type = "array", fields = {
                {name = "name", type = "string"}
            }}, 
            {name = "totems", type = "array", fields = {
                {name = "totem", type = "uint8"}
            }}, 
            {name = "side", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "phase", type = "uint8"},
            {name = "season", type = "uint32"},
            {name = "is_win", type = "uint8"},
            {name = "match_id", type = "uint32"}
        }}
    },
    [17625] = {
        {name = "guild_league_guess_choice", type = "array", fields = {
            {name = "guild_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "phase", type = "uint8"},
            {name = "bingo", type = "uint8"}
        }}, 
        {name = "guild_league_poll", type = "array", fields = {
            {name = "guild_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "voted", type = "uint32"}
        }}
    },
    [17626] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17627] = {
        {name = "guild_league_live", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "phase", type = "uint8"},
            {name = "season", type = "uint32"},
            {name = "time", type = "uint32"},
            {name = "type", type = "uint8"},
            {name = "names1", type = "array", fields = {
                {name = "name1", type = "string"}
            }}, 
            {name = "names2", type = "array", fields = {
                {name = "name2", type = "string"}
            }}
        }}
    },
    [17628] = {
        {name = "guild_league_alliance", type = "array", fields = {
            {name = "gids", type = "array", fields = {
                {name = "guild_id", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"}
            }}, 
            {name = "names", type = "array", fields = {
                {name = "name", type = "string"}
            }}, 
            {name = "totems", type = "array", fields = {
                {name = "totem", type = "uint8"}
            }}, 
            {name = "side", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "phase", type = "uint8"},
            {name = "season", type = "uint32"},
            {name = "is_win", type = "uint8"},
            {name = "match_id", type = "uint32"},
            {name = "member_num", type = "uint32"},
            {name = "remain_num", type = "uint32"},
            {name = "movability", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "guarded_unit", type = "uint32"},
            {name = "attacked_unit", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "remain_unit", type = "uint8"},
            {name = "grade", type = "uint8"}
        }}, 
        {name = "guild_league_unit", type = "array", fields = {
            {name = "match_id", type = "uint32"},
            {name = "unit_id", type = "uint32"},
            {name = "battle_id", type = "uint32"},
            {name = "last_operated", type = "uint32"},
            {name = "duration", type = "uint32"},
            {name = "side", type = "uint8"}
        }}, 
        {name = "type", type = "uint8"},
        {name = "logs", type = "array", fields = {
            {name = "log_id", type = "uint32"},
            {name = "log_msg", type = "string"},
            {name = "log_time", type = "uint32"}
        }}
    },
    [17629] = {
        {name = "guild_league_champion", type = "array", fields = {
            {name = "season", type = "uint32"},
            {name = "top3", type = "array", fields = {
                {name = "guild_id", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"},
                {name = "name1", type = "string"},
                {name = "rank", type = "uint16"},
                {name = "totem", type = "uint8"}
            }}
        }}
    },
    [17630] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17631] = {
        {name = "can_worship", type = "uint8"}
    },
    [17700] = {
        {name = "name", type = "string"},
        {name = "sworn_val", type = "uint32"},
        {name = "num", type = "uint8"},
        {name = "head", type = "uint32"},
        {name = "status", type = "uint8"},
        {name = "time", type = "uint32"},
        {name = "timeout", type = "uint32"},
        {name = "pos", type = "uint8"},
        {name = "times", type = "uint8"},
        {name = "members", type = "array", fields = {
            {name = "pos", type = "uint8"},
            {name = "m_id", type = "uint32"},
            {name = "m_platform", type = "string"},
            {name = "m_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "name_defined", type = "string"},
            {name = "lev", type = "uint16"},
            {name = "classes", type = "uint16"},
            {name = "sex", type = "uint8"},
            {name = "times", type = "uint8"},
            {name = "free", type = "uint8"}
        }}, 
        {name = "votes", type = "array", fields = {
            {name = "v_id", type = "uint32"},
            {name = "v_platform", type = "string"},
            {name = "v_zone_id", type = "uint32"}
        }}, 
        {name = "trends", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "t_id", type = "uint32"},
            {name = "t_platform", type = "string"},
            {name = "t_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "t_r_id", type = "uint32"},
            {name = "t_r_platform", type = "string"},
            {name = "t_r_zone_id", type = "uint32"},
            {name = "r_name", type = "string"},
            {name = "r_lev", type = "uint16"},
            {name = "r_sex", type = "uint32"},
            {name = "r_classes", type = "uint32"},
            {name = "rename", type = "string"},
            {name = "timeout", type = "uint32"},
            {name = "reason_id", type = "uint32"},
            {name = "reason_msg", type = "string"},
            {name = "votes", type = "array", fields = {
                {name = "rid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint32"},
                {name = "flag", type = "uint8"}
            }}
        }}
    },
    [17701] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17702] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17703] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17704] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17705] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17706] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17707] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17708] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17709] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17710] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17711] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17712] = {
        {name = "photo_bin", type = "byte"},
        {name = "auditing", type = "uint8"}
    },
    [17713] = {

    },
    [17714] = {

    },
    [17715] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17716] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17717] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "sworn_name", type = "string"},
        {name = "name", type = "string"}
    },
    [17718] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17800] = {
        {name = "statue", type = "uint8"},
        {name = "mtime", type = "uint32"}
    },
    [17801] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17802] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17803] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "times_cd", type = "uint32"},
            {name = "die", type = "uint32"},
            {name = "score", type = "uint32"}
        }}
    },
    [17804] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "die", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "zone_id", type = "uint32"},
            {name = "camp", type = "uint32"}
        }}, 
        {name = "green_score", type = "uint32"},
        {name = "blue_score", type = "uint32"},
        {name = "end_time", type = "uint32"}
    },
    [17805] = {
        {name = "win", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "die", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "zone_id", type = "uint32"},
            {name = "camp", type = "uint32"}
        }}, 
        {name = "fail", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "die", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "zone_id", type = "uint32"},
            {name = "camp", type = "uint32"}
        }}, 
        {name = "green_score", type = "uint32"},
        {name = "blue_score", type = "uint32"},
        {name = "is_win", type = "uint32"},
        {name = "show", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [17806] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17807] = {
        {name = "times", type = "uint32"}
    },
    [17808] = {
        {name = "type", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "die", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "zone_id", type = "uint32"},
            {name = "camp", type = "uint32"},
            {name = "mtime", type = "uint32"}
        }}
    },
    [17809] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "r_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "status", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "win", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "die", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "zone_id", type = "uint32"},
            {name = "camp", type = "uint32"}
        }}
    },
    [17810] = {
        {name = "bid", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "x", type = "uint32"},
        {name = "y", type = "uint32"},
        {name = "round", type = "uint32"}
    },
    [17811] = {
        {name = "name", type = "string"}
    },
    [17812] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint16"}
        }}
    },
    [17813] = {
        {name = "id", type = "uint16"},
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17814] = {
        {name = "card_list", type = "array", fields = {
            {name = "flag", type = "uint8"},
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "times", type = "uint8"}
    },
    [17815] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17816] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17817] = {
        {name = "day_now", type = "uint8"},
        {name = "first_time", type = "uint32"},
        {name = "reward", type = "array", fields = {
            {name = "day_id", type = "uint8"},
            {name = "day_status", type = "uint8"}
        }}
    },
    [17818] = {
        {name = "id", type = "uint16"},
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17819] = {
        {name = "start_time", type = "uint32"},
        {name = "end_time", type = "uint32"},
        {name = "val", type = "uint32"}
    },
    [17820] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17821] = {
        {name = "count", type = "uint16"}
    },
    [17822] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17823] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17824] = {
        {name = "floor", type = "uint16"},
        {name = "times", type = "uint16"},
        {name = "rewards", type = "array", fields = {
            {name = "next_times", type = "uint32"},
            {name = "reward", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "num", type = "uint32"},
                {name = "effect", type = "uint8"}
            }}
        }}
    },
    [17825] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "floor", type = "uint16"}
        }}
    },
    [17826] = {
        {name = "msg", type = "string"}
    },
    [17827] = {
        {name = "list", type = "array", fields = {
            {name = "msg", type = "string"},
            {name = "time", type = "int32"}
        }}
    },
    [17828] = {
        {name = "wish", type = "uint16"},
        {name = "votive", type = "uint16"},
        {name = "get", type = "uint16"},
        {name = "get_votive", type = "uint16"}
    },
    [17829] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17830] = {
        {name = "time", type = "uint32"},
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "int16"},
        {name = "name", type = "string"},
        {name = "classes", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "wish", type = "string"},
        {name = "type", type = "uint8"}
    },
    [17831] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17832] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17833] = {
        {name = "skill", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "timestamp", type = "uint32"}
        }}
    },
    [17834] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17835] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17836] = {

    },
    [17837] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17838] = {
        {name = "lucky", type = "uint16"},
        {name = "free_times", type = "uint8"},
        {name = "dolls", type = "array", fields = {
            {name = "pos", type = "uint8"},
            {name = "type", type = "uint8"},
            {name = "open", type = "uint8"}
        }}
    },
    [17839] = {
        {name = "type", type = "uint8"},
        {name = "pos", type = "uint8"},
        {name = "reward", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "num", type = "uint32"}
        }}
    },
    [17840] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17842] = {
        {name = "map_num", type = "array", fields = {
            {name = "map_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "camp_unit", type = "array", fields = {
            {name = "battle_id", type = "uint32"},
            {name = "id", type = "uint32"},
            {name = "map_id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "x", type = "uint32"},
            {name = "y", type = "uint32"}
        }}
    },
    [17843] = {
        {name = "flag", type = "uint8"},
        {name = "num", type = "uint32"}
    },
    [17844] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17845] = {
        {name = "lev", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "day_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "day", type = "uint32"},
        {name = "dollar", type = "uint32"}
    },
    [17846] = {
        {name = "flag", type = "uint8"},
        {name = "lev", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [17847] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17848] = {
        {name = "round", type = "uint8"},
        {name = "time", type = "uint32"},
        {name = "next_move", type = "uint8"},
        {name = "draw_list", type = "array", fields = {
            {name = "camp", type = "uint8"},
            {name = "draw_time1", type = "uint32"},
            {name = "draw_time2", type = "uint32"}
        }}, 
        {name = "role_id1", type = "uint32"},
        {name = "platform1", type = "string"},
        {name = "zone_id1", type = "int16"},
        {name = "first_name", type = "string"},
        {name = "first_lev", type = "uint16"},
        {name = "first_classes", type = "uint8"},
        {name = "first_sex", type = "uint8"},
        {name = "first_looks", type = "array", fields = {
            {name = "looks_type1", type = "uint32"},
            {name = "looks_mode1", type = "uint32"},
            {name = "looks_val1", type = "uint32"},
            {name = "looks_str1", type = "string"}
        }}, 
        {name = "first_grade", type = "uint16"},
        {name = "first_score", type = "uint32"},
        {name = "role_id2", type = "uint32"},
        {name = "platform2", type = "string"},
        {name = "zone_id2", type = "int16"},
        {name = "second_name", type = "string"},
        {name = "second_lev", type = "uint16"},
        {name = "second_classes", type = "uint8"},
        {name = "second_sex", type = "uint8"},
        {name = "second_looks", type = "array", fields = {
            {name = "looks_type2", type = "uint32"},
            {name = "looks_mode2", type = "uint32"},
            {name = "looks_val2", type = "uint32"},
            {name = "looks_str2", type = "string"}
        }}, 
        {name = "chesses", type = "array", fields = {
            {name = "x", type = "uint8"},
            {name = "y", type = "uint8"},
            {name = "camp", type = "uint8"},
            {name = "grade", type = "uint8"},
            {name = "status", type = "uint8"}
        }}, 
        {name = "second_grade", type = "uint16"},
        {name = "second_score", type = "uint32"}
    },
    [17849] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17850] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17851] = {
        {name = "times", type = "uint8"},
        {name = "status", type = "uint8"},
        {name = "time", type = "uint32"}
    },
    [17852] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17853] = {
        {name = "flag", type = "uint8"},
        {name = "grade", type = "uint16"},
        {name = "score", type = "uint32"},
        {name = "reward", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "num", type = "uint32"}
        }}
    },
    [17854] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17855] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17856] = {
        {name = "lev", type = "uint16"},
        {name = "score", type = "uint32"}
    },
    [17857] = {

    },
    [17858] = {
        {name = "type", type = "uint32"},
        {name = "rank_list", type = "array", fields = {
            {name = "role_id", type = "uint32"},
            {name = "rank", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint32"},
            {name = "role_id2", type = "uint32"},
            {name = "platform2", type = "string"},
            {name = "zone_id2", type = "uint16"},
            {name = "name2", type = "string"},
            {name = "sex2", type = "uint8"},
            {name = "classes2", type = "uint8"},
            {name = "lev2", type = "uint32"},
            {name = "val1", type = "int32"},
            {name = "val2", type = "int32"},
            {name = "val3", type = "int32"},
            {name = "val4", type = "int32"},
            {name = "desc", type = "string"}
        }}
    },
    [17859] = {
        {name = "type", type = "uint32"},
        {name = "rank_list", type = "array", fields = {
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint32"},
            {name = "role_id2", type = "uint32"},
            {name = "platform2", type = "string"},
            {name = "zone_id2", type = "uint16"},
            {name = "name2", type = "string"},
            {name = "sex2", type = "uint8"},
            {name = "classes2", type = "uint8"},
            {name = "lev2", type = "uint32"},
            {name = "val1", type = "int32"},
            {name = "val2", type = "int32"},
            {name = "val3", type = "int32"},
            {name = "val4", type = "int32"},
            {name = "desc", type = "string"}
        }}
    },
    [17860] = {
        {name = "type", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "val", type = "uint32"}
        }}
    },
    [17861] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17862] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "show", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "num", type = "uint32"}
        }}
    },
    [17863] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "times", type = "uint16"}
        }}
    },
    [17864] = {
        {name = "pos_list", type = "array", fields = {
            {name = "pos", type = "uint32"},
            {name = "id", type = "uint32"}
        }}, 
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}, 
        {name = "refresh_num", type = "uint32"},
        {name = "open_num", type = "uint32"}
    },
    [17865] = {
        {name = "list", type = "array", fields = {
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "int16"},
            {name = "name", type = "string"},
            {name = "item_id", type = "uint32"},
            {name = "bind", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [17866] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "list", type = "array", fields = {
            {name = "pos", type = "uint32"},
            {name = "id", type = "uint32"}
        }}
    },
    [17867] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17868] = {
        {name = "id", type = "uint32"},
        {name = "start_time", type = "uint32"},
        {name = "end_time", type = "uint32"}
    },
    [17869] = {
        {name = "day", type = "uint32"},
        {name = "mtime", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [17870] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17871] = {
        {name = "shop_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "isbuy", type = "uint8"},
            {name = "num", type = "uint32"},
            {name = "id", type = "uint32"},
            {name = "item_list", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "bind", type = "uint32"},
                {name = "num", type = "uint32"}
            }}, 
            {name = "cost1", type = "uint32"},
            {name = "cost2", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "num", type = "uint32"}
            }}, 
            {name = "limit_zone_num", type = "uint32"},
            {name = "show_effect", type = "uint8"},
            {name = "show_item", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "bind", type = "uint32"},
                {name = "num", type = "uint32"}
            }}, 
            {name = "show_type", type = "uint32"}
        }}, 
        {name = "ref_time", type = "uint32"},
        {name = "ref_num", type = "uint32"}
    },
    [17872] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17873] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17874] = {
        {name = "day", type = "uint32"},
        {name = "bags_list", type = "array", fields = {
            {name = "lev", type = "uint32"},
            {name = "id", type = "uint32"},
            {name = "item_list", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "bind", type = "uint8"},
                {name = "num", type = "uint32"},
                {name = "eff", type = "uint8"}
            }}, 
            {name = "item_gift_name", type = "string"},
            {name = "item_gift_id", type = "uint32"},
            {name = "cost", type = "uint32"},
            {name = "max", type = "uint32"},
            {name = "camp_max", type = "uint32"},
            {name = "min_day", type = "uint32"},
            {name = "max_day", type = "uint32"},
            {name = "pre_id", type = "uint32"},
            {name = "pre_num", type = "uint32"},
            {name = "min_lev", type = "uint32"},
            {name = "max_lev", type = "uint32"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "min_lev_break", type = "uint32"},
            {name = "max_lev_break", type = "uint32"}
        }}
    },
    [17875] = {
        {name = "card_list", type = "array", fields = {
            {name = "flag", type = "uint8"},
            {name = "group", type = "uint32"},
            {name = "reward_id", type = "uint32"},
            {name = "item_id", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "num", type = "uint32"}
            }}, 
            {name = "lev_low", type = "uint32"},
            {name = "effect", type = "uint8"}
        }}, 
        {name = "times", type = "uint8"},
        {name = "last_group", type = "uint32"},
        {name = "act_cost", type = "array", fields = {
            {name = "acticity", type = "uint32"},
            {name = "cost", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "num", type = "uint32"}
            }}
        }}, 
        {name = "start_time", type = "uint32"},
        {name = "end_time", type = "uint32"}
    },
    [17876] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17877] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17878] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17879] = {
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint32"},
            {name = "classes", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "msg", type = "string"},
            {name = "head_id", type = "uint32"}
        }}
    },
    [17880] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "other_name", type = "string"},
        {name = "other_sex", type = "uint8"},
        {name = "other_classes", type = "uint8"},
        {name = "status", type = "uint8"},
        {name = "reward", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "is_bind", type = "uint8"},
            {name = "num", type = "uint32"},
            {name = "is_effet", type = "uint8"}
        }}, 
        {name = "point", type = "uint32"},
        {name = "lev", type = "uint32"}
    },
    [17881] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17882] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17883] = {
        {name = "days", type = "uint32"},
        {name = "reg_point", type = "uint32"},
        {name = "rd_times", type = "uint32"},
        {name = "rd_reward", type = "array", fields = {
            {name = "group_id", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "is_bind", type = "uint8"},
            {name = "num", type = "uint32"},
            {name = "weight", type = "uint32"},
            {name = "index", type = "uint32"},
            {name = "is_effet", type = "uint8"},
            {name = "is_random", type = "uint8"}
        }}, 
        {name = "box_reward", type = "array", fields = {
            {name = "box_id", type = "uint32"},
            {name = "need_point", type = "uint32"},
            {name = "box_reward", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "is_bind", type = "uint8"},
                {name = "num", type = "uint32"},
                {name = "is_effet", type = "uint8"}
            }}, 
            {name = "is_reward", type = "uint8"}
        }}, 
        {name = "random_cost", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [17884] = {
        {name = "days", type = "uint32"},
        {name = "index", type = "uint32"},
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17885] = {
        {name = "days", type = "uint32"},
        {name = "item_list", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "is_bind", type = "uint8"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17886] = {
        {name = "days", type = "uint32"},
        {name = "box_id", type = "uint32"},
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17887] = {
        {name = "curdays", type = "uint32"}
    },
    [17888] = {
        {name = "days", type = "uint32"},
        {name = "times", type = "uint32"},
        {name = "max_times", type = "uint32"},
        {name = "gift_name", type = "string"},
        {name = "old_price", type = "uint32"},
        {name = "now_price", type = "uint32"},
        {name = "reward", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "is_bind", type = "uint8"},
            {name = "num", type = "uint32"},
            {name = "is_effet", type = "uint8"}
        }}, 
        {name = "fashion", type = "array", fields = {
            {name = "partt_id", type = "uint32"},
            {name = "partt_val", type = "uint32"}
        }}, 
        {name = "show_item", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "is_bind", type = "uint8"},
            {name = "num", type = "uint32"},
            {name = "is_effet", type = "uint8"}
        }}
    },
    [17889] = {
        {name = "curdays", type = "uint32"}
    },
    [17890] = {
        {name = "login_reward_state", type = "uint32"},
        {name = "final_reward_state", type = "uint32"},
        {name = "send_red_dot", type = "uint32"},
        {name = "roll_cost", type = "uint32"},
        {name = "flowers_info", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "index", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [17891] = {
        {name = "index", type = "uint32"},
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17892] = {
        {name = "item_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "index", type = "uint32"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "gift_list", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17893] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17894] = {
        {name = "base_id", type = "uint32"},
        {name = "num", type = "uint32"},
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17895] = {
        {name = "box_info", type = "array", fields = {
            {name = "index", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "old_price", type = "uint32"},
            {name = "price", type = "uint32"},
            {name = "is_get", type = "uint32"}
        }}
    },
    [17896] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17897] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17898] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [17899] = {
        {name = "map_num", type = "array", fields = {
            {name = "map_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "camp_unit", type = "array", fields = {
            {name = "battle_id", type = "uint32"},
            {name = "id", type = "uint32"},
            {name = "map_id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "x", type = "uint32"},
            {name = "y", type = "uint32"}
        }}
    },
    [17900] = {
        {name = "tid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "match_group", type = "uint8"},
        {name = "members", type = "array", fields = {
            {name = "tid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "lev", type = "uint16"},
            {name = "break_times", type = "uint8"},
            {name = "position", type = "uint8"},
            {name = "fight_capacity", type = "uint32"}
        }}, 
        {name = "fight_capacity", type = "uint32"},
        {name = "applys", type = "array", fields = {
            {name = "tid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "lev", type = "uint16"},
            {name = "break_times", type = "uint8"},
            {name = "position", type = "uint8"},
            {name = "fight_capacity", type = "uint32"}
        }}, 
        {name = "declaration", type = "string"},
        {name = "win_times", type = "uint8"},
        {name = "loss_times", type = "uint8"},
        {name = "qualification", type = "uint32"},
        {name = "team_group_256", type = "uint32"},
        {name = "team_group_64", type = "uint32"},
        {name = "team_group_8", type = "uint32"},
        {name = "team_group_4", type = "uint32"},
        {name = "team_seq", type = "uint8"},
        {name = "team_index", type = "uint16"}
    },
    [17901] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17902] = {
        {name = "type", type = "uint8"},
        {name = "leader_name", type = "string"},
        {name = "name", type = "string"}
    },
    [17903] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17904] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17905] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17906] = {
        {name = "team_list", type = "array", fields = {
            {name = "tid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "member_num", type = "uint8"},
            {name = "win_times", type = "uint8"},
            {name = "loss_times", type = "uint8"},
            {name = "members", type = "array", fields = {
                {name = "tid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "classes", type = "uint8"},
                {name = "sex", type = "uint8"},
                {name = "lev", type = "uint16"},
                {name = "break_times", type = "uint8"},
                {name = "position", type = "uint8"},
                {name = "fight_capacity", type = "uint32"}
            }}
        }}
    },
    [17907] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17908] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17909] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17910] = {
        {name = "type", type = "uint8"},
        {name = "invite_list", type = "array", fields = {
            {name = "fid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint32"},
            {name = "break_times", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "total_fc", type = "uint32"},
            {name = "online", type = "uint8"}
        }}
    },
    [17911] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17912] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17913] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17914] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17915] = {
        {name = "state", type = "uint8"},
        {name = "season_id", type = "uint32"}
    },
    [17916] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17917] = {
        {name = "zone_id", type = "uint8"},
        {name = "index", type = "uint8"},
        {name = "team_list", type = "array", fields = {
            {name = "tid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "member_num", type = "uint8"},
            {name = "win_times", type = "uint8"},
            {name = "loss_times", type = "uint8"},
            {name = "team_group_256", type = "uint32"},
            {name = "members", type = "array", fields = {
                {name = "tid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "classes", type = "uint8"},
                {name = "sex", type = "uint8"},
                {name = "lev", type = "uint16"},
                {name = "break_times", type = "uint8"},
                {name = "position", type = "uint8"},
                {name = "fight_capacity", type = "uint32"}
            }}
        }}
    },
    [17918] = {
        {name = "flag", type = "uint32"},
        {name = "tid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "match_group", type = "uint8"},
        {name = "members", type = "array", fields = {
            {name = "tid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "lev", type = "uint16"},
            {name = "break_times", type = "uint8"},
            {name = "position", type = "uint8"},
            {name = "fight_capacity", type = "uint32"}
        }}, 
        {name = "fight_capacity", type = "uint32"},
        {name = "applys", type = "array", fields = {
            {name = "tid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "lev", type = "uint16"},
            {name = "break_times", type = "uint8"},
            {name = "position", type = "uint8"},
            {name = "fight_capacity", type = "uint32"}
        }}, 
        {name = "declaration", type = "string"},
        {name = "win_times", type = "uint8"},
        {name = "loss_times", type = "uint8"},
        {name = "qualification", type = "uint32"},
        {name = "team_group_256", type = "uint32"},
        {name = "team_group_64", type = "uint32"},
        {name = "team_group_8", type = "uint32"},
        {name = "team_group_4", type = "uint32"},
        {name = "team_seq", type = "uint8"},
        {name = "team_index", type = "uint16"}
    },
    [17919] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17920] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17921] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17922] = {
        {name = "tid_1", type = "uint32"},
        {name = "platform_1", type = "string"},
        {name = "id_1", type = "uint16"},
        {name = "team_name_1", type = "string"},
        {name = "status_1", type = "uint8"},
        {name = "tid_2", type = "uint32"},
        {name = "platform_2", type = "string"},
        {name = "id_2", type = "uint16"},
        {name = "team_name_2", type = "string"},
        {name = "status_2", type = "uint8"}
    },
    [17923] = {
        {name = "flag", type = "uint8"},
        {name = "state", type = "uint8"},
        {name = "left_time", type = "uint32"}
    },
    [17924] = {
        {name = "team_list", type = "array", fields = {
            {name = "tid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "member_num", type = "uint8"},
            {name = "team_group_256", type = "uint32"},
            {name = "team_group_64", type = "uint32"},
            {name = "members", type = "array", fields = {
                {name = "tid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "classes", type = "uint8"},
                {name = "sex", type = "uint8"},
                {name = "lev", type = "uint16"},
                {name = "break_times", type = "uint8"},
                {name = "position", type = "uint8"},
                {name = "fight_capacity", type = "uint32"}
            }}
        }}
    },
    [17925] = {
        {name = "zone_id", type = "uint8"},
        {name = "team_list", type = "array", fields = {
            {name = "tid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "member_num", type = "uint8"},
            {name = "qualification", type = "uint32"},
            {name = "team_group_64", type = "uint32"},
            {name = "members", type = "array", fields = {
                {name = "tid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "classes", type = "uint8"},
                {name = "sex", type = "uint8"},
                {name = "lev", type = "uint16"},
                {name = "break_times", type = "uint8"},
                {name = "position", type = "uint8"},
                {name = "fight_capacity", type = "uint32"}
            }}
        }}
    },
    [17926] = {
        {name = "result", type = "uint8"},
        {name = "mates", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "total_hurt", type = "uint32"},
            {name = "total_dmg", type = "uint32"},
            {name = "total_heal", type = "uint32"},
            {name = "kill_num", type = "uint16"},
            {name = "dead_num", type = "uint16"},
            {name = "control_num", type = "uint16"},
            {name = "mvp_score", type = "uint16"}
        }}, 
        {name = "rival", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "total_hurt", type = "uint32"},
            {name = "total_dmg", type = "uint32"},
            {name = "total_heal", type = "uint32"},
            {name = "kill_num", type = "uint16"},
            {name = "dead_num", type = "uint16"},
            {name = "control_num", type = "uint16"},
            {name = "mvp_score", type = "uint16"}
        }}
    },
    [17927] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17928] = {
        {name = "gods_duel_match_profile", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "season_id", type = "uint16"},
            {name = "match_round", type = "uint8"},
            {name = "match_type", type = "uint8"},
            {name = "combat_type", type = "uint8"},
            {name = "group_id", type = "uint8"},
            {name = "is_over", type = "uint8"},
            {name = "atk_name", type = "string"},
            {name = "dfd_name", type = "string"},
            {name = "time", type = "uint32"}
        }}, 
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [17929] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17930] = {
        {name = "gods_duel_vote_choice", type = "array", fields = {
            {name = "tid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "match_round", type = "uint8"},
            {name = "is_right", type = "uint8"}
        }}, 
        {name = "gods_duel_poll", type = "array", fields = {
            {name = "tid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "voted_cnt", type = "uint32"}
        }}
    },
    [17931] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17932] = {
        {name = "zone_id", type = "uint8"},
        {name = "season_id", type = "uint32"},
        {name = "team_list", type = "array", fields = {
            {name = "tid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "member_num", type = "uint8"},
            {name = "qualification", type = "uint32"},
            {name = "team_group_64", type = "uint32"},
            {name = "members", type = "array", fields = {
                {name = "tid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "classes", type = "uint8"},
                {name = "sex", type = "uint8"},
                {name = "lev", type = "uint16"},
                {name = "break_times", type = "uint8"},
                {name = "position", type = "uint8"},
                {name = "fight_capacity", type = "uint32"}
            }}
        }}
    },
    [17933] = {
        {name = "season_id", type = "uint32"},
        {name = "season_time", type = "array", fields = {
            {name = "state_code", type = "uint8"},
            {name = "start_time", type = "uint32"},
            {name = "end_time", type = "uint32"}
        }}
    },
    [17934] = {
        {name = "rank_info", type = "array", fields = {
            {name = "rank", type = "uint32"},
            {name = "name", type = "string"},
            {name = "star", type = "uint32"},
            {name = "need_score", type = "uint32"},
            {name = "reward", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "bound", type = "uint8"},
                {name = "value", type = "uint32"}
            }}, 
            {name = "badge_id", type = "uint32"}
        }}
    },
    [17935] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "rank_lev", type = "uint32"},
        {name = "gods_duel_score", type = "uint32"}
    },
    [17936] = {
        {name = "rank_lev", type = "uint32"},
        {name = "gods_duel_score", type = "uint32"}
    },
    [17937] = {
        {name = "type", type = "uint8"},
        {name = "group", type = "uint8"},
        {name = "rank", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "rank_lev", type = "uint8"},
            {name = "gods_duel_score", type = "uint16"}
        }}
    },
    [17938] = {
        {name = "status", type = "uint8"},
        {name = "end_time", type = "uint32"}
    },
    [17939] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17940] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17941] = {
        {name = "champion_teams", type = "array", fields = {
            {name = "tid", type = "uint32"},
            {name = "platfrom", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint32"},
            {name = "members", type = "array", fields = {
                {name = "rid", type = "uint32"},
                {name = "platfrom", type = "string"},
                {name = "zone_id", type = "uint32"},
                {name = "name", type = "string"},
                {name = "lev", type = "uint32"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "break_times", type = "uint8"},
                {name = "looks", type = "array", fields = {
                    {name = "looks_type", type = "uint32"},
                    {name = "looks_mode", type = "uint32"},
                    {name = "looks_val", type = "uint32"},
                    {name = "looks_str", type = "string"}
                }}
            }}, 
            {name = "serial_id", type = "uint32"}
        }}
    },
    [17942] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17943] = {
        {name = "type", type = "uint32"},
        {name = "value", type = "uint8"},
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17944] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17945] = {
        {name = "err_code", type = "uint8"},
        {name = "msg_list", type = "array", fields = {
            {name = "msg_id", type = "uint32"},
            {name = "msg", type = "string"}
        }}
    },
    [17946] = {
        {name = "err_code", type = "uint8"},
        {name = "start_time", type = "uint32"},
        {name = "next_round", type = "uint32"},
        {name = "all_round", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [17947] = {
        {name = "flag", type = "uint8"}
    },
    [17948] = {
        {name = "flag", type = "uint8"}
    },
    [17949] = {

    },
    [17950] = {
        {name = "video_list", type = "array", fields = {
            {name = "list_id", type = "uint8"},
            {name = "gods_duel_video", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint32"},
                {name = "season_id", type = "uint16"},
                {name = "match_round", type = "uint8"},
                {name = "group_id", type = "uint8"},
                {name = "atk_name", type = "string"},
                {name = "dfd_name", type = "string"},
                {name = "time", type = "uint32"},
                {name = "replayed", type = "uint32"}
            }}
        }}
    },
    [17951] = {
        {name = "gods_duel_champion_videos", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "season_id", type = "uint16"},
            {name = "match_round", type = "uint8"},
            {name = "group_id", type = "uint8"},
            {name = "atk_name", type = "string"},
            {name = "dfd_name", type = "string"},
            {name = "time", type = "uint32"},
            {name = "replayed", type = "uint32"}
        }}
    },
    [17952] = {
        {name = "end_time", type = "uint32"}
    },
    [17953] = {
        {name = "flag", type = "uint8"}
    },
    [17954] = {
        {name = "first_time", type = "uint32"},
        {name = "manual_time", type = "uint32"}
    },
    [17955] = {
        {name = "err_code", type = "uint8"}
    },
    [17956] = {
        {name = "status", type = "uint8"}
    },
    [17957] = {
        {name = "hp_percent", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [17958] = {
        {name = "result", type = "uint8"},
        {name = "times", type = "uint32"},
        {name = "mates", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "total_dmg", type = "uint32"},
            {name = "total_heal", type = "uint32"}
        }}
    },
    [17959] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17960] = {
        {name = "has_reward", type = "uint8"}
    },
    [17961] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17962] = {
        {name = "status", type = "uint8"},
        {name = "team_name", type = "string"}
    },
    [17963] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17964] = {
        {name = "support_num", type = "uint32"},
        {name = "unsupport_num", type = "uint32"},
        {name = "unknow_num", type = "uint32"},
        {name = "observer_num", type = "uint32"},
        {name = "wave", type = "uint32"},
        {name = "boss_id", type = "uint32"},
        {name = "boss_hp_percent", type = "uint32"}
    },
    [17965] = {
        {name = "err_code", type = "uint8"},
        {name = "start_time", type = "uint32"}
    },
    [17966] = {
        {name = "start_time", type = "uint32"}
    },
    [17967] = {
        {name = "champion_teams", type = "array", fields = {
            {name = "tid", type = "uint32"},
            {name = "platfrom", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint32"},
            {name = "match_group", type = "uint8"},
            {name = "members", type = "array", fields = {
                {name = "rid", type = "uint32"},
                {name = "platfrom", type = "string"},
                {name = "zone_id", type = "uint32"},
                {name = "fight_capacity", type = "uint32"},
                {name = "position", type = "uint8"},
                {name = "name", type = "string"},
                {name = "lev", type = "uint32"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "break_times", type = "uint8"}
            }}
        }}
    },
    [18200] = {
        {name = "gold_times", type = "uint32"},
        {name = "silver_times", type = "uint32"}
    },
    [18201] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "item_type_id", type = "uint16"}
    },
    [18202] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18203] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "x", type = "uint32"},
        {name = "y", type = "uint32"}
    },
    [18300] = {
        {name = "status", type = "uint8"},
        {name = "id", type = "uint32"}
    },
    [18301] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18302] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18303] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18304] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18305] = {
        {name = "time", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "preparation_show_list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "group", type = "uint8"},
            {name = "lev_break_times", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}
        }}
    },
    [18306] = {
        {name = "status", type = "uint8"},
        {name = "timeout", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [18307] = {
        {name = "id", type = "uint32"},
        {name = "count", type = "uint8"}
    },
    [18400] = {
        {name = "last_lev", type = "uint16"},
        {name = "list", type = "array", fields = {
            {name = "active_id", type = "uint16"},
            {name = "finish", type = "uint16"},
            {name = "all", type = "uint16"},
            {name = "back", type = "uint16"},
            {name = "reward", type = "array", fields = {
                {name = "type", type = "uint32"},
                {name = "value", type = "uint32"}
            }}
        }}
    },
    [18401] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18402] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18500] = {
        {name = "is_over", type = "uint8"},
        {name = "red_packet_list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint32"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "type", type = "uint8"},
            {name = "title", type = "string"},
            {name = "time", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "log", type = "array", fields = {
                {name = "grabid", type = "uint32"},
                {name = "gplatform", type = "string"},
                {name = "gzone_id", type = "uint32"},
                {name = "lev", type = "uint32"},
                {name = "name", type = "string"},
                {name = "classes", type = "uint8"},
                {name = "sex", type = "uint8"},
                {name = "time", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "is_item", type = "uint8"}
            }}
        }}
    },
    [18501] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint32"},
        {name = "classes", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "title", type = "string"},
        {name = "time", type = "uint32"}
    },
    [18502] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18503] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18504] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18505] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint32"},
        {name = "classes", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "title", type = "string"},
        {name = "amount", type = "uint32"},
        {name = "assets_type", type = "uint32"},
        {name = "remain", type = "uint32"},
        {name = "total", type = "uint32"},
        {name = "num", type = "uint32"},
        {name = "time", type = "uint32"},
        {name = "log", type = "array", fields = {
            {name = "grabid", type = "uint32"},
            {name = "gplatform", type = "string"},
            {name = "gzone_id", type = "uint32"},
            {name = "lev", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "time", type = "uint32"},
            {name = "value", type = "uint32"},
            {name = "is_item", type = "uint8"}
        }}
    },
    [18506] = {
        {name = "grabid", type = "uint32"},
        {name = "gplatform", type = "string"},
        {name = "gzone_id", type = "uint32"},
        {name = "lev", type = "uint32"},
        {name = "name", type = "string"},
        {name = "classes", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "time", type = "uint32"},
        {name = "value", type = "uint32"},
        {name = "is_item", type = "uint8"}
    },
    [18600] = {
        {name = "child_nums", type = "uint8"},
        {name = "child_list", type = "array", fields = {
            {name = "child_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "classes_type", type = "uint8"},
            {name = "status", type = "uint8"},
            {name = "stage", type = "uint8"},
            {name = "grade", type = "uint8"},
            {name = "base_id", type = "uint32"},
            {name = "embryo", type = "uint8"},
            {name = "growth", type = "uint16"},
            {name = "growth_type", type = "uint8"},
            {name = "maturity", type = "uint16"},
            {name = "hungry", type = "uint8"},
            {name = "add_point", type = "uint8"},
            {name = "use_growth", type = "uint8"},
            {name = "pregnant_time", type = "uint32"},
            {name = "birth_time", type = "uint32"},
            {name = "study_easy", type = "uint8"},
            {name = "study_easy_time", type = "uint32"},
            {name = "day_easy", type = "uint8"},
            {name = "study_hard", type = "uint8"},
            {name = "study_hard_time", type = "uint32"},
            {name = "day_hard", type = "uint8"},
            {name = "free_study", type = "uint8"},
            {name = "talent", type = "uint16"},
            {name = "hp", type = "uint32"},
            {name = "mp", type = "uint32"},
            {name = "name_changed", type = "uint32"},
            {name = "follow_id", type = "uint32"},
            {name = "f_platform", type = "string"},
            {name = "f_zone_id", type = "uint16"},
            {name = "parents", type = "array", fields = {
                {name = "parent_id", type = "uint32"},
                {name = "p_platform", type = "string"},
                {name = "p_zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "looks", type = "array", fields = {
                    {name = "looks_type", type = "uint32"},
                    {name = "looks_mode", type = "uint32"},
                    {name = "looks_val", type = "uint32"},
                    {name = "looks_str", type = "string"}
                }}, 
                {name = "intimacy", type = "uint32"}
            }}, 
            {name = "hp_max", type = "uint32"},
            {name = "mp_max", type = "uint32"},
            {name = "atk_speed", type = "uint16"},
            {name = "phy_dmg", type = "uint32"},
            {name = "magic_dmg", type = "uint32"},
            {name = "phy_def", type = "uint32"},
            {name = "magic_def", type = "uint32"},
            {name = "hp_aptitude", type = "uint16"},
            {name = "phy_aptitude", type = "uint16"},
            {name = "pdef_aptitude", type = "uint16"},
            {name = "magic_aptitude", type = "uint16"},
            {name = "aspd_aptitude", type = "uint16"},
            {name = "max_hp_aptitude", type = "uint16"},
            {name = "max_phy_aptitude", type = "uint16"},
            {name = "max_pdef_aptitude", type = "uint16"},
            {name = "max_magic_aptitude", type = "uint16"},
            {name = "max_aspd_aptitude", type = "uint16"},
            {name = "study_str", type = "uint16"},
            {name = "study_con", type = "uint16"},
            {name = "study_agi", type = "uint16"},
            {name = "study_mag", type = "uint16"},
            {name = "study_end", type = "uint16"},
            {name = "max_hp_apt_used", type = "uint8"},
            {name = "max_phy_apt_used", type = "uint8"},
            {name = "max_pdef_apt_used", type = "uint8"},
            {name = "max_magic_apt_used", type = "uint8"},
            {name = "max_aspd_apt_used", type = "uint8"},
            {name = "is_init", type = "uint8"},
            {name = "study_str_easy", type = "uint16"},
            {name = "study_con_easy", type = "uint16"},
            {name = "study_agi_easy", type = "uint16"},
            {name = "study_mag_easy", type = "uint16"},
            {name = "study_end_easy", type = "uint16"},
            {name = "study_str_hard", type = "uint16"},
            {name = "study_con_hard", type = "uint16"},
            {name = "study_agi_hard", type = "uint16"},
            {name = "study_mag_hard", type = "uint16"},
            {name = "study_end_hard", type = "uint16"},
            {name = "study_str_plan_easy", type = "uint16"},
            {name = "study_con_plan_easy", type = "uint16"},
            {name = "study_agi_plan_easy", type = "uint16"},
            {name = "study_mag_plan_easy", type = "uint16"},
            {name = "study_end_plan_easy", type = "uint16"},
            {name = "study_str_plan_hard", type = "uint16"},
            {name = "study_con_plan_hard", type = "uint16"},
            {name = "study_agi_plan_hard", type = "uint16"},
            {name = "study_mag_plan_hard", type = "uint16"},
            {name = "study_end_plan_hard", type = "uint16"},
            {name = "skills", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "source", type = "uint8"},
                {name = "is_open", type = "uint8"}
            }}, 
            {name = "talent_skills", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "grade", type = "uint8"},
                {name = "lev", type = "uint8"},
                {name = "exp", type = "uint32"}
            }}, 
            {name = "stones", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "b_id", type = "uint32"},
                {name = "b_platform", type = "string"},
                {name = "b_zone_id", type = "uint16"},
                {name = "base_id", type = "uint32"},
                {name = "attr", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "flag", type = "uint32"},
                    {name = "val", type = "int32"}
                }}, 
                {name = "reset_attr", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "flag", type = "uint32"},
                    {name = "val", type = "int32"}
                }}, 
                {name = "extra", type = "array", fields = {
                    {name = "name", type = "uint32"},
                    {name = "value", type = "uint32"},
                    {name = "str", type = "string"}
                }}
            }}, 
            {name = "handbook_attr", type = "array", fields = {
                {name = "attr_name", type = "uint32"},
                {name = "attr_val", type = "uint32"}
            }}, 
            {name = "handbook_num", type = "uint8"},
            {name = "star_handbook_num", type = "uint8"},
            {name = "spirit_attached", type = "uint8"},
            {name = "child_skin", type = "array", fields = {
                {name = "skin_id", type = "uint32"},
                {name = "skin_active_flag", type = "uint8"},
                {name = "expire_time", type = "uint32"}
            }}
        }}, 
        {name = "hungry_notice_lev", type = "array", fields = {
            {name = "n_child_id", type = "uint32"},
            {name = "n_platform", type = "string"},
            {name = "n_zone_id", type = "uint16"},
            {name = "n_lev", type = "uint8"}
        }}
    },
    [18601] = {
        {name = "child_list", type = "array", fields = {
            {name = "child_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "classes_type", type = "uint8"},
            {name = "status", type = "uint8"},
            {name = "stage", type = "uint8"},
            {name = "grade", type = "uint8"},
            {name = "base_id", type = "uint32"},
            {name = "embryo", type = "uint8"},
            {name = "growth", type = "uint16"},
            {name = "growth_type", type = "uint8"},
            {name = "maturity", type = "uint16"},
            {name = "hungry", type = "uint8"},
            {name = "add_point", type = "uint8"},
            {name = "use_growth", type = "uint8"},
            {name = "pregnant_time", type = "uint32"},
            {name = "birth_time", type = "uint32"},
            {name = "follow_id", type = "uint32"},
            {name = "f_platform", type = "string"},
            {name = "f_zone_id", type = "uint16"},
            {name = "parents", type = "array", fields = {
                {name = "parent_id", type = "uint32"},
                {name = "p_platform", type = "string"},
                {name = "p_zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "looks", type = "array", fields = {
                    {name = "looks_type", type = "uint32"},
                    {name = "looks_mode", type = "uint32"},
                    {name = "looks_val", type = "uint32"},
                    {name = "looks_str", type = "string"}
                }}, 
                {name = "intimacy", type = "uint32"}
            }}
        }}
    },
    [18602] = {
        {name = "abandons", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"}
        }}
    },
    [18603] = {
        {name = "child_list", type = "array", fields = {
            {name = "child_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "base_id", type = "uint32"},
            {name = "grade", type = "uint8"},
            {name = "growth", type = "uint16"},
            {name = "growth_type", type = "uint8"},
            {name = "add_point", type = "uint8"},
            {name = "use_growth", type = "uint8"},
            {name = "talent", type = "uint16"},
            {name = "hp", type = "uint32"},
            {name = "mp", type = "uint32"},
            {name = "hp_max", type = "uint32"},
            {name = "mp_max", type = "uint32"},
            {name = "atk_speed", type = "uint16"},
            {name = "phy_dmg", type = "uint32"},
            {name = "magic_dmg", type = "uint32"},
            {name = "phy_def", type = "uint32"},
            {name = "magic_def", type = "uint32"},
            {name = "hp_aptitude", type = "uint16"},
            {name = "phy_aptitude", type = "uint16"},
            {name = "pdef_aptitude", type = "uint16"},
            {name = "magic_aptitude", type = "uint16"},
            {name = "aspd_aptitude", type = "uint16"},
            {name = "max_hp_aptitude", type = "uint16"},
            {name = "max_phy_aptitude", type = "uint16"},
            {name = "max_pdef_aptitude", type = "uint16"},
            {name = "max_magic_aptitude", type = "uint16"},
            {name = "max_aspd_aptitude", type = "uint16"},
            {name = "max_hp_apt_used", type = "uint8"},
            {name = "max_phy_apt_used", type = "uint8"},
            {name = "max_pdef_apt_used", type = "uint8"},
            {name = "max_magic_apt_used", type = "uint8"},
            {name = "max_aspd_apt_used", type = "uint8"},
            {name = "handbook_attr", type = "array", fields = {
                {name = "attr_name", type = "uint32"},
                {name = "attr_val", type = "uint32"}
            }}, 
            {name = "handbook_num", type = "uint8"},
            {name = "star_handbook_num", type = "uint8"},
            {name = "spirit_attached", type = "uint8"}
        }}
    },
    [18604] = {
        {name = "child_list", type = "array", fields = {
            {name = "child_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "base_id", type = "uint32"},
            {name = "skills", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "source", type = "uint8"},
                {name = "is_open", type = "uint8"}
            }}
        }}
    },
    [18605] = {
        {name = "child_list", type = "array", fields = {
            {name = "child_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "base_id", type = "uint32"},
            {name = "stones", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "b_id", type = "uint32"},
                {name = "b_platform", type = "string"},
                {name = "b_zone_id", type = "uint16"},
                {name = "base_id", type = "uint32"},
                {name = "attr", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "flag", type = "uint32"},
                    {name = "val", type = "int32"}
                }}, 
                {name = "reset_attr", type = "array", fields = {
                    {name = "type", type = "uint16"},
                    {name = "name", type = "uint32"},
                    {name = "flag", type = "uint32"},
                    {name = "val", type = "int32"}
                }}, 
                {name = "extra", type = "array", fields = {
                    {name = "name", type = "uint32"},
                    {name = "value", type = "uint32"},
                    {name = "str", type = "string"}
                }}
            }}
        }}
    },
    [18606] = {
        {name = "child_list", type = "array", fields = {
            {name = "child_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "name_changed", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "lev", type = "uint8"},
            {name = "hungry", type = "uint8"},
            {name = "status", type = "uint8"},
            {name = "follow_id", type = "uint32"},
            {name = "f_platform", type = "string"},
            {name = "f_zone_id", type = "uint16"}
        }}
    },
    [18607] = {
        {name = "child_list", type = "array", fields = {
            {name = "child_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "base_id", type = "uint32"},
            {name = "talent_skills", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "lev", type = "uint8"},
                {name = "grade", type = "uint8"},
                {name = "exp", type = "uint32"}
            }}
        }}
    },
    [18608] = {
        {name = "child_list", type = "array", fields = {
            {name = "child_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "lev", type = "uint8"},
            {name = "base_id", type = "uint32"},
            {name = "study_easy", type = "uint8"},
            {name = "study_easy_time", type = "uint32"},
            {name = "day_easy", type = "uint8"},
            {name = "study_hard", type = "uint8"},
            {name = "study_hard_time", type = "uint32"},
            {name = "day_hard", type = "uint8"},
            {name = "free_study", type = "uint8"},
            {name = "maturity", type = "uint16"},
            {name = "study_str", type = "uint16"},
            {name = "study_con", type = "uint16"},
            {name = "study_agi", type = "uint16"},
            {name = "study_mag", type = "uint16"},
            {name = "study_end", type = "uint16"},
            {name = "is_init", type = "uint8"},
            {name = "study_str_easy", type = "uint16"},
            {name = "study_con_easy", type = "uint16"},
            {name = "study_agi_easy", type = "uint16"},
            {name = "study_mag_easy", type = "uint16"},
            {name = "study_end_easy", type = "uint16"},
            {name = "study_str_hard", type = "uint16"},
            {name = "study_con_hard", type = "uint16"},
            {name = "study_agi_hard", type = "uint16"},
            {name = "study_mag_hard", type = "uint16"},
            {name = "study_end_hard", type = "uint16"},
            {name = "study_str_plan_easy", type = "uint16"},
            {name = "study_con_plan_easy", type = "uint16"},
            {name = "study_agi_plan_easy", type = "uint16"},
            {name = "study_mag_plan_easy", type = "uint16"},
            {name = "study_end_plan_easy", type = "uint16"},
            {name = "study_str_plan_hard", type = "uint16"},
            {name = "study_con_plan_hard", type = "uint16"},
            {name = "study_agi_plan_hard", type = "uint16"},
            {name = "study_mag_plan_hard", type = "uint16"},
            {name = "study_end_plan_hard", type = "uint16"}
        }}
    },
    [18609] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18610] = {
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "stage", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "classes", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "growth", type = "uint16"},
        {name = "hp_aptitude", type = "uint16"},
        {name = "phy_aptitude", type = "uint16"},
        {name = "pdef_aptitude", type = "uint16"},
        {name = "magic_aptitude", type = "uint16"},
        {name = "aspd_aptitude", type = "uint16"},
        {name = "max_hp_aptitude", type = "uint16"},
        {name = "max_phy_aptitude", type = "uint16"},
        {name = "max_pdef_aptitude", type = "uint16"},
        {name = "max_magic_aptitude", type = "uint16"},
        {name = "max_aspd_aptitude", type = "uint16"},
        {name = "max_hp_apt_used", type = "uint8"},
        {name = "max_phy_apt_used", type = "uint8"},
        {name = "max_pdef_apt_used", type = "uint8"},
        {name = "max_magic_apt_used", type = "uint8"},
        {name = "max_aspd_apt_used", type = "uint8"}
    },
    [18611] = {
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "pre_str", type = "uint16"},
        {name = "pre_con", type = "uint16"},
        {name = "pre_mag", type = "uint16"},
        {name = "pre_agi", type = "uint16"},
        {name = "pre_end", type = "uint16"}
    },
    [18612] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "pre_str", type = "uint16"},
        {name = "pre_con", type = "uint16"},
        {name = "pre_mag", type = "uint16"},
        {name = "pre_agi", type = "uint16"},
        {name = "pre_end", type = "uint16"}
    },
    [18616] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18617] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "grade", type = "uint8"}
    },
    [18618] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18619] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18620] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18621] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "base_id", type = "uint32"},
        {name = "classes", type = "uint8"}
    },
    [18622] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "classes_type", type = "uint8"}
    },
    [18623] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18624] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18625] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18626] = {
        {name = "extra", type = "array", fields = {
            {name = "type", type = "uint32"},
            {name = "value", type = "uint32"}
        }}
    },
    [18627] = {
        {name = "fertility", type = "uint16"},
        {name = "tonic", type = "uint16"}
    },
    [18628] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18629] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18630] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18631] = {
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"}
    },
    [18632] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18633] = {
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "combat_talk", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "msg", type = "string"}
        }}
    },
    [18634] = {
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "result", type = "uint8"},
        {name = "reason", type = "string"},
        {name = "type", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18635] = {
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "result", type = "uint8"},
        {name = "reason", type = "string"}
    },
    [18636] = {
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "result", type = "uint8"},
        {name = "reason", type = "string"}
    },
    [18637] = {
        {name = "type", type = "uint8"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "classes_type", type = "uint8"},
            {name = "base_id", type = "uint32"},
            {name = "rank", type = "uint32"},
            {name = "father_name", type = "string"},
            {name = "father_classes", type = "uint8"},
            {name = "mother_name", type = "string"},
            {name = "mother_classes", type = "uint32"},
            {name = "val1", type = "uint32"},
            {name = "val2", type = "uint32"},
            {name = "val3", type = "uint32"},
            {name = "val4", type = "uint32"}
        }}
    },
    [18638] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "classes_type", type = "uint8"},
        {name = "status", type = "uint8"},
        {name = "stage", type = "uint8"},
        {name = "grade", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "embryo", type = "uint8"},
        {name = "growth", type = "uint16"},
        {name = "growth_type", type = "uint8"},
        {name = "maturity", type = "uint16"},
        {name = "hungry", type = "uint8"},
        {name = "add_point", type = "uint8"},
        {name = "pregnant_time", type = "uint32"},
        {name = "birth_time", type = "uint32"},
        {name = "study_easy", type = "uint8"},
        {name = "study_easy_time", type = "uint32"},
        {name = "day_easy", type = "uint8"},
        {name = "study_hard", type = "uint8"},
        {name = "study_hard_time", type = "uint32"},
        {name = "day_hard", type = "uint8"},
        {name = "talent", type = "uint16"},
        {name = "hp", type = "uint32"},
        {name = "mp", type = "uint32"},
        {name = "name_changed", type = "uint32"},
        {name = "follow_id", type = "uint32"},
        {name = "f_platform", type = "string"},
        {name = "f_zone_id", type = "uint16"},
        {name = "parents", type = "array", fields = {
            {name = "parent_id", type = "uint32"},
            {name = "p_platform", type = "string"},
            {name = "p_zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "intimacy", type = "uint32"}
        }}, 
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"},
        {name = "atk_speed", type = "uint16"},
        {name = "phy_dmg", type = "uint32"},
        {name = "magic_dmg", type = "uint32"},
        {name = "phy_def", type = "uint32"},
        {name = "magic_def", type = "uint32"},
        {name = "hp_aptitude", type = "uint16"},
        {name = "phy_aptitude", type = "uint16"},
        {name = "pdef_aptitude", type = "uint16"},
        {name = "magic_aptitude", type = "uint16"},
        {name = "aspd_aptitude", type = "uint16"},
        {name = "max_hp_aptitude", type = "uint16"},
        {name = "max_phy_aptitude", type = "uint16"},
        {name = "max_pdef_aptitude", type = "uint16"},
        {name = "max_magic_aptitude", type = "uint16"},
        {name = "max_aspd_aptitude", type = "uint16"},
        {name = "study_str", type = "uint16"},
        {name = "study_con", type = "uint16"},
        {name = "study_agi", type = "uint16"},
        {name = "study_mag", type = "uint16"},
        {name = "study_end", type = "uint16"},
        {name = "skills", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "source", type = "uint8"},
            {name = "is_open", type = "uint8"}
        }}, 
        {name = "talent_skills", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "grade", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "exp", type = "uint32"}
        }}, 
        {name = "stones", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "reset_attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "extra", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "str", type = "string"}
            }}
        }}
    },
    [18639] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "lev", type = "uint8"}
    },
    [18640] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18641] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18642] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18643] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18700] = {
        {name = "lists", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "round_id", type = "uint32"},
            {name = "day", type = "uint8"},
            {name = "status", type = "uint8"},
            {name = "limit", type = "uint8"},
            {name = "assets_type", type = "uint32"},
            {name = "assets_value", type = "uint32"},
            {name = "init_value", type = "uint32"}
        }}, 
        {name = "round_id_now", type = "uint32"},
        {name = "day", type = "uint16"},
        {name = "start_time", type = "uint32"},
        {name = "end_time", type = "uint32"}
    },
    [18701] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18800] = {
        {name = "status", type = "uint8"},
        {name = "dungeon", type = "uint32"},
        {name = "times", type = "uint16"},
        {name = "double", type = "uint8"},
        {name = "piece", type = "array", fields = {
            {name = "pos", type = "uint8"}
        }}, 
        {name = "opens", type = "array", fields = {
            {name = "x", type = "uint8"},
            {name = "y", type = "uint8"},
            {name = "type", type = "uint8"},
            {name = "id", type = "uint32"},
            {name = "hard", type = "uint16"},
            {name = "times", type = "uint16"},
            {name = "flag", type = "uint16"},
            {name = "special_id", type = "uint16"},
            {name = "reward", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "bind", type = "uint8"},
                {name = "num", type = "uint32"}
            }}, 
            {name = "show", type = "uint8"}
        }}, 
        {name = "piece_other", type = "array", fields = {
            {name = "piece_x", type = "uint8"},
            {name = "piece_y", type = "uint8"},
            {name = "piece_num", type = "uint8"}
        }}, 
        {name = "events", type = "array", fields = {
            {name = "e_x", type = "uint8"},
            {name = "e_y", type = "uint8"},
            {name = "e_type", type = "uint8"},
            {name = "e_id", type = "uint32"},
            {name = "e_flag", type = "uint16"},
            {name = "e_reward", type = "array", fields = {
                {name = "e_base_id", type = "uint32"},
                {name = "e_bind", type = "uint8"},
                {name = "e_num", type = "uint32"}
            }}
        }}
    },
    [18801] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18802] = {
        {name = "start_x", type = "uint8"},
        {name = "start_y", type = "uint8"},
        {name = "opens", type = "array", fields = {
            {name = "end_x", type = "uint8"},
            {name = "end_y", type = "uint8"}
        }}
    },
    [18803] = {

    },
    [18804] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18805] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [18806] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18807] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18808] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "reward", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint16"}
        }}
    },
    [18809] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18810] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18811] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18812] = {
        {name = "start_x", type = "uint8"},
        {name = "start_y", type = "uint8"},
        {name = "opens", type = "array", fields = {
            {name = "end_x", type = "uint8"},
            {name = "end_y", type = "uint8"},
            {name = "piece", type = "uint8"}
        }}
    },
    [18813] = {

    },
    [18814] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18815] = {
        {name = "exp", type = "uint32"},
        {name = "pet_exp", type = "uint32"},
        {name = "x", type = "uint8"},
        {name = "y", type = "uint8"}
    },
    [18816] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "x", type = "uint8"},
        {name = "y", type = "uint8"}
    },
    [19000] = {
        {name = "group_id", type = "uint32"},
        {name = "group_platform", type = "string"},
        {name = "group_zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "content", type = "string"},
        {name = "owner_rid", type = "uint32"},
        {name = "owner_platform", type = "string"},
        {name = "owner_zone_id", type = "uint16"},
        {name = "owner_name", type = "string"},
        {name = "owner_classes", type = "uint8"},
        {name = "owner_lev", type = "uint16"},
        {name = "owner_sex", type = "uint8"},
        {name = "owner_fc", type = "uint32"},
        {name = "members", type = "array", fields = {
            {name = "role_rid", type = "uint32"},
            {name = "role_platform", type = "string"},
            {name = "role_zone_id", type = "uint16"},
            {name = "role_name", type = "string"},
            {name = "role_classes", type = "uint8"},
            {name = "role_lev", type = "uint16"},
            {name = "role_sex", type = "uint8"},
            {name = "online", type = "uint8"},
            {name = "online_time", type = "uint32"},
            {name = "post", type = "uint16"},
            {name = "notice", type = "uint8"}
        }}
    },
    [19001] = {
        {name = "groups", type = "array", fields = {
            {name = "group_rid", type = "uint32"},
            {name = "group_platform", type = "string"},
            {name = "group_zone_id", type = "uint16"},
            {name = "group_name", type = "string"},
            {name = "group_content", type = "string"},
            {name = "role_rid", type = "uint32"},
            {name = "role_platform", type = "string"},
            {name = "role_zone_id", type = "uint16"},
            {name = "owner_name", type = "string"},
            {name = "owner_classes", type = "uint8"},
            {name = "owner_sex", type = "uint8"},
            {name = "time", type = "uint32"}
        }}, 
        {name = "create", type = "uint16"},
        {name = "join", type = "uint16"},
        {name = "unlock", type = "uint16"},
        {name = "extra", type = "uint16"}
    },
    [19002] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19003] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19004] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19005] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19006] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19007] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19008] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19009] = {
        {name = "inviteds", type = "array", fields = {
            {name = "role_rid", type = "uint32"},
            {name = "role_platform", type = "string"},
            {name = "role_zone_id", type = "uint32"},
            {name = "group_rid", type = "uint32"},
            {name = "group_platform", type = "string"},
            {name = "group_zone_id", type = "uint16"},
            {name = "group_name", type = "string"},
            {name = "role_name", type = "string"},
            {name = "time", type = "uint32"},
            {name = "role_classes", type = "uint8"},
            {name = "role_sex", type = "uint8"},
            {name = "role_lev", type = "uint16"}
        }}, 
        {name = "applys", type = "array", fields = {
            {name = "role_rid", type = "uint32"},
            {name = "role_platform", type = "string"},
            {name = "role_zone_id", type = "uint32"},
            {name = "group_rid", type = "uint32"},
            {name = "group_platform", type = "string"},
            {name = "group_zone_id", type = "uint16"},
            {name = "group_name", type = "string"},
            {name = "role_name", type = "string"},
            {name = "role_classes", type = "uint8"},
            {name = "role_sex", type = "uint8"},
            {name = "role_lev", type = "uint16"}
        }}
    },
    [19010] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19011] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19012] = {
        {name = "name", type = "string"},
        {name = "group_rid", type = "uint32"},
        {name = "group_platform", type = "string"},
        {name = "group_zone_id", type = "uint16"},
        {name = "group_name", type = "string"}
    },
    [19013] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19014] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19100] = {
        {name = "status", type = "uint8"},
        {name = "time", type = "uint32"},
        {name = "round", type = "uint8"}
    },
    [19101] = {
        {name = "round", type = "uint8"},
        {name = "match_id", type = "uint32"},
        {name = "lev_group", type = "uint8"},
        {name = "has_result", type = "uint8"},
        {name = "win_guild_rid", type = "uint32"},
        {name = "win_guild_plat", type = "string"},
        {name = "win_guild_zone", type = "uint16"},
        {name = "guild_match_list", type = "array", fields = {
            {name = "guild_rid", type = "uint32"},
            {name = "guild_plat", type = "string"},
            {name = "guild_zone", type = "uint16"},
            {name = "guild_name", type = "string"},
            {name = "guild_lev", type = "uint8"},
            {name = "win_star_3", type = "uint16"},
            {name = "win_star_2", type = "uint16"},
            {name = "win_star_1", type = "uint16"},
            {name = "atk_times", type = "uint16"},
            {name = "win_times", type = "uint16"},
            {name = "castle_num", type = "uint16"},
            {name = "score", type = "uint16"},
            {name = "atk_rid", type = "uint32"},
            {name = "atk_plat", type = "string"},
            {name = "atk_zone", type = "uint16"},
            {name = "a_replay_id", type = "uint32"},
            {name = "a_replay_plat", type = "string"},
            {name = "a_replay_zone", type = "uint16"},
            {name = "best_atk_name", type = "string"},
            {name = "def_rid", type = "uint32"},
            {name = "def_plat", type = "string"},
            {name = "def_zone", type = "uint16"},
            {name = "d_replay_id", type = "uint32"},
            {name = "d_replay_plat", type = "string"},
            {name = "d_replay_zone", type = "uint16"},
            {name = "best_def_name", type = "string"},
            {name = "castle_list", type = "array", fields = {
                {name = "r_id", type = "uint32"},
                {name = "r_plat", type = "string"},
                {name = "r_zone", type = "uint16"},
                {name = "order", type = "uint8"},
                {name = "name", type = "string"},
                {name = "lev", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "sex", type = "uint8"},
                {name = "lev_break_times", type = "uint8"},
                {name = "loss_star", type = "uint8"},
                {name = "def_times", type = "uint16"},
                {name = "def_win_times", type = "uint16"},
                {name = "atk_times", type = "uint8"},
                {name = "atk_win_times", type = "uint8"},
                {name = "is_combat", type = "uint8"}
            }}
        }}
    },
    [19102] = {
        {name = "flag", type = "uint8"},
        {name = "r_id", type = "uint32"},
        {name = "r_plat", type = "string"},
        {name = "r_zone", type = "uint16"},
        {name = "order", type = "uint8"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "lev_break_times", type = "uint8"},
        {name = "loss_star", type = "uint8"},
        {name = "def_times", type = "uint16"},
        {name = "def_win_times", type = "uint16"},
        {name = "atk_times", type = "uint8"},
        {name = "atk_win_times", type = "uint8"},
        {name = "can_look", type = "uint8"},
        {name = "formation", type = "uint8"},
        {name = "formation_lev", type = "uint8"},
        {name = "guards", type = "array", fields = {
            {name = "guard_id", type = "uint32"},
            {name = "war_id", type = "uint8"}
        }}, 
        {name = "is_combat", type = "uint8"},
        {name = "castle_log", type = "array", fields = {
            {name = "time", type = "uint32"},
            {name = "star", type = "uint8"},
            {name = "is_win", type = "uint8"},
            {name = "guild_rid_1", type = "uint32"},
            {name = "guild_plat_1", type = "string"},
            {name = "guild_zone_1", type = "uint16"},
            {name = "guild_name_1", type = "string"},
            {name = "r_id_1", type = "uint32"},
            {name = "r_plat_1", type = "string"},
            {name = "r_zone_1", type = "uint16"},
            {name = "role_name_1", type = "string"},
            {name = "role_order_1", type = "uint8"},
            {name = "role_lev_1", type = "uint16"},
            {name = "guild_rid_2", type = "uint32"},
            {name = "guild_plat_2", type = "string"},
            {name = "guild_zone_2", type = "uint16"},
            {name = "guild_name_2", type = "string"},
            {name = "r_id_2", type = "uint32"},
            {name = "r_plat_2", type = "string"},
            {name = "r_zone_2", type = "uint16"},
            {name = "role_name_2", type = "string"},
            {name = "role_order_2", type = "uint8"},
            {name = "role_lev_2", type = "uint16"},
            {name = "replay_id", type = "uint32"},
            {name = "replay_plat", type = "string"},
            {name = "replay_zone", type = "uint16"}
        }}
    },
    [19103] = {
        {name = "flag", type = "uint8"},
        {name = "reason", type = "string"}
    },
    [19104] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "formation", type = "uint8"},
        {name = "formation_lev", type = "uint8"},
        {name = "guards", type = "array", fields = {
            {name = "guard_id", type = "uint32"},
            {name = "war_id", type = "uint8"}
        }}
    },
    [19105] = {
        {name = "flag", type = "uint8"},
        {name = "castle_log", type = "array", fields = {
            {name = "time", type = "uint32"},
            {name = "star", type = "uint8"},
            {name = "is_win", type = "uint8"},
            {name = "guild_rid_1", type = "uint32"},
            {name = "guild_plat_1", type = "string"},
            {name = "guild_zone_1", type = "uint16"},
            {name = "guild_name_1", type = "string"},
            {name = "r_id_1", type = "uint32"},
            {name = "r_plat_1", type = "string"},
            {name = "r_zone_1", type = "uint16"},
            {name = "role_name_1", type = "string"},
            {name = "role_order_1", type = "uint8"},
            {name = "role_lev_1", type = "uint16"},
            {name = "guild_rid_2", type = "uint32"},
            {name = "guild_plat_2", type = "string"},
            {name = "guild_zone_2", type = "uint16"},
            {name = "guild_name_2", type = "string"},
            {name = "r_id_2", type = "uint32"},
            {name = "r_plat_2", type = "string"},
            {name = "r_zone_2", type = "uint16"},
            {name = "role_name_2", type = "string"},
            {name = "role_order_2", type = "uint8"},
            {name = "role_lev_2", type = "uint16"},
            {name = "replay_id", type = "uint32"},
            {name = "replay_plat", type = "string"},
            {name = "replay_zone", type = "uint16"}
        }}
    },
    [19106] = {
        {name = "flag", type = "uint8"},
        {name = "formation", type = "uint8"},
        {name = "formation_lev", type = "uint8"},
        {name = "pet_base_id", type = "uint32"},
        {name = "guards", type = "array", fields = {
            {name = "guard_id", type = "uint32"},
            {name = "war_id", type = "uint8"}
        }}
    },
    [19107] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "pet_base_id", type = "uint32"}
    },
    [19108] = {
        {name = "has_join", type = "uint8"},
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "atk_num", type = "uint8"},
        {name = "atk_log", type = "array", fields = {
            {name = "time", type = "uint32"},
            {name = "star", type = "uint8"},
            {name = "is_win", type = "uint8"},
            {name = "guild_rid_1", type = "uint32"},
            {name = "guild_plat_1", type = "string"},
            {name = "guild_zone_1", type = "uint16"},
            {name = "guild_name_1", type = "string"},
            {name = "r_id_1", type = "uint32"},
            {name = "r_plat_1", type = "string"},
            {name = "r_zone_1", type = "uint16"},
            {name = "role_name_1", type = "string"},
            {name = "role_order_1", type = "uint8"},
            {name = "role_lev_1", type = "uint16"},
            {name = "guild_rid_2", type = "uint32"},
            {name = "guild_plat_2", type = "string"},
            {name = "guild_zone_2", type = "uint16"},
            {name = "guild_name_2", type = "string"},
            {name = "r_id_2", type = "uint32"},
            {name = "r_plat_2", type = "string"},
            {name = "r_zone_2", type = "uint16"},
            {name = "role_name_2", type = "string"},
            {name = "role_order_2", type = "uint8"},
            {name = "role_lev_2", type = "uint16"},
            {name = "replay_id", type = "uint32"},
            {name = "replay_plat", type = "string"},
            {name = "replay_zone", type = "uint16"}
        }}
    },
    [19109] = {
        {name = "is_win", type = "uint8"},
        {name = "order", type = "uint8"},
        {name = "star", type = "uint8"},
        {name = "name", type = "string"},
        {name = "items", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [19110] = {
        {name = "flag", type = "uint8"}
    },
    [19111] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19112] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19200] = {
        {name = "status", type = "uint8"},
        {name = "timeout", type = "uint32"}
    },
    [19201] = {
        {name = "logs", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "time", type = "uint32"},
            {name = "prizes", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "item_num", type = "uint32"}
            }}
        }}
    },
    [19202] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "times", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "prizes", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "item_num", type = "uint32"}
        }}
    },
    [19203] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19300] = {
        {name = "rank_lev", type = "uint8"},
        {name = "star", type = "uint16"},
        {name = "win_lasted_times", type = "uint8"},
        {name = "season_join_times", type = "uint32"},
        {name = "season_win_times", type = "uint32"},
        {name = "season_lasted_win", type = "uint32"},
        {name = "last_join_times", type = "uint32"},
        {name = "last_win_times", type = "uint32"},
        {name = "last_lasted_win", type = "uint32"},
        {name = "best_rank", type = "uint8"},
        {name = "join_times", type = "uint8"},
        {name = "max_joins", type = "uint8"},
        {name = "has_get_rank", type = "uint8"},
        {name = "rank", type = "uint32"}
    },
    [19301] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "rencounter_match_role", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "plat", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint32"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "break_times", type = "uint8"},
            {name = "fc", type = "uint32"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "rank_lev", type = "uint8"},
            {name = "star", type = "uint16"}
        }}
    },
    [19302] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19303] = {
        {name = "type", type = "uint8"},
        {name = "rencounter_role", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "plat", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint32"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "break_times", type = "uint8"},
            {name = "fc", type = "uint32"},
            {name = "rank_lev", type = "uint8"},
            {name = "star", type = "uint16"}
        }}
    },
    [19304] = {
        {name = "rencounter_role", type = "array", fields = {
            {name = "l_rid", type = "uint32"},
            {name = "l_plat", type = "string"},
            {name = "l_zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint32"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "break_times", type = "uint8"},
            {name = "fc", type = "uint32"},
            {name = "rank_lev", type = "uint8"},
            {name = "star", type = "uint16"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}, 
            {name = "season_join_times", type = "uint32"},
            {name = "season_win_times", type = "uint32"}
        }}
    },
    [19305] = {
        {name = "rid", type = "uint32"},
        {name = "plat", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint32"},
        {name = "classes", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "break_times", type = "uint8"},
        {name = "fc", type = "uint32"},
        {name = "rank_lev", type = "uint8"},
        {name = "star", type = "uint16"},
        {name = "looks", type = "array", fields = {
            {name = "looks_type", type = "uint32"},
            {name = "looks_mode", type = "uint32"},
            {name = "looks_val", type = "uint32"},
            {name = "looks_str", type = "string"}
        }}
    },
    [19306] = {
        {name = "result", type = "uint8"},
        {name = "t_id", type = "uint32"},
        {name = "t_platform", type = "string"},
        {name = "t_zone", type = "uint16"},
        {name = "t_name", type = "string"},
        {name = "t_classes", type = "uint8"},
        {name = "t_sex", type = "uint8"},
        {name = "t_lev", type = "uint16"},
        {name = "t_rank_lev", type = "uint8"},
        {name = "t_star", type = "uint16"},
        {name = "s_rank_lev", type = "uint16"},
        {name = "s_star", type = "int8"},
        {name = "s_rank_lev_change", type = "uint16"},
        {name = "s_star_change", type = "int8"},
        {name = "s_statistics", type = "array", fields = {
            {name = "type_1", type = "uint8"},
            {name = "base_id_1", type = "uint32"},
            {name = "dmg_1", type = "uint32"},
            {name = "heal_1", type = "uint32"}
        }}, 
        {name = "t_statistics", type = "array", fields = {
            {name = "type_2", type = "uint8"},
            {name = "base_id_2", type = "uint32"},
            {name = "dmg_2", type = "uint32"},
            {name = "heal_2", type = "uint32"}
        }}
    },
    [19307] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19308] = {
        {name = "status", type = "uint8"},
        {name = "end_time", type = "uint32"}
    },
    [19309] = {
        {name = "start_time", type = "uint32"},
        {name = "end_time", type = "uint32"}
    },
    [19310] = {
        {name = "rank_lev", type = "uint8"},
        {name = "star", type = "uint16"},
        {name = "win_lasted_times", type = "uint8"},
        {name = "season_join_times", type = "uint32"},
        {name = "season_win_times", type = "uint32"},
        {name = "season_lasted_win", type = "uint32"},
        {name = "last_join_times", type = "uint32"},
        {name = "last_win_times", type = "uint32"},
        {name = "last_lasted_win", type = "uint32"},
        {name = "best_rank", type = "uint8"},
        {name = "join_times", type = "uint8"},
        {name = "max_joins", type = "uint8"},
        {name = "has_get_rank", type = "uint8"}
    },
    [19400] = {
        {name = "type", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "page", type = "uint8"},
        {name = "review", type = "array", fields = {
            {name = "m_id", type = "uint32"},
            {name = "m_platform", type = "string"},
            {name = "m_zone_id", type = "uint16"},
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "content", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "ctime", type = "uint32"},
            {name = "pro", type = "uint32"},
            {name = "con", type = "uint32"},
            {name = "pets", type = "array", fields = {
                {name = "name", type = "string"}
            }}, 
            {name = "guards", type = "array", fields = {
                {name = "name", type = "string"}
            }}
        }}
    },
    [19401] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "m_id", type = "uint32"},
        {name = "m_platform", type = "string"},
        {name = "m_zone_id", type = "uint16"}
    },
    [19402] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "m_id", type = "uint32"},
        {name = "m_platform", type = "string"},
        {name = "m_zone_id", type = "uint16"},
        {name = "pro", type = "uint32"}
    },
    [19403] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "m_id", type = "uint32"},
        {name = "m_platform", type = "string"},
        {name = "m_zone_id", type = "uint16"},
        {name = "con", type = "uint32"}
    },
    [19404] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19405] = {
        {name = "voted", type = "array", fields = {
            {name = "m_id", type = "uint32"},
            {name = "m_platform", type = "string"},
            {name = "m_zone_id", type = "uint16"},
            {name = "vote_type", type = "uint8"}
        }}, 
        {name = "posted", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "base_id", type = "uint32"}
        }}
    },
    [19406] = {
        {name = "m_id", type = "uint32"},
        {name = "m_platform", type = "string"},
        {name = "m_zone_id", type = "uint16"},
        {name = "id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "happy", type = "uint8"},
        {name = "grade", type = "uint8"},
        {name = "talent", type = "uint16"},
        {name = "genre", type = "uint8"},
        {name = "growth", type = "uint16"},
        {name = "growth_type", type = "uint8"},
        {name = "hp", type = "uint32"},
        {name = "mp", type = "uint32"},
        {name = "feed_point", type = "uint32"},
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"},
        {name = "atk_speed", type = "uint16"},
        {name = "phy_dmg", type = "uint32"},
        {name = "magic_dmg", type = "uint32"},
        {name = "phy_def", type = "uint32"},
        {name = "magic_def", type = "uint32"},
        {name = "hp_aptitude", type = "uint16"},
        {name = "phy_aptitude", type = "uint16"},
        {name = "pdef_aptitude", type = "uint16"},
        {name = "magic_aptitude", type = "uint16"},
        {name = "aspd_aptitude", type = "uint16"},
        {name = "max_hp_aptitude", type = "uint16"},
        {name = "max_phy_aptitude", type = "uint16"},
        {name = "max_pdef_aptitude", type = "uint16"},
        {name = "max_magic_aptitude", type = "uint16"},
        {name = "max_aspd_aptitude", type = "uint16"},
        {name = "skills", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "source", type = "uint8"}
        }}, 
        {name = "stones", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "reset_attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "extra", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "value", type = "uint32"},
                {name = "str", type = "string"}
            }}
        }}, 
        {name = "mount_skills", type = "array", fields = {
            {name = "skill_index", type = "uint8"},
            {name = "skill_id", type = "uint32"},
            {name = "skill_lev", type = "uint32"}
        }}, 
        {name = "handbook_attr", type = "array", fields = {
            {name = "attr_name", type = "uint32"},
            {name = "attr_val", type = "uint32"}
        }}, 
        {name = "handbook_num", type = "uint8"},
        {name = "star_handbook_num", type = "uint8"},
        {name = "use_skin", type = "uint32"},
        {name = "pet_rune", type = "array", fields = {
            {name = "rune_index", type = "uint8"},
            {name = "rune_type", type = "uint8"},
            {name = "rune_status", type = "uint8"},
            {name = "rune_id", type = "uint32"},
            {name = "rune_lev", type = "uint8"},
            {name = "is_resonance", type = "uint8"},
            {name = "resonances", type = "array", fields = {
                {name = "resonance_index", type = "uint8"},
                {name = "resonance_id", type = "uint32"},
                {name = "rune_index", type = "uint8"}
            }}
        }}
    },
    [19407] = {
        {name = "m_id", type = "uint32"},
        {name = "m_platform", type = "string"},
        {name = "m_zone_id", type = "uint16"},
        {name = "base_id", type = "uint32"},
        {name = "score", type = "uint32"},
        {name = "quality", type = "uint8"},
        {name = "hp_max", type = "uint32"},
        {name = "mp_max", type = "uint32"},
        {name = "atk_speed", type = "uint16"},
        {name = "phy_dmg", type = "uint32"},
        {name = "magic_dmg", type = "uint32"},
        {name = "phy_def", type = "uint32"},
        {name = "magic_def", type = "uint32"},
        {name = "heal_val", type = "uint16"},
        {name = "eqm", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "eqm_attrs", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "val", type = "int32"}
            }}, 
            {name = "gem", type = "array", fields = {
                {name = "id", type = "uint8"},
                {name = "base_id", type = "uint32"},
                {name = "type", type = "uint8"}
            }}, 
            {name = "timeout", type = "uint32"}
        }}, 
        {name = "aroused", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "lev", type = "uint16"},
            {name = "exp", type = "uint32"},
            {name = "attrs", type = "array", fields = {
                {name = "name", type = "uint32"},
                {name = "val", type = "int32"}
            }}
        }}, 
        {name = "attrs", type = "array", fields = {
            {name = "name", type = "uint32"},
            {name = "val", type = "int32"}
        }}, 
        {name = "skills", type = "array", fields = {
            {name = "skill_id", type = "uint32"},
            {name = "skill_lev", type = "uint8"}
        }}, 
        {name = "growth", type = "uint32"},
        {name = "active", type = "uint8"}
    },
    [19500] = {
        {name = "chapter_now", type = "int16"},
        {name = "num", type = "int16"},
        {name = "chapters", type = "array", fields = {
            {name = "chapter_id", type = "uint16"},
            {name = "status", type = "uint8"},
            {name = "strongpoints", type = "array", fields = {
                {name = "strongpoint_id", type = "uint16"},
                {name = "monsters", type = "array", fields = {
                    {name = "unique", type = "uint16"},
                    {name = "monster_id", type = "uint32"},
                    {name = "role_name", type = "string"},
                    {name = "role_sex", type = "uint8"},
                    {name = "role_classes", type = "uint8"},
                    {name = "percent", type = "uint32"},
                    {name = "challenge", type = "uint8"},
                    {name = "rewards", type = "array", fields = {
                        {name = "item_id", type = "uint32"},
                        {name = "item_num", type = "uint16"}
                    }}
                }}
            }}
        }}, 
        {name = "times", type = "uint16"},
        {name = "boss_times", type = "uint16"},
        {name = "active", type = "uint16"}
    },
    [19501] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19502] = {
        {name = "chapter_id", type = "uint16"},
        {name = "strongpoint_id", type = "uint16"},
        {name = "ranks", type = "array", fields = {
            {name = "r_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "role_name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "harm", type = "uint32"}
        }}
    },
    [19503] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19504] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19505] = {
        {name = "chapter_id", type = "uint16"},
        {name = "strongpoint_id", type = "uint16"},
        {name = "unique", type = "uint32"},
        {name = "score", type = "uint32"},
        {name = "max_score", type = "uint32"},
        {name = "max_guild_score", type = "uint32"},
        {name = "rank", type = "uint16"},
        {name = "war_percent", type = "uint32"},
        {name = "monster_id", type = "uint32"},
        {name = "role_name", type = "string"},
        {name = "role_sex", type = "uint8"},
        {name = "role_classes", type = "uint8"},
        {name = "percent", type = "uint32"},
        {name = "challenge", type = "uint8"}
    },
    [19506] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19507] = {
        {name = "round", type = "uint8"},
        {name = "dmg", type = "uint32"},
        {name = "score", type = "uint32"},
        {name = "percent", type = "uint16"},
        {name = "harm", type = "uint32"}
    },
    [19508] = {
        {name = "result", type = "uint8"}
    },
    [19509] = {
        {name = "state", type = "uint32"},
        {name = "time", type = "uint32"}
    },
    [19510] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19511] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19512] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19513] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19514] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19515] = {
        {name = "vacancy", type = "uint32"},
        {name = "begin_time", type = "uint32"},
        {name = "now_round", type = "uint32"},
        {name = "max_round", type = "uint32"},
        {name = "pos_info", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint32"},
            {name = "pos", type = "uint32"}
        }}, 
        {name = "next_pos_info", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint32"},
            {name = "pos", type = "uint32"}
        }}
    },
    [19516] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19517] = {
        {name = "min_num", type = "uint32"},
        {name = "max_num", type = "uint32"},
        {name = "end_time", type = "uint32"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "role_name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint32"}
    },
    [19518] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19519] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19520] = {
        {name = "type", type = "uint32"},
        {name = "role_name", type = "string"},
        {name = "question", type = "string"},
        {name = "quest_round", type = "uint32"}
    },
    [19521] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint32"}
    },
    [19522] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19523] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19524] = {
        {name = "is_pass", type = "uint8"},
        {name = "flower", type = "uint32"},
        {name = "egg", type = "uint32"},
        {name = "watch", type = "uint32"},
        {name = "flower_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint32"}
        }}, 
        {name = "egg_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint32"}
        }}, 
        {name = "call_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint32"}
        }}
    },
    [19525] = {
        {name = "ver", type = "uint32"},
        {name = "question_info", type = "array", fields = {
            {name = "type", type = "uint32"},
            {name = "id", type = "uint32"},
            {name = "question", type = "string"},
            {name = "role_name", type = "string"},
            {name = "is_choose", type = "uint8"}
        }}
    },
    [19526] = {
        {name = "first", type = "array", fields = {
            {name = "type", type = "uint32"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint8"},
            {name = "praise", type = "uint32"}
        }}, 
        {name = "rank_info", type = "array", fields = {
            {name = "rank", type = "uint32"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint8"},
            {name = "flower_num", type = "uint32"},
            {name = "egg_num", type = "uint32"},
            {name = "call_num", type = "uint32"}
        }}, 
        {name = "self_rank", type = "uint32"}
    },
    [19527] = {
        {name = "his_lucky_info", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "classes", type = "uint32"},
            {name = "sex", type = "uint8"},
            {name = "type", type = "uint8"},
            {name = "flower", type = "uint32"},
            {name = "egg", type = "uint32"},
            {name = "quest", type = "string"}
        }}
    },
    [19528] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "num", type = "uint32"},
        {name = "min_num", type = "uint32"},
        {name = "max_num", type = "uint32"}
    },
    [19529] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19530] = {

    },
    [19531] = {
        {name = "role_name", type = "string"},
        {name = "timeout", type = "uint8"}
    },
    [19600] = {
        {name = "times", type = "uint8"},
        {name = "use_plan", type = "uint8"},
        {name = "fusion_lev", type = "uint8"},
        {name = "fusion_val", type = "uint32"},
        {name = "plan_1", type = "array", fields = {
            {name = "type_1", type = "uint32"},
            {name = "id_1", type = "uint32"}
        }}, 
        {name = "plan_2", type = "array", fields = {
            {name = "type_2", type = "uint32"},
            {name = "id_2", type = "uint32"}
        }}, 
        {name = "fc", type = "uint32"},
        {name = "items", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "fc", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}
        }}, 
        {name = "volume", type = "uint32"}
    },
    [19601] = {
        {name = "items", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "fc", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}
        }}
    },
    [19602] = {
        {name = "items", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [19603] = {
        {name = "items", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "base_id", type = "uint32"},
            {name = "fc", type = "uint32"},
            {name = "attr", type = "array", fields = {
                {name = "type", type = "uint16"},
                {name = "name", type = "uint32"},
                {name = "flag", type = "uint32"},
                {name = "val", type = "int32"}
            }}
        }}
    },
    [19604] = {
        {name = "times", type = "uint8"},
        {name = "fusion_lev", type = "uint8"},
        {name = "fusion_val", type = "uint32"},
        {name = "fc", type = "uint32"}
    },
    [19605] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "use_plan", type = "uint8"}
    },
    [19606] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19607] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "attr_info1", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "flag", type = "uint32"},
            {name = "val", type = "int32"}
        }}, 
        {name = "attr_info2", type = "array", fields = {
            {name = "type", type = "uint16"},
            {name = "name", type = "uint32"},
            {name = "flag", type = "uint32"},
            {name = "val", type = "int32"}
        }}
    },
    [19608] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "use_plan", type = "uint8"},
        {name = "plan_1", type = "array", fields = {
            {name = "type_1", type = "uint32"},
            {name = "id_1", type = "uint32"}
        }}, 
        {name = "plan_2", type = "array", fields = {
            {name = "type_2", type = "uint32"},
            {name = "id_2", type = "uint32"}
        }}
    },
    [19609] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "use_plan", type = "uint8"},
        {name = "plan_1", type = "array", fields = {
            {name = "type_1", type = "uint32"},
            {name = "id_1", type = "uint32"}
        }}, 
        {name = "plan_2", type = "array", fields = {
            {name = "type_2", type = "uint32"},
            {name = "id_2", type = "uint32"}
        }}
    },
    [19610] = {
        {name = "formula", type = "array", fields = {
            {name = "formula_id", type = "uint32"},
            {name = "use_times", type = "uint32"}
        }}
    },
    [19611] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [19612] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "volume", type = "uint32"}
    },
    [19700] = {
        {name = "status", type = "uint8"},
        {name = "timeout", type = "uint32"}
    },
    [19701] = {
        {name = "guild_auction_goods", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "item_num", type = "uint32"},
            {name = "current_price", type = "uint32"},
            {name = "max_price", type = "uint32"},
            {name = "last_bidden", type = "uint32"},
            {name = "bidden", type = "uint32"},
            {name = "timeout", type = "uint32"},
            {name = "start_time", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "bidders", type = "array", fields = {
                {name = "rid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "lev", type = "uint8"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"}
            }}
        }}
    },
    [19702] = {
        {name = "guild_auction_goods", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "item_num", type = "uint32"},
            {name = "current_price", type = "uint32"},
            {name = "max_price", type = "uint32"},
            {name = "last_bidden", type = "uint32"},
            {name = "bidden", type = "uint32"},
            {name = "timeout", type = "uint32"},
            {name = "start_time", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "bidders", type = "array", fields = {
                {name = "rid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "lev", type = "uint8"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"}
            }}
        }}
    },
    [19703] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19704] = {
        {name = "subscriptions", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [19705] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [19706] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [19707] = {
        {name = "guild_auction_goods", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "item_num", type = "uint32"},
            {name = "current_price", type = "uint32"},
            {name = "max_price", type = "uint32"},
            {name = "last_bidden", type = "uint32"},
            {name = "bidden", type = "uint32"},
            {name = "timeout", type = "uint32"},
            {name = "start_time", type = "uint32"},
            {name = "status", type = "uint8"},
            {name = "bidders", type = "array", fields = {
                {name = "rid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint16"},
                {name = "name", type = "string"},
                {name = "lev", type = "uint8"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"}
            }}
        }}
    },
    [19900] = {
        {name = "start_time", type = "uint32"},
        {name = "done", type = "uint8"}
    },
    [19901] = {
        {name = "status", type = "uint8"},
        {name = "time_out", type = "uint32"},
        {name = "camp_id", type = "uint32"}
    },
    [19902] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19903] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19904] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [19905] = {
        {name = "time_span", type = "uint32"},
        {name = "reward", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [19906] = {
        {name = "dragon_boat_team", type = "array", fields = {
            {name = "leader_name", type = "string"},
            {name = "done", type = "uint8"},
            {name = "rank", type = "uint16"},
            {name = "time_span", type = "uint32"}
        }}, 
        {name = "self_rank", type = "uint16"}
    },
    [20000] = {
        {name = "phase", type = "uint8"},
        {name = "time", type = "uint32"},
        {name = "now_round", type = "uint8"},
        {name = "max_round", type = "uint8"},
        {name = "ids", type = "array", fields = {
            {name = "group_id1", type = "uint8"}
        }}
    },
    [20001] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20002] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20003] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20006] = {
        {name = "is_win", type = "uint8"},
        {name = "score", type = "uint16"},
        {name = "msg", type = "string"},
        {name = "reward", type = "array", fields = {
            {name = "assets", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [20007] = {
        {name = "score", type = "uint16"},
        {name = "win", type = "uint8"},
        {name = "lose", type = "uint8"},
        {name = "rank", type = "uint8"},
        {name = "reward", type = "array", fields = {
            {name = "assets", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [20008] = {
        {name = "gold_league", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "rank", type = "uint8"},
            {name = "score", type = "uint32"},
            {name = "is_rise", type = "uint8"},
            {name = "win", type = "uint8"}
        }}, 
        {name = "num", type = "uint16"}
    },
    [20009] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20010] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20011] = {
        {name = "group_id", type = "uint8"},
        {name = "gold_league", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "rank", type = "uint8"},
            {name = "score", type = "uint32"},
            {name = "pos", type = "uint16"},
            {name = "is_lose", type = "uint8"},
            {name = "lose_round", type = "uint8"},
            {name = "group_id", type = "uint16"},
            {name = "is_combat", type = "uint8"}
        }}, 
        {name = "guess_id", type = "array", fields = {
            {name = "rid1", type = "uint32"},
            {name = "platform1", type = "string"},
            {name = "zone_id1", type = "uint16"}
        }}
    },
    [20012] = {
        {name = "times1", type = "uint8"},
        {name = "times_use1", type = "uint8"},
        {name = "times_all1", type = "uint8"},
        {name = "times2", type = "uint8"},
        {name = "times_use2", type = "uint8"},
        {name = "times_all2", type = "uint8"}
    },
    [20013] = {
        {name = "flag", type = "uint8"}
    },
    [20014] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "ids", type = "array", fields = {
            {name = "group_id1", type = "uint8"}
        }}
    },
    [20015] = {
        {name = "rid1", type = "uint32"},
        {name = "platform1", type = "string"},
        {name = "zone_id1", type = "uint32"},
        {name = "num1", type = "uint32"},
        {name = "odds1", type = "uint16"},
        {name = "rid2", type = "uint32"},
        {name = "platform2", type = "string"},
        {name = "zone_id2", type = "uint32"},
        {name = "num2", type = "uint32"},
        {name = "odds2", type = "uint16"}
    },
    [20016] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20018] = {
        {name = "group_id", type = "uint16"},
        {name = "num", type = "uint16"}
    },
    [20019] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "classes", type = "uint8"},
        {name = "sex", type = "uint8"},
        {name = "lev", type = "uint16"},
        {name = "combat_time", type = "uint32"}
    },
    [20021] = {
        {name = "rid1", type = "uint32"},
        {name = "platform1", type = "string"},
        {name = "zone_id1", type = "uint16"},
        {name = "msg", type = "string"}
    },
    [20022] = {
        {name = "gold_league_combat", type = "array", fields = {
            {name = "rid1", type = "uint32"},
            {name = "platform1", type = "string"},
            {name = "zone_id1", type = "uint32"},
            {name = "first_name", type = "string"},
            {name = "first_sex", type = "uint8"},
            {name = "first_classes", type = "uint8"},
            {name = "first_lev", type = "uint16"},
            {name = "rid2", type = "uint32"},
            {name = "platform2", type = "string"},
            {name = "zone_id2", type = "uint32"},
            {name = "second_name", type = "string"},
            {name = "second_sex", type = "uint8"},
            {name = "second_classes", type = "uint8"},
            {name = "second_lev", type = "uint16"}
        }}
    },
    [20023] = {
        {name = "gold_league", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "group_id", type = "uint8"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}
        }}, 
        {name = "ids", type = "array", fields = {
            {name = "group_id1", type = "uint8"}
        }}
    },
    [20024] = {
        {name = "flag", type = "uint8"}
    },
    [20025] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20026] = {
        {name = "msg", type = "string"},
        {name = "ids", type = "array", fields = {
            {name = "group_id1", type = "uint8"}
        }}
    },
    [20027] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20100] = {
        {name = "status", type = "uint8"},
        {name = "endtime", type = "uint32"}
    },
    [20101] = {
        {name = "status", type = "uint8"},
        {name = "endtime", type = "uint32"},
        {name = "round", type = "uint32"},
        {name = "question_id", type = "uint32"},
        {name = "answer", type = "uint32"}
    },
    [20102] = {
        {name = "choose_info", type = "array", fields = {
            {name = "choose", type = "uint8"},
            {name = "count", type = "uint32"}
        }}
    },
    [20103] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20104] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20105] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "choose", type = "uint8"}
    },
    [20106] = {
        {name = "rank_list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint32"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "break_times", type = "uint8"},
            {name = "right_count", type = "uint16"},
            {name = "score", type = "uint32"},
            {name = "choose", type = "uint8"},
            {name = "rank", type = "uint16"}
        }}
    },
    [20107] = {
        {name = "right_count", type = "uint16"},
        {name = "score", type = "uint32"},
        {name = "his_items", type = "array", fields = {
            {name = "assets", type = "uint32"},
            {name = "val", type = "uint32"}
        }}, 
        {name = "choose", type = "uint8"}
    },
    [20108] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "choose", type = "uint8"}
    },
    [20109] = {
        {name = "rank_list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint32"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "break_times", type = "uint8"},
            {name = "right_count", type = "uint16"},
            {name = "score", type = "uint32"},
            {name = "choose", type = "uint8"},
            {name = "rank", type = "uint16"},
            {name = "looks", type = "array", fields = {
                {name = "looks_type", type = "uint32"},
                {name = "looks_mode", type = "uint32"},
                {name = "looks_val", type = "uint32"},
                {name = "looks_str", type = "string"}
            }}
        }}
    },
    [20200] = {
        {name = "is_offer", type = "uint8"},
        {name = "unit_id", type = "uint32"},
        {name = "max_wave", type = "uint32"},
        {name = "help_times", type = "uint16"}
    },
    [20201] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20202] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20203] = {
        {name = "order", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "gain_list", type = "array", fields = {
            {name = "item_id1", type = "uint32"},
            {name = "num1", type = "uint32"}
        }}, 
        {name = "show_list", type = "array", fields = {
            {name = "item_id2", type = "uint32"},
            {name = "num2", type = "uint32"}
        }}
    },
    [20204] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20205] = {
        {name = "spirit_treasure_unit", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "difficulty", type = "uint8"},
            {name = "kill_times", type = "uint32"},
            {name = "offer_teams", type = "array", fields = {
                {name = "lid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint32"},
                {name = "wave", type = "uint32"},
                {name = "team_mates", type = "array", fields = {
                    {name = "rid", type = "uint32"},
                    {name = "platform", type = "string"},
                    {name = "zone_id", type = "uint32"},
                    {name = "name", type = "string"},
                    {name = "lev", type = "uint16"},
                    {name = "classes", type = "uint8"},
                    {name = "sex", type = "uint8"},
                    {name = "fc", type = "uint32"},
                    {name = "break_times", type = "uint8"},
                    {name = "status", type = "uint8"}
                }}, 
                {name = "type", type = "uint8"},
                {name = "rec_id", type = "uint32"},
                {name = "rec_platform", type = "string"},
                {name = "rec_zone_id", type = "uint16"}
            }}, 
            {name = "now_star", type = "uint16"},
            {name = "diff_num", type = "uint32"}
        }}
    },
    [20206] = {
        {name = "status", type = "uint8"},
        {name = "group", type = "uint32"}
    },
    [20207] = {
        {name = "wave", type = "uint32"},
        {name = "reward_info", type = "array", fields = {
            {name = "assets", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [20208] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "gl_list", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [20209] = {
        {name = "rank_list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "rank", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint16"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "fc", type = "uint32"},
            {name = "break_times", type = "uint8"},
            {name = "wave", type = "uint16"},
            {name = "use_time", type = "uint32"}
        }}
    },
    [20300] = {
        {name = "max_wave", type = "uint32"},
        {name = "flag", type = "uint8"}
    },
    [20301] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20302] = {
        {name = "unit_info", type = "array", fields = {
            {name = "wave", type = "uint8"},
            {name = "base_id", type = "uint32"}
        }}
    },
    [20303] = {
        {name = "wave", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20304] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20305] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20306] = {
        {name = "wave", type = "uint8"},
        {name = "battle_id", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "status", type = "uint8"}
    },
    [20307] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20308] = {
        {name = "type", type = "uint8"},
        {name = "wave", type = "uint8"},
        {name = "normal_gain_list", type = "array", fields = {
            {name = "index", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "is_get", type = "uint32"}
        }}, 
        {name = "gold_gain_list", type = "array", fields = {
            {name = "index", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "is_get", type = "uint32"}
        }}
    },
    [20309] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20310] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20311] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20400] = {
        {name = "tar_role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "rest_day", type = "uint32"},
        {name = "price_info", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "gift_info", type = "array", fields = {
                {name = "item_id2", type = "uint32"},
                {name = "num2", type = "uint32"},
                {name = "spec_effects", type = "uint32"}
            }}, 
            {name = "type", type = "uint32"},
            {name = "old_price", type = "uint32"},
            {name = "price", type = "uint32"},
            {name = "min_price", type = "uint32"},
            {name = "buy_limit", type = "uint8"},
            {name = "buy_already", type = "uint8"},
            {name = "change_price", type = "array", fields = {
                {name = "change_price", type = "uint32"}
            }}
        }}, 
        {name = "log_info", type = "array", fields = {
            {name = "name", type = "string"},
            {name = "tar_role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "cut_price", type = "uint32"},
            {name = "time", type = "uint32"}
        }}, 
        {name = "can_help", type = "uint32"}
    },
    [20401] = {

    },
    [20402] = {
        {name = "result", type = "uint8"},
        {name = "cut_price", type = "uint16"},
        {name = "msg", type = "string"}
    },
    [20403] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20404] = {
        {name = "lucky_roles", type = "array", fields = {
            {name = "name", type = "string"},
            {name = "zone_name", type = "string"},
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "reward_time", type = "uint32"},
            {name = "reward_item", type = "uint32"},
            {name = "reward_num", type = "uint32"},
            {name = "reward_rank", type = "uint32"}
        }}
    },
    [20405] = {
        {name = "state", type = "uint32"}
    },
    [20406] = {
        {name = "gift_info", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "price", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "spec_effect", type = "array", fields = {
                {name = "item_id2", type = "uint32"},
                {name = "num2", type = "uint32"},
                {name = "spec_effects", type = "uint32"}
            }}, 
            {name = "content_name", type = "string"},
            {name = "promotion", type = "array", fields = {
                {name = "cost_num", type = "uint32"},
                {name = "present_id", type = "uint32"},
                {name = "bound", type = "uint32"},
                {name = "present_num", type = "uint32"}
            }}, 
            {name = "purchased_num", type = "uint8"}
        }}
    },
    [20407] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "purchased_num", type = "uint8"}
    },
    [20408] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20409] = {
        {name = "vote_times", type = "uint32"},
        {name = "invite_votes", type = "uint32"},
        {name = "vote_start_time", type = "uint32"},
        {name = "show_start_time", type = "uint32"},
        {name = "group", type = "array", fields = {
            {name = "group_id", type = "uint32"},
            {name = "set_id", type = "uint32"},
            {name = "set_name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "fashion", type = "array", fields = {
                {name = "type", type = "uint32"},
                {name = "value", type = "uint32"}
            }}, 
            {name = "lucky_rewards", type = "array", fields = {
                {name = "base_Id", type = "uint32"},
                {name = "bind", type = "uint8"},
                {name = "num", type = "uint32"}
            }}
        }}, 
        {name = "vote_loss", type = "array", fields = {
            {name = "days", type = "uint32"},
            {name = "losst", type = "array", fields = {
                {name = "l_base_Id", type = "uint32"},
                {name = "l_num", type = "uint32"}
            }}
        }}, 
        {name = "max_vote_reward", type = "uint32"},
        {name = "max_reply", type = "uint32"},
        {name = "max_reply_reward", type = "uint32"}
    },
    [20410] = {
        {name = "vote_times", type = "uint32"},
        {name = "invite_votes", type = "uint32"},
        {name = "vote_group", type = "array", fields = {
            {name = "group_id", type = "uint32"},
            {name = "vote_num", type = "uint32"}
        }}, 
        {name = "reply_invites", type = "uint32"},
        {name = "have_votes", type = "uint32"}
    },
    [20411] = {
        {name = "group_id", type = "uint32"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20412] = {
        {name = "group_id", type = "uint32"},
        {name = "f_id", type = "uint32"},
        {name = "f_platform", type = "string"},
        {name = "f_zone_id", type = "uint16"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20413] = {
        {name = "group_id", type = "uint32"},
        {name = "f_id", type = "uint32"},
        {name = "f_platform", type = "string"},
        {name = "f_zone_id", type = "uint16"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20414] = {
        {name = "group", type = "array", fields = {
            {name = "group_id", type = "uint32"},
            {name = "lucky_list", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint32"},
                {name = "zone_name", type = "string"},
                {name = "name", type = "string"},
                {name = "lev", type = "uint32"},
                {name = "classes", type = "uint8"},
                {name = "sex", type = "uint8"}
            }}, 
            {name = "vote_num", type = "uint32"},
            {name = "vote_rate", type = "uint32"}
        }}
    },
    [20415] = {
        {name = "group_id", type = "uint32"},
        {name = "f_id", type = "uint32"},
        {name = "f_platform", type = "string"},
        {name = "f_zone_id", type = "uint16"},
        {name = "invite_state", type = "uint8"}
    },
    [20416] = {
        {name = "fashion_list", type = "array", fields = {
            {name = "goods_id", type = "uint32"},
            {name = "fashion_info", type = "array", fields = {
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "plan_name", type = "string"},
                {name = "fashion_name", type = "string"},
                {name = "discount", type = "uint8"},
                {name = "origin_price", type = "uint32"},
                {name = "new_price", type = "uint32"},
                {name = "fashion", type = "array", fields = {
                    {name = "type", type = "uint32"},
                    {name = "value", type = "uint32"}
                }}
            }}
        }}
    },
    [20417] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20418] = {
        {name = "max_draw", type = "uint32"},
        {name = "tips_msg", type = "string"},
        {name = "draw_loss", type = "array", fields = {
            {name = "loss_id", type = "uint32"},
            {name = "l_num", type = "uint32"}
        }}, 
        {name = "reward_list", type = "array", fields = {
            {name = "group_id", type = "uint32"},
            {name = "icon", type = "string"},
            {name = "draw_reward", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "bind", type = "uint8"},
                {name = "num", type = "uint32"},
                {name = "is_effect", type = "uint8"}
            }}
        }}
    },
    [20419] = {
        {name = "free_times", type = "uint32"},
        {name = "draw_times", type = "uint32"},
        {name = "cur_gold", type = "uint32"},
        {name = "record_msg", type = "array", fields = {
            {name = "add_time", type = "uint32"},
            {name = "msg", type = "string"}
        }}
    },
    [20420] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "draw_num", type = "uint32"},
        {name = "draw_reward", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "num", type = "uint32"},
            {name = "is_effect", type = "uint8"}
        }}, 
        {name = "group_id", type = "uint32"}
    },
    [20421] = {
        {name = "gold_item", type = "array", fields = {
            {name = "g_base_id", type = "uint32"},
            {name = "g_num", type = "uint32"}
        }}, 
        {name = "ticket", type = "array", fields = {
            {name = "t_base_id", type = "uint32"},
            {name = "t_num", type = "uint32"}
        }}, 
        {name = "revive", type = "array", fields = {
            {name = "r_base_id", type = "uint32"},
            {name = "r_num", type = "uint32"}
        }}, 
        {name = "min_lev", type = "uint32"},
        {name = "rude", type = "string"},
        {name = "info", type = "string"},
        {name = "question_time", type = "uint32"},
        {name = "answer_time", type = "uint32"},
        {name = "notice_time", type = "uint32"},
        {name = "max_revive", type = "uint32"},
        {name = "first_time", type = "uint32"}
    },
    [20422] = {
        {name = "state_code", type = "uint8"},
        {name = "timeout", type = "uint32"}
    },
    [20423] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20424] = {
        {name = "type", type = "uint8"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20425] = {
        {name = "question_index", type = "uint32"},
        {name = "question", type = "string"},
        {name = "option_a", type = "string"},
        {name = "option_b", type = "string"},
        {name = "option_c", type = "string"},
        {name = "stop_time", type = "uint32"},
        {name = "role_num", type = "uint32"}
    },
    [20426] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20427] = {
        {name = "question_index", type = "uint32"},
        {name = "option_a", type = "uint32"},
        {name = "option_b", type = "uint32"},
        {name = "option_c", type = "uint32"},
        {name = "answer", type = "uint8"},
        {name = "option", type = "uint8"},
        {name = "last_num", type = "uint32"}
    },
    [20428] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20429] = {
        {name = "sign", type = "uint8"},
        {name = "revive_times", type = "uint32"},
        {name = "sys_barrage", type = "uint32"},
        {name = "ply_barrage", type = "uint32"},
        {name = "barrage_time", type = "uint32"},
        {name = "final_times", type = "uint32"},
        {name = "sign_times", type = "uint32"},
        {name = "is_lost", type = "uint8"},
        {name = "in_map", type = "uint8"},
        {name = "index", type = "uint32"}
    },
    [20430] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20431] = {
        {name = "type", type = "uint32"},
        {name = "value", type = "uint8"},
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20432] = {
        {name = "index", type = "uint32"},
        {name = "option", type = "uint8"},
        {name = "answer", type = "uint8"}
    },
    [20433] = {
        {name = "question_index", type = "uint32"},
        {name = "question", type = "string"},
        {name = "option_a", type = "string"},
        {name = "option_b", type = "string"},
        {name = "option_c", type = "string"},
        {name = "stop_time", type = "uint32"},
        {name = "role_num", type = "uint32"},
        {name = "option", type = "uint8"},
        {name = "answer", type = "uint8"}
    },
    [20434] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "result", type = "array", fields = {
            {name = "times", type = "uint8"},
            {name = "items", type = "array", fields = {
                {name = "index", type = "uint8"},
                {name = "item_id", type = "uint32"},
                {name = "item_num", type = "uint32"}
            }}
        }}
    },
    [20435] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20436] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20437] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "result", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "num", type = "uint32"},
            {name = "is_effect", type = "uint8"},
            {name = "base_num", type = "uint32"}
        }}
    },
    [20438] = {
        {name = "reward", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "is_effect", type = "uint8"},
            {name = "base_num", type = "uint32"}
        }}, 
        {name = "number", type = "array", fields = {
            {name = "num", type = "uint32"}
        }}
    },
    [20439] = {
        {name = "quest", type = "array", fields = {
            {name = "quest_id", type = "uint32"},
            {name = "reward", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "num", type = "uint32"}
            }}, 
            {name = "icon", type = "string"},
            {name = "value", type = "uint32"},
            {name = "target_val", type = "uint32"},
            {name = "quest_status", type = "uint8"},
            {name = "quest_sort", type = "uint8"}
        }}, 
        {name = "sign", type = "array", fields = {
            {name = "reward", type = "array", fields = {
                {name = "sign_base_id", type = "uint32"},
                {name = "sign_num", type = "uint32"}
            }}, 
            {name = "sign_status", type = "uint8"}
        }}
    },
    [20440] = {
        {name = "reward_info", type = "array", fields = {
            {name = "name", type = "string"},
            {name = "type", type = "uint8"},
            {name = "items", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "val", type = "uint32"}
            }}
        }}
    },
    [20441] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "point", type = "uint8"},
            {name = "list", type = "array", fields = {
                {name = "period", type = "uint8"},
                {name = "status", type = "uint8"},
                {name = "time_to_start", type = "uint32"},
                {name = "time_to_end", type = "uint32"}
            }}
        }}
    },
    [20442] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20443] = {

    },
    [20444] = {
        {name = "grid_index", type = "uint8"},
        {name = "times", type = "uint32"},
        {name = "lucky_dice", type = "uint8"},
        {name = "event_id", type = "uint32"},
        {name = "ring_times", type = "uint32"},
        {name = "ring_rewards", type = "array", fields = {
            {name = "times", type = "uint32"}
        }}
    },
    [20445] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20446] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20447] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "event_id", type = "uint32"}
    },
    [20448] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20449] = {
        {name = "camp_zillionaire_event", type = "array", fields = {
            {name = "name", type = "string"},
            {name = "event_id", type = "uint32"},
            {name = "items", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "val", type = "uint32"}
            }}
        }}
    },
    [20450] = {
        {name = "grid_index", type = "uint8"},
        {name = "times", type = "uint32"},
        {name = "lucky_dice", type = "uint8"},
        {name = "ring_times", type = "uint32"},
        {name = "ring_rewards", type = "array", fields = {
            {name = "times", type = "uint32"}
        }}
    },
    [20451] = {
        {name = "flower_info", type = "array", fields = {
            {name = "flower_id", type = "uint32"},
            {name = "pass_flag", type = "uint8"},
            {name = "pass_times", type = "uint32"}
        }}, 
        {name = "gift_flag", type = "uint8"},
        {name = "finish_num", type = "uint32"},
        {name = "rank", type = "uint32"}
    },
    [20452] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20453] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20454] = {
        {name = "name", type = "string"},
        {name = "flower_id", type = "uint32"},
        {name = "min", type = "uint32"},
        {name = "flag", type = "uint8"}
    },
    [20455] = {
        {name = "role", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"}
        }}
    },
    [20456] = {
        {name = "item_info", type = "array", fields = {
            {name = "id", type = "uint16"},
            {name = "item_id", type = "uint32"},
            {name = "inner_num", type = "uint32"},
            {name = "item_name", type = "string"},
            {name = "price", type = "uint16"},
            {name = "buy_limit", type = "uint16"},
            {name = "buyed_num", type = "uint16"},
            {name = "is_effect", type = "uint8"}
        }}, 
        {name = "rebate_info", type = "array", fields = {
            {name = "purchase_val", type = "uint16"},
            {name = "rebate_val", type = "uint16"}
        }}
    },
    [20457] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20458] = {
        {name = "map_num", type = "array", fields = {
            {name = "map_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [20459] = {
        {name = "now_times", type = "uint32"},
        {name = "add_list", type = "array", fields = {
            {name = "times", type = "uint32"},
            {name = "reward", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "bind", type = "uint8"},
                {name = "num", type = "uint32"},
                {name = "effect", type = "uint8"}
            }}
        }}, 
        {name = "last_reward", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "num", type = "uint32"},
            {name = "effect", type = "uint8"}
        }}
    },
    [20460] = {
        {name = "special_items", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "order_id", type = "uint8"},
            {name = "item_id", type = "uint32"},
            {name = "base_num", type = "uint8"},
            {name = "exchange_num", type = "uint8"},
            {name = "cost", type = "uint32"},
            {name = "is_effect", type = "uint8"}
        }}, 
        {name = "common_items", type = "array", fields = {
            {name = "order_id", type = "uint8"},
            {name = "item_id", type = "uint32"},
            {name = "base_num", type = "uint8"},
            {name = "cost", type = "uint32"},
            {name = "is_effect", type = "uint8"}
        }}
    },
    [20461] = {
        {name = "quest", type = "array", fields = {
            {name = "quest_id", type = "uint32"},
            {name = "reward_val", type = "uint32"},
            {name = "icon", type = "string"},
            {name = "value", type = "uint32"},
            {name = "target_val", type = "uint32"},
            {name = "quest_status", type = "uint8"},
            {name = "quest_sort", type = "uint8"}
        }}
    },
    [20462] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20463] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [20464] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20465] = {
        {name = "day", type = "uint32"},
        {name = "need_cost", type = "uint32"},
        {name = "shop_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "num", type = "uint32"},
            {name = "price_item_id", type = "uint32"},
            {name = "price_num", type = "uint32"},
            {name = "left_num", type = "uint32"},
            {name = "total_num", type = "uint32"},
            {name = "show_effect", type = "uint8"}
        }}
    },
    [20466] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20467] = {
        {name = "plans", type = "array", fields = {
            {name = "plan_id", type = "uint32"},
            {name = "items", type = "array", fields = {
                {name = "item_base_id", type = "uint32"}
            }}, 
            {name = "all_times", type = "uint32"},
            {name = "times", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "base_num", type = "uint32"},
            {name = "is_effect", type = "uint8"}
        }}, 
        {name = "collect_items", type = "array", fields = {
            {name = "collect_base_id", type = "uint32"}
        }}
    },
    [20468] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20469] = {
        {name = "id", type = "uint32"}
    },
    [20470] = {
        {name = "reward_info", type = "array", fields = {
            {name = "recharge_day", type = "uint8"},
            {name = "items", type = "array", fields = {
                {name = "item_base_id", type = "uint32"},
                {name = "bind", type = "uint8"},
                {name = "num", type = "uint32"},
                {name = "client_effect", type = "uint8"}
            }}, 
            {name = "lower", type = "uint32"},
            {name = "v_item_id", type = "uint32"},
            {name = "v_effect", type = "uint8"},
            {name = "desc", type = "string"}
        }}
    },
    [20471] = {
        {name = "recharged_day", type = "uint8"},
        {name = "rewarded_list", type = "array", fields = {
            {name = "day_id", type = "uint8"}
        }}, 
        {name = "recharged_val", type = "uint32"},
        {name = "vision_day", type = "uint8"}
    },
    [20472] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20473] = {
        {name = "camp_info", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "need_val", type = "uint32"},
            {name = "time", type = "uint8"},
            {name = "reward", type = "array", fields = {
                {name = "item_base_id", type = "uint32"},
                {name = "bind", type = "uint8"},
                {name = "num", type = "uint32"},
                {name = "client_effect", type = "uint8"}
            }}, 
            {name = "add_val", type = "uint32"},
            {name = "title", type = "string"},
            {name = "desc", type = "string"}
        }}, 
        {name = "bring_up_info", type = "array", fields = {
            {name = "goal_point", type = "uint32"},
            {name = "client_pic", type = "uint32"}
        }}, 
        {name = "bring_up_gift", type = "array", fields = {
            {name = "bring_lev", type = "uint8"},
            {name = "gift_type", type = "uint32"},
            {name = "gift_id", type = "uint32"},
            {name = "gift_num", type = "uint32"}
        }}, 
        {name = "levup_point", type = "uint32"},
        {name = "now_bring_lev", type = "uint32"},
        {name = "now_bring_val", type = "uint32"},
        {name = "active_val", type = "uint32"}
    },
    [20474] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20475] = {
        {name = "camp_info", type = "array", fields = {
            {name = "group_id", type = "uint8"},
            {name = "origin_val", type = "uint32"},
            {name = "need_val", type = "uint32"},
            {name = "time", type = "uint8"},
            {name = "all_time", type = "uint8"},
            {name = "reward", type = "array", fields = {
                {name = "item_base_id", type = "uint32"},
                {name = "bind", type = "uint8"},
                {name = "num", type = "uint32"},
                {name = "client_effect", type = "uint8"}
            }}, 
            {name = "title", type = "string"},
            {name = "desc", type = "string"}
        }}
    },
    [20476] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20477] = {
        {name = "reward_info", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "charge", type = "uint32"},
            {name = "items", type = "array", fields = {
                {name = "item_base_id", type = "uint32"},
                {name = "bind", type = "uint8"},
                {name = "num", type = "uint32"},
                {name = "client_effect", type = "uint8"}
            }}, 
            {name = "v_item_id", type = "uint32"},
            {name = "effect", type = "uint8"},
            {name = "desc", type = "string"},
            {name = "flag", type = "uint8"}
        }}, 
        {name = "recharged_val", type = "uint32"},
        {name = "v_id", type = "uint8"}
    },
    [20478] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20479] = {
        {name = "reward_info", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "gift_id", type = "uint32"},
            {name = "effect", type = "uint8"},
            {name = "flag", type = "uint8"}
        }}, 
        {name = "value", type = "uint32"}
    },
    [20480] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20481] = {
        {name = "camp_id", type = "uint32"},
        {name = "buy_time", type = "uint32"}
    },
    [20482] = {
        {name = "reward_info", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "site", type = "uint8"},
            {name = "item_id", type = "uint32"},
            {name = "item_num", type = "uint32"},
            {name = "effect", type = "uint8"},
            {name = "flag", type = "uint8"}
        }}, 
        {name = "cost_item", type = "uint32"},
        {name = "times", type = "uint8"},
        {name = "num", type = "uint32"},
        {name = "exchang_val", type = "uint32"}
    },
    [20483] = {
        {name = "item_id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [20484] = {
        {name = "items", type = "array", fields = {
            {name = "item", type = "uint32"}
        }}
    },
    [20485] = {
        {name = "lev", type = "uint8"},
        {name = "val", type = "uint32"},
        {name = "week_box", type = "uint8"},
        {name = "token_info", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "can_draw", type = "array", fields = {
                {name = "lev_id", type = "uint8"}
            }}
        }}
    },
    [20487] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20488] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20489] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20490] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20491] = {
        {name = "gift", type = "array", fields = {
            {name = "gift_id", type = "uint16"}
        }}, 
        {name = "buy", type = "array", fields = {
            {name = "gift_id", type = "uint16"},
            {name = "times", type = "uint8"}
        }}, 
        {name = "extra_reward", type = "uint8"}
    },
    [20492] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "item_ids", type = "array", fields = {
            {name = "index", type = "uint32"}
        }}
    },
    [20493] = {
        {name = "camp_info", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "need_val", type = "uint32"},
            {name = "time", type = "uint8"},
            {name = "reward", type = "array", fields = {
                {name = "item_base_id", type = "uint32"},
                {name = "bind", type = "uint8"},
                {name = "num", type = "uint32"},
                {name = "client_effect", type = "uint8"}
            }}, 
            {name = "add_val", type = "uint32"},
            {name = "title", type = "string"},
            {name = "desc", type = "string"}
        }}, 
        {name = "bring_up_info", type = "array", fields = {
            {name = "goal_point", type = "uint32"},
            {name = "client_pic", type = "uint32"}
        }}, 
        {name = "bring_up_gift", type = "array", fields = {
            {name = "gift_type", type = "uint32"},
            {name = "gift_id", type = "uint32"},
            {name = "gift_num", type = "uint32"}
        }}, 
        {name = "levup_point", type = "uint32"},
        {name = "now_bring_val", type = "uint32"},
        {name = "active_val", type = "uint32"}
    },
    [20494] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20495] = {
        {name = "token_info", type = "array", fields = {
            {name = "id", type = "uint8"},
            {name = "has_get", type = "array", fields = {
                {name = "lev_id", type = "uint8"}
            }}
        }}
    },
    [20500] = {
        {name = "point", type = "uint32"},
        {name = "challenge_msg", type = "array", fields = {
            {name = "target_type", type = "uint32"},
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "msg", type = "string"},
            {name = "add_time", type = "uint32"}
        }}, 
        {name = "challenge_time", type = "uint32"},
        {name = "loot_time", type = "uint32"},
        {name = "looted_time", type = "uint32"},
        {name = "sys_value", type = "uint8"},
        {name = "ply_value", type = "uint8"},
        {name = "barrage_time", type = "uint32"},
        {name = "rank_index", type = "uint32"}
    },
    [20501] = {
        {name = "state", type = "uint8"},
        {name = "start_time", type = "uint32"},
        {name = "end_time", type = "uint32"},
        {name = "boss_start_time", type = "uint32"},
        {name = "boss_end_time", type = "uint32"}
    },
    [20502] = {
        {name = "rank_type", type = "uint8"},
        {name = "rank_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "rank_index", type = "uint32"},
            {name = "target_name", type = "string"},
            {name = "guild_name", type = "string"},
            {name = "point", type = "uint32"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "lev", type = "uint32"}
        }}
    },
    [20503] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20504] = {
        {name = "loot_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "role_name", type = "string"},
            {name = "lev", type = "uint32"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint32"},
            {name = "rank_index", type = "uint32"},
            {name = "point", type = "uint32"},
            {name = "loot_state", type = "uint8"},
            {name = "looted_time", type = "uint32"},
            {name = "g_id", type = "uint32"},
            {name = "g_platform", type = "string"},
            {name = "g_zone_id", type = "uint32"},
            {name = "guild_name", type = "string"},
            {name = "looted_num", type = "uint32"}
        }}
    },
    [20505] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20506] = {
        {name = "round", type = "uint16"},
        {name = "damage", type = "uint32"},
        {name = "point", type = "uint32"},
        {name = "person_items", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "guild_items", type = "array", fields = {
            {name = "g_base_id", type = "uint32"},
            {name = "g_bind", type = "uint8"},
            {name = "g_num", type = "uint32"}
        }}, 
        {name = "scale", type = "uint8"}
    },
    [20507] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20508] = {
        {name = "target_name", type = "string"},
        {name = "target_guild", type = "string"},
        {name = "is_win", type = "uint8"},
        {name = "round", type = "uint16"},
        {name = "loot_point", type = "uint32"},
        {name = "rank_index", type = "uint32"}
    },
    [20509] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20510] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "looks", type = "array", fields = {
            {name = "looks_type", type = "uint32"},
            {name = "looks_mode", type = "uint32"},
            {name = "looks_val", type = "uint32"},
            {name = "looks_str", type = "string"}
        }}, 
        {name = "honor_id", type = "uint32"},
        {name = "pre_id", type = "uint32"}
    },
    [20511] = {
        {name = "type", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "rewards", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "num", type = "uint32"}
        }}
    },
    [20512] = {
        {name = "person_rank_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "rank_index", type = "uint32"},
            {name = "target_name", type = "string"},
            {name = "guild_name", type = "string"},
            {name = "point", type = "uint32"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "lev", type = "uint32"}
        }}, 
        {name = "point_rewards", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "msg", type = "string"}
    },
    [20513] = {
        {name = "type", type = "uint32"},
        {name = "value", type = "uint8"},
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20514] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20600] = {
        {name = "camp_inquiry", type = "array", fields = {
            {name = "camp_id", type = "uint32"},
            {name = "clue_list", type = "array", fields = {
                {name = "id", type = "uint32"},
                {name = "quest_id", type = "uint32"},
                {name = "status", type = "uint8"},
                {name = "answer", type = "uint8"}
            }}, 
            {name = "inquiry_status", type = "uint8"}
        }}
    },
    [20601] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20602] = {
        {name = "inquiry_id", type = "uint32"},
        {name = "answer_info", type = "array", fields = {
            {name = "answer", type = "uint8"},
            {name = "count", type = "uint32"}
        }}
    },
    [20603] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20700] = {
        {name = "provocation_room", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "room_lev_min", type = "uint8"},
            {name = "min_lev_break", type = "uint8"},
            {name = "room_lev_max", type = "uint8"},
            {name = "max_lev_break", type = "uint8"},
            {name = "master_fc", type = "uint32"},
            {name = "mode", type = "uint8"},
            {name = "password", type = "string"},
            {name = "status", type = "uint8"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "master_lev", type = "uint8"},
            {name = "master_name", type = "string"},
            {name = "master_sex", type = "uint8"},
            {name = "master_class", type = "uint8"},
            {name = "master_head", type = "uint32"},
            {name = "provocation_type", type = "uint8"}
        }}
    },
    [20701] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20702] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20703] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20704] = {
        {name = "id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "room_lev_min", type = "uint8"},
        {name = "min_lev_break", type = "uint8"},
        {name = "room_lev_max", type = "uint8"},
        {name = "max_lev_break", type = "uint8"},
        {name = "mode", type = "uint8"},
        {name = "password", type = "string"},
        {name = "status", type = "uint8"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "master_lev", type = "uint8"},
        {name = "master_name", type = "string"},
        {name = "master_sex", type = "uint8"},
        {name = "master_class", type = "uint8"},
        {name = "master_head", type = "uint32"},
        {name = "provocation_type", type = "uint8"},
        {name = "target_rid", type = "uint32"},
        {name = "target_platform", type = "string"},
        {name = "target_zone_id", type = "uint32"},
        {name = "horn_rid", type = "uint32"},
        {name = "horn_platform", type = "string"},
        {name = "horn_zone_id", type = "uint32"},
        {name = "provocation_team", type = "array", fields = {
            {name = "team_formation", type = "uint8"},
            {name = "team_formation_lev", type = "uint8"},
            {name = "order", type = "array", fields = {
                {name = "rid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint32"}
            }}, 
            {name = "guards", type = "array", fields = {
                {name = "base_id", type = "uint32"},
                {name = "status", type = "uint8"},
                {name = "war_id", type = "uint8"},
                {name = "quality", type = "uint8"}
            }}, 
            {name = "team_mate", type = "array", fields = {
                {name = "rid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint32"},
                {name = "name", type = "string"},
                {name = "sex", type = "uint8"},
                {name = "classes", type = "uint8"},
                {name = "lev", type = "uint8"},
                {name = "face_id", type = "uint32"},
                {name = "status", type = "uint8"},
                {name = "looks", type = "array", fields = {
                    {name = "looks_type", type = "uint32"},
                    {name = "looks_mode", type = "uint32"},
                    {name = "looks_val", type = "uint32"},
                    {name = "looks_str", type = "string"}
                }}, 
                {name = "join_type", type = "uint8"},
                {name = "join_sub_type", type = "uint8"},
                {name = "join_time", type = "uint32"},
                {name = "combat_num", type = "uint32"}
            }}
        }}
    },
    [20705] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20706] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20707] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20708] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20709] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20710] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20711] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20712] = {
        {name = "room_check", type = "uint8"},
        {name = "book_check", type = "uint8"},
        {name = "video_check", type = "uint8"}
    },
    [20713] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20714] = {
        {name = "result", type = "uint8"},
        {name = "r_type", type = "uint16"},
        {name = "r_id", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint16"},
        {name = "mates", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "total_hurt", type = "uint32"},
            {name = "total_dmg", type = "uint32"},
            {name = "total_heal", type = "uint32"},
            {name = "kill_num", type = "uint16"},
            {name = "dead_num", type = "uint16"},
            {name = "control_num", type = "uint16"},
            {name = "mvp_score", type = "uint16"}
        }}, 
        {name = "rival", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "total_hurt", type = "uint32"},
            {name = "total_dmg", type = "uint32"},
            {name = "total_heal", type = "uint32"},
            {name = "kill_num", type = "uint16"},
            {name = "dead_num", type = "uint16"},
            {name = "control_num", type = "uint16"},
            {name = "mvp_score", type = "uint16"}
        }}
    },
    [20715] = {
        {name = "last_recent", type = "array", fields = {
            {name = "time", type = "uint32"},
            {name = "atk_name", type = "string"},
            {name = "dfd_name", type = "string"},
            {name = "atk_sex", type = "uint8"},
            {name = "atk_classes", type = "uint8"},
            {name = "atk_face_id", type = "uint32"},
            {name = "dfd_sex", type = "uint8"},
            {name = "dfd_classes", type = "uint8"},
            {name = "dfd_face_id", type = "uint32"},
            {name = "best_result", type = "uint8"},
            {name = "r_id", type = "uint32"},
            {name = "r_platform", type = "string"},
            {name = "r_zone_id", type = "uint32"}
        }}
    },
    [20716] = {
        {name = "r_id", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint32"},
        {name = "is_win", type = "uint8"},
        {name = "mates", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "total_hurt", type = "uint32"},
            {name = "total_dmg", type = "uint32"},
            {name = "total_heal", type = "uint32"},
            {name = "kill_num", type = "uint16"},
            {name = "dead_num", type = "uint16"},
            {name = "control_num", type = "uint16"},
            {name = "mvp_score", type = "uint16"}
        }}, 
        {name = "rival", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "total_hurt", type = "uint32"},
            {name = "total_dmg", type = "uint32"},
            {name = "total_heal", type = "uint32"},
            {name = "kill_num", type = "uint16"},
            {name = "dead_num", type = "uint16"},
            {name = "control_num", type = "uint16"},
            {name = "mvp_score", type = "uint16"}
        }}
    },
    [20717] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20718] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20719] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20720] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20721] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"},
        {name = "lev", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "room_type", type = "uint8"}
    },
    [20722] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20723] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "online", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "total_fc", type = "uint32"},
            {name = "face", type = "uint32"}
        }}
    },
    [20724] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "online", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "lev", type = "uint8"},
            {name = "total_fc", type = "uint32"},
            {name = "face", type = "uint32"}
        }}
    },
    [20725] = {
        {name = "provocation_book", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "book_lev_min", type = "uint8"},
            {name = "min_lev_break", type = "uint8"},
            {name = "book_lev_max", type = "uint8"},
            {name = "max_lev_break", type = "uint8"},
            {name = "master_fc", type = "uint32"},
            {name = "mode", type = "uint8"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "master_lev", type = "uint8"},
            {name = "master_name", type = "string"},
            {name = "master_sex", type = "uint8"},
            {name = "master_class", type = "uint8"},
            {name = "master_head", type = "uint32"},
            {name = "live_status", type = "uint8"},
            {name = "provocation_type", type = "uint8"}
        }}
    },
    [20726] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20727] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20728] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20729] = {
        {name = "id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "room_lev_min", type = "uint8"},
        {name = "min_lev_break", type = "uint8"},
        {name = "room_lev_max", type = "uint8"},
        {name = "max_lev_break", type = "uint8"},
        {name = "mode", type = "uint8"},
        {name = "password", type = "string"},
        {name = "status", type = "uint8"},
        {name = "m_rid", type = "uint32"},
        {name = "m_platform", type = "string"},
        {name = "m_zone_id", type = "uint32"},
        {name = "master_lev", type = "uint8"},
        {name = "master_name", type = "string"},
        {name = "master_sex", type = "uint8"},
        {name = "master_class", type = "uint8"},
        {name = "master_head", type = "uint32"},
        {name = "c_rid", type = "uint32"},
        {name = "c_platform", type = "string"},
        {name = "c_zone_id", type = "uint32"},
        {name = "r_id", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint16"},
        {name = "customer_lev", type = "uint8"},
        {name = "customer_name", type = "string"},
        {name = "customer_sex", type = "uint8"},
        {name = "customer_class", type = "uint8"},
        {name = "customer_head", type = "uint32"}
    },
    [20730] = {
        {name = "provocation_room", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "name", type = "string"},
            {name = "room_lev_min", type = "uint8"},
            {name = "min_lev_break", type = "uint8"},
            {name = "room_lev_max", type = "uint8"},
            {name = "max_lev_break", type = "uint8"},
            {name = "master_fc", type = "uint32"},
            {name = "mode", type = "uint8"},
            {name = "password", type = "string"},
            {name = "status", type = "uint8"},
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "master_lev", type = "uint8"},
            {name = "master_name", type = "string"},
            {name = "master_sex", type = "uint8"},
            {name = "master_class", type = "uint8"},
            {name = "master_head", type = "uint32"},
            {name = "provocation_type", type = "uint8"}
        }}
    },
    [20731] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20732] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20733] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20734] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20735] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20800] = {
        {name = "is_offer", type = "uint8"},
        {name = "unit_id", type = "uint32"},
        {name = "max_wave", type = "uint32"},
        {name = "help_times", type = "uint16"}
    },
    [20801] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20802] = {
        {name = "err_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20803] = {
        {name = "order", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "gain_list", type = "array", fields = {
            {name = "item_id1", type = "uint32"},
            {name = "num1", type = "uint32"}
        }}, 
        {name = "show_list", type = "array", fields = {
            {name = "item_id2", type = "uint32"},
            {name = "num2", type = "uint32"}
        }}
    },
    [20804] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20805] = {
        {name = "oracle_treasure_unit", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "difficulty", type = "uint8"},
            {name = "kill_times", type = "uint32"},
            {name = "offer_teams", type = "array", fields = {
                {name = "lid", type = "uint32"},
                {name = "platform", type = "string"},
                {name = "zone_id", type = "uint32"},
                {name = "wave", type = "uint32"},
                {name = "team_mates", type = "array", fields = {
                    {name = "rid", type = "uint32"},
                    {name = "platform", type = "string"},
                    {name = "zone_id", type = "uint32"},
                    {name = "name", type = "string"},
                    {name = "lev", type = "uint16"},
                    {name = "classes", type = "uint8"},
                    {name = "sex", type = "uint8"},
                    {name = "fc", type = "uint32"},
                    {name = "break_times", type = "uint8"},
                    {name = "status", type = "uint8"}
                }}, 
                {name = "type", type = "uint8"},
                {name = "rec_id", type = "uint32"},
                {name = "rec_platform", type = "string"},
                {name = "rec_zone_id", type = "uint16"}
            }}, 
            {name = "now_star", type = "uint16"},
            {name = "diff_num", type = "uint32"}
        }}
    },
    [20806] = {
        {name = "status", type = "uint8"},
        {name = "group", type = "uint32"}
    },
    [20807] = {
        {name = "wave", type = "uint32"},
        {name = "reward_info", type = "array", fields = {
            {name = "assets", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [20808] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "gl_list", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "val", type = "uint32"}
        }}
    },
    [20809] = {
        {name = "rank_list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"},
            {name = "rank", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint16"},
            {name = "classes", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "fc", type = "uint32"},
            {name = "break_times", type = "uint8"},
            {name = "wave", type = "uint16"},
            {name = "use_time", type = "uint32"}
        }}
    },
    [20900] = {
        {name = "self_grade", type = "uint8"},
        {name = "self_score", type = "uint32"},
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "grade", type = "uint8"},
        {name = "score", type = "uint32"},
        {name = "ops_looks", type = "array", fields = {
            {name = "looks_type", type = "uint32"},
            {name = "looks_mode", type = "uint32"},
            {name = "looks_val", type = "uint32"},
            {name = "looks_str", type = "string"}
        }}, 
        {name = "self_color", type = "uint8"}
    },
    [20901] = {
        {name = "who_turn", type = "uint8"},
        {name = "end_time", type = "uint32"},
        {name = "now_turn", type = "uint8"},
        {name = "chess_list", type = "array", fields = {
            {name = "row", type = "uint8"},
            {name = "col", type = "uint8"},
            {name = "color", type = "uint8"}
        }}, 
        {name = "can_use_list", type = "array", fields = {
            {name = "row", type = "uint8"},
            {name = "col", type = "uint8"}
        }}, 
        {name = "chess_change_list", type = "array", fields = {
            {name = "row", type = "uint8"},
            {name = "col", type = "uint8"}
        }}, 
        {name = "black_keep_ahead_round", type = "uint8"},
        {name = "white_keep_ahead_round", type = "uint8"},
        {name = "is_comeback", type = "uint8"}
    },
    [20903] = {
        {name = "who_say", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20904] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20905] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20906] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20907] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20908] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20909] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20910] = {
        {name = "state", type = "uint8"},
        {name = "times", type = "uint8"},
        {name = "end_time", type = "uint32"}
    },
    [20911] = {
        {name = "flag", type = "uint8"},
        {name = "grade", type = "uint16"},
        {name = "score", type = "uint32"},
        {name = "reward", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "bind", type = "uint8"},
            {name = "num", type = "uint32"}
        }}
    },
    [20912] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20913] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [20914] = {

    },
    [20915] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"}
    },
    [21000] = {
        {name = "item_list", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "item_name", type = "string"},
            {name = "price", type = "uint32"},
            {name = "loss_type", type = "uint32"},
            {name = "type_id", type = "uint8"}
        }}
    },
    [21001] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [21002] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [21003] = {
        {name = "context_list", type = "array", fields = {
            {name = "context", type = "string"}
        }}
    },
    [21100] = {
        {name = "status", type = "uint8"},
        {name = "timeout", type = "uint32"}
    },
    [21101] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [21102] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [21103] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [21104] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [21105] = {
        {name = "movability", type = "uint32"},
        {name = "win", type = "uint32"},
        {name = "side", type = "uint8"}
    },
    [21106] = {
        {name = "canyon_summit_side", type = "array", fields = {
            {name = "group_id", type = "uint8"},
            {name = "match_id", type = "uint8"},
            {name = "side_id", type = "uint8"},
            {name = "win", type = "uint32"},
            {name = "lost", type = "uint32"},
            {name = "is_win", type = "uint8"},
            {name = "member_num", type = "uint32"},
            {name = "remain_num", type = "uint32"},
            {name = "movability", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "guarded_unit", type = "uint32"},
            {name = "attacked_unit", type = "uint32"},
            {name = "remain_unit", type = "uint8"}
        }}
    },
    [21107] = {
        {name = "canyon_summit_role", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "side", type = "uint8"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "win", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "movability", type = "uint32"}
        }}
    },
    [21108] = {
        {name = "canyon_summit_role", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "name", type = "string"},
            {name = "lev", type = "uint8"},
            {name = "sex", type = "uint8"},
            {name = "classes", type = "uint8"},
            {name = "win", type = "uint32"},
            {name = "score", type = "uint32"},
            {name = "movability", type = "uint32"}
        }}
    },
    [21109] = {
        {name = "type", type = "uint8"}
    },
    [21110] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [21111] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [21112] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [21113] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [21114] = {
        {name = "canyon_summit_unit", type = "array", fields = {
            {name = "group_id", type = "uint32"},
            {name = "match_id", type = "uint32"},
            {name = "unit_id", type = "uint32"},
            {name = "battle_id", type = "uint32"},
            {name = "last_operated", type = "uint32"},
            {name = "duration", type = "uint32"},
            {name = "side", type = "uint8"}
        }}
    },
    [21115] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [21117] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [21118] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "status", type = "uint8"}
    },
    [21121] = {
        {name = "group_id", type = "uint8"}
    },
    [21122] = {
        {name = "cd", type = "uint32"}
    },
    [21200] = {
        {name = "reset_times", type = "uint8"},
        {name = "choose_ids", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [21201] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [21202] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [21203] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "gain", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "count", type = "uint32"}
        }}
    },
    [9900] = {
        {name = "msg", type = "string"}
    },
    [9901] = {
        {name = "type", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [9902] = {
        {name = "type", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "limit", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "value", type = "uint32"}
        }}
    },
    [9903] = {
        {name = "type", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [9904] = {
        {name = "world_lev", type = "uint32"},
        {name = "next_time", type = "uint32"}
    },
    [9905] = {
        {name = "package", type = "uint8"},
        {name = "items", type = "array", fields = {
            {name = "item_id", type = "uint32"}
        }}
    },
    [9906] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [9907] = {
        {name = "id", type = "uint32"},
        {name = "type", type = "uint16"},
        {name = "map", type = "uint32"},
        {name = "x", type = "uint32"},
        {name = "y", type = "uint32"}
    },
    [9908] = {
        {name = "enum", type = "uint32"}
    },
    [9909] = {
        {name = "op_code", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [9910] = {
        {name = "base_id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [9911] = {
        {name = "type", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [9920] = {
        {name = "board_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "type", type = "uint8"},
            {name = "start_time", type = "uint32"},
            {name = "end_time", type = "uint32"},
            {name = "title", type = "string"},
            {name = "content", type = "string"},
            {name = "msg", type = "string"},
            {name = "gain", type = "array", fields = {
                {name = "gain_id", type = "uint32"},
                {name = "value", type = "uint32"}
            }}
        }}
    },
    [9921] = {
        {name = "id", type = "uint32"},
        {name = "type", type = "uint8"},
        {name = "start_time", type = "uint32"},
        {name = "end_time", type = "uint32"},
        {name = "title", type = "string"},
        {name = "content", type = "string"},
        {name = "msg", type = "string"},
        {name = "gain", type = "array", fields = {
            {name = "gain_id", type = "uint32"},
            {name = "value", type = "uint32"}
        }}
    },
    [9922] = {
        {name = "id", type = "uint32"}
    },
    [9923] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint32"}
    },
    [9924] = {
        {name = "board_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "type", type = "uint8"},
            {name = "start_time", type = "uint32"},
            {name = "end_time", type = "uint32"},
            {name = "title", type = "string"},
            {name = "content", type = "string"},
            {name = "msg", type = "string"},
            {name = "gain", type = "array", fields = {
                {name = "gain_id", type = "uint32"},
                {name = "value", type = "uint32"}
            }}
        }}
    },
    [9925] = {
        {name = "charge", type = "uint32"},
        {name = "authsfz_charge", type = "uint32"},
        {name = "lev", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "val", type = "uint32"}
        }}, 
        {name = "items", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}, 
        {name = "priviege_list", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [9926] = {
        {name = "flag", type = "uint8"},
        {name = "lev", type = "uint32"}
    },
    [9927] = {
        {name = "flag", type = "uint8"},
        {name = "keep_time", type = "uint32"},
        {name = "login_time", type = "uint32"},
        {name = "start_time", type = "uint32"},
        {name = "return_val", type = "uint32"},
        {name = "max_time", type = "uint32"}
    },
    [9928] = {
        {name = "title", type = "string"},
        {name = "content", type = "string"},
        {name = "process", type = "string"},
        {name = "extern_content", type = "string"},
        {name = "rewards", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "count", type = "uint32"}
        }}
    },
    [9929] = {
        {name = "reward_info", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "result", type = "uint8"}
        }}
    },
    [9930] = {
        {name = "type", type = "uint8"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [9931] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [9932] = {
        {name = "reward", type = "uint8"},
        {name = "day", type = "uint32"}
    },
    [9933] = {
        {name = "flag", type = "uint8"},
        {name = "keep_time", type = "uint32"},
        {name = "login_time", type = "uint32"},
        {name = "start_time", type = "uint32"},
        {name = "max_time", type = "uint32"},
        {name = "rewards", type = "array", fields = {
            {name = "group", type = "uint32"},
            {name = "count", type = "uint32"}
        }}
    },
    [9934] = {
        {name = "board_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "type", type = "uint8"},
            {name = "start_time", type = "uint32"},
            {name = "end_time", type = "uint32"},
            {name = "title", type = "string"},
            {name = "content", type = "string"},
            {name = "msg", type = "string"},
            {name = "gain", type = "array", fields = {
                {name = "gain_id", type = "uint32"},
                {name = "value", type = "uint32"}
            }}
        }}, 
        {name = "all_board_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "type", type = "uint8"},
            {name = "start_time", type = "uint32"},
            {name = "end_time", type = "uint32"},
            {name = "title", type = "string"},
            {name = "content", type = "string"},
            {name = "msg", type = "string"},
            {name = "gain", type = "array", fields = {
                {name = "gain_id", type = "uint32"},
                {name = "value", type = "uint32"}
            }}
        }}
    },
    [9935] = {
        {name = "gold", type = "uint32"},
        {name = "rewards", type = "array", fields = {
            {name = "id", type = "uint8"}
        }}
    },
    [9936] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "id", type = "uint8"}
    },
    [9937] = {
        {name = "golds", type = "array", fields = {
            {name = "gold", type = "uint16"}
        }}
    },
    [9938] = {
        {name = "flag", type = "uint8"},
        {name = "time_return", type = "uint32"},
        {name = "rewards", type = "array", fields = {
            {name = "day", type = "uint8"},
            {name = "status", type = "uint8"},
            {name = "time", type = "uint32"}
        }}, 
        {name = "reward_all", type = "uint8"}
    },
    [9939] = {
        {name = "day", type = "uint8"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [9940] = {
        {name = "reward_id", type = "uint16"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [9941] = {

    },
    [9942] = {
        {name = "day", type = "uint8"},
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [9943] = {
        {name = "msg", type = "string"}
    },
    [9944] = {
        {name = "pmd_list", type = "array", fields = {
            {name = "msg", type = "string"},
            {name = "time", type = "uint32"}
        }}
    },
    [9945] = {

    },
    [9946] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "start_time", type = "uint32"},
            {name = "end_time", type = "uint32"},
            {name = "desc1", type = "string"},
            {name = "desc2", type = "string"},
            {name = "title", type = "string"},
            {name = "item_list", type = "array", fields = {
                {name = "gift_id", type = "uint32"},
                {name = "group", type = "uint32"},
                {name = "item_id", type = "uint32"},
                {name = "bind", type = "uint32"},
                {name = "num", type = "uint32"},
                {name = "origin_price", type = "array", fields = {
                    {name = "item_id", type = "uint32"},
                    {name = "num", type = "uint32"}
                }}, 
                {name = "price", type = "array", fields = {
                    {name = "item_id", type = "uint32"},
                    {name = "num", type = "uint32"}
                }}, 
                {name = "min_lev", type = "uint32"},
                {name = "max_lev", type = "uint32"},
                {name = "sex", type = "uint32"},
                {name = "classes", type = "uint32"},
                {name = "min_lev_break", type = "uint32"},
                {name = "max_lev_break", type = "uint32"}
            }}
        }}
    },
    [9947] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "gift_id", type = "uint32"},
            {name = "group", type = "uint32"}
        }}
    },
    [9948] = {
        {name = "result", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [9949] = {
        {name = "luck", type = "uint32"}
    },
    [9950] = {
        {name = "flag", type = "uint8"},
        {name = "ids", type = "array", fields = {
            {name = "id", type = "uint16"}
        }}, 
        {name = "msg", type = "string"}
    },
    [9951] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"},
        {name = "item_id", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "bind", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [9952] = {
        {name = "item_list", type = "array", fields = {
            {name = "gift_id", type = "uint32"},
            {name = "item_id", type = "uint32"},
            {name = "bind", type = "uint32"},
            {name = "type", type = "uint32"},
            {name = "num", type = "uint32"},
            {name = "origin_price", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "num", type = "uint32"}
            }}, 
            {name = "price", type = "array", fields = {
                {name = "item_id", type = "uint32"},
                {name = "num", type = "uint32"}
            }}, 
            {name = "min_lev", type = "uint32"},
            {name = "max_lev", type = "uint32"},
            {name = "sex", type = "uint32"},
            {name = "classes", type = "uint32"},
            {name = "min_lev_break", type = "uint32"},
            {name = "max_lev_break", type = "uint32"},
            {name = "desc", type = "string"}
        }}
    },
    [9953] = {
        {name = "label", type = "string"}
    },
    [9954] = {
        {name = "flag", type = "uint8"}
    },
    [9955] = {
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [9956] = {
        {name = "flag", type = "uint8"},
        {name = "val", type = "int32"},
        {name = "upper_limit_num", type = "int32"}
    },
    [9957] = {
        {name = "recharge_list", type = "array", fields = {
            {name = "tag", type = "string"},
            {name = "level", type = "uint32"},
            {name = "rmb", type = "uint32"},
            {name = "gold", type = "uint32"},
            {name = "tokes", type = "uint32"},
            {name = "game_name", type = "string"},
            {name = "show_state", type = "uint8"}
        }}
    }
}

-- 发送协议数据格式
M.send = {
    [1010] = {
        {name = "account", type = "string"},
        {name = "type", type = "uint8"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "channel_reg", type = "uint32"},
        {name = "dispense_id", type = "string"},
        {name = "device_id", type = "string"},
        {name = "device_type", type = "uint8"},
        {name = "use_id", type = "string"},
        {name = "ts", type = "string"},
        {name = "ticket", type = "string"}
    },
    [1011] = {
        {name = "account", type = "string"},
        {name = "type", type = "uint8"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "channel_reg", type = "uint32"},
        {name = "dispense_id", type = "string"},
        {name = "device_id", type = "string"},
        {name = "device_type", type = "uint8"},
        {name = "use_id", type = "string"},
        {name = "ts", type = "string"},
        {name = "ticket", type = "string"},
        {name = "guid", type = "string"},
        {name = "cp_ext", type = "string"}
    },
    [1020] = {

    },
    [1080] = {

    },
    [1097] = {
        {name = "platform", type = "string"}
    },
    [1098] = {
        {name = "time", type = "uint32"}
    },
    [1099] = {
        {name = "time", type = "uint32"}
    },
    [10000] = {

    },
    [10001] = {

    },
    [10002] = {

    },
    [10003] = {

    },
    [10004] = {

    },
    [10005] = {
        {name = "strength", type = "uint16"},
        {name = "constitution", type = "uint16"},
        {name = "magic", type = "uint16"},
        {name = "agility", type = "uint16"},
        {name = "endurance", type = "uint16"}
    },
    [10006] = {
        {name = "strength", type = "uint16"},
        {name = "constitution", type = "uint16"},
        {name = "magic", type = "uint16"},
        {name = "agility", type = "uint16"},
        {name = "endurance", type = "uint16"}
    },
    [10007] = {

    },
    [10008] = {
        {name = "from", type = "string"}
    },
    [10009] = {

    },
    [10010] = {
        {name = "op_type", type = "uint8"}
    },
    [10011] = {

    },
    [10012] = {
        {name = "num", type = "uint16"}
    },
    [10013] = {

    },
    [10014] = {

    },
    [10015] = {
        {name = "name", type = "string"}
    },
    [10016] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [10017] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [10018] = {

    },
    [10019] = {

    },
    [10020] = {

    },
    [10021] = {

    },
    [10022] = {
        {name = "device_key", type = "string"}
    },
    [10023] = {

    },
    [10024] = {
        {name = "valid_plan", type = "uint8"}
    },
    [10025] = {
        {name = "valid_plan", type = "uint8"}
    },
    [10026] = {

    },
    [10027] = {
        {name = "classes", type = "uint8"}
    },
    [10028] = {
        {name = "classes", type = "uint8"},
        {name = "cost_type", type = "uint8"}
    },
    [10029] = {

    },
    [10030] = {

    },
    [10031] = {
        {name = "name", type = "string"},
        {name = "sfz_id", type = "string"}
    },
    [10032] = {

    },
    [10033] = {

    },
    [10034] = {

    },
    [10035] = {

    },
    [10036] = {
        {name = "mod", type = "uint32"}
    },
    [10037] = {

    },
    [10038] = {
        {name = "decision", type = "uint8"}
    },
    [10039] = {

    },
    [10040] = {

    },
    [10041] = {
        {name = "speed", type = "uint8"}
    },
    [10100] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "code", type = "uint16"}
    },
    [10101] = {

    },
    [10102] = {

    },
    [10103] = {

    },
    [10110] = {

    },
    [10111] = {

    },
    [10112] = {

    },
    [10113] = {

    },
    [10114] = {

    },
    [10115] = {
        {name = "map_base_id", type = "uint32"},
        {name = "x", type = "uint16"},
        {name = "y", type = "uint16"},
        {name = "dir", type = "uint8"}
    },
    [10116] = {

    },
    [10117] = {

    },
    [10118] = {

    },
    [10119] = {
        {name = "map_id", type = "uint32"},
        {name = "x", type = "uint16"},
        {name = "y", type = "uint16"}
    },
    [10120] = {

    },
    [10122] = {

    },
    [10123] = {

    },
    [10150] = {

    },
    [10160] = {

    },
    [10162] = {

    },
    [10164] = {

    },
    [10165] = {

    },
    [10166] = {

    },
    [10167] = {
        {name = "map_base_id", type = "uint32"},
        {name = "members", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"},
            {name = "x", type = "uint16"},
            {name = "y", type = "uint16"},
            {name = "dir", type = "uint8"}
        }}
    },
    [10168] = {

    },
    [10169] = {

    },
    [10170] = {
        {name = "map_base_id", type = "uint32"}
    },
    [10171] = {

    },
    [10172] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"}
    },
    [10173] = {

    },
    [10174] = {

    },
    [10175] = {

    },
    [10200] = {

    },
    [10201] = {

    },
    [10202] = {
        {name = "id", type = "uint32"}
    },
    [10203] = {

    },
    [10204] = {

    },
    [10205] = {
        {name = "id", type = "uint32"}
    },
    [10206] = {
        {name = "id", type = "uint32"}
    },
    [10207] = {

    },
    [10208] = {

    },
    [10209] = {

    },
    [10210] = {

    },
    [10211] = {
        {name = "sec_type", type = "uint8"},
        {name = "args", type = "uint32"}
    },
    [10212] = {
        {name = "id", type = "uint32"}
    },
    [10213] = {

    },
    [10214] = {

    },
    [10215] = {
        {name = "sec_type", type = "uint8"}
    },
    [10216] = {
        {name = "assets_enum", type = "uint32"}
    },
    [10217] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [10218] = {
        {name = "quest_id", type = "uint32"}
    },
    [10219] = {

    },
    [10220] = {

    },
    [10221] = {
        {name = "id_list", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [10222] = {

    },
    [10223] = {
        {name = "quest_id", type = "uint32"},
        {name = "talk_type", type = "uint8"}
    },
    [10224] = {

    },
    [10225] = {

    },
    [10226] = {
        {name = "shop_type", type = "uint8"}
    },
    [10227] = {
        {name = "id", type = "uint16"}
    },
    [10228] = {

    },
    [10229] = {
        {name = "id", type = "uint32"}
    },
    [10230] = {

    },
    [10231] = {
        {name = "id", type = "uint32"}
    },
    [10232] = {

    },
    [10233] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [10234] = {
        {name = "id", type = "uint32"}
    },
    [10235] = {

    },
    [10236] = {
        {name = "day", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [10237] = {

    },
    [10238] = {

    },
    [10239] = {
        {name = "id", type = "uint32"}
    },
    [10240] = {

    },
    [10241] = {
        {name = "count", type = "uint8"}
    },
    [10242] = {

    },
    [10243] = {

    },
    [10244] = {

    },
    [10245] = {

    },
    [10246] = {

    },
    [10247] = {

    },
    [10248] = {

    },
    [10249] = {
        {name = "id", type = "int32"}
    },
    [10250] = {

    },
    [10251] = {

    },
    [10252] = {
        {name = "envelop", type = "uint8"}
    },
    [10253] = {

    },
    [10254] = {
        {name = "id", type = "uint32"}
    },
    [10255] = {
        {name = "order", type = "uint8"},
        {name = "times", type = "uint8"}
    },
    [10256] = {

    },
    [10257] = {

    },
    [10258] = {

    },
    [10259] = {

    },
    [10260] = {

    },
    [10261] = {

    },
    [10300] = {

    },
    [10301] = {

    },
    [10302] = {

    },
    [10303] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone", type = "uint32"}
    },
    [10310] = {

    },
    [10311] = {

    },
    [10312] = {

    },
    [10315] = {
        {name = "id", type = "uint32"},
        {name = "quantity", type = "uint16"},
        {name = "args", type = "array", fields = {
            {name = "name", type = "uint8"},
            {name = "value", type = "uint32"},
            {name = "str", type = "string"}
        }}
    },
    [10316] = {
        {name = "id", type = "uint32"},
        {name = "quantity", type = "uint16"}
    },
    [10317] = {
        {name = "id", type = "uint32"},
        {name = "quantity", type = "uint16"}
    },
    [10318] = {
        {name = "id", type = "uint32"},
        {name = "storage", type = "uint8"},
        {name = "pos", type = "uint16"}
    },
    [10319] = {
        {name = "id", type = "uint32"},
        {name = "storage", type = "uint8"},
        {name = "pos", type = "uint16"}
    },
    [10320] = {
        {name = "id", type = "uint32"},
        {name = "storage", type = "uint8"}
    },
    [10321] = {

    },
    [10322] = {
        {name = "package_type", type = "uint8"}
    },
    [10323] = {

    },
    [10324] = {
        {name = "num", type = "uint8"}
    },
    [10329] = {
        {name = "id", type = "uint32"},
        {name = "from_storage", type = "uint8"},
        {name = "storage", type = "uint8"},
        {name = "pos", type = "uint16"}
    },
    [10330] = {

    },
    [10331] = {

    },
    [10332] = {

    },
    [10333] = {
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [10334] = {
        {name = "base_id", type = "uint32"}
    },
    [10335] = {

    },
    [10336] = {
        {name = "id", type = "uint32"}
    },
    [10337] = {
        {name = "id", type = "uint32"},
        {name = "flag", type = "uint8"}
    },
    [10338] = {
        {name = "id", type = "uint32"}
    },
    [10339] = {

    },
    [10340] = {
        {name = "id", type = "uint32"}
    },
    [10400] = {
        {name = "channel", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10401] = {

    },
    [10402] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "msg", type = "string"}
    },
    [10403] = {
        {name = "channel", type = "uint8"},
        {name = "voice", type = "byte"},
        {name = "time", type = "uint8"},
        {name = "text", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10404] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "id", type = "uint32"}
    },
    [10405] = {

    },
    [10406] = {
        {name = "type", type = "uint8"},
        {name = "base_id", type = "uint32"}
    },
    [10407] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "query_id", type = "uint32"}
    },
    [10408] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "id", type = "uint32"}
    },
    [10409] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "query_id", type = "uint32"}
    },
    [10410] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "query_id", type = "uint32"}
    },
    [10411] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "voice", type = "byte"},
        {name = "time", type = "uint8"},
        {name = "text", type = "string"},
        {name = "cache_id", type = "uint32"}
    },
    [10412] = {

    },
    [10413] = {

    },
    [10414] = {

    },
    [10415] = {
        {name = "bubble", type = "uint16"}
    },
    [10416] = {

    },
    [10417] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "query_id", type = "uint32"}
    },
    [10418] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "query_id", type = "uint32"}
    },
    [10419] = {
        {name = "match_id", type = "uint16"}
    },
    [10420] = {
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [10421] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "id", type = "uint32"}
    },
    [10422] = {
        {name = "id", type = "uint32"}
    },
    [10423] = {
        {name = "type", type = "uint32"}
    },
    [10424] = {
        {name = "channel", type = "uint8"},
        {name = "group_id", type = "uint32"},
        {name = "group_platform", type = "string"},
        {name = "group_zone_id", type = "uint16"},
        {name = "msg", type = "string"}
    },
    [10425] = {
        {name = "channel", type = "uint8"},
        {name = "group_id", type = "uint32"},
        {name = "group_platform", type = "string"},
        {name = "group_zone_id", type = "uint16"},
        {name = "voice", type = "byte"},
        {name = "time", type = "uint8"},
        {name = "text", type = "string"},
        {name = "id", type = "uint32"}
    },
    [10426] = {
        {name = "msg", type = "string"}
    },
    [10427] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "query_id", type = "uint32"}
    },
    [10428] = {

    },
    [10429] = {

    },
    [10430] = {
        {name = "id", type = "uint32"}
    },
    [10431] = {
        {name = "type", type = "uint8"}
    },
    [10432] = {

    },
    [10500] = {

    },
    [10501] = {
        {name = "id", type = "uint32"},
        {name = "mode", type = "uint8"}
    },
    [10502] = {

    },
    [10503] = {

    },
    [10504] = {

    },
    [10505] = {
        {name = "id", type = "uint32"},
        {name = "item_flag", type = "uint8"}
    },
    [10507] = {
        {name = "id", type = "uint32"},
        {name = "item_id", type = "uint32"},
        {name = "hole_id", type = "uint8"}
    },
    [10508] = {
        {name = "id", type = "uint32"},
        {name = "item_id", type = "uint32"}
    },
    [10509] = {
        {name = "id", type = "uint32"}
    },
    [10510] = {
        {name = "id", type = "uint32"},
        {name = "aptitude", type = "uint8"}
    },
    [10511] = {

    },
    [10512] = {

    },
    [10513] = {
        {name = "id", type = "uint32"},
        {name = "strength", type = "uint16"},
        {name = "constitution", type = "uint16"},
        {name = "magic", type = "uint16"},
        {name = "agility", type = "uint16"},
        {name = "endurance", type = "uint16"}
    },
    [10515] = {
        {name = "id", type = "uint8"}
    },
    [10516] = {
        {name = "lev", type = "uint8"}
    },
    [10517] = {
        {name = "base_id", type = "uint32"}
    },
    [10518] = {
        {name = "id", type = "uint32"}
    },
    [10519] = {
        {name = "id", type = "uint32"},
        {name = "name", type = "string"}
    },
    [10520] = {
        {name = "id", type = "uint32"},
        {name = "strength", type = "uint16"},
        {name = "constitution", type = "uint16"},
        {name = "magic", type = "uint16"},
        {name = "agility", type = "uint16"},
        {name = "endurance", type = "uint16"}
    },
    [10521] = {
        {name = "id", type = "uint32"}
    },
    [10522] = {
        {name = "id", type = "uint32"}
    },
    [10523] = {

    },
    [10524] = {
        {name = "genre", type = "uint8"}
    },
    [10525] = {

    },
    [10526] = {
        {name = "id", type = "uint32"}
    },
    [10527] = {

    },
    [10528] = {

    },
    [10529] = {
        {name = "id", type = "uint32"}
    },
    [10530] = {
        {name = "id", type = "uint32"}
    },
    [10531] = {

    },
    [10532] = {
        {name = "id", type = "uint32"}
    },
    [10533] = {

    },
    [10534] = {
        {name = "id", type = "uint32"}
    },
    [10535] = {
        {name = "id", type = "uint32"}
    },
    [10536] = {
        {name = "id", type = "uint32"},
        {name = "type", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [10537] = {
        {name = "id", type = "uint32"}
    },
    [10538] = {
        {name = "id", type = "uint32"}
    },
    [10539] = {
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"}
    },
    [10540] = {
        {name = "id", type = "uint32"}
    },
    [10541] = {
        {name = "pet_id", type = "uint32"},
        {name = "item_id", type = "uint32"}
    },
    [10542] = {
        {name = "pet_id", type = "uint32"},
        {name = "item_id", type = "uint32"}
    },
    [10543] = {

    },
    [10544] = {
        {name = "pet_id", type = "uint32"},
        {name = "stone_id", type = "uint32"},
        {name = "item_id", type = "uint32"}
    },
    [10545] = {
        {name = "base_id", type = "uint32"}
    },
    [10546] = {
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"}
    },
    [10547] = {

    },
    [10548] = {
        {name = "id", type = "uint32"},
        {name = "id_sub", type = "uint32"}
    },
    [10549] = {
        {name = "id", type = "uint32"}
    },
    [10550] = {
        {name = "id", type = "uint32"}
    },
    [10551] = {

    },
    [10552] = {

    },
    [10553] = {
        {name = "id", type = "uint32"},
        {name = "skill_id", type = "uint32"}
    },
    [10554] = {
        {name = "id", type = "uint32"}
    },
    [10555] = {
        {name = "id", type = "uint32"}
    },
    [10556] = {
        {name = "id", type = "uint32"},
        {name = "num", type = "uint32"}
    },
    [10557] = {
        {name = "id", type = "uint32"},
        {name = "skin_id", type = "uint32"}
    },
    [10558] = {
        {name = "id", type = "uint32"},
        {name = "skin_id", type = "uint32"}
    },
    [10559] = {

    },
    [10560] = {
        {name = "base_id", type = "uint32"}
    },
    [10561] = {
        {name = "master_pet_id", type = "uint32"},
        {name = "attach_pet_id", type = "uint32"}
    },
    [10562] = {
        {name = "attach_pet_id", type = "uint32"}
    },
    [10563] = {
        {name = "id", type = "uint32"}
    },
    [10564] = {
        {name = "id", type = "uint32"}
    },
    [10565] = {
        {name = "pet_id", type = "uint32"},
        {name = "item_id", type = "uint32"}
    },
    [10566] = {
        {name = "id", type = "uint32"},
        {name = "id_sub", type = "uint32"}
    },
    [10567] = {
        {name = "id", type = "uint32"}
    },
    [10568] = {
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "hole_id", type = "uint8"}
    },
    [10569] = {

    },
    [10570] = {

    },
    [10571] = {

    },
    [10572] = {

    },
    [10573] = {
        {name = "pet_id", type = "uint32"},
        {name = "skill_id", type = "uint32"}
    },
    [10574] = {
        {name = "pet_id", type = "uint32"},
        {name = "unreal_flag", type = "uint32"}
    },
    [10575] = {
        {name = "pet_id", type = "uint32"},
        {name = "rune_index", type = "uint8"},
        {name = "rune_id", type = "uint32"}
    },
    [10576] = {
        {name = "pet_id", type = "uint32"},
        {name = "rune_index", type = "uint8"},
        {name = "type", type = "uint8"}
    },
    [10577] = {
        {name = "pet_id", type = "uint32"},
        {name = "rune_index", type = "uint8"}
    },
    [10578] = {
        {name = "pet_id", type = "uint32"},
        {name = "resonance_index", type = "uint8"}
    },
    [10579] = {

    },
    [10600] = {
        {name = "id", type = "uint32"},
        {name = "is_perfect", type = "uint8"},
        {name = "use_hero_paper", type = "uint8"}
    },
    [10602] = {
        {name = "id", type = "uint32"},
        {name = "luck_list", type = "array", fields = {
            {name = "luck_id", type = "uint32"},
            {name = "num", type = "uint8"}
        }}, 
        {name = "protect_id", type = "uint32"}
    },
    [10603] = {
        {name = "id", type = "uint32"}
    },
    [10604] = {
        {name = "id", type = "uint32"},
        {name = "hole_id", type = "uint8"},
        {name = "stone_id", type = "uint32"}
    },
    [10605] = {
        {name = "id", type = "uint32"},
        {name = "hole_id", type = "uint8"},
        {name = "stone_id", type = "uint32"}
    },
    [10606] = {
        {name = "id", type = "uint32"},
        {name = "hole_id", type = "uint8"}
    },
    [10607] = {
        {name = "base_id", type = "uint32"},
        {name = "num", type = "uint32"}
    },
    [10608] = {
        {name = "id", type = "uint32"}
    },
    [10609] = {
        {name = "id", type = "uint32"}
    },
    [10610] = {
        {name = "id1", type = "uint32"},
        {name = "id2", type = "uint32"}
    },
    [10611] = {
        {name = "id", type = "uint32"},
        {name = "side", type = "uint8"}
    },
    [10612] = {

    },
    [10613] = {

    },
    [10614] = {
        {name = "id", type = "uint32"}
    },
    [10615] = {
        {name = "id", type = "uint32"}
    },
    [10616] = {
        {name = "id", type = "uint32"}
    },
    [10617] = {
        {name = "id", type = "uint32"},
        {name = "craft", type = "uint8"},
        {name = "lock", type = "uint8"}
    },
    [10618] = {
        {name = "id", type = "uint32"},
        {name = "craft", type = "uint8"}
    },
    [10619] = {
        {name = "id", type = "uint32"},
        {name = "looks", type = "uint32"}
    },
    [10620] = {
        {name = "id", type = "uint32"}
    },
    [10621] = {
        {name = "id", type = "uint32"}
    },
    [10622] = {
        {name = "id", type = "uint32"}
    },
    [10623] = {
        {name = "id", type = "uint32"}
    },
    [10624] = {
        {name = "id", type = "uint32"},
        {name = "hole_id", type = "uint8"},
        {name = "num", type = "uint32"}
    },
    [10625] = {
        {name = "id", type = "uint32"},
        {name = "hole_id", type = "uint8"},
        {name = "base_id", type = "uint32"}
    },
    [10626] = {
        {name = "id", type = "uint32"}
    },
    [10627] = {

    },
    [10628] = {
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "target_base_id", type = "uint32"}
    },
    [10629] = {
        {name = "id", type = "uint32"},
        {name = "attr_name", type = "uint32"},
        {name = "attr_val", type = "uint32"}
    },
    [10705] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [10706] = {

    },
    [10707] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [10710] = {

    },
    [10711] = {

    },
    [10720] = {

    },
    [10722] = {

    },
    [10723] = {

    },
    [10731] = {
        {name = "round", type = "uint8"}
    },
    [10732] = {
        {name = "skill_id", type = "uint32"},
        {name = "target_id", type = "uint16"},
        {name = "other_id", type = "uint32"}
    },
    [10733] = {

    },
    [10734] = {
        {name = "skill_id", type = "uint32"},
        {name = "target_id", type = "uint16"},
        {name = "other_id", type = "uint32"}
    },
    [10735] = {

    },
    [10740] = {
        {name = "flag", type = "uint8"}
    },
    [10741] = {
        {name = "target_id", type = "uint16"},
        {name = "preside_type", type = "uint8"}
    },
    [10742] = {

    },
    [10743] = {
        {name = "type", type = "uint8"},
        {name = "flag", type = "uint8"},
        {name = "text", type = "string"}
    },
    [10744] = {
        {name = "type", type = "uint8"},
        {name = "rec_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [10745] = {

    },
    [10746] = {

    },
    [10747] = {

    },
    [10748] = {

    },
    [10749] = {

    },
    [10750] = {
        {name = "type", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [10751] = {
        {name = "type", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [10752] = {
        {name = "type", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [10753] = {
        {name = "type", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [10754] = {
        {name = "rank_type", type = "uint8"}
    },
    [10755] = {
        {name = "type", type = "uint8"}
    },
    [10756] = {
        {name = "type", type = "uint8"},
        {name = "rec_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [10757] = {

    },
    [10758] = {
        {name = "combat_type", type = "uint32"}
    },
    [10759] = {

    },
    [10760] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [10761] = {

    },
    [10762] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "flag", type = "uint8"},
        {name = "type", type = "uint8"}
    },
    [10763] = {

    },
    [10764] = {
        {name = "index", type = "uint8"},
        {name = "skill_plan", type = "array", fields = {
            {name = "skill_index", type = "uint8"},
            {name = "skill_id", type = "uint32"}
        }}
    },
    [10765] = {
        {name = "skill_id", type = "uint32"}
    },
    [10766] = {
        {name = "index", type = "uint8"}
    },
    [10767] = {

    },
    [10768] = {
        {name = "index", type = "uint8"},
        {name = "name", type = "string"}
    },
    [10769] = {
        {name = "type", type = "uint8"},
        {name = "rec_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "round", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [10770] = {

    },
    [10771] = {
        {name = "skill_id", type = "uint32"},
        {name = "target_id", type = "uint16"},
        {name = "other_id", type = "uint32"}
    },
    [10772] = {

    },
    [10773] = {
        {name = "skill_id", type = "uint32"},
        {name = "target_id", type = "uint16"},
        {name = "other_id", type = "uint32"}
    },
    [10774] = {

    },
    [10775] = {

    },
    [10776] = {

    },
    [10777] = {
        {name = "skill_id", type = "uint32"}
    },
    [10778] = {

    },
    [10779] = {
        {name = "combat_type", type = "uint32"},
        {name = "reward_id", type = "uint32"}
    },
    [10780] = {

    },
    [10789] = {

    },
    [10790] = {

    },
    [10800] = {

    },
    [10801] = {
        {name = "id", type = "uint32"}
    },
    [10802] = {

    },
    [10803] = {

    },
    [10804] = {

    },
    [10805] = {

    },
    [10806] = {
        {name = "id", type = "uint32"}
    },
    [10807] = {
        {name = "id", type = "uint32"},
        {name = "num", type = "uint8"}
    },
    [10808] = {

    },
    [10809] = {
        {name = "id", type = "uint32"}
    },
    [10810] = {
        {name = "id", type = "uint32"}
    },
    [10811] = {

    },
    [10812] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [10813] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [10814] = {

    },
    [10815] = {
        {name = "id", type = "uint32"}
    },
    [10816] = {
        {name = "id", type = "uint32"},
        {name = "base_id", type = "uint32"}
    },
    [10817] = {
        {name = "id", type = "uint32"}
    },
    [10818] = {

    },
    [10819] = {

    },
    [10820] = {

    },
    [10821] = {
        {name = "id", type = "uint32"}
    },
    [10822] = {

    },
    [10823] = {
        {name = "id", type = "uint32"},
        {name = "num", type = "uint8"}
    },
    [10824] = {
        {name = "id", type = "uint32"},
        {name = "flag", type = "uint8"}
    },
    [10825] = {

    },
    [10826] = {
        {name = "id", type = "uint32"}
    },
    [10827] = {

    },
    [10828] = {

    },
    [10829] = {
        {name = "skill_id", type = "uint32"}
    },
    [10830] = {
        {name = "skill_id", type = "uint32"}
    },
    [10831] = {

    },
    [10832] = {

    },
    [10833] = {

    },
    [10834] = {

    },
    [10835] = {

    },
    [10900] = {
        {name = "base_id", type = "uint32"}
    },
    [10901] = {

    },
    [10902] = {
        {name = "id", type = "uint32"},
        {name = "type", type = "uint8"}
    },
    [10903] = {

    },
    [10905] = {
        {name = "base_id", type = "uint32"},
        {name = "pos", type = "uint8"}
    },
    [10906] = {

    },
    [10907] = {
        {name = "base_id", type = "uint32"},
        {name = "type", type = "uint8"}
    },
    [10909] = {
        {name = "base_id", type = "uint32"}
    },
    [10910] = {
        {name = "base_id", type = "uint32"},
        {name = "type", type = "uint8"},
        {name = "hole_id", type = "uint32"},
        {name = "gem_base_id", type = "uint32"}
    },
    [10911] = {
        {name = "base_id", type = "uint32"},
        {name = "type", type = "uint8"},
        {name = "hole_id", type = "uint32"}
    },
    [10912] = {
        {name = "base_id", type = "uint32"},
        {name = "type", type = "uint8"},
        {name = "hole_id", type = "uint32"}
    },
    [10913] = {
        {name = "base_id", type = "uint32"}
    },
    [10914] = {
        {name = "base_id", type = "uint32"},
        {name = "star_id", type = "uint32"}
    },
    [10915] = {
        {name = "base_id", type = "uint32"}
    },
    [10916] = {
        {name = "base_id", type = "uint32"}
    },
    [10917] = {
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [10918] = {
        {name = "base_id", type = "uint32"},
        {name = "type", type = "uint8"}
    },
    [10919] = {
        {name = "base_id", type = "uint32"},
        {name = "type", type = "uint8"}
    },
    [10920] = {
        {name = "base_id1", type = "uint32"},
        {name = "base_id2", type = "uint32"}
    },
    [10921] = {

    },
    [10922] = {
        {name = "base_id1", type = "uint32"},
        {name = "base_id2", type = "uint32"}
    },
    [1100] = {

    },
    [1101] = {
        {name = "cdkey", type = "string"}
    },
    [1110] = {
        {name = "name", type = "string"},
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"},
        {name = "zone_id", type = "uint16"}
    },
    [1120] = {
        {name = "zone_id", type = "uint16"}
    },
    [11000] = {

    },
    [11001] = {
        {name = "id", type = "uint32"},
        {name = "val", type = "uint32"}
    },
    [11002] = {

    },
    [11003] = {

    },
    [11004] = {
        {name = "id", type = "uint32"},
        {name = "type", type = "uint8"}
    },
    [11005] = {

    },
    [11006] = {
        {name = "id", type = "uint32"}
    },
    [11007] = {

    },
    [11010] = {

    },
    [11020] = {

    },
    [11021] = {

    },
    [11022] = {

    },
    [11023] = {
        {name = "id", type = "uint32"}
    },
    [11024] = {

    },
    [11100] = {

    },
    [11101] = {

    },
    [11102] = {
        {name = "name", type = "string"}
    },
    [11103] = {
        {name = "name", type = "string"},
        {name = "notice", type = "string"}
    },
    [11104] = {
        {name = "guild_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "tag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [11105] = {

    },
    [11106] = {

    },
    [11107] = {

    },
    [11108] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "post", type = "uint8"}
    },
    [11109] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11110] = {

    },
    [11111] = {
        {name = "type", type = "uint8"},
        {name = "mode", type = "uint8"}
    },
    [11112] = {
        {name = "type", type = "uint8"},
        {name = "mode", type = "uint8"}
    },
    [11113] = {

    },
    [11114] = {
        {name = "type", type = "uint8"},
        {name = "content", type = "string"}
    },
    [11115] = {

    },
    [11116] = {
        {name = "type", type = "uint8"}
    },
    [11117] = {
        {name = "type", type = "uint8"}
    },
    [11118] = {

    },
    [11119] = {
        {name = "id", type = "uint16"},
        {name = "num", type = "uint16"}
    },
    [11120] = {

    },
    [11121] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11122] = {
        {name = "flag", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "lev", type = "uint8"}
    },
    [11123] = {

    },
    [11124] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "type", type = "uint8"}
    },
    [11125] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "signature", type = "string"}
    },
    [11126] = {

    },
    [11127] = {

    },
    [11128] = {

    },
    [11129] = {

    },
    [11130] = {
        {name = "num", type = "uint32"}
    },
    [11131] = {
        {name = "title", type = "string"},
        {name = "num", type = "uint16"},
        {name = "type", type = "uint8"},
        {name = "source", type = "uint8"}
    },
    [11132] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11133] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11134] = {

    },
    [11135] = {

    },
    [11136] = {

    },
    [11137] = {

    },
    [11138] = {
        {name = "base_id", type = "uint32"}
    },
    [11139] = {
        {name = "base_id", type = "uint32"}
    },
    [11140] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11141] = {

    },
    [11142] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "base_id", type = "uint32"}
    },
    [11143] = {
        {name = "name", type = "string"}
    },
    [11144] = {
        {name = "totem", type = "uint8"}
    },
    [11145] = {

    },
    [11146] = {

    },
    [11147] = {

    },
    [11148] = {
        {name = "option", type = "uint8"}
    },
    [11149] = {

    },
    [11150] = {

    },
    [11151] = {

    },
    [11152] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11153] = {

    },
    [11154] = {

    },
    [11155] = {

    },
    [11156] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [11157] = {

    },
    [11158] = {

    },
    [11159] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11160] = {

    },
    [11161] = {

    },
    [11162] = {
        {name = "id", type = "uint16"},
        {name = "num", type = "uint16"}
    },
    [11163] = {

    },
    [11164] = {

    },
    [11165] = {
        {name = "x", type = "uint32"},
        {name = "y", type = "uint32"}
    },
    [11166] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [11167] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [11168] = {
        {name = "title", type = "string"},
        {name = "content", type = "string"}
    },
    [11169] = {

    },
    [11170] = {

    },
    [11171] = {

    },
    [11172] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11173] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "decision", type = "uint8"}
    },
    [11174] = {
        {name = "type", type = "uint8"}
    },
    [11175] = {

    },
    [11176] = {

    },
    [11177] = {

    },
    [11178] = {
        {name = "time", type = "uint32"}
    },
    [11179] = {

    },
    [11180] = {

    },
    [11181] = {
        {name = "alloc", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "r_platform", type = "string"},
            {name = "r_zone_id", type = "uint16"},
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint16"}
        }}
    },
    [11182] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11183] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "type", type = "uint8"}
    },
    [11184] = {

    },
    [11185] = {

    },
    [11186] = {
        {name = "lev", type = "uint8"}
    },
    [11187] = {
        {name = "name", type = "string"}
    },
    [11188] = {

    },
    [11189] = {

    },
    [11190] = {
        {name = "type", type = "uint8"},
        {name = "use_type", type = "uint8"},
        {name = "cost_type", type = "uint8"}
    },
    [11191] = {
        {name = "type", type = "uint8"}
    },
    [11192] = {

    },
    [11193] = {
        {name = "build_type", type = "uint8"}
    },
    [11194] = {

    },
    [11195] = {
        {name = "type", type = "uint8"}
    },
    [11196] = {

    },
    [11197] = {
        {name = "mode", type = "uint8"}
    },
    [11198] = {

    },
    [11199] = {

    },
    [11200] = {

    },
    [11201] = {

    },
    [11202] = {
        {name = "fid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11203] = {

    },
    [11204] = {
        {name = "id", type = "uint32"},
        {name = "x", type = "uint16"},
        {name = "y", type = "uint16"},
        {name = "gx", type = "uint16"},
        {name = "gy", type = "uint16"},
        {name = "dir", type = "uint8"}
    },
    [11205] = {

    },
    [11206] = {

    },
    [11207] = {
        {name = "id", type = "uint32"}
    },
    [11208] = {

    },
    [11209] = {
        {name = "bad_type", type = "uint8"}
    },
    [11210] = {
        {name = "bad_type", type = "uint8"}
    },
    [11211] = {

    },
    [11212] = {
        {name = "id", type = "uint32"},
        {name = "num", type = "uint32"}
    },
    [11213] = {

    },
    [11214] = {
        {name = "id", type = "uint32"},
        {name = "train_id", type = "uint32"}
    },
    [11215] = {

    },
    [11216] = {

    },
    [11217] = {

    },
    [11218] = {

    },
    [11219] = {
        {name = "id", type = "uint32"}
    },
    [11220] = {

    },
    [11221] = {

    },
    [11222] = {
        {name = "lock_lev", type = "uint8"}
    },
    [11223] = {
        {name = "type", type = "uint8"}
    },
    [11224] = {

    },
    [11225] = {

    },
    [11226] = {
        {name = "fid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11227] = {

    },
    [11228] = {
        {name = "inviters", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"}
        }}
    },
    [11229] = {
        {name = "id", type = "uint32"}
    },
    [11230] = {

    },
    [11231] = {

    },
    [11232] = {

    },
    [11233] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11234] = {
        {name = "train_id", type = "uint32"}
    },
    [11235] = {
        {name = "id", type = "uint32"}
    },
    [11300] = {

    },
    [11301] = {
        {name = "tab", type = "uint8"}
    },
    [11302] = {

    },
    [11303] = {
        {name = "id", type = "uint16"},
        {name = "num", type = "uint32"}
    },
    [11400] = {
        {name = "type", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "num", type = "uint32"}
    },
    [11500] = {

    },
    [11501] = {
        {name = "type", type = "uint8"},
        {name = "val", type = "uint8"}
    },
    [11600] = {

    },
    [11601] = {

    },
    [11602] = {

    },
    [11603] = {

    },
    [11604] = {

    },
    [11605] = {

    },
    [11606] = {

    },
    [11607] = {

    },
    [11608] = {

    },
    [11609] = {
        {name = "valid_plan", type = "uint8"}
    },
    [11610] = {
        {name = "skill", type = "uint32"},
        {name = "lev", type = "uint8"}
    },
    [11611] = {
        {name = "grade", type = "uint8"},
        {name = "skill", type = "uint32"}
    },
    [11613] = {
        {name = "wing_id", type = "uint16"}
    },
    [11614] = {
        {name = "speed", type = "uint8"}
    },
    [11615] = {
        {name = "group_id", type = "uint32"},
        {name = "type", type = "uint32"}
    },
    [11616] = {
        {name = "group_id", type = "uint32"},
        {name = "wing_id", type = "uint32"}
    },
    [11617] = {

    },
    [11618] = {
        {name = "group_id", type = "uint32"}
    },
    [11700] = {

    },
    [11701] = {

    },
    [11702] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11703] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "type", type = "uint16"}
    },
    [11704] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11705] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11706] = {

    },
    [11707] = {

    },
    [11708] = {

    },
    [11709] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11710] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11711] = {
        {name = "type", type = "uint8"},
        {name = "lev_flag", type = "uint8"}
    },
    [11712] = {

    },
    [11713] = {

    },
    [11714] = {
        {name = "types", type = "array", fields = {
            {name = "type", type = "uint8"}
        }}
    },
    [11715] = {

    },
    [11716] = {

    },
    [11717] = {

    },
    [11718] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "type", type = "uint16"}
    },
    [11719] = {

    },
    [11720] = {

    },
    [11721] = {

    },
    [11722] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11723] = {

    },
    [11724] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11725] = {

    },
    [11726] = {

    },
    [11727] = {

    },
    [11728] = {
        {name = "type", type = "uint8"}
    },
    [11729] = {

    },
    [11730] = {

    },
    [11731] = {
        {name = "decision", type = "uint8"}
    },
    [11732] = {

    },
    [11733] = {

    },
    [11734] = {
        {name = "team_id", type = "uint16"}
    },
    [11735] = {

    },
    [11736] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11737] = {
        {name = "flag", type = "uint16"}
    },
    [11738] = {

    },
    [11739] = {

    },
    [11800] = {

    },
    [11801] = {

    },
    [11802] = {

    },
    [11803] = {
        {name = "signature", type = "string"}
    },
    [11804] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11805] = {
        {name = "flag", type = "uint8"},
        {name = "name", type = "string"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11806] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11807] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11808] = {
        {name = "name", type = "string"}
    },
    [11809] = {

    },
    [11810] = {

    },
    [11811] = {

    },
    [11820] = {

    },
    [11821] = {

    },
    [11822] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11823] = {
        {name = "type", type = "uint8"},
        {name = "content", type = "string"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11824] = {
        {name = "id", type = "uint32"},
        {name = "content", type = "string"}
    },
    [11825] = {
        {name = "type", type = "uint32"}
    },
    [11826] = {
        {name = "id", type = "uint32"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11827] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11828] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11829] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11830] = {
        {name = "id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11831] = {
        {name = "tag", type = "string"}
    },
    [11832] = {
        {name = "id", type = "uint8"}
    },
    [11833] = {
        {name = "birth", type = "string"},
        {name = "constellation", type = "uint8"},
        {name = "abo", type = "uint8"},
        {name = "signature", type = "string"},
        {name = "region", type = "string"},
        {name = "sex", type = "uint8"}
    },
    [11834] = {
        {name = "id", type = "uint8"},
        {name = "photo", type = "byte"}
    },
    [11835] = {
        {name = "privacy", type = "uint8"}
    },
    [11836] = {
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11837] = {
        {name = "num", type = "uint8"}
    },
    [11838] = {

    },
    [11839] = {

    },
    [11840] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11841] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [11842] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "list", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "msg", type = "string"}
    },
    [11843] = {

    },
    [11844] = {

    },
    [11845] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11846] = {
        {name = "id", type = "uint8"}
    },
    [11847] = {

    },
    [11848] = {
        {name = "id", type = "uint32"}
    },
    [11849] = {
        {name = "content", type = "string"},
        {name = "id", type = "uint32"},
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11850] = {
        {name = "id", type = "uint16"}
    },
    [11851] = {
        {name = "id", type = "uint16"}
    },
    [11852] = {
        {name = "badges", type = "array", fields = {
            {name = "badge_id", type = "uint16"}
        }}
    },
    [11853] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11854] = {
        {name = "id", type = "uint8"}
    },
    [11855] = {

    },
    [11856] = {
        {name = "page", type = "uint8"}
    },
    [11857] = {
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "page", type = "uint8"}
    },
    [11858] = {
        {name = "content", type = "string"},
        {name = "type", type = "uint8"},
        {name = "photos", type = "array", fields = {
            {name = "photo", type = "byte"}
        }}, 
        {name = "thumbs", type = "array", fields = {
            {name = "thumb", type = "byte"}
        }}, 
        {name = "mentions", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"}
        }}
    },
    [11859] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11860] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11861] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11862] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "content", type = "string"},
        {name = "mentions", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"}
        }}
    },
    [11863] = {
        {name = "moment_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "comment_id", type = "uint32"}
    },
    [11864] = {
        {name = "moment_id", type = "uint32"},
        {name = "photo_id", type = "uint32"}
    },
    [11865] = {

    },
    [11866] = {

    },
    [11867] = {

    },
    [11868] = {
        {name = "moment_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "photo_id", type = "uint8"}
    },
    [11869] = {
        {name = "moment_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "type", type = "uint8"},
        {name = "spec_id", type = "uint32"}
    },
    [11870] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11871] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11872] = {
        {name = "moment_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "photo_id", type = "uint8"}
    },
    [11873] = {
        {name = "page", type = "uint8"}
    },
    [11874] = {
        {name = "region", type = "string"},
        {name = "city", type = "string"},
        {name = "is_shared_region", type = "uint8"}
    },
    [11875] = {
        {name = "page", type = "uint8"}
    },
    [11876] = {

    },
    [11877] = {

    },
    [11878] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "pos", type = "uint8"}
    },
    [11879] = {

    },
    [11880] = {
        {name = "rid", type = "string"}
    },
    [11881] = {

    },
    [11882] = {
        {name = "id", type = "uint8"}
    },
    [11884] = {
        {name = "id", type = "uint8"}
    },
    [11885] = {
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11886] = {

    },
    [11887] = {

    },
    [11888] = {
        {name = "offline_push", type = "uint8"}
    },
    [11889] = {
        {name = "item_id", type = "int32"}
    },
    [11890] = {
        {name = "id", type = "uint32"},
        {name = "msg", type = "string"}
    },
    [11891] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [11892] = {
        {name = "honor_id", type = "uint32"}
    },
    [11893] = {
        {name = "camp_id", type = "uint32"},
        {name = "req_type", type = "uint8"}
    },
    [11894] = {
        {name = "camp_id", type = "uint32"}
    },
    [11895] = {

    },
    [11896] = {

    },
    [11897] = {

    },
    [11898] = {
        {name = "privacy_zone", type = "uint8"}
    },
    [11899] = {
        {name = "privacy_moments", type = "uint8"}
    },
    [12000] = {

    },
    [12001] = {

    },
    [12002] = {

    },
    [12003] = {

    },
    [12004] = {

    },
    [12005] = {
        {name = "item_id", type = "uint32"}
    },
    [12006] = {

    },
    [12007] = {

    },
    [12008] = {

    },
    [12009] = {
        {name = "id", type = "uint8"}
    },
    [12010] = {

    },
    [12011] = {
        {name = "activity_id", type = "uint32"}
    },
    [12100] = {
        {name = "dun_id", type = "uint32"},
        {name = "battle_flag", type = "uint8"}
    },
    [12101] = {

    },
    [12102] = {

    },
    [12103] = {

    },
    [12104] = {

    },
    [12110] = {

    },
    [12111] = {
        {name = "pos", type = "uint8"}
    },
    [12112] = {
        {name = "id", type = "uint32"}
    },
    [12114] = {
        {name = "id", type = "uint32"}
    },
    [12116] = {
        {name = "id", type = "uint32"}
    },
    [12117] = {
        {name = "id", type = "uint32"}
    },
    [12118] = {

    },
    [12119] = {
        {name = "id", type = "uint32"},
        {name = "floor", type = "uint8"}
    },
    [12120] = {
        {name = "list", type = "array", fields = {
            {name = "base_id", type = "uint32"}
        }}
    },
    [12121] = {
        {name = "id", type = "uint32"},
        {name = "floor", type = "uint8"}
    },
    [12122] = {
        {name = "id", type = "uint32"}
    },
    [12123] = {

    },
    [12130] = {

    },
    [12131] = {
        {name = "id", type = "uint32"}
    },
    [12132] = {
        {name = "dun_id", type = "uint32"}
    },
    [12133] = {

    },
    [12134] = {
        {name = "dun_id", type = "uint32"}
    },
    [12135] = {

    },
    [12136] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "dun_id", type = "uint32"}
    },
    [12137] = {

    },
    [12138] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [12139] = {

    },
    [12140] = {

    },
    [12141] = {

    },
    [12142] = {

    },
    [12143] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [12144] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "type", type = "uint8"}
    },
    [12145] = {

    },
    [12146] = {

    },
    [12147] = {

    },
    [12148] = {

    },
    [12149] = {
        {name = "dun_id", type = "uint32"}
    },
    [12150] = {

    },
    [12151] = {

    },
    [12152] = {

    },
    [12200] = {

    },
    [12201] = {
        {name = "order", type = "uint8"}
    },
    [12202] = {

    },
    [12203] = {

    },
    [12204] = {
        {name = "log_id", type = "uint16"}
    },
    [12205] = {

    },
    [12206] = {

    },
    [12207] = {
        {name = "formation", type = "uint8"},
        {name = "guard_id_1", type = "uint32"},
        {name = "guard_id_2", type = "uint32"},
        {name = "guard_id_3", type = "uint32"},
        {name = "guard_id_4", type = "uint32"}
    },
    [12208] = {

    },
    [12209] = {
        {name = "order", type = "uint8"}
    },
    [12210] = {

    },
    [12211] = {

    },
    [12212] = {

    },
    [12213] = {

    },
    [12214] = {

    },
    [12215] = {
        {name = "log_id", type = "uint16"}
    },
    [12216] = {

    },
    [12217] = {
        {name = "pet_id", type = "uint32"}
    },
    [12300] = {

    },
    [12301] = {

    },
    [12302] = {
        {name = "roll_id", type = "uint16"},
        {name = "item_id", type = "uint16"}
    },
    [12320] = {

    },
    [12321] = {
        {name = "card_id", type = "uint32"},
        {name = "pos", type = "uint32"}
    },
    [12400] = {
        {name = "catalg_1", type = "uint32"},
        {name = "catalg_2", type = "uint32"}
    },
    [12401] = {
        {name = "base_id", type = "uint32"},
        {name = "num", type = "uint16"}
    },
    [12402] = {
        {name = "id", type = "uint32"},
        {name = "num", type = "uint16"}
    },
    [12403] = {
        {name = "base_id", type = "uint32"},
        {name = "num", type = "uint16"}
    },
    [12404] = {
        {name = "package_type", type = "uint8"},
        {name = "item_id", type = "uint32"},
        {name = "num", type = "uint8"},
        {name = "percent", type = "uint32"},
        {name = "cell_id", type = "uint8"}
    },
    [12405] = {
        {name = "type", type = "uint8"},
        {name = "id", type = "uint8"}
    },
    [12406] = {
        {name = "cell_id", type = "uint8"}
    },
    [12407] = {

    },
    [12408] = {
        {name = "item_base_id", type = "uint32"}
    },
    [12409] = {
        {name = "refresh_type", type = "uint8"}
    },
    [12410] = {
        {name = "type", type = "uint8"},
        {name = "page_start", type = "uint8"},
        {name = "page_end", type = "uint8"}
    },
    [12411] = {
        {name = "cell_id", type = "uint8"}
    },
    [12412] = {

    },
    [12413] = {
        {name = "cell_id", type = "uint8"},
        {name = "percent", type = "uint32"},
        {name = "num", type = "uint8"}
    },
    [12414] = {
        {name = "type", type = "uint8"}
    },
    [12415] = {
        {name = "item_base_id", type = "uint32"}
    },
    [12416] = {
        {name = "base_ids", type = "array", fields = {
            {name = "base_id", type = "uint32"}
        }}
    },
    [12417] = {
        {name = "base_ids", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [12418] = {
        {name = "catalg_1", type = "uint32"},
        {name = "catalg_2", type = "uint32"}
    },
    [12419] = {

    },
    [12420] = {

    },
    [12421] = {
        {name = "base_ids", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "id", type = "uint32"}
    },
    [12422] = {
        {name = "base_ids", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}, 
        {name = "id", type = "uint32"}
    },
    [12500] = {
        {name = "type", type = "uint8"},
        {name = "page", type = "uint8"},
        {name = "num", type = "uint8"},
        {name = "sub_type", type = "uint8"}
    },
    [12501] = {
        {name = "type", type = "uint8"}
    },
    [12502] = {
        {name = "type", type = "uint8"},
        {name = "sub_type", type = "uint8"},
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [12503] = {
        {name = "type", type = "uint8"},
        {name = "sub_type", type = "uint8"},
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [12505] = {
        {name = "type", type = "uint8"},
        {name = "page", type = "uint8"},
        {name = "num", type = "uint8"},
        {name = "sub_type", type = "uint8"}
    },
    [12506] = {
        {name = "team_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "group_id", type = "uint8"}
    },
    [12600] = {

    },
    [12601] = {

    },
    [12602] = {

    },
    [12603] = {

    },
    [12604] = {

    },
    [12605] = {

    },
    [12606] = {

    },
    [12607] = {
        {name = "option", type = "uint8"}
    },
    [12608] = {

    },
    [12700] = {

    },
    [12701] = {
        {name = "id", type = "uint32"}
    },
    [12702] = {
        {name = "id", type = "uint32"}
    },
    [12703] = {

    },
    [12704] = {

    },
    [12705] = {

    },
    [12706] = {

    },
    [12707] = {

    },
    [12708] = {
        {name = "pre_id", type = "uint32"}
    },
    [12709] = {
        {name = "pre_id", type = "uint32"}
    },
    [12710] = {
        {name = "reward_id", type = "uint32"}
    },
    [12800] = {

    },
    [12801] = {
        {name = "id", type = "uint32"}
    },
    [12802] = {
        {name = "flag", type = "uint8"}
    },
    [12803] = {

    },
    [12804] = {

    },
    [12900] = {

    },
    [12901] = {
        {name = "id", type = "uint8"}
    },
    [12902] = {

    },
    [12903] = {
        {name = "role_id1", type = "uint32"},
        {name = "platform1", type = "string"},
        {name = "zone_id1", type = "uint16"},
        {name = "role_id2", type = "uint32"},
        {name = "platform2", type = "string"},
        {name = "zone_id2", type = "uint16"}
    },
    [12904] = {
        {name = "guard_id1", type = "uint32"},
        {name = "guard_id2", type = "uint32"}
    },
    [12905] = {
        {name = "guard_id1", type = "uint32"},
        {name = "flag", type = "uint8"},
        {name = "guard_id2", type = "uint32"}
    },
    [12906] = {

    },
    [12907] = {
        {name = "id", type = "uint8"},
        {name = "item_id", type = "uint32"},
        {name = "num", type = "uint8"}
    },
    [12908] = {

    },
    [13000] = {

    },
    [13001] = {
        {name = "id", type = "uint32"}
    },
    [13002] = {

    },
    [13003] = {
        {name = "base_id", type = "uint32"},
        {name = "finished", type = "uint32"}
    },
    [13004] = {
        {name = "id", type = "uint32"}
    },
    [13005] = {
        {name = "rid", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint16"},
        {name = "base_id", type = "uint32"}
    },
    [13006] = {
        {name = "base_id", type = "uint32"}
    },
    [13007] = {

    },
    [13100] = {

    },
    [13101] = {
        {name = "mode", type = "uint8"}
    },
    [13102] = {

    },
    [13103] = {

    },
    [13104] = {

    },
    [13105] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [13106] = {

    },
    [13107] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "type", type = "uint8"}
    },
    [13108] = {

    },
    [13200] = {

    },
    [13201] = {
        {name = "hair_dyeing", type = "uint32"},
        {name = "hair_base_id", type = "uint32"},
        {name = "clothes_dyeing", type = "uint32"},
        {name = "clothes_base_id", type = "uint32"}
    },
    [13202] = {
        {name = "head_ornament", type = "uint32"},
        {name = "belt_ornament", type = "uint32"}
    },
    [13203] = {
        {name = "head_ornament", type = "uint32"},
        {name = "head_time_id", type = "uint32"},
        {name = "belt_ornament", type = "uint32"},
        {name = "belt_time_id", type = "uint32"}
    },
    [13204] = {

    },
    [13205] = {
        {name = "weapon", type = "uint32"}
    },
    [13206] = {

    },
    [13207] = {

    },
    [13208] = {

    },
    [13300] = {

    },
    [13301] = {

    },
    [13302] = {

    },
    [13303] = {

    },
    [13304] = {

    },
    [13305] = {

    },
    [13306] = {

    },
    [13307] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [13308] = {

    },
    [13400] = {

    },
    [13401] = {
        {name = "sess_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [13402] = {
        {name = "sess_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [13403] = {
        {name = "sess_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [13404] = {

    },
    [13405] = {
        {name = "sess_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [13500] = {
        {name = "type", type = "uint8"}
    },
    [13501] = {

    },
    [13502] = {

    },
    [13503] = {

    },
    [13504] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [13505] = {

    },
    [13506] = {

    },
    [13508] = {
        {name = "type", type = "uint8"},
        {name = "idx", type = "uint8"},
        {name = "num", type = "uint8"}
    },
    [13509] = {

    },
    [13510] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [13511] = {

    },
    [13512] = {

    },
    [13513] = {

    },
    [13514] = {
        {name = "flag", type = "uint8"}
    },
    [13600] = {

    },
    [13601] = {

    },
    [13602] = {

    },
    [13603] = {

    },
    [13604] = {

    },
    [13700] = {
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [13701] = {

    },
    [13702] = {

    },
    [13703] = {
        {name = "cell_id", type = "uint32"}
    },
    [13704] = {
        {name = "tag", type = "uint8"},
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "cell_id", type = "uint32"}
    },
    [13705] = {

    },
    [13706] = {
        {name = "cell_id", type = "uint32"}
    },
    [13707] = {
        {name = "ids", type = "array", fields = {
            {name = "role_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"}
        }}, 
        {name = "cell_id", type = "uint8"}
    },
    [13708] = {

    },
    [13709] = {

    },
    [13710] = {
        {name = "flag", type = "uint8"},
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "cell_id", type = "uint32"}
    },
    [13711] = {

    },
    [13712] = {

    },
    [13713] = {

    },
    [13714] = {

    },
    [13715] = {
        {name = "cell_id", type = "uint32"}
    },
    [13716] = {
        {name = "battle_id", type = "uint32"},
        {name = "uid", type = "uint32"}
    },
    [13717] = {

    },
    [13800] = {

    },
    [13801] = {
        {name = "flag", type = "uint8"},
        {name = "item_base_id", type = "uint32"},
        {name = "num", type = "uint32"}
    },
    [13802] = {

    },
    [13803] = {
        {name = "role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "flag", type = "uint8"},
        {name = "item_base_id", type = "uint32"},
        {name = "num", type = "uint32"}
    },
    [13804] = {

    },
    [13805] = {

    },
    [13806] = {

    },
    [13807] = {

    },
    [13900] = {

    },
    [13901] = {
        {name = "idx", type = "uint16"}
    },
    [13902] = {

    },
    [13903] = {

    },
    [14000] = {

    },
    [14001] = {
        {name = "id", type = "uint32"}
    },
    [14002] = {

    },
    [14003] = {

    },
    [14004] = {

    },
    [14005] = {

    },
    [14006] = {

    },
    [14007] = {

    },
    [14008] = {
        {name = "id", type = "uint32"}
    },
    [14009] = {

    },
    [14010] = {
        {name = "id", type = "uint32"}
    },
    [14011] = {
        {name = "id", type = "uint32"}
    },
    [14012] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "id", type = "uint32"}
    },
    [14013] = {
        {name = "id", type = "uint32"}
    },
    [14014] = {

    },
    [14019] = {

    },
    [14021] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [14022] = {
        {name = "type", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "friends", type = "array", fields = {
            {name = "g_id", type = "uint32"},
            {name = "g_platform", type = "string"},
            {name = "g_zone_id", type = "uint32"}
        }}
    },
    [14023] = {
        {name = "id", type = "uint32"}
    },
    [14024] = {
        {name = "r_id", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "type", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "num", type = "uint32"}
    },
    [14025] = {
        {name = "id", type = "uint32"}
    },
    [14026] = {

    },
    [14027] = {

    },
    [14029] = {
        {name = "day", type = "uint32"}
    },
    [14030] = {
        {name = "id", type = "uint32"}
    },
    [14031] = {

    },
    [14032] = {

    },
    [14033] = {

    },
    [14034] = {
        {name = "type", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "friends", type = "array", fields = {
            {name = "g_id", type = "uint32"},
            {name = "g_platform", type = "string"},
            {name = "g_zone_id", type = "uint32"}
        }}
    },
    [14035] = {
        {name = "type", type = "uint32"},
        {name = "base_id", type = "uint32"},
        {name = "friends", type = "array", fields = {
            {name = "g_id", type = "uint32"},
            {name = "g_platform", type = "string"},
            {name = "g_zone_id", type = "uint32"}
        }}
    },
    [14036] = {

    },
    [14037] = {
        {name = "base_id", type = "uint32"}
    },
    [14038] = {

    },
    [14039] = {
        {name = "type", type = "uint32"}
    },
    [14040] = {

    },
    [14041] = {
        {name = "type", type = "uint32"},
        {name = "num", type = "uint32"}
    },
    [14042] = {

    },
    [14043] = {
        {name = "order", type = "uint8"}
    },
    [14044] = {

    },
    [14045] = {

    },
    [14046] = {
        {name = "id", type = "uint16"},
        {name = "num", type = "uint32"}
    },
    [14047] = {

    },
    [14048] = {

    },
    [14049] = {
        {name = "order", type = "uint8"}
    },
    [14050] = {
        {name = "id", type = "uint32"}
    },
    [14051] = {

    },
    [14052] = {

    },
    [14053] = {
        {name = "total_id", type = "uint32"},
        {name = "menu_id", type = "uint32"},
        {name = "n", type = "uint8"},
        {name = "num", type = "uint16"}
    },
    [14054] = {
        {name = "type", type = "uint32"}
    },
    [14055] = {
        {name = "battle_id", type = "uint32"},
        {name = "unit_id", type = "uint32"}
    },
    [14056] = {
        {name = "anwer", type = "uint8"}
    },
    [14057] = {

    },
    [14058] = {

    },
    [14059] = {

    },
    [14060] = {

    },
    [14061] = {

    },
    [14062] = {
        {name = "type", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [14063] = {

    },
    [14064] = {
        {name = "battle_id", type = "uint32"},
        {name = "uint_id", type = "uint32"}
    },
    [14065] = {

    },
    [14066] = {

    },
    [14067] = {
        {name = "process", type = "uint8"}
    },
    [14068] = {

    },
    [14069] = {

    },
    [14070] = {

    },
    [14071] = {

    },
    [14072] = {
        {name = "anwer", type = "uint8"},
        {name = "is_world", type = "uint8"}
    },
    [14073] = {

    },
    [14074] = {

    },
    [14075] = {

    },
    [14076] = {

    },
    [14077] = {

    },
    [14078] = {

    },
    [14080] = {

    },
    [14081] = {

    },
    [14082] = {
        {name = "id", type = "uint32"},
        {name = "answer", type = "uint32"}
    },
    [14083] = {

    },
    [14084] = {

    },
    [14085] = {

    },
    [14086] = {

    },
    [14087] = {

    },
    [14088] = {
        {name = "reward_id", type = "uint16"}
    },
    [14089] = {

    },
    [14090] = {

    },
    [14091] = {

    },
    [14092] = {
        {name = "id", type = "uint16"}
    },
    [14093] = {

    },
    [14094] = {

    },
    [14095] = {

    },
    [14096] = {

    },
    [14097] = {

    },
    [14098] = {

    },
    [14099] = {

    },
    [14100] = {

    },
    [14101] = {
        {name = "order", type = "uint8"}
    },
    [14102] = {

    },
    [14103] = {

    },
    [14104] = {

    },
    [14105] = {
        {name = "order", type = "uint8"}
    },
    [14106] = {

    },
    [14107] = {

    },
    [14108] = {
        {name = "type", type = "uint32"},
        {name = "num", type = "uint32"}
    },
    [14109] = {

    },
    [14200] = {

    },
    [14201] = {

    },
    [14202] = {

    },
    [14203] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [14204] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [14205] = {

    },
    [14206] = {

    },
    [14207] = {

    },
    [14208] = {

    },
    [14209] = {

    },
    [14210] = {

    },
    [14212] = {

    },
    [14213] = {

    },
    [14214] = {
        {name = "pets", type = "array", fields = {
            {name = "pos", type = "uint16"},
            {name = "id", type = "uint32"}
        }}, 
        {name = "guards", type = "array", fields = {
            {name = "pos", type = "uint16"},
            {name = "id", type = "uint32"}
        }}
    },
    [14215] = {

    },
    [14300] = {

    },
    [14301] = {
        {name = "floor", type = "uint8"}
    },
    [14302] = {
        {name = "floor", type = "uint8"}
    },
    [14303] = {

    },
    [14304] = {
        {name = "order", type = "uint8"}
    },
    [14305] = {

    },
    [14400] = {

    },
    [14401] = {

    },
    [14404] = {

    },
    [14405] = {
        {name = "id", type = "uint8"}
    },
    [14406] = {

    },
    [14407] = {
        {name = "rid", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint16"},
        {name = "lev_id", type = "uint32"}
    },
    [14408] = {
        {name = "rid", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint16"},
        {name = "lev_id", type = "uint32"}
    },
    [14420] = {

    },
    [14421] = {

    },
    [14422] = {

    },
    [14423] = {

    },
    [14424] = {

    },
    [14425] = {

    },
    [14426] = {

    },
    [14427] = {

    },
    [14428] = {
        {name = "floor", type = "uint32"}
    },
    [14429] = {

    },
    [14500] = {

    },
    [14501] = {
        {name = "unit_base", type = "uint32"}
    },
    [14502] = {

    },
    [14503] = {

    },
    [14504] = {
        {name = "option", type = "uint8"}
    },
    [14505] = {

    },
    [14506] = {

    },
    [14507] = {

    },
    [14508] = {

    },
    [14509] = {

    },
    [14510] = {

    },
    [14511] = {
        {name = "id", type = "uint32"},
        {name = "choice", type = "uint8"}
    },
    [14512] = {

    },
    [14513] = {
        {name = "id", type = "uint32"}
    },
    [14514] = {

    },
    [14515] = {
        {name = "id", type = "uint32"}
    },
    [14516] = {

    },
    [14517] = {
        {name = "id", type = "uint32"}
    },
    [14518] = {

    },
    [14519] = {
        {name = "id", type = "uint32"},
        {name = "option", type = "uint8"}
    },
    [14600] = {

    },
    [14601] = {

    },
    [14602] = {

    },
    [14603] = {

    },
    [14604] = {

    },
    [14605] = {
        {name = "boss_id", type = "uint32"}
    },
    [14606] = {

    },
    [14700] = {
        {name = "content", type = "string"},
        {name = "contact", type = "string"}
    },
    [14701] = {

    },
    [14702] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "reason", type = "string"},
        {name = "msg", type = "array", fields = {
            {name = "title", type = "string"},
            {name = "content", type = "string"},
            {name = "chat_time", type = "uint32"}
        }}, 
        {name = "type", type = "uint8"},
        {name = "flag", type = "uint8"}
    },
    [14703] = {

    },
    [14704] = {

    },
    [14705] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [14800] = {

    },
    [14801] = {

    },
    [14802] = {

    },
    [14803] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "star", type = "uint8"}
    },
    [14804] = {

    },
    [14805] = {

    },
    [14809] = {

    },
    [14810] = {

    },
    [14811] = {

    },
    [14900] = {

    },
    [14901] = {
        {name = "id", type = "uint16"}
    },
    [14902] = {
        {name = "id", type = "uint16"}
    },
    [14903] = {
        {name = "id", type = "uint16"}
    },
    [14904] = {
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [14905] = {
        {name = "num", type = "uint16"}
    },
    [14906] = {

    },
    [14907] = {

    },
    [14908] = {
        {name = "id", type = "uint32"}
    },
    [14909] = {
        {name = "id", type = "uint16"},
        {name = "is_auto", type = "uint8"}
    },
    [14910] = {
        {name = "id", type = "uint32"}
    },
    [15000] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "str", type = "string"}
    },
    [15001] = {

    },
    [15002] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "flag", type = "uint8"}
    },
    [15003] = {

    },
    [15004] = {
        {name = "type", type = "uint8"},
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"}
        }}, 
        {name = "msg", type = "string"}
    },
    [15005] = {
        {name = "type", type = "uint8"},
        {name = "list", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint32"}
        }}
    },
    [15006] = {
        {name = "id", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [15007] = {
        {name = "type", type = "uint8"}
    },
    [15008] = {
        {name = "type", type = "uint8"},
        {name = "fid", type = "uint32"},
        {name = "fplatform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [15009] = {

    },
    [15010] = {

    },
    [15011] = {

    },
    [15012] = {

    },
    [15013] = {

    },
    [15014] = {

    },
    [15015] = {
        {name = "type", type = "uint32"}
    },
    [15016] = {

    },
    [15017] = {

    },
    [15018] = {

    },
    [15019] = {
        {name = "op_type", type = "uint8"}
    },
    [15020] = {
        {name = "type", type = "uint8"}
    },
    [15021] = {
        {name = "type", type = "uint8"}
    },
    [15022] = {

    },
    [15023] = {

    },
    [15024] = {

    },
    [15025] = {

    },
    [15026] = {
        {name = "id", type = "uint16"}
    },
    [15027] = {

    },
    [15028] = {
        {name = "id", type = "uint32"}
    },
    [15029] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [15100] = {

    },
    [15101] = {

    },
    [15102] = {

    },
    [15103] = {

    },
    [15104] = {

    },
    [15105] = {

    },
    [15200] = {

    },
    [15201] = {

    },
    [15202] = {

    },
    [15203] = {

    },
    [15204] = {

    },
    [15205] = {

    },
    [15206] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [15207] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [15208] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [15300] = {

    },
    [15301] = {
        {name = "order", type = "uint8"}
    },
    [15302] = {

    },
    [15303] = {
        {name = "order", type = "uint8"}
    },
    [15400] = {

    },
    [15401] = {
        {name = "sid", type = "uint8"},
        {name = "option", type = "uint8"}
    },
    [15402] = {

    },
    [15403] = {

    },
    [15500] = {

    },
    [15501] = {

    },
    [15502] = {

    },
    [15503] = {

    },
    [15504] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [15505] = {

    },
    [15506] = {

    },
    [15507] = {

    },
    [15508] = {

    },
    [15509] = {

    },
    [15600] = {

    },
    [15601] = {

    },
    [15602] = {

    },
    [15603] = {

    },
    [15604] = {

    },
    [15605] = {

    },
    [15607] = {

    },
    [15608] = {

    },
    [15609] = {

    },
    [15610] = {

    },
    [15700] = {

    },
    [15701] = {
        {name = "sid", type = "uint8"},
        {name = "option", type = "uint8"}
    },
    [15702] = {

    },
    [15703] = {

    },
    [15800] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "str", type = "string"}
    },
    [15801] = {

    },
    [15802] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "flag", type = "uint8"}
    },
    [15804] = {

    },
    [15805] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [15806] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [15807] = {

    },
    [15808] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [15809] = {
        {name = "type", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [15810] = {
        {name = "lev", type = "uint32"},
        {name = "type", type = "uint32"}
    },
    [15811] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "type", type = "uint8"}
    },
    [15812] = {
        {name = "type", type = "uint8"}
    },
    [15813] = {
        {name = "msg", type = "string"}
    },
    [15814] = {
        {name = "msg", type = "string"}
    },
    [15815] = {

    },
    [15816] = {
        {name = "sex", type = "uint8"},
        {name = "classes", type = "uint8"}
    },
    [15817] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "op_type", type = "uint32"}
    },
    [15818] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "target_id", type = "uint32"}
    },
    [15819] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [15820] = {

    },
    [15821] = {

    },
    [15822] = {

    },
    [15823] = {

    },
    [15824] = {

    },
    [15900] = {

    },
    [15901] = {

    },
    [15902] = {

    },
    [15903] = {

    },
    [16000] = {
        {name = "help_id", type = "uint32"}
    },
    [16001] = {

    },
    [16002] = {

    },
    [16003] = {
        {name = "id", type = "uint32"}
    },
    [16004] = {

    },
    [16005] = {
        {name = "help_id", type = "uint32"}
    },
    [16100] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "ask_id", type = "uint32"}
    },
    [16101] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "ask_id", type = "uint32"},
        {name = "sid", type = "uint8"},
        {name = "option", type = "uint8"}
    },
    [16102] = {

    },
    [16103] = {
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "ask_id", type = "uint32"}
    },
    [16200] = {

    },
    [16201] = {

    },
    [16202] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "position", type = "uint32"}
    },
    [16203] = {

    },
    [16204] = {

    },
    [16205] = {

    },
    [16206] = {

    },
    [16207] = {
        {name = "match_type", type = "uint8"},
        {name = "match_local_id", type = "uint32"},
        {name = "position", type = "uint32"}
    },
    [16300] = {

    },
    [16301] = {

    },
    [16302] = {

    },
    [16303] = {

    },
    [16304] = {

    },
    [16305] = {

    },
    [16306] = {

    },
    [16307] = {

    },
    [16308] = {

    },
    [16309] = {

    },
    [16400] = {

    },
    [16401] = {

    },
    [16402] = {

    },
    [16403] = {

    },
    [16404] = {

    },
    [16405] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [16406] = {

    },
    [16407] = {

    },
    [16408] = {

    },
    [16409] = {

    },
    [16410] = {
        {name = "decision", type = "uint8"}
    },
    [16411] = {

    },
    [16412] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [16413] = {

    },
    [16414] = {
        {name = "role_id1", type = "uint32"},
        {name = "platform1", type = "string"},
        {name = "zone_id1", type = "uint16"},
        {name = "role_id2", type = "uint32"},
        {name = "platform2", type = "string"},
        {name = "zone_id2", type = "uint16"}
    },
    [16415] = {
        {name = "id", type = "uint8"}
    },
    [16416] = {
        {name = "type", type = "uint8"},
        {name = "group", type = "uint8"}
    },
    [16417] = {

    },
    [16418] = {
        {name = "type", type = "uint8"},
        {name = "range", type = "uint8"}
    },
    [16419] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [16420] = {

    },
    [16421] = {

    },
    [16422] = {

    },
    [16423] = {
        {name = "content", type = "string"},
        {name = "mentions", type = "array", fields = {
            {name = "rid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"}
        }}
    },
    [16424] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [16425] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "rec_id", type = "uint32"}
    },
    [16426] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [16427] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [16428] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [16429] = {
        {name = "id", type = "uint32"},
        {name = "order", type = "uint32"}
    },
    [16430] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [16431] = {

    },
    [16432] = {
        {name = "type", type = "uint8"}
    },
    [16433] = {

    },
    [16434] = {
        {name = "badge_id", type = "uint32"}
    },
    [16435] = {

    },
    [16436] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [16437] = {

    },
    [16438] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "order", type = "uint32"}
    },
    [16500] = {

    },
    [16501] = {

    },
    [16502] = {

    },
    [16503] = {

    },
    [16504] = {

    },
    [16505] = {

    },
    [16506] = {

    },
    [16508] = {

    },
    [16509] = {

    },
    [16600] = {
        {name = "order_type", type = "uint8"},
        {name = "type", type = "uint8"},
        {name = "page", type = "uint8"},
        {name = "len", type = "uint8"}
    },
    [16602] = {
        {name = "type", type = "uint8"},
        {name = "title", type = "string"},
        {name = "content", type = "string"},
        {name = "local_id", type = "uint32"}
    },
    [16603] = {
        {name = "type", type = "uint8"},
        {name = "order_type", type = "uint8"},
        {name = "page", type = "uint8"},
        {name = "count", type = "uint8"}
    },
    [16604] = {
        {name = "title_id", type = "uint32"},
        {name = "type", type = "uint8"}
    },
    [16605] = {
        {name = "title_id", type = "uint32"}
    },
    [16606] = {
        {name = "title_id", type = "uint32"}
    },
    [16607] = {
        {name = "title_id", type = "uint32"}
    },
    [16608] = {
        {name = "title_id", type = "uint32"},
        {name = "type", type = "uint8"},
        {name = "title", type = "string"},
        {name = "content", type = "string"},
        {name = "local_id", type = "uint32"}
    },
    [16700] = {

    },
    [16701] = {

    },
    [16702] = {
        {name = "idx", type = "uint32"}
    },
    [16703] = {
        {name = "idx", type = "uint32"},
        {name = "gold_add", type = "uint16"},
        {name = "gold", type = "uint32"}
    },
    [16704] = {
        {name = "idx", type = "uint32"},
        {name = "gold_add", type = "uint8"},
        {name = "gold", type = "uint32"},
        {name = "gold_max", type = "uint32"}
    },
    [16705] = {

    },
    [16706] = {

    },
    [16707] = {

    },
    [16800] = {
        {name = "summary", type = "string"},
        {name = "voice", type = "byte"},
        {name = "time", type = "uint16"}
    },
    [16801] = {

    },
    [16802] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [16803] = {

    },
    [16804] = {
        {name = "voice", type = "byte"},
        {name = "time", type = "uint16"}
    },
    [16805] = {
        {name = "summary", type = "string"}
    },
    [16806] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "follow", type = "uint8"}
    },
    [16807] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [16808] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [16809] = {

    },
    [16810] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [16811] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [16812] = {

    },
    [16813] = {

    },
    [16814] = {
        {name = "type", type = "uint8"}
    },
    [16815] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [16900] = {
        {name = "type", type = "uint32"},
        {name = "time", type = "uint32"}
    },
    [16901] = {
        {name = "page_now", type = "uint16"}
    },
    [16902] = {
        {name = "idx", type = "string"},
        {name = "item_idx", type = "uint32"},
        {name = "count", type = "uint16"},
        {name = "all", type = "uint8"}
    },
    [16903] = {
        {name = "idx", type = "string"}
    },
    [16904] = {

    },
    [16906] = {
        {name = "idx", type = "string"},
        {name = "page_now", type = "uint16"}
    },
    [16907] = {
        {name = "page_now", type = "uint16"}
    },
    [16908] = {
        {name = "idx", type = "string"}
    },
    [17000] = {

    },
    [17001] = {
        {name = "index", type = "uint8"}
    },
    [17002] = {
        {name = "index", type = "uint8"}
    },
    [17003] = {
        {name = "index", type = "uint32"}
    },
    [17004] = {
        {name = "index", type = "uint8"}
    },
    [17005] = {
        {name = "index", type = "uint8"},
        {name = "skill_index", type = "uint8"}
    },
    [17006] = {
        {name = "index", type = "uint8"},
        {name = "is_sure_success", type = "uint8"}
    },
    [17007] = {
        {name = "index", type = "uint8"},
        {name = "pet_id", type = "uint32"}
    },
    [17008] = {

    },
    [17009] = {

    },
    [17010] = {

    },
    [17011] = {
        {name = "index", type = "uint8"}
    },
    [17012] = {
        {name = "index", type = "uint8"}
    },
    [17013] = {
        {name = "index", type = "uint8"},
        {name = "skill_index", type = "uint8"},
        {name = "skill_Id", type = "uint32"}
    },
    [17014] = {
        {name = "index", type = "uint8"},
        {name = "pet_id", type = "uint32"}
    },
    [17015] = {
        {name = "index", type = "uint8"},
        {name = "appearance_id", type = "uint32"}
    },
    [17016] = {
        {name = "index", type = "uint8"},
        {name = "skill_index", type = "uint8"}
    },
    [17017] = {
        {name = "index", type = "uint32"},
        {name = "decorate_index", type = "uint32"}
    },
    [17018] = {
        {name = "index", type = "uint32"},
        {name = "skill_index", type = "uint32"}
    },
    [17019] = {
        {name = "appearance_id", type = "uint32"}
    },
    [17020] = {
        {name = "index", type = "uint32"},
        {name = "decorate_index", type = "uint8"},
        {name = "is_hide", type = "uint8"}
    },
    [17021] = {

    },
    [17022] = {
        {name = "base_id", type = "uint32"}
    },
    [17023] = {
        {name = "base_id", type = "uint32"},
        {name = "dye_id", type = "uint32"},
        {name = "index", type = "uint32"}
    },
    [17024] = {
        {name = "base_id", type = "uint32"}
    },
    [17025] = {
        {name = "base_id", type = "uint32"}
    },
    [17026] = {
        {name = "key_id", type = "uint8"}
    },
    [17027] = {
        {name = "key_id", type = "uint8"}
    },
    [17028] = {

    },
    [17029] = {
        {name = "base_id", type = "uint32"}
    },
    [17030] = {
        {name = "base_id", type = "uint32"}
    },
    [17031] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [17032] = {

    },
    [17033] = {

    },
    [17034] = {
        {name = "flag", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [17035] = {

    },
    [17100] = {

    },
    [17101] = {
        {name = "id", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint8"}
        }}
    },
    [17102] = {

    },
    [17103] = {
        {name = "id", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint8"}
        }}
    },
    [17106] = {

    },
    [17107] = {
        {name = "idx", type = "uint16"}
    },
    [17108] = {
        {name = "id", type = "uint32"}
    },
    [17109] = {

    },
    [17110] = {
        {name = "id", type = "uint32"},
        {name = "is_need", type = "uint8"}
    },
    [17111] = {

    },
    [17112] = {
        {name = "set_id", type = "uint8"},
        {name = "flag", type = "uint8"}
    },
    [17113] = {
        {name = "handbook_id", type = "uint32"},
        {name = "item_id", type = "uint32"},
        {name = "list", type = "array", fields = {
            {name = "base_id", type = "uint32"},
            {name = "num", type = "uint8"}
        }}, 
        {name = "attr_id", type = "uint32"}
    },
    [17114] = {
        {name = "id", type = "uint32"},
        {name = "attr_id", type = "uint32"}
    },
    [17200] = {

    },
    [17201] = {

    },
    [17202] = {

    },
    [17203] = {
        {name = "index", type = "uint32"},
        {name = "skill_id", type = "uint32"}
    },
    [17204] = {
        {name = "flag", type = "uint32"}
    },
    [17205] = {

    },
    [17206] = {

    },
    [17207] = {
        {name = "skill_id", type = "uint32"}
    },
    [17208] = {

    },
    [17209] = {

    },
    [17210] = {

    },
    [17211] = {

    },
    [17212] = {

    },
    [17213] = {

    },
    [17214] = {
        {name = "index", type = "uint8"}
    },
    [17215] = {

    },
    [17216] = {

    },
    [17300] = {

    },
    [17301] = {
        {name = "id", type = "uint8"},
        {name = "list", type = "array", fields = {
            {name = "type", type = "uint8"},
            {name = "num", type = "uint32"}
        }}
    },
    [17302] = {
        {name = "id", type = "uint8"}
    },
    [17303] = {
        {name = "id", type = "uint8"}
    },
    [17304] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [17305] = {
        {name = "id", type = "uint32"}
    },
    [17306] = {
        {name = "id", type = "uint32"}
    },
    [17400] = {

    },
    [17401] = {

    },
    [17402] = {

    },
    [17403] = {

    },
    [17404] = {

    },
    [17405] = {
        {name = "point", type = "uint16"}
    },
    [17500] = {
        {name = "key", type = "string"}
    },
    [17501] = {

    },
    [17502] = {

    },
    [17503] = {

    },
    [17504] = {
        {name = "gain_id", type = "uint8"}
    },
    [17505] = {

    },
    [17506] = {

    },
    [17600] = {

    },
    [17601] = {

    },
    [17602] = {

    },
    [17603] = {

    },
    [17604] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [17605] = {

    },
    [17606] = {
        {name = "grade", type = "uint8"},
        {name = "season", type = "uint32"}
    },
    [17607] = {

    },
    [17608] = {

    },
    [17609] = {

    },
    [17610] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [17611] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [17612] = {

    },
    [17613] = {

    },
    [17614] = {

    },
    [17615] = {

    },
    [17616] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "position", type = "uint8"}
    },
    [17617] = {

    },
    [17618] = {

    },
    [17619] = {

    },
    [17620] = {
        {name = "grade", type = "uint8"}
    },
    [17621] = {
        {name = "match_id", type = "uint32"}
    },
    [17622] = {

    },
    [17623] = {
        {name = "season", type = "uint32"}
    },
    [17624] = {
        {name = "guild_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "season", type = "uint32"}
    },
    [17625] = {

    },
    [17626] = {
        {name = "id", type = "array", fields = {
            {name = "guild_id", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"}
        }}
    },
    [17627] = {

    },
    [17628] = {
        {name = "match_id", type = "uint32"}
    },
    [17629] = {

    },
    [17630] = {

    },
    [17631] = {

    },
    [17700] = {

    },
    [17701] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "pos", type = "uint8"}
    },
    [17702] = {
        {name = "name_head", type = "string"},
        {name = "name_tail", type = "string"}
    },
    [17703] = {
        {name = "name", type = "string"}
    },
    [17704] = {

    },
    [17705] = {
        {name = "name_head", type = "string"},
        {name = "name_tail", type = "string"}
    },
    [17706] = {
        {name = "flag", type = "uint8"}
    },
    [17707] = {
        {name = "name", type = "string"}
    },
    [17708] = {

    },
    [17709] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"}
    },
    [17710] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "flag", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [17711] = {
        {name = "photo", type = "byte"}
    },
    [17712] = {

    },
    [17713] = {

    },
    [17714] = {

    },
    [17715] = {
        {name = "flag", type = "uint8"}
    },
    [17716] = {
        {name = "type", type = "uint8"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "flag", type = "uint8"}
    },
    [17717] = {

    },
    [17718] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "flag", type = "uint8"}
    },
    [17800] = {

    },
    [17801] = {

    },
    [17802] = {

    },
    [17803] = {

    },
    [17804] = {

    },
    [17805] = {

    },
    [17806] = {
        {name = "type", type = "uint32"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "r_zone_id", type = "uint32"}
    },
    [17807] = {

    },
    [17808] = {

    },
    [17809] = {

    },
    [17810] = {

    },
    [17811] = {

    },
    [17812] = {

    },
    [17813] = {
        {name = "id", type = "uint16"}
    },
    [17814] = {

    },
    [17815] = {

    },
    [17816] = {
        {name = "order", type = "uint8"}
    },
    [17817] = {

    },
    [17818] = {
        {name = "id", type = "uint16"}
    },
    [17819] = {

    },
    [17820] = {
        {name = "type", type = "uint8"}
    },
    [17821] = {

    },
    [17822] = {

    },
    [17823] = {
        {name = "count", type = "uint16"}
    },
    [17824] = {

    },
    [17825] = {
        {name = "times", type = "uint16"}
    },
    [17826] = {

    },
    [17827] = {

    },
    [17828] = {

    },
    [17829] = {
        {name = "wish", type = "string"},
        {name = "type", type = "uint16"}
    },
    [17830] = {
        {name = "id", type = "uint32"}
    },
    [17831] = {
        {name = "type", type = "uint16"}
    },
    [17832] = {

    },
    [17833] = {

    },
    [17834] = {

    },
    [17835] = {

    },
    [17836] = {
        {name = "type", type = "uint16"}
    },
    [17837] = {

    },
    [17838] = {

    },
    [17839] = {
        {name = "type", type = "uint8"},
        {name = "pos", type = "uint8"}
    },
    [17840] = {

    },
    [17842] = {

    },
    [17843] = {

    },
    [17844] = {

    },
    [17845] = {

    },
    [17846] = {
        {name = "lev", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [17847] = {

    },
    [17848] = {

    },
    [17849] = {
        {name = "start_x", type = "uint8"},
        {name = "start_y", type = "uint8"},
        {name = "end_x", type = "uint8"},
        {name = "end_y", type = "uint8"}
    },
    [17850] = {

    },
    [17851] = {

    },
    [17852] = {
        {name = "x", type = "uint8"},
        {name = "y", type = "uint8"}
    },
    [17853] = {

    },
    [17854] = {

    },
    [17855] = {
        {name = "flag", type = "uint8"}
    },
    [17856] = {

    },
    [17857] = {

    },
    [17858] = {
        {name = "type", type = "uint32"}
    },
    [17859] = {
        {name = "type", type = "uint32"}
    },
    [17860] = {
        {name = "type", type = "uint32"}
    },
    [17861] = {
        {name = "type", type = "uint32"},
        {name = "val", type = "uint32"}
    },
    [17862] = {
        {name = "id", type = "uint16"},
        {name = "count", type = "uint16"}
    },
    [17863] = {

    },
    [17864] = {

    },
    [17865] = {

    },
    [17866] = {
        {name = "pos", type = "uint32"}
    },
    [17867] = {

    },
    [17868] = {
        {name = "id", type = "uint32"}
    },
    [17869] = {

    },
    [17870] = {
        {name = "target_day", type = "uint32"}
    },
    [17871] = {

    },
    [17872] = {
        {name = "id", type = "uint32"}
    },
    [17873] = {

    },
    [17874] = {

    },
    [17875] = {

    },
    [17876] = {

    },
    [17877] = {
        {name = "order", type = "uint32"}
    },
    [17878] = {
        {name = "msg", type = "string"}
    },
    [17879] = {

    },
    [17880] = {

    },
    [17881] = {

    },
    [17882] = {

    },
    [17883] = {
        {name = "days", type = "uint32"}
    },
    [17884] = {
        {name = "days", type = "uint32"}
    },
    [17885] = {
        {name = "days", type = "uint32"}
    },
    [17886] = {
        {name = "days", type = "uint32"},
        {name = "box_id", type = "uint32"}
    },
    [17887] = {

    },
    [17888] = {
        {name = "days", type = "uint32"}
    },
    [17889] = {

    },
    [17890] = {

    },
    [17891] = {

    },
    [17892] = {

    },
    [17893] = {

    },
    [17894] = {

    },
    [17895] = {

    },
    [17896] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "num", type = "uint32"}
        }}
    },
    [17897] = {
        {name = "index", type = "uint32"}
    },
    [17898] = {

    },
    [17899] = {

    },
    [17900] = {

    },
    [17901] = {
        {name = "name", type = "string"}
    },
    [17902] = {

    },
    [17903] = {
        {name = "flag", type = "uint8"}
    },
    [17904] = {

    },
    [17905] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [17906] = {

    },
    [17907] = {
        {name = "tid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [17908] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "flag", type = "uint8"}
    },
    [17909] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [17910] = {
        {name = "type", type = "uint8"}
    },
    [17911] = {
        {name = "type", type = "uint8"}
    },
    [17912] = {
        {name = "name", type = "string"}
    },
    [17913] = {
        {name = "declaration", type = "string"}
    },
    [17914] = {
        {name = "fid1", type = "uint32"},
        {name = "platform1", type = "string"},
        {name = "zone_id1", type = "uint16"},
        {name = "fid2", type = "uint32"},
        {name = "platform2", type = "string"},
        {name = "zone_id2", type = "uint16"}
    },
    [17915] = {

    },
    [17916] = {

    },
    [17917] = {
        {name = "zone_id", type = "uint8"},
        {name = "index", type = "uint8"}
    },
    [17918] = {

    },
    [17919] = {

    },
    [17920] = {

    },
    [17921] = {

    },
    [17922] = {

    },
    [17923] = {

    },
    [17924] = {

    },
    [17925] = {
        {name = "zone_id", type = "uint8"}
    },
    [17926] = {

    },
    [17927] = {

    },
    [17928] = {
        {name = "season_id", type = "uint32"},
        {name = "group_id", type = "uint32"},
        {name = "watch_type", type = "uint32"}
    },
    [17929] = {
        {name = "id", type = "uint32"}
    },
    [17930] = {

    },
    [17931] = {
        {name = "match_zone", type = "uint8"},
        {name = "id", type = "array", fields = {
            {name = "tid", type = "uint32"},
            {name = "platform", type = "string"},
            {name = "zone_id", type = "uint16"}
        }}
    },
    [17932] = {
        {name = "zone_id", type = "uint8"},
        {name = "season_id", type = "uint32"}
    },
    [17933] = {
        {name = "season_id", type = "uint32"}
    },
    [17934] = {

    },
    [17935] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [17936] = {

    },
    [17937] = {
        {name = "type", type = "uint8"},
        {name = "group", type = "uint8"}
    },
    [17938] = {

    },
    [17939] = {

    },
    [17940] = {

    },
    [17941] = {

    },
    [17942] = {

    },
    [17943] = {
        {name = "type", type = "uint32"},
        {name = "value", type = "uint8"}
    },
    [17944] = {
        {name = "msg", type = "string"}
    },
    [17945] = {

    },
    [17946] = {

    },
    [17947] = {

    },
    [17948] = {

    },
    [17949] = {

    },
    [17950] = {

    },
    [17951] = {

    },
    [17952] = {

    },
    [17953] = {

    },
    [17954] = {

    },
    [17955] = {

    },
    [17956] = {

    },
    [17957] = {
        {name = "season_id", type = "uint32"}
    },
    [17958] = {

    },
    [17959] = {
        {name = "id", type = "uint32"}
    },
    [17960] = {

    },
    [17961] = {

    },
    [17962] = {

    },
    [17963] = {
        {name = "choice", type = "uint8"}
    },
    [17964] = {

    },
    [17965] = {

    },
    [17966] = {

    },
    [17967] = {

    },
    [18200] = {

    },
    [18201] = {
        {name = "uint_id", type = "uint32"}
    },
    [18202] = {

    },
    [18203] = {
        {name = "key_base_id", type = "uint32"}
    },
    [18300] = {

    },
    [18301] = {
        {name = "id", type = "uint32"}
    },
    [18302] = {

    },
    [18303] = {

    },
    [18304] = {

    },
    [18305] = {

    },
    [18306] = {
        {name = "id", type = "uint32"}
    },
    [18307] = {
        {name = "id", type = "uint32"}
    },
    [18400] = {

    },
    [18401] = {
        {name = "acitve_id", type = "uint16"},
        {name = "times", type = "uint8"},
        {name = "type", type = "uint8"}
    },
    [18402] = {
        {name = "type", type = "uint8"}
    },
    [18500] = {

    },
    [18501] = {

    },
    [18502] = {
        {name = "type", type = "uint8"},
        {name = "lev", type = "uint8"},
        {name = "count", type = "uint8"},
        {name = "title", type = "string"}
    },
    [18503] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [18504] = {
        {name = "unit_id", type = "uint32"}
    },
    [18505] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [18506] = {

    },
    [18600] = {

    },
    [18601] = {

    },
    [18602] = {

    },
    [18603] = {

    },
    [18604] = {

    },
    [18605] = {

    },
    [18606] = {

    },
    [18607] = {

    },
    [18608] = {

    },
    [18609] = {

    },
    [18610] = {

    },
    [18611] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "strength", type = "uint16"},
        {name = "constitution", type = "uint16"},
        {name = "magic", type = "uint16"},
        {name = "agility", type = "uint16"},
        {name = "endurance", type = "uint16"}
    },
    [18612] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [18616] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "item_id", type = "uint32"},
        {name = "hole_id", type = "uint8"}
    },
    [18617] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [18618] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "base_id", type = "uint32"}
    },
    [18619] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "item_id", type = "uint32"}
    },
    [18620] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "item_base_id", type = "uint32"},
        {name = "grade", type = "uint8"}
    },
    [18621] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "classes", type = "uint8"}
    },
    [18622] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "classes_type", type = "uint8"}
    },
    [18623] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "study_type", type = "uint8"},
        {name = "study_mode", type = "uint8"}
    },
    [18624] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "follow", type = "uint8"}
    },
    [18625] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "item_base_id", type = "uint32"}
    },
    [18626] = {

    },
    [18627] = {

    },
    [18628] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [18629] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "name", type = "string"}
    },
    [18630] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [18631] = {

    },
    [18632] = {
        {name = "decision", type = "uint8"}
    },
    [18633] = {
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [18634] = {
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "type", type = "uint8"},
        {name = "msg", type = "string"}
    },
    [18635] = {
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "study_str_plan_easy", type = "uint16"},
        {name = "study_con_plan_easy", type = "uint16"},
        {name = "study_agi_plan_easy", type = "uint16"},
        {name = "study_mag_plan_easy", type = "uint16"},
        {name = "study_end_plan_easy", type = "uint16"},
        {name = "study_str_plan_hard", type = "uint16"},
        {name = "study_con_plan_hard", type = "uint16"},
        {name = "study_agi_plan_hard", type = "uint16"},
        {name = "study_mag_plan_hard", type = "uint16"},
        {name = "study_end_plan_hard", type = "uint16"}
    },
    [18636] = {
        {name = "child_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [18637] = {
        {name = "type", type = "uint8"}
    },
    [18638] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [18639] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "lev", type = "uint8"}
    },
    [18640] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "attach_pet_id", type = "uint32"}
    },
    [18641] = {
        {name = "attach_pet_id", type = "uint32"}
    },
    [18642] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "skin_id", type = "uint32"}
    },
    [18643] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "skin_id", type = "uint32"}
    },
    [18700] = {

    },
    [18701] = {
        {name = "id", type = "uint32"}
    },
    [18800] = {

    },
    [18801] = {
        {name = "x", type = "uint8"},
        {name = "y", type = "uint8"}
    },
    [18802] = {

    },
    [18803] = {

    },
    [18804] = {
        {name = "x", type = "uint8"},
        {name = "y", type = "uint8"},
        {name = "id", type = "uint32"}
    },
    [18805] = {
        {name = "x", type = "uint8"},
        {name = "y", type = "uint8"},
        {name = "id", type = "uint32"}
    },
    [18806] = {
        {name = "x", type = "uint8"},
        {name = "y", type = "uint8"}
    },
    [18807] = {
        {name = "x", type = "uint8"},
        {name = "y", type = "uint8"}
    },
    [18808] = {

    },
    [18809] = {

    },
    [18810] = {

    },
    [18811] = {

    },
    [18812] = {

    },
    [18813] = {

    },
    [18814] = {
        {name = "x", type = "uint8"},
        {name = "y", type = "uint8"}
    },
    [18815] = {
        {name = "x", type = "uint8"},
        {name = "y", type = "uint8"}
    },
    [18816] = {
        {name = "x", type = "uint8"},
        {name = "y", type = "uint8"}
    },
    [19000] = {
        {name = "group_rid", type = "uint32"},
        {name = "group_platform", type = "string"},
        {name = "group_zone_id", type = "uint16"}
    },
    [19001] = {

    },
    [19002] = {
        {name = "name", type = "string"}
    },
    [19003] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "role_id", type = "uint32"},
        {name = "role_platform", type = "string"},
        {name = "role_zone_id", type = "uint32"}
    },
    [19004] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [19005] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [19006] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "name", type = "string"}
    },
    [19007] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "content", type = "string"}
    },
    [19008] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "role_id", type = "uint32"},
        {name = "role_platform", type = "string"},
        {name = "role_zone_id", type = "uint32"}
    },
    [19009] = {

    },
    [19010] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "role_rid", type = "uint32"},
        {name = "role_platform", type = "string"},
        {name = "role_zone_id", type = "uint32"},
        {name = "flag", type = "uint8"}
    },
    [19011] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "flag", type = "uint8"}
    },
    [19012] = {

    },
    [19013] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "flag", type = "uint8"}
    },
    [19014] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "role_rid", type = "uint32"},
        {name = "role_platform", type = "string"},
        {name = "role_zone_id", type = "uint32"},
        {name = "flag", type = "uint8"}
    },
    [19100] = {

    },
    [19101] = {

    },
    [19102] = {
        {name = "flag", type = "uint8"},
        {name = "order", type = "uint8"}
    },
    [19103] = {
        {name = "order", type = "uint8"},
        {name = "star", type = "uint8"}
    },
    [19104] = {
        {name = "formation", type = "uint8"},
        {name = "guard_id_1", type = "uint32"},
        {name = "guard_id_2", type = "uint32"},
        {name = "guard_id_3", type = "uint32"},
        {name = "guard_id_4", type = "uint32"}
    },
    [19105] = {
        {name = "flag", type = "uint8"}
    },
    [19106] = {

    },
    [19107] = {
        {name = "pet_id", type = "uint32"}
    },
    [19108] = {

    },
    [19109] = {

    },
    [19110] = {

    },
    [19111] = {
        {name = "replay_id", type = "uint32"},
        {name = "replay_plat", type = "string"},
        {name = "replay_zone", type = "uint16"}
    },
    [19112] = {
        {name = "flag", type = "uint8"},
        {name = "order", type = "uint8"}
    },
    [19200] = {

    },
    [19201] = {

    },
    [19202] = {
        {name = "times", type = "uint8"}
    },
    [19203] = {

    },
    [19300] = {

    },
    [19301] = {

    },
    [19302] = {

    },
    [19303] = {
        {name = "type", type = "uint8"},
        {name = "group_id", type = "uint8"}
    },
    [19304] = {

    },
    [19305] = {

    },
    [19306] = {

    },
    [19307] = {
        {name = "rank_lev", type = "uint8"}
    },
    [19308] = {

    },
    [19309] = {

    },
    [19310] = {

    },
    [19400] = {
        {name = "type", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "page", type = "uint8"}
    },
    [19401] = {
        {name = "type", type = "uint8"},
        {name = "base_id", type = "uint32"},
        {name = "content", type = "string"},
        {name = "ids", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [19402] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [19403] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [19404] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [19405] = {

    },
    [19406] = {
        {name = "m_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "id", type = "uint32"}
    },
    [19407] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [19500] = {

    },
    [19501] = {
        {name = "chapter_id", type = "uint16"},
        {name = "strongpoint_id", type = "uint16"},
        {name = "unique", type = "uint32"}
    },
    [19502] = {
        {name = "chapter_id", type = "uint16"},
        {name = "strongpoint_id", type = "uint16"}
    },
    [19503] = {
        {name = "chapter_id", type = "uint16"},
        {name = "strongpoint_id", type = "uint16"},
        {name = "unique", type = "uint32"}
    },
    [19504] = {
        {name = "chapter_id", type = "uint16"},
        {name = "strongpoint_id", type = "uint16"},
        {name = "unique", type = "uint32"}
    },
    [19505] = {
        {name = "chapter_id", type = "uint16"},
        {name = "strongpoint_id", type = "uint16"},
        {name = "unique", type = "uint32"}
    },
    [19506] = {

    },
    [19507] = {

    },
    [19508] = {

    },
    [19509] = {

    },
    [19510] = {
        {name = "pos", type = "uint8"}
    },
    [19511] = {

    },
    [19512] = {
        {name = "pos", type = "uint8"}
    },
    [19513] = {
        {name = "type", type = "uint8"},
        {name = "question", type = "string"}
    },
    [19514] = {
        {name = "type", type = "uint8"},
        {name = "id", type = "uint32"}
    },
    [19515] = {

    },
    [19516] = {
        {name = "type", type = "uint8"},
        {name = "id", type = "uint32"},
        {name = "flag", type = "uint8"}
    },
    [19517] = {

    },
    [19518] = {
        {name = "num", type = "uint32"}
    },
    [19519] = {
        {name = "type", type = "uint32"}
    },
    [19520] = {

    },
    [19521] = {

    },
    [19522] = {

    },
    [19523] = {
        {name = "type", type = "uint32"}
    },
    [19524] = {

    },
    [19525] = {

    },
    [19526] = {

    },
    [19527] = {

    },
    [19528] = {

    },
    [19529] = {
        {name = "type", type = "uint32"}
    },
    [19530] = {

    },
    [19531] = {
        {name = "flag", type = "uint8"}
    },
    [19600] = {

    },
    [19601] = {

    },
    [19602] = {

    },
    [19603] = {

    },
    [19604] = {

    },
    [19605] = {
        {name = "plan", type = "uint8"}
    },
    [19606] = {
        {name = "items1", type = "array", fields = {
            {name = "id1", type = "uint32"}
        }}, 
        {name = "items2", type = "array", fields = {
            {name = "id2", type = "uint32"}
        }}
    },
    [19607] = {
        {name = "id1", type = "uint32"},
        {name = "dst_flags", type = "array", fields = {
            {name = "flag1", type = "uint8"}
        }}, 
        {name = "id2", type = "uint32"},
        {name = "src_flags", type = "array", fields = {
            {name = "flag2", type = "uint8"}
        }}
    },
    [19608] = {
        {name = "id", type = "uint32"}
    },
    [19609] = {
        {name = "type", type = "uint32"}
    },
    [19610] = {

    },
    [19611] = {
        {name = "formula_id", type = "uint32"},
        {name = "stuff_list", type = "array", fields = {
            {name = "id", type = "uint32"},
            {name = "index", type = "uint8"}
        }}
    },
    [19612] = {

    },
    [19700] = {

    },
    [19701] = {

    },
    [19702] = {

    },
    [19703] = {
        {name = "id", type = "uint32"},
        {name = "price", type = "uint32"}
    },
    [19704] = {

    },
    [19705] = {
        {name = "id", type = "uint32"}
    },
    [19706] = {
        {name = "id", type = "uint32"}
    },
    [19707] = {

    },
    [19900] = {

    },
    [19901] = {

    },
    [19902] = {

    },
    [19903] = {

    },
    [19904] = {

    },
    [19905] = {

    },
    [19906] = {

    },
    [20000] = {

    },
    [20001] = {

    },
    [20002] = {

    },
    [20003] = {

    },
    [20006] = {

    },
    [20007] = {

    },
    [20008] = {

    },
    [20009] = {
        {name = "id", type = "uint32"}
    },
    [20010] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [20011] = {

    },
    [20012] = {

    },
    [20013] = {
        {name = "flag", type = "uint8"}
    },
    [20014] = {
        {name = "msg", type = "string"}
    },
    [20015] = {
        {name = "rid1", type = "uint32"},
        {name = "platform1", type = "string"},
        {name = "zone_id1", type = "uint16"},
        {name = "rid2", type = "uint32"},
        {name = "platform2", type = "string"},
        {name = "zone_id2", type = "uint16"}
    },
    [20016] = {
        {name = "rid1", type = "uint32"},
        {name = "platform1", type = "string"},
        {name = "zone_id1", type = "uint16"},
        {name = "grade", type = "uint8"}
    },
    [20018] = {

    },
    [20019] = {

    },
    [20021] = {

    },
    [20022] = {

    },
    [20023] = {

    },
    [20024] = {

    },
    [20025] = {

    },
    [20026] = {

    },
    [20027] = {
        {name = "rid1", type = "uint32"},
        {name = "platform1", type = "string"},
        {name = "zone_id1", type = "uint32"},
        {name = "rid2", type = "uint32"},
        {name = "platform2", type = "string"},
        {name = "zone_id2", type = "uint32"}
    },
    [20100] = {

    },
    [20101] = {

    },
    [20102] = {

    },
    [20103] = {

    },
    [20104] = {

    },
    [20105] = {
        {name = "choose", type = "uint8"}
    },
    [20106] = {

    },
    [20107] = {

    },
    [20108] = {

    },
    [20109] = {

    },
    [20200] = {

    },
    [20201] = {

    },
    [20202] = {

    },
    [20203] = {

    },
    [20204] = {
        {name = "order", type = "uint8"}
    },
    [20205] = {

    },
    [20206] = {

    },
    [20207] = {

    },
    [20208] = {

    },
    [20209] = {

    },
    [20300] = {

    },
    [20301] = {
        {name = "wave", type = "uint8"}
    },
    [20302] = {

    },
    [20303] = {

    },
    [20304] = {
        {name = "is_restart", type = "uint8"},
        {name = "is_plot", type = "uint8"}
    },
    [20305] = {

    },
    [20306] = {

    },
    [20307] = {

    },
    [20308] = {

    },
    [20309] = {

    },
    [20310] = {
        {name = "order", type = "uint8"},
        {name = "type", type = "uint8"}
    },
    [20311] = {

    },
    [20400] = {
        {name = "tar_role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [20401] = {
        {name = "tar_role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [20402] = {
        {name = "tar_role_id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [20403] = {
        {name = "item_id", type = "uint32"}
    },
    [20404] = {

    },
    [20405] = {

    },
    [20406] = {

    },
    [20407] = {

    },
    [20408] = {
        {name = "item_id", type = "uint32"},
        {name = "num", type = "uint8"}
    },
    [20409] = {

    },
    [20410] = {

    },
    [20411] = {
        {name = "group_id", type = "uint32"}
    },
    [20412] = {
        {name = "group_id", type = "uint32"},
        {name = "f_id", type = "uint32"},
        {name = "f_platform", type = "string"},
        {name = "f_zone_id", type = "uint16"}
    },
    [20413] = {
        {name = "group_id", type = "uint32"},
        {name = "f_id", type = "uint32"},
        {name = "f_platform", type = "string"},
        {name = "f_zone_id", type = "uint16"},
        {name = "invite_code", type = "uint8"}
    },
    [20414] = {

    },
    [20415] = {
        {name = "group_id", type = "uint32"},
        {name = "f_id", type = "uint32"},
        {name = "f_platform", type = "string"},
        {name = "f_zone_id", type = "uint16"}
    },
    [20416] = {

    },
    [20417] = {
        {name = "plan_id", type = "uint32"},
        {name = "num", type = "uint8"},
        {name = "sex", type = "uint8"}
    },
    [20418] = {

    },
    [20419] = {

    },
    [20420] = {
        {name = "draw_num", type = "uint32"}
    },
    [20421] = {

    },
    [20422] = {

    },
    [20423] = {

    },
    [20424] = {
        {name = "type", type = "uint8"}
    },
    [20425] = {

    },
    [20426] = {
        {name = "index", type = "uint32"},
        {name = "option", type = "uint32"}
    },
    [20427] = {

    },
    [20428] = {

    },
    [20429] = {

    },
    [20430] = {
        {name = "msg", type = "string"}
    },
    [20431] = {
        {name = "type", type = "uint32"},
        {name = "value", type = "uint8"}
    },
    [20432] = {

    },
    [20433] = {

    },
    [20434] = {
        {name = "num", type = "uint32"}
    },
    [20435] = {

    },
    [20436] = {

    },
    [20437] = {

    },
    [20438] = {

    },
    [20439] = {

    },
    [20440] = {

    },
    [20441] = {

    },
    [20442] = {
        {name = "id", type = "uint8"},
        {name = "period", type = "uint8"}
    },
    [20443] = {
        {name = "id", type = "uint8"}
    },
    [20444] = {

    },
    [20445] = {

    },
    [20446] = {
        {name = "result", type = "uint8"}
    },
    [20447] = {
        {name = "flag", type = "uint8"}
    },
    [20448] = {
        {name = "ring_times", type = "uint8"}
    },
    [20449] = {

    },
    [20450] = {

    },
    [20451] = {

    },
    [20452] = {
        {name = "reward_type", type = "uint8"},
        {name = "id", type = "uint32"}
    },
    [20453] = {
        {name = "flower_id", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [20454] = {

    },
    [20455] = {
        {name = "flower_id", type = "uint32"}
    },
    [20456] = {

    },
    [20457] = {
        {name = "item_list", type = "array", fields = {
            {name = "item_id", type = "uint32"},
            {name = "buy_num", type = "uint16"}
        }}
    },
    [20458] = {

    },
    [20459] = {

    },
    [20460] = {

    },
    [20461] = {

    },
    [20462] = {
        {name = "id", type = "uint8"},
        {name = "order_id", type = "uint8"},
        {name = "item_id", type = "uint32"}
    },
    [20463] = {
        {name = "type", type = "uint8"}
    },
    [20464] = {
        {name = "flag", type = "uint8"}
    },
    [20465] = {

    },
    [20466] = {
        {name = "id", type = "uint32"},
        {name = "num", type = "uint32"}
    },
    [20467] = {

    },
    [20468] = {
        {name = "plan_id", type = "uint32"}
    },
    [20469] = {

    },
    [20470] = {

    },
    [20471] = {

    },
    [20472] = {
        {name = "day_id", type = "uint32"}
    },
    [20473] = {

    },
    [20474] = {

    },
    [20475] = {

    },
    [20476] = {
        {name = "group_id", type = "uint8"}
    },
    [20477] = {

    },
    [20478] = {
        {name = "group_id", type = "uint8"}
    },
    [20479] = {

    },
    [20480] = {
        {name = "id", type = "uint8"}
    },
    [20481] = {

    },
    [20482] = {

    },
    [20483] = {

    },
    [20484] = {

    },
    [20485] = {

    },
    [20487] = {

    },
    [20488] = {
        {name = "id", type = "uint8"}
    },
    [20489] = {
        {name = "id", type = "uint8"},
        {name = "lev", type = "uint8"}
    },
    [20490] = {

    },
    [20491] = {

    },
    [20492] = {
        {name = "gift_id", type = "uint16"},
        {name = "item_ids", type = "array", fields = {
            {name = "index", type = "uint32"}
        }}
    },
    [20493] = {

    },
    [20494] = {

    },
    [20495] = {

    },
    [20500] = {

    },
    [20501] = {

    },
    [20502] = {
        {name = "rank_type", type = "uint8"},
        {name = "rank_num", type = "uint32"}
    },
    [20503] = {

    },
    [20504] = {

    },
    [20505] = {

    },
    [20506] = {

    },
    [20507] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [20508] = {

    },
    [20509] = {

    },
    [20510] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [20511] = {
        {name = "type", type = "uint32"},
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [20512] = {

    },
    [20513] = {
        {name = "type", type = "uint32"},
        {name = "value", type = "uint8"}
    },
    [20514] = {
        {name = "msg", type = "string"}
    },
    [20600] = {

    },
    [20601] = {
        {name = "inquiry_id", type = "uint32"},
        {name = "answer", type = "uint8"}
    },
    [20602] = {
        {name = "inquiry_id", type = "uint32"}
    },
    [20603] = {
        {name = "inquiry_id", type = "uint32"}
    },
    [20700] = {
        {name = "init_flag", type = "uint8"}
    },
    [20701] = {

    },
    [20702] = {

    },
    [20703] = {
        {name = "room_name", type = "string"},
        {name = "room_mode", type = "uint8"},
        {name = "room_lev_min", type = "uint8"},
        {name = "min_lev_break", type = "uint8"},
        {name = "room_lev_max", type = "uint8"},
        {name = "max_lev_break", type = "uint8"},
        {name = "room_password", type = "string"},
        {name = "provocation_type", type = "uint8"}
    },
    [20704] = {

    },
    [20705] = {
        {name = "room_id", type = "uint32"},
        {name = "password", type = "string"}
    },
    [20706] = {
        {name = "room_id", type = "uint32"},
        {name = "name", type = "string"},
        {name = "mode", type = "uint8"},
        {name = "room_lev_min", type = "uint8"},
        {name = "min_lev_break", type = "uint8"},
        {name = "room_lev_max", type = "uint8"},
        {name = "max_lev_break", type = "uint8"},
        {name = "password", type = "string"},
        {name = "provocation_type", type = "uint8"}
    },
    [20707] = {

    },
    [20708] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [20709] = {
        {name = "channel", type = "uint8"},
        {name = "flag", type = "uint8"}
    },
    [20710] = {

    },
    [20711] = {

    },
    [20712] = {

    },
    [20713] = {

    },
    [20714] = {

    },
    [20715] = {

    },
    [20716] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [20717] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [20718] = {
        {name = "room_check", type = "uint8"},
        {name = "book_check", type = "uint8"},
        {name = "video_check", type = "uint8"}
    },
    [20719] = {

    },
    [20720] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"},
        {name = "type", type = "uint8"}
    },
    [20721] = {

    },
    [20722] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"},
        {name = "flag", type = "uint8"},
        {name = "type", type = "uint8"}
    },
    [20723] = {

    },
    [20724] = {

    },
    [20725] = {
        {name = "init_flag", type = "uint8"}
    },
    [20726] = {
        {name = "book_name", type = "string"},
        {name = "book_mode", type = "uint8"},
        {name = "book_lev_min", type = "uint8"},
        {name = "min_lev_break", type = "uint8"},
        {name = "book_lev_max", type = "uint8"},
        {name = "max_lev_break", type = "uint8"},
        {name = "is_send_book", type = "uint8"},
        {name = "provocation_type", type = "uint8"}
    },
    [20727] = {
        {name = "id", type = "uint32"},
        {name = "book_name", type = "string"},
        {name = "book_mode", type = "uint8"},
        {name = "book_lev_min", type = "uint8"},
        {name = "min_lev_break", type = "uint8"},
        {name = "book_lev_max", type = "uint8"},
        {name = "max_lev_break", type = "uint8"},
        {name = "is_send_book", type = "uint8"},
        {name = "provocation_type", type = "uint8"}
    },
    [20728] = {
        {name = "id", type = "uint32"}
    },
    [20729] = {
        {name = "room_id", type = "uint32"}
    },
    [20730] = {
        {name = "init_flag", type = "uint8"}
    },
    [20731] = {
        {name = "room_id", type = "uint32"}
    },
    [20732] = {
        {name = "room_id", type = "uint32"},
        {name = "flag", type = "uint8"},
        {name = "password", type = "string"},
        {name = "r_id", type = "uint32"},
        {name = "r_platform", type = "string"},
        {name = "r_zone_id", type = "uint16"}
    },
    [20733] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [20734] = {
        {name = "name", type = "string"}
    },
    [20735] = {

    },
    [20800] = {

    },
    [20801] = {

    },
    [20802] = {

    },
    [20803] = {

    },
    [20804] = {
        {name = "order", type = "uint8"}
    },
    [20805] = {

    },
    [20806] = {

    },
    [20807] = {

    },
    [20808] = {

    },
    [20809] = {

    },
    [20900] = {

    },
    [20901] = {

    },
    [20903] = {
        {name = "msg_num", type = "uint16"}
    },
    [20904] = {

    },
    [20905] = {
        {name = "flag", type = "uint8"}
    },
    [20906] = {

    },
    [20907] = {
        {name = "x", type = "uint8"},
        {name = "y", type = "uint8"}
    },
    [20908] = {

    },
    [20909] = {

    },
    [20910] = {

    },
    [20911] = {

    },
    [20912] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [20913] = {
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [20914] = {

    },
    [20915] = {

    },
    [21000] = {

    },
    [21001] = {
        {name = "item_id", type = "uint32"},
        {name = "cost_msg", type = "string"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [21002] = {
        {name = "item_id", type = "uint32"},
        {name = "cost_msg", type = "string"},
        {name = "rid", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint32"}
    },
    [21003] = {

    },
    [21100] = {

    },
    [21101] = {

    },
    [21102] = {

    },
    [21103] = {

    },
    [21104] = {
        {name = "id", type = "uint32"},
        {name = "platform", type = "string"},
        {name = "zone_id", type = "uint16"}
    },
    [21105] = {

    },
    [21106] = {

    },
    [21107] = {

    },
    [21108] = {

    },
    [21109] = {

    },
    [21110] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [21111] = {
        {name = "battle_id", type = "uint32"},
        {name = "id", type = "uint32"}
    },
    [21112] = {

    },
    [21113] = {

    },
    [21114] = {

    },
    [21115] = {

    },
    [21117] = {

    },
    [21118] = {

    },
    [21121] = {

    },
    [21122] = {

    },
    [21200] = {

    },
    [21201] = {
        {name = "choose_items", type = "array", fields = {
            {name = "id", type = "uint32"}
        }}
    },
    [21202] = {
        {name = "mode", type = "uint8"}
    },
    [21203] = {

    },
    [9900] = {
        {name = "cmd", type = "string"}
    },
    [9901] = {

    },
    [9902] = {

    },
    [9903] = {

    },
    [9904] = {

    },
    [9905] = {

    },
    [9906] = {
        {name = "card", type = "string"}
    },
    [9907] = {

    },
    [9908] = {

    },
    [9909] = {
        {name = "id", type = "uint32"}
    },
    [9910] = {

    },
    [9911] = {

    },
    [9920] = {

    },
    [9921] = {

    },
    [9922] = {

    },
    [9923] = {
        {name = "id", type = "uint32"}
    },
    [9924] = {

    },
    [9925] = {

    },
    [9926] = {
        {name = "lev", type = "uint32"}
    },
    [9927] = {

    },
    [9928] = {

    },
    [9929] = {

    },
    [9930] = {
        {name = "type", type = "uint8"}
    },
    [9931] = {

    },
    [9932] = {

    },
    [9933] = {

    },
    [9934] = {
        {name = "type", type = "uint8"}
    },
    [9935] = {

    },
    [9936] = {
        {name = "id", type = "uint8"}
    },
    [9937] = {

    },
    [9938] = {

    },
    [9939] = {
        {name = "day", type = "uint8"}
    },
    [9940] = {

    },
    [9941] = {

    },
    [9942] = {
        {name = "day", type = "uint8"}
    },
    [9943] = {

    },
    [9944] = {

    },
    [9945] = {

    },
    [9946] = {

    },
    [9947] = {

    },
    [9948] = {
        {name = "id", type = "uint32"},
        {name = "gift_id", type = "uint32"}
    },
    [9949] = {

    },
    [9950] = {
        {name = "num", type = "uint32"}
    },
    [9951] = {

    },
    [9952] = {
        {name = "gift_id", type = "uint32"}
    },
    [9953] = {

    },
    [9954] = {

    },
    [9955] = {

    },
    [9956] = {

    },
    [9957] = {
        {name = "game_name", type = "string"}
    }
}

-- 协议能否缓存
M.can_cache = {
    [1010] = false,
    [1011] = false,
    [1020] = false,
    [1080] = false,
    [1097] = false,
    [1098] = false,
    [1099] = false,
    [10000] = false,
    [10001] = false,
    [10002] = false,
    [10003] = false,
    [10004] = false,
    [10005] = true,
    [10006] = true,
    [10007] = false,
    [10008] = true,
    [10009] = true,
    [10010] = true,
    [10011] = true,
    [10012] = true,
    [10013] = true,
    [10014] = true,
    [10015] = true,
    [10016] = false,
    [10017] = false,
    [10018] = false,
    [10019] = false,
    [10020] = false,
    [10021] = false,
    [10022] = false,
    [10023] = false,
    [10024] = true,
    [10025] = true,
    [10026] = false,
    [10027] = false,
    [10028] = false,
    [10029] = false,
    [10030] = false,
    [10031] = false,
    [10032] = false,
    [10033] = false,
    [10034] = true,
    [10035] = false,
    [10036] = false,
    [10037] = true,
    [10038] = true,
    [10039] = true,
    [10040] = true,
    [10041] = true,
    [10100] = false,
    [10101] = false,
    [10102] = false,
    [10103] = false,
    [10110] = false,
    [10111] = false,
    [10112] = false,
    [10113] = false,
    [10114] = false,
    [10115] = false,
    [10116] = false,
    [10117] = false,
    [10118] = false,
    [10119] = false,
    [10120] = false,
    [10122] = false,
    [10123] = false,
    [10150] = false,
    [10160] = false,
    [10162] = false,
    [10164] = false,
    [10165] = false,
    [10166] = false,
    [10167] = false,
    [10168] = false,
    [10169] = true,
    [10170] = true,
    [10171] = true,
    [10172] = true,
    [10173] = true,
    [10174] = true,
    [10175] = true,
    [10200] = true,
    [10201] = true,
    [10202] = true,
    [10203] = true,
    [10204] = true,
    [10205] = true,
    [10206] = true,
    [10207] = true,
    [10208] = true,
    [10209] = true,
    [10210] = true,
    [10211] = true,
    [10212] = true,
    [10213] = true,
    [10214] = true,
    [10215] = true,
    [10216] = true,
    [10217] = true,
    [10218] = true,
    [10219] = true,
    [10220] = true,
    [10221] = true,
    [10222] = true,
    [10223] = true,
    [10224] = true,
    [10225] = true,
    [10226] = true,
    [10227] = true,
    [10228] = true,
    [10229] = true,
    [10230] = true,
    [10231] = true,
    [10232] = true,
    [10233] = true,
    [10234] = true,
    [10235] = true,
    [10236] = true,
    [10237] = true,
    [10238] = true,
    [10239] = true,
    [10240] = true,
    [10241] = true,
    [10242] = true,
    [10243] = true,
    [10244] = true,
    [10245] = true,
    [10246] = true,
    [10247] = true,
    [10248] = true,
    [10249] = true,
    [10250] = true,
    [10251] = true,
    [10252] = true,
    [10253] = true,
    [10254] = true,
    [10255] = true,
    [10256] = true,
    [10257] = true,
    [10258] = true,
    [10259] = true,
    [10260] = true,
    [10261] = true,
    [10300] = false,
    [10301] = false,
    [10302] = false,
    [10303] = true,
    [10310] = true,
    [10311] = true,
    [10312] = true,
    [10315] = true,
    [10316] = true,
    [10317] = true,
    [10318] = true,
    [10319] = true,
    [10320] = true,
    [10321] = true,
    [10322] = true,
    [10323] = true,
    [10324] = false,
    [10329] = true,
    [10330] = true,
    [10331] = false,
    [10332] = false,
    [10333] = true,
    [10334] = true,
    [10335] = true,
    [10336] = true,
    [10337] = true,
    [10338] = true,
    [10339] = true,
    [10340] = true,
    [10400] = false,
    [10401] = false,
    [10402] = false,
    [10403] = false,
    [10404] = false,
    [10405] = false,
    [10406] = false,
    [10407] = false,
    [10408] = false,
    [10409] = false,
    [10410] = false,
    [10411] = false,
    [10412] = false,
    [10413] = true,
    [10414] = true,
    [10415] = true,
    [10416] = true,
    [10417] = false,
    [10418] = true,
    [10419] = false,
    [10420] = false,
    [10421] = false,
    [10422] = false,
    [10423] = false,
    [10424] = false,
    [10425] = false,
    [10426] = true,
    [10427] = false,
    [10428] = true,
    [10429] = true,
    [10430] = true,
    [10431] = true,
    [10432] = true,
    [10500] = false,
    [10501] = true,
    [10502] = true,
    [10503] = true,
    [10504] = true,
    [10505] = true,
    [10507] = true,
    [10508] = true,
    [10509] = true,
    [10510] = true,
    [10511] = true,
    [10512] = true,
    [10513] = true,
    [10515] = true,
    [10516] = true,
    [10517] = true,
    [10518] = true,
    [10519] = true,
    [10520] = true,
    [10521] = false,
    [10522] = true,
    [10523] = true,
    [10524] = true,
    [10525] = true,
    [10526] = true,
    [10527] = true,
    [10528] = false,
    [10529] = true,
    [10530] = true,
    [10531] = true,
    [10532] = true,
    [10533] = true,
    [10534] = true,
    [10535] = true,
    [10536] = true,
    [10537] = true,
    [10538] = true,
    [10539] = true,
    [10540] = true,
    [10541] = true,
    [10542] = true,
    [10543] = true,
    [10544] = true,
    [10545] = true,
    [10546] = true,
    [10547] = true,
    [10548] = true,
    [10549] = true,
    [10550] = true,
    [10551] = true,
    [10552] = true,
    [10553] = true,
    [10554] = true,
    [10555] = true,
    [10556] = true,
    [10557] = true,
    [10558] = true,
    [10559] = true,
    [10560] = true,
    [10561] = true,
    [10562] = true,
    [10563] = true,
    [10564] = true,
    [10565] = true,
    [10566] = true,
    [10567] = true,
    [10568] = true,
    [10569] = true,
    [10570] = true,
    [10571] = true,
    [10572] = false,
    [10573] = false,
    [10574] = false,
    [10575] = false,
    [10576] = false,
    [10577] = false,
    [10578] = false,
    [10579] = true,
    [10600] = true,
    [10602] = true,
    [10603] = true,
    [10604] = true,
    [10605] = true,
    [10606] = true,
    [10607] = true,
    [10608] = true,
    [10609] = true,
    [10610] = true,
    [10611] = true,
    [10612] = true,
    [10613] = true,
    [10614] = true,
    [10615] = true,
    [10616] = true,
    [10617] = true,
    [10618] = true,
    [10619] = true,
    [10620] = true,
    [10621] = true,
    [10622] = true,
    [10623] = true,
    [10624] = true,
    [10625] = true,
    [10626] = true,
    [10627] = true,
    [10628] = true,
    [10629] = true,
    [10705] = false,
    [10706] = false,
    [10707] = false,
    [10710] = true,
    [10711] = true,
    [10720] = true,
    [10722] = true,
    [10723] = true,
    [10731] = true,
    [10732] = true,
    [10733] = true,
    [10734] = true,
    [10735] = true,
    [10740] = true,
    [10741] = true,
    [10742] = true,
    [10743] = true,
    [10744] = true,
    [10745] = true,
    [10746] = true,
    [10747] = true,
    [10748] = true,
    [10749] = true,
    [10750] = true,
    [10751] = true,
    [10752] = true,
    [10753] = true,
    [10754] = true,
    [10755] = true,
    [10756] = true,
    [10757] = true,
    [10758] = true,
    [10759] = true,
    [10760] = true,
    [10761] = true,
    [10762] = true,
    [10763] = true,
    [10764] = true,
    [10765] = true,
    [10766] = true,
    [10767] = true,
    [10768] = true,
    [10769] = true,
    [10770] = true,
    [10771] = true,
    [10772] = true,
    [10773] = true,
    [10774] = true,
    [10775] = true,
    [10776] = true,
    [10777] = false,
    [10778] = true,
    [10779] = true,
    [10780] = true,
    [10789] = true,
    [10790] = true,
    [10800] = false,
    [10801] = true,
    [10802] = true,
    [10803] = true,
    [10804] = false,
    [10805] = false,
    [10806] = true,
    [10807] = true,
    [10808] = false,
    [10809] = true,
    [10810] = true,
    [10811] = false,
    [10812] = true,
    [10813] = true,
    [10814] = true,
    [10815] = true,
    [10816] = true,
    [10817] = true,
    [10818] = true,
    [10819] = true,
    [10820] = true,
    [10821] = true,
    [10822] = false,
    [10823] = true,
    [10824] = true,
    [10825] = true,
    [10826] = true,
    [10827] = true,
    [10828] = true,
    [10829] = true,
    [10830] = true,
    [10831] = true,
    [10832] = true,
    [10833] = true,
    [10834] = true,
    [10835] = true,
    [10900] = true,
    [10901] = false,
    [10902] = true,
    [10903] = true,
    [10905] = true,
    [10906] = true,
    [10907] = true,
    [10909] = true,
    [10910] = true,
    [10911] = true,
    [10912] = true,
    [10913] = true,
    [10914] = true,
    [10915] = true,
    [10916] = true,
    [10917] = true,
    [10918] = true,
    [10919] = true,
    [10920] = true,
    [10921] = true,
    [10922] = true,
    [1100] = false,
    [1101] = true,
    [1110] = true,
    [1120] = false,
    [11000] = true,
    [11001] = true,
    [11002] = true,
    [11003] = true,
    [11004] = true,
    [11005] = true,
    [11006] = true,
    [11007] = true,
    [11010] = true,
    [11020] = true,
    [11021] = true,
    [11022] = true,
    [11023] = true,
    [11024] = true,
    [11100] = false,
    [11101] = false,
    [11102] = false,
    [11103] = true,
    [11104] = true,
    [11105] = true,
    [11106] = false,
    [11107] = true,
    [11108] = true,
    [11109] = true,
    [11110] = true,
    [11111] = true,
    [11112] = true,
    [11113] = true,
    [11114] = true,
    [11115] = true,
    [11116] = true,
    [11117] = true,
    [11118] = false,
    [11119] = false,
    [11120] = false,
    [11121] = true,
    [11122] = true,
    [11123] = true,
    [11124] = true,
    [11125] = true,
    [11126] = true,
    [11127] = true,
    [11128] = true,
    [11129] = true,
    [11130] = true,
    [11131] = true,
    [11132] = true,
    [11133] = true,
    [11134] = true,
    [11135] = true,
    [11136] = true,
    [11137] = true,
    [11138] = true,
    [11139] = true,
    [11140] = true,
    [11141] = true,
    [11142] = true,
    [11143] = true,
    [11144] = true,
    [11145] = true,
    [11146] = true,
    [11147] = true,
    [11148] = true,
    [11149] = true,
    [11150] = true,
    [11151] = true,
    [11152] = true,
    [11153] = true,
    [11154] = true,
    [11155] = false,
    [11156] = true,
    [11157] = true,
    [11158] = true,
    [11159] = true,
    [11160] = true,
    [11161] = true,
    [11162] = true,
    [11163] = true,
    [11164] = true,
    [11165] = true,
    [11166] = true,
    [11167] = true,
    [11168] = true,
    [11169] = true,
    [11170] = true,
    [11171] = true,
    [11172] = true,
    [11173] = true,
    [11174] = true,
    [11175] = true,
    [11176] = true,
    [11177] = true,
    [11178] = true,
    [11179] = true,
    [11180] = true,
    [11181] = true,
    [11182] = true,
    [11183] = true,
    [11184] = true,
    [11185] = true,
    [11186] = true,
    [11187] = true,
    [11188] = true,
    [11189] = true,
    [11190] = true,
    [11191] = true,
    [11192] = true,
    [11193] = true,
    [11194] = true,
    [11195] = true,
    [11196] = true,
    [11197] = true,
    [11198] = true,
    [11199] = true,
    [11200] = true,
    [11201] = true,
    [11202] = true,
    [11203] = true,
    [11204] = true,
    [11205] = true,
    [11206] = true,
    [11207] = true,
    [11208] = true,
    [11209] = true,
    [11210] = true,
    [11211] = true,
    [11212] = true,
    [11213] = true,
    [11214] = true,
    [11215] = true,
    [11216] = true,
    [11217] = true,
    [11218] = true,
    [11219] = true,
    [11220] = true,
    [11221] = true,
    [11222] = true,
    [11223] = true,
    [11224] = true,
    [11225] = true,
    [11226] = true,
    [11227] = true,
    [11228] = true,
    [11229] = true,
    [11230] = true,
    [11231] = true,
    [11232] = true,
    [11233] = true,
    [11234] = true,
    [11235] = true,
    [11300] = false,
    [11301] = false,
    [11302] = false,
    [11303] = true,
    [11400] = true,
    [11500] = false,
    [11501] = true,
    [11600] = false,
    [11601] = true,
    [11602] = true,
    [11603] = true,
    [11604] = true,
    [11605] = true,
    [11606] = true,
    [11607] = true,
    [11608] = true,
    [11609] = true,
    [11610] = true,
    [11611] = true,
    [11613] = true,
    [11614] = true,
    [11615] = true,
    [11616] = true,
    [11617] = true,
    [11618] = true,
    [11700] = false,
    [11701] = false,
    [11702] = false,
    [11703] = true,
    [11704] = false,
    [11705] = true,
    [11706] = false,
    [11707] = false,
    [11708] = false,
    [11709] = true,
    [11710] = true,
    [11711] = true,
    [11712] = false,
    [11713] = false,
    [11714] = true,
    [11715] = true,
    [11716] = true,
    [11717] = true,
    [11718] = true,
    [11719] = true,
    [11720] = true,
    [11721] = true,
    [11722] = false,
    [11723] = false,
    [11724] = true,
    [11725] = false,
    [11726] = false,
    [11727] = false,
    [11728] = false,
    [11729] = true,
    [11730] = false,
    [11731] = true,
    [11732] = true,
    [11733] = false,
    [11734] = true,
    [11735] = true,
    [11736] = false,
    [11737] = true,
    [11738] = true,
    [11739] = true,
    [11800] = false,
    [11801] = false,
    [11802] = true,
    [11803] = false,
    [11804] = false,
    [11805] = false,
    [11806] = false,
    [11807] = false,
    [11808] = false,
    [11809] = false,
    [11810] = false,
    [11811] = false,
    [11820] = false,
    [11821] = false,
    [11822] = false,
    [11823] = false,
    [11824] = false,
    [11825] = false,
    [11826] = false,
    [11827] = false,
    [11828] = false,
    [11829] = false,
    [11830] = false,
    [11831] = false,
    [11832] = false,
    [11833] = false,
    [11834] = false,
    [11835] = false,
    [11836] = false,
    [11837] = false,
    [11838] = false,
    [11839] = false,
    [11840] = false,
    [11841] = false,
    [11842] = false,
    [11843] = false,
    [11844] = false,
    [11845] = false,
    [11846] = false,
    [11847] = false,
    [11848] = false,
    [11849] = false,
    [11850] = false,
    [11851] = false,
    [11852] = false,
    [11853] = false,
    [11854] = false,
    [11855] = false,
    [11856] = false,
    [11857] = false,
    [11858] = false,
    [11859] = false,
    [11860] = false,
    [11861] = false,
    [11862] = false,
    [11863] = false,
    [11864] = false,
    [11865] = false,
    [11866] = false,
    [11867] = false,
    [11868] = false,
    [11869] = false,
    [11870] = false,
    [11871] = false,
    [11872] = false,
    [11873] = false,
    [11874] = false,
    [11875] = false,
    [11876] = false,
    [11877] = false,
    [11878] = false,
    [11879] = false,
    [11880] = false,
    [11881] = false,
    [11882] = false,
    [11884] = false,
    [11885] = false,
    [11886] = false,
    [11887] = false,
    [11888] = true,
    [11889] = true,
    [11890] = true,
    [11891] = true,
    [11892] = true,
    [11893] = true,
    [11894] = true,
    [11895] = true,
    [11896] = true,
    [11897] = true,
    [11898] = true,
    [11899] = true,
    [12000] = false,
    [12001] = false,
    [12002] = false,
    [12003] = false,
    [12004] = false,
    [12005] = true,
    [12006] = false,
    [12007] = true,
    [12008] = false,
    [12009] = true,
    [12010] = false,
    [12011] = false,
    [12100] = true,
    [12101] = true,
    [12102] = true,
    [12103] = true,
    [12104] = true,
    [12110] = true,
    [12111] = true,
    [12112] = true,
    [12114] = true,
    [12116] = true,
    [12117] = true,
    [12118] = true,
    [12119] = true,
    [12120] = true,
    [12121] = true,
    [12122] = true,
    [12123] = true,
    [12130] = false,
    [12131] = true,
    [12132] = false,
    [12133] = false,
    [12134] = false,
    [12135] = false,
    [12136] = false,
    [12137] = false,
    [12138] = false,
    [12139] = false,
    [12140] = false,
    [12141] = false,
    [12142] = false,
    [12143] = true,
    [12144] = true,
    [12145] = true,
    [12146] = true,
    [12147] = true,
    [12148] = true,
    [12149] = true,
    [12150] = true,
    [12151] = true,
    [12152] = true,
    [12200] = false,
    [12201] = true,
    [12202] = true,
    [12203] = true,
    [12204] = true,
    [12205] = true,
    [12206] = false,
    [12207] = true,
    [12208] = false,
    [12209] = true,
    [12210] = true,
    [12211] = true,
    [12212] = true,
    [12213] = true,
    [12214] = true,
    [12215] = true,
    [12216] = true,
    [12217] = true,
    [12300] = true,
    [12301] = true,
    [12302] = true,
    [12320] = true,
    [12321] = true,
    [12400] = false,
    [12401] = true,
    [12402] = true,
    [12403] = false,
    [12404] = true,
    [12405] = true,
    [12406] = true,
    [12407] = false,
    [12408] = false,
    [12409] = false,
    [12410] = false,
    [12411] = true,
    [12412] = true,
    [12413] = true,
    [12414] = true,
    [12415] = false,
    [12416] = false,
    [12417] = true,
    [12418] = true,
    [12419] = true,
    [12420] = true,
    [12421] = false,
    [12422] = false,
    [12500] = false,
    [12501] = false,
    [12502] = false,
    [12503] = false,
    [12505] = false,
    [12506] = false,
    [12600] = true,
    [12601] = true,
    [12602] = true,
    [12603] = true,
    [12604] = true,
    [12605] = true,
    [12606] = true,
    [12607] = true,
    [12608] = true,
    [12700] = false,
    [12701] = true,
    [12702] = true,
    [12703] = true,
    [12704] = true,
    [12705] = true,
    [12706] = true,
    [12707] = true,
    [12708] = true,
    [12709] = true,
    [12710] = true,
    [12800] = false,
    [12801] = true,
    [12802] = true,
    [12803] = true,
    [12804] = true,
    [12900] = false,
    [12901] = true,
    [12902] = true,
    [12903] = true,
    [12904] = true,
    [12905] = true,
    [12906] = true,
    [12907] = true,
    [12908] = false,
    [13000] = false,
    [13001] = false,
    [13002] = true,
    [13003] = true,
    [13004] = false,
    [13005] = true,
    [13006] = true,
    [13007] = false,
    [13100] = false,
    [13101] = true,
    [13102] = true,
    [13103] = true,
    [13104] = true,
    [13105] = true,
    [13106] = false,
    [13107] = true,
    [13108] = true,
    [13200] = false,
    [13201] = true,
    [13202] = true,
    [13203] = true,
    [13204] = true,
    [13205] = true,
    [13206] = true,
    [13207] = true,
    [13208] = true,
    [13300] = false,
    [13301] = true,
    [13302] = true,
    [13303] = true,
    [13304] = true,
    [13305] = true,
    [13306] = true,
    [13307] = true,
    [13308] = true,
    [13400] = true,
    [13401] = true,
    [13402] = true,
    [13403] = true,
    [13404] = true,
    [13405] = true,
    [13500] = true,
    [13501] = true,
    [13502] = false,
    [13503] = true,
    [13504] = true,
    [13505] = true,
    [13506] = true,
    [13508] = true,
    [13509] = true,
    [13510] = true,
    [13511] = true,
    [13512] = true,
    [13513] = true,
    [13514] = true,
    [13600] = true,
    [13601] = true,
    [13602] = true,
    [13603] = true,
    [13604] = true,
    [13700] = false,
    [13701] = true,
    [13702] = true,
    [13703] = true,
    [13704] = true,
    [13705] = true,
    [13706] = true,
    [13707] = true,
    [13708] = true,
    [13709] = true,
    [13710] = true,
    [13711] = true,
    [13712] = true,
    [13713] = true,
    [13714] = true,
    [13715] = true,
    [13716] = true,
    [13717] = true,
    [13800] = true,
    [13801] = true,
    [13802] = true,
    [13803] = true,
    [13804] = true,
    [13805] = true,
    [13806] = true,
    [13807] = true,
    [13900] = false,
    [13901] = true,
    [13902] = true,
    [13903] = true,
    [14000] = false,
    [14001] = true,
    [14002] = true,
    [14003] = false,
    [14004] = true,
    [14005] = true,
    [14006] = false,
    [14007] = true,
    [14008] = true,
    [14009] = false,
    [14010] = true,
    [14011] = true,
    [14012] = true,
    [14013] = true,
    [14014] = true,
    [14019] = false,
    [14021] = false,
    [14022] = true,
    [14023] = true,
    [14024] = true,
    [14025] = true,
    [14026] = true,
    [14027] = true,
    [14029] = true,
    [14030] = true,
    [14031] = true,
    [14032] = true,
    [14033] = true,
    [14034] = true,
    [14035] = true,
    [14036] = false,
    [14037] = true,
    [14038] = true,
    [14039] = true,
    [14040] = true,
    [14041] = true,
    [14042] = true,
    [14043] = true,
    [14044] = true,
    [14045] = true,
    [14046] = true,
    [14047] = true,
    [14048] = true,
    [14049] = true,
    [14050] = true,
    [14051] = true,
    [14052] = true,
    [14053] = true,
    [14054] = false,
    [14055] = true,
    [14056] = true,
    [14057] = true,
    [14058] = true,
    [14059] = true,
    [14060] = true,
    [14061] = true,
    [14062] = true,
    [14063] = true,
    [14064] = true,
    [14065] = true,
    [14066] = true,
    [14067] = true,
    [14068] = true,
    [14069] = true,
    [14070] = true,
    [14071] = true,
    [14072] = true,
    [14073] = true,
    [14074] = true,
    [14075] = true,
    [14076] = true,
    [14077] = true,
    [14078] = true,
    [14080] = true,
    [14081] = true,
    [14082] = true,
    [14083] = true,
    [14084] = false,
    [14085] = false,
    [14086] = false,
    [14087] = false,
    [14088] = false,
    [14089] = false,
    [14090] = false,
    [14091] = false,
    [14092] = false,
    [14093] = false,
    [14094] = false,
    [14095] = true,
    [14096] = true,
    [14097] = true,
    [14098] = false,
    [14099] = true,
    [14100] = false,
    [14101] = true,
    [14102] = false,
    [14103] = true,
    [14104] = false,
    [14105] = true,
    [14106] = true,
    [14107] = true,
    [14108] = true,
    [14109] = true,
    [14200] = false,
    [14201] = true,
    [14202] = true,
    [14203] = true,
    [14204] = true,
    [14205] = true,
    [14206] = true,
    [14207] = true,
    [14208] = true,
    [14209] = true,
    [14210] = true,
    [14212] = true,
    [14213] = true,
    [14214] = true,
    [14215] = true,
    [14300] = true,
    [14301] = true,
    [14302] = true,
    [14303] = true,
    [14304] = true,
    [14305] = true,
    [14400] = true,
    [14401] = true,
    [14404] = true,
    [14405] = true,
    [14406] = true,
    [14407] = true,
    [14408] = true,
    [14420] = true,
    [14421] = true,
    [14422] = true,
    [14423] = true,
    [14424] = true,
    [14425] = true,
    [14426] = true,
    [14427] = true,
    [14428] = true,
    [14429] = true,
    [14500] = false,
    [14501] = true,
    [14502] = true,
    [14503] = true,
    [14504] = true,
    [14505] = true,
    [14506] = true,
    [14507] = true,
    [14508] = true,
    [14509] = false,
    [14510] = true,
    [14511] = true,
    [14512] = true,
    [14513] = true,
    [14514] = true,
    [14515] = true,
    [14516] = true,
    [14517] = true,
    [14518] = true,
    [14519] = true,
    [14600] = false,
    [14601] = true,
    [14602] = true,
    [14603] = false,
    [14604] = true,
    [14605] = true,
    [14606] = true,
    [14700] = false,
    [14701] = false,
    [14702] = false,
    [14703] = false,
    [14704] = false,
    [14705] = false,
    [14800] = false,
    [14801] = true,
    [14802] = true,
    [14803] = true,
    [14804] = true,
    [14805] = false,
    [14809] = true,
    [14810] = true,
    [14811] = true,
    [14900] = false,
    [14901] = true,
    [14902] = true,
    [14903] = true,
    [14904] = true,
    [14905] = true,
    [14906] = true,
    [14907] = true,
    [14908] = true,
    [14909] = true,
    [14910] = true,
    [15000] = true,
    [15001] = true,
    [15002] = true,
    [15003] = true,
    [15004] = true,
    [15005] = true,
    [15006] = true,
    [15007] = true,
    [15008] = true,
    [15009] = true,
    [15010] = true,
    [15011] = true,
    [15012] = true,
    [15013] = true,
    [15014] = true,
    [15015] = true,
    [15016] = true,
    [15017] = true,
    [15018] = true,
    [15019] = true,
    [15020] = true,
    [15021] = true,
    [15022] = true,
    [15023] = true,
    [15024] = true,
    [15025] = true,
    [15026] = true,
    [15027] = true,
    [15028] = true,
    [15029] = true,
    [15100] = false,
    [15101] = true,
    [15102] = true,
    [15103] = true,
    [15104] = true,
    [15105] = true,
    [15200] = false,
    [15201] = true,
    [15202] = true,
    [15203] = false,
    [15204] = false,
    [15205] = false,
    [15206] = false,
    [15207] = false,
    [15208] = false,
    [15300] = false,
    [15301] = true,
    [15302] = false,
    [15303] = true,
    [15400] = true,
    [15401] = true,
    [15402] = true,
    [15403] = true,
    [15500] = false,
    [15501] = true,
    [15502] = true,
    [15503] = true,
    [15504] = true,
    [15505] = true,
    [15506] = true,
    [15507] = true,
    [15508] = true,
    [15509] = true,
    [15600] = false,
    [15601] = true,
    [15602] = true,
    [15603] = true,
    [15604] = true,
    [15605] = true,
    [15607] = true,
    [15608] = true,
    [15609] = true,
    [15610] = true,
    [15700] = true,
    [15701] = true,
    [15702] = true,
    [15703] = true,
    [15800] = true,
    [15801] = true,
    [15802] = true,
    [15804] = true,
    [15805] = true,
    [15806] = true,
    [15807] = true,
    [15808] = true,
    [15809] = true,
    [15810] = true,
    [15811] = true,
    [15812] = true,
    [15813] = true,
    [15814] = true,
    [15815] = true,
    [15816] = true,
    [15817] = true,
    [15818] = true,
    [15819] = true,
    [15820] = true,
    [15821] = true,
    [15822] = true,
    [15823] = true,
    [15824] = true,
    [15900] = false,
    [15901] = true,
    [15902] = true,
    [15903] = true,
    [16000] = true,
    [16001] = true,
    [16002] = true,
    [16003] = true,
    [16004] = true,
    [16005] = true,
    [16100] = true,
    [16101] = true,
    [16102] = true,
    [16103] = true,
    [16200] = false,
    [16201] = true,
    [16202] = true,
    [16203] = true,
    [16204] = true,
    [16205] = true,
    [16206] = true,
    [16207] = true,
    [16300] = false,
    [16301] = true,
    [16302] = true,
    [16303] = true,
    [16304] = true,
    [16305] = true,
    [16306] = true,
    [16307] = true,
    [16308] = true,
    [16309] = true,
    [16400] = false,
    [16401] = true,
    [16402] = true,
    [16403] = true,
    [16404] = true,
    [16405] = true,
    [16406] = true,
    [16407] = true,
    [16408] = true,
    [16409] = false,
    [16410] = true,
    [16411] = true,
    [16412] = true,
    [16413] = true,
    [16414] = true,
    [16415] = true,
    [16416] = true,
    [16417] = true,
    [16418] = true,
    [16419] = true,
    [16420] = true,
    [16421] = true,
    [16422] = true,
    [16423] = true,
    [16424] = true,
    [16425] = false,
    [16426] = false,
    [16427] = false,
    [16428] = false,
    [16429] = true,
    [16430] = true,
    [16431] = true,
    [16432] = true,
    [16433] = true,
    [16434] = true,
    [16435] = true,
    [16436] = false,
    [16437] = true,
    [16438] = true,
    [16500] = false,
    [16501] = true,
    [16502] = true,
    [16503] = true,
    [16504] = true,
    [16505] = true,
    [16506] = true,
    [16508] = true,
    [16509] = true,
    [16600] = false,
    [16602] = false,
    [16603] = false,
    [16604] = false,
    [16605] = false,
    [16606] = false,
    [16607] = false,
    [16608] = false,
    [16700] = false,
    [16701] = false,
    [16702] = false,
    [16703] = false,
    [16704] = false,
    [16705] = false,
    [16706] = false,
    [16707] = false,
    [16800] = true,
    [16801] = false,
    [16802] = false,
    [16803] = false,
    [16804] = false,
    [16805] = false,
    [16806] = false,
    [16807] = false,
    [16808] = false,
    [16809] = false,
    [16810] = false,
    [16811] = false,
    [16812] = false,
    [16813] = false,
    [16814] = false,
    [16815] = false,
    [16900] = false,
    [16901] = false,
    [16902] = false,
    [16903] = false,
    [16904] = false,
    [16906] = false,
    [16907] = false,
    [16908] = false,
    [17000] = false,
    [17001] = true,
    [17002] = true,
    [17003] = true,
    [17004] = true,
    [17005] = true,
    [17006] = true,
    [17007] = true,
    [17008] = true,
    [17009] = true,
    [17010] = true,
    [17011] = true,
    [17012] = true,
    [17013] = true,
    [17014] = true,
    [17015] = true,
    [17016] = true,
    [17017] = true,
    [17018] = true,
    [17019] = true,
    [17020] = true,
    [17021] = true,
    [17022] = true,
    [17023] = true,
    [17024] = true,
    [17025] = true,
    [17026] = true,
    [17027] = true,
    [17028] = true,
    [17029] = true,
    [17030] = true,
    [17031] = true,
    [17032] = true,
    [17033] = true,
    [17034] = true,
    [17035] = true,
    [17100] = true,
    [17101] = true,
    [17102] = true,
    [17103] = true,
    [17106] = true,
    [17107] = true,
    [17108] = true,
    [17109] = true,
    [17110] = true,
    [17111] = true,
    [17112] = true,
    [17113] = true,
    [17114] = true,
    [17200] = false,
    [17201] = true,
    [17202] = false,
    [17203] = true,
    [17204] = true,
    [17205] = true,
    [17206] = true,
    [17207] = true,
    [17208] = true,
    [17209] = true,
    [17210] = true,
    [17211] = true,
    [17212] = true,
    [17213] = true,
    [17214] = true,
    [17215] = true,
    [17216] = true,
    [17300] = false,
    [17301] = false,
    [17302] = true,
    [17303] = false,
    [17304] = true,
    [17305] = false,
    [17306] = true,
    [17400] = false,
    [17401] = false,
    [17402] = false,
    [17403] = false,
    [17404] = false,
    [17405] = false,
    [17500] = true,
    [17501] = true,
    [17502] = true,
    [17503] = true,
    [17504] = true,
    [17505] = true,
    [17506] = true,
    [17600] = false,
    [17601] = true,
    [17602] = true,
    [17603] = true,
    [17604] = true,
    [17605] = true,
    [17606] = true,
    [17607] = true,
    [17608] = true,
    [17609] = true,
    [17610] = true,
    [17611] = true,
    [17612] = true,
    [17613] = true,
    [17614] = true,
    [17615] = true,
    [17616] = true,
    [17617] = true,
    [17618] = true,
    [17619] = true,
    [17620] = true,
    [17621] = true,
    [17622] = true,
    [17623] = true,
    [17624] = true,
    [17625] = true,
    [17626] = true,
    [17627] = true,
    [17628] = true,
    [17629] = true,
    [17630] = true,
    [17631] = true,
    [17700] = false,
    [17701] = false,
    [17702] = false,
    [17703] = false,
    [17704] = false,
    [17705] = false,
    [17706] = false,
    [17707] = false,
    [17708] = false,
    [17709] = false,
    [17710] = false,
    [17711] = false,
    [17712] = false,
    [17713] = false,
    [17714] = false,
    [17715] = false,
    [17716] = false,
    [17717] = false,
    [17718] = false,
    [17800] = false,
    [17801] = true,
    [17802] = true,
    [17803] = true,
    [17804] = true,
    [17805] = true,
    [17806] = true,
    [17807] = true,
    [17808] = true,
    [17809] = true,
    [17810] = true,
    [17811] = true,
    [17812] = true,
    [17813] = true,
    [17814] = true,
    [17815] = true,
    [17816] = true,
    [17817] = false,
    [17818] = false,
    [17819] = true,
    [17820] = true,
    [17821] = true,
    [17822] = true,
    [17823] = true,
    [17824] = true,
    [17825] = true,
    [17826] = true,
    [17827] = true,
    [17828] = true,
    [17829] = true,
    [17830] = true,
    [17831] = true,
    [17832] = true,
    [17833] = true,
    [17834] = true,
    [17835] = true,
    [17836] = true,
    [17837] = true,
    [17838] = true,
    [17839] = true,
    [17840] = true,
    [17842] = false,
    [17843] = true,
    [17844] = true,
    [17845] = true,
    [17846] = true,
    [17847] = true,
    [17848] = true,
    [17849] = true,
    [17850] = true,
    [17851] = true,
    [17852] = true,
    [17853] = true,
    [17854] = true,
    [17855] = true,
    [17856] = true,
    [17857] = true,
    [17858] = false,
    [17859] = false,
    [17860] = false,
    [17861] = false,
    [17862] = false,
    [17863] = false,
    [17864] = false,
    [17865] = false,
    [17866] = false,
    [17867] = false,
    [17868] = false,
    [17869] = false,
    [17870] = false,
    [17871] = false,
    [17872] = false,
    [17873] = false,
    [17874] = false,
    [17875] = true,
    [17876] = true,
    [17877] = true,
    [17878] = true,
    [17879] = true,
    [17880] = true,
    [17881] = true,
    [17882] = true,
    [17883] = true,
    [17884] = true,
    [17885] = true,
    [17886] = true,
    [17887] = true,
    [17888] = true,
    [17889] = true,
    [17890] = true,
    [17891] = true,
    [17892] = true,
    [17893] = true,
    [17894] = true,
    [17895] = true,
    [17896] = false,
    [17897] = false,
    [17898] = false,
    [17899] = false,
    [17900] = true,
    [17901] = true,
    [17902] = true,
    [17903] = true,
    [17904] = true,
    [17905] = true,
    [17906] = true,
    [17907] = true,
    [17908] = true,
    [17909] = true,
    [17910] = true,
    [17911] = true,
    [17912] = true,
    [17913] = true,
    [17914] = true,
    [17915] = true,
    [17916] = true,
    [17917] = true,
    [17918] = true,
    [17919] = true,
    [17920] = true,
    [17921] = true,
    [17922] = true,
    [17923] = true,
    [17924] = true,
    [17925] = true,
    [17926] = true,
    [17927] = true,
    [17928] = true,
    [17929] = true,
    [17930] = true,
    [17931] = true,
    [17932] = true,
    [17933] = true,
    [17934] = true,
    [17935] = true,
    [17936] = true,
    [17937] = true,
    [17938] = false,
    [17939] = false,
    [17940] = false,
    [17941] = false,
    [17942] = false,
    [17943] = false,
    [17944] = false,
    [17945] = false,
    [17946] = false,
    [17947] = false,
    [17948] = false,
    [17949] = false,
    [17950] = true,
    [17951] = true,
    [17952] = false,
    [17953] = false,
    [17954] = false,
    [17955] = false,
    [17956] = false,
    [17957] = false,
    [17958] = false,
    [17959] = true,
    [17960] = true,
    [17961] = true,
    [17962] = true,
    [17963] = true,
    [17964] = true,
    [17965] = false,
    [17966] = false,
    [17967] = false,
    [18200] = false,
    [18201] = false,
    [18202] = false,
    [18203] = false,
    [18300] = false,
    [18301] = true,
    [18302] = true,
    [18303] = true,
    [18304] = true,
    [18305] = true,
    [18306] = true,
    [18307] = true,
    [18400] = false,
    [18401] = true,
    [18402] = true,
    [18500] = false,
    [18501] = false,
    [18502] = false,
    [18503] = false,
    [18504] = false,
    [18505] = false,
    [18506] = false,
    [18600] = false,
    [18601] = false,
    [18602] = false,
    [18603] = false,
    [18604] = false,
    [18605] = false,
    [18606] = false,
    [18607] = false,
    [18608] = false,
    [18609] = true,
    [18610] = true,
    [18611] = true,
    [18612] = false,
    [18616] = true,
    [18617] = true,
    [18618] = true,
    [18619] = true,
    [18620] = true,
    [18621] = true,
    [18622] = true,
    [18623] = true,
    [18624] = true,
    [18625] = true,
    [18626] = true,
    [18627] = false,
    [18628] = true,
    [18629] = true,
    [18630] = true,
    [18631] = true,
    [18632] = true,
    [18633] = true,
    [18634] = true,
    [18635] = true,
    [18636] = true,
    [18637] = true,
    [18638] = false,
    [18639] = true,
    [18640] = true,
    [18641] = true,
    [18642] = true,
    [18643] = true,
    [18700] = false,
    [18701] = false,
    [18800] = false,
    [18801] = false,
    [18802] = false,
    [18803] = false,
    [18804] = false,
    [18805] = false,
    [18806] = false,
    [18807] = false,
    [18808] = false,
    [18809] = false,
    [18810] = false,
    [18811] = false,
    [18812] = false,
    [18813] = false,
    [18814] = false,
    [18815] = false,
    [18816] = false,
    [19000] = false,
    [19001] = false,
    [19002] = false,
    [19003] = false,
    [19004] = false,
    [19005] = false,
    [19006] = false,
    [19007] = false,
    [19008] = false,
    [19009] = false,
    [19010] = false,
    [19011] = false,
    [19012] = false,
    [19013] = false,
    [19014] = false,
    [19100] = false,
    [19101] = false,
    [19102] = true,
    [19103] = true,
    [19104] = true,
    [19105] = true,
    [19106] = true,
    [19107] = true,
    [19108] = true,
    [19109] = true,
    [19110] = true,
    [19111] = true,
    [19112] = true,
    [19200] = false,
    [19201] = true,
    [19202] = true,
    [19203] = true,
    [19300] = false,
    [19301] = true,
    [19302] = true,
    [19303] = true,
    [19304] = true,
    [19305] = true,
    [19306] = true,
    [19307] = true,
    [19308] = true,
    [19309] = true,
    [19310] = false,
    [19400] = false,
    [19401] = false,
    [19402] = false,
    [19403] = false,
    [19404] = false,
    [19405] = false,
    [19406] = false,
    [19407] = false,
    [19500] = false,
    [19501] = false,
    [19502] = false,
    [19503] = false,
    [19504] = false,
    [19505] = false,
    [19506] = false,
    [19507] = false,
    [19508] = false,
    [19509] = false,
    [19510] = false,
    [19511] = false,
    [19512] = false,
    [19513] = false,
    [19514] = false,
    [19515] = false,
    [19516] = false,
    [19517] = false,
    [19518] = false,
    [19519] = false,
    [19520] = false,
    [19521] = false,
    [19522] = false,
    [19523] = false,
    [19524] = false,
    [19525] = false,
    [19526] = false,
    [19527] = false,
    [19528] = false,
    [19529] = false,
    [19530] = false,
    [19531] = false,
    [19600] = true,
    [19601] = true,
    [19602] = true,
    [19603] = true,
    [19604] = true,
    [19605] = true,
    [19606] = true,
    [19607] = true,
    [19608] = true,
    [19609] = true,
    [19610] = true,
    [19611] = true,
    [19612] = true,
    [19700] = false,
    [19701] = true,
    [19702] = true,
    [19703] = true,
    [19704] = true,
    [19705] = true,
    [19706] = true,
    [19707] = true,
    [19900] = false,
    [19901] = false,
    [19902] = true,
    [19903] = true,
    [19904] = true,
    [19905] = false,
    [19906] = false,
    [20000] = false,
    [20001] = true,
    [20002] = true,
    [20003] = true,
    [20006] = true,
    [20007] = true,
    [20008] = true,
    [20009] = true,
    [20010] = true,
    [20011] = true,
    [20012] = true,
    [20013] = true,
    [20014] = true,
    [20015] = true,
    [20016] = true,
    [20018] = true,
    [20019] = true,
    [20021] = true,
    [20022] = true,
    [20023] = true,
    [20024] = true,
    [20025] = true,
    [20026] = true,
    [20027] = true,
    [20100] = false,
    [20101] = false,
    [20102] = false,
    [20103] = false,
    [20104] = false,
    [20105] = false,
    [20106] = false,
    [20107] = false,
    [20108] = false,
    [20109] = false,
    [20200] = false,
    [20201] = false,
    [20202] = false,
    [20203] = true,
    [20204] = true,
    [20205] = false,
    [20206] = false,
    [20207] = true,
    [20208] = true,
    [20209] = true,
    [20300] = false,
    [20301] = false,
    [20302] = false,
    [20303] = false,
    [20304] = false,
    [20305] = false,
    [20306] = false,
    [20307] = false,
    [20308] = true,
    [20309] = false,
    [20310] = false,
    [20311] = false,
    [20400] = false,
    [20401] = false,
    [20402] = false,
    [20403] = false,
    [20404] = false,
    [20405] = false,
    [20406] = false,
    [20407] = false,
    [20408] = false,
    [20409] = false,
    [20410] = false,
    [20411] = false,
    [20412] = false,
    [20413] = false,
    [20414] = false,
    [20415] = false,
    [20416] = false,
    [20417] = false,
    [20418] = false,
    [20419] = false,
    [20420] = false,
    [20421] = false,
    [20422] = false,
    [20423] = false,
    [20424] = false,
    [20425] = false,
    [20426] = false,
    [20427] = false,
    [20428] = false,
    [20429] = false,
    [20430] = false,
    [20431] = false,
    [20432] = false,
    [20433] = false,
    [20434] = false,
    [20435] = false,
    [20436] = false,
    [20437] = false,
    [20438] = false,
    [20439] = false,
    [20440] = false,
    [20441] = true,
    [20442] = true,
    [20443] = true,
    [20444] = false,
    [20445] = false,
    [20446] = false,
    [20447] = false,
    [20448] = false,
    [20449] = false,
    [20450] = false,
    [20451] = false,
    [20452] = false,
    [20453] = false,
    [20454] = false,
    [20455] = false,
    [20456] = false,
    [20457] = false,
    [20458] = false,
    [20459] = false,
    [20460] = false,
    [20461] = false,
    [20462] = false,
    [20463] = false,
    [20464] = false,
    [20465] = true,
    [20466] = true,
    [20467] = true,
    [20468] = true,
    [20469] = false,
    [20470] = true,
    [20471] = true,
    [20472] = true,
    [20473] = true,
    [20474] = true,
    [20475] = true,
    [20476] = true,
    [20477] = true,
    [20478] = true,
    [20479] = true,
    [20480] = true,
    [20481] = true,
    [20482] = true,
    [20483] = true,
    [20484] = true,
    [20485] = true,
    [20487] = true,
    [20488] = true,
    [20489] = true,
    [20490] = true,
    [20491] = true,
    [20492] = true,
    [20493] = true,
    [20494] = true,
    [20495] = true,
    [20500] = false,
    [20501] = false,
    [20502] = false,
    [20503] = false,
    [20504] = false,
    [20505] = false,
    [20506] = false,
    [20507] = false,
    [20508] = false,
    [20509] = false,
    [20510] = false,
    [20511] = false,
    [20512] = false,
    [20513] = false,
    [20514] = false,
    [20600] = false,
    [20601] = false,
    [20602] = false,
    [20603] = false,
    [20700] = false,
    [20701] = false,
    [20702] = false,
    [20703] = false,
    [20704] = false,
    [20705] = false,
    [20706] = false,
    [20707] = false,
    [20708] = false,
    [20709] = false,
    [20710] = false,
    [20711] = false,
    [20712] = false,
    [20713] = false,
    [20714] = true,
    [20715] = false,
    [20716] = true,
    [20717] = false,
    [20718] = false,
    [20719] = false,
    [20720] = false,
    [20721] = true,
    [20722] = true,
    [20723] = true,
    [20724] = true,
    [20725] = false,
    [20726] = false,
    [20727] = false,
    [20728] = false,
    [20729] = false,
    [20730] = false,
    [20731] = false,
    [20732] = false,
    [20733] = false,
    [20734] = false,
    [20735] = false,
    [20800] = false,
    [20801] = false,
    [20802] = false,
    [20803] = true,
    [20804] = true,
    [20805] = false,
    [20806] = false,
    [20807] = true,
    [20808] = true,
    [20809] = true,
    [20900] = true,
    [20901] = true,
    [20903] = true,
    [20904] = true,
    [20905] = true,
    [20906] = true,
    [20907] = true,
    [20908] = true,
    [20909] = true,
    [20910] = true,
    [20911] = true,
    [20912] = true,
    [20913] = true,
    [20914] = true,
    [20915] = true,
    [21000] = true,
    [21001] = true,
    [21002] = true,
    [21003] = true,
    [21100] = false,
    [21101] = true,
    [21102] = true,
    [21103] = true,
    [21104] = true,
    [21105] = true,
    [21106] = true,
    [21107] = true,
    [21108] = true,
    [21109] = true,
    [21110] = true,
    [21111] = true,
    [21112] = true,
    [21113] = true,
    [21114] = true,
    [21115] = true,
    [21117] = true,
    [21118] = true,
    [21121] = true,
    [21122] = true,
    [21200] = false,
    [21201] = false,
    [21202] = false,
    [21203] = false,
    [9900] = true,
    [9901] = true,
    [9902] = true,
    [9903] = true,
    [9904] = false,
    [9905] = true,
    [9906] = true,
    [9907] = true,
    [9908] = true,
    [9909] = true,
    [9910] = true,
    [9911] = true,
    [9920] = true,
    [9921] = true,
    [9922] = true,
    [9923] = true,
    [9924] = true,
    [9925] = true,
    [9926] = true,
    [9927] = true,
    [9928] = true,
    [9929] = true,
    [9930] = true,
    [9931] = false,
    [9932] = false,
    [9933] = true,
    [9934] = true,
    [9935] = false,
    [9936] = false,
    [9937] = false,
    [9938] = false,
    [9939] = false,
    [9940] = false,
    [9941] = false,
    [9942] = false,
    [9943] = false,
    [9944] = false,
    [9945] = false,
    [9946] = false,
    [9947] = false,
    [9948] = false,
    [9949] = false,
    [9950] = false,
    [9951] = true,
    [9952] = false,
    [9953] = true,
    [9954] = true,
    [9955] = true,
    [9956] = false,
    [9957] = false
}

return M
