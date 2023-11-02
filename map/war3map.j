globals
    boolexpr cj_true_bool_4896bnao87
    player AI__ch_p = null
    unit AI__ch_u = null
    group AI__g = CreateGroup( )
    unit AI__Shop
    boolean ComLib__Is_Test = FALSE
    constant real Crit__Crit_Per_Int = 0.6
    constant real Crit__Decrease_Chance_Modifer = 1.
    constant real Crit__Decrease_Per_Lvl = -0.02
    constant real Crit__Crit_Modifer = 1.5
    constant real Crit__UnConst_Value = 0.05
    trigger DMMultiboardLib_Set_DM_MB_Trg_Var = null
    multiboard DMMultiboardLib_DM_MB = null
    constant real DPSLib__Period = 1.
    trigger DPSLib_DPS_Trg = null
    real DPSLib__Time = 0.
    constant integer Energy_max_energy = 50 //поменял энергию
    constant string Energy__one_bar = "I"
    constant string Energy__green = "|cFFFFFFFF"
    constant string Energy__end = "|r"
    constant real Energy__size = 0.005
    constant real Energy__x_offset = -90.
    constant real Energy__y_offset = -50.
    constant real Energy__z_offset = 50.5
    constant real Energy__regen_period = 0.2
    constant string Energy__SELECT_ENERGY = "Вы выбрали героя с энергией. Энергия - это альтернативный ресурс, используемый в заклинаниях. От ее количества зависит мощность заклинания. 1 ед. энергии = 2% от лечения заклинанием. Используйте ее с умом!"
    trigger EscShops_Trg = CreateTrigger( )
    unit EscShops__Shop
    trigger GLAS4_Trg = CreateTrigger( )
    boolean GoldLib_enabled = FALSE
    constant integer ItemsLib__max_stacks = 6
    trigger ItemsLib__DropItems_Trg_Var = null
    unit MRAS6_Unit = null
    constant real MoonRiderQuestLib__MR_X = -1556.
    constant real MoonRiderQuestLib__MR_Y = 1421.
    constant real MoonRiderQuestLib__Start_Time = 0.00
    constant real MoonRiderQuestLib__End_Time = 6.00
    constant real MoonRiderQuestLib__Deer_X = 2433.
    constant real MoonRiderQuestLib__Deer_Y = -819.
    boolean MoonRiderQuestLib__Unit_Marked = FALSE
    boolean MoonRiderQuestLib__Quest_Finished_P1 = FALSE
    boolean MoonRiderQuestLib__Quest_Started_P2 = FALSE
    boolean MoonRiderQuestLib__Quest_Finished_P2 = FALSE
    trigger MoonRiderQuestLib__Death_Trg = null
    trigger MoonRiderQuestLib__Deer_Death_Trg = null
    trigger MoonRiderQuestLib__MR_Trg = null
    unit MoonRiderQuestLib__Deer = null
    unit MoonRiderQuestLib__MoonRider = null
    constant real PALS4__period = 2.
    constant integer PALS4__ar = 'A03V'
    trigger PALS6_Trg_Attack = null
    integer array PALS6_m_type
    constant real PALS7__length = 5.
    constant string PALS7__eff = "Abilities\\Spells\\Human\\DivineShield\\DivineShieldTarget.mdl"
    constant string PALS7__attach = "origin"
    constant integer PALS7__energy = 50
    trigger PALS7_Trg = CreateTrigger( )
    trigger PALS7__Trg_Cast = CreateTrigger( )
    constant real REAS4___percent = 0.5
    constant real REAS4___time_big = 7.
    constant real REAS4___p_s = 2.
    constant integer REAS4___a_r = 'A04J'
    constant string REAS4___e1 = "Objects\\Spawnmodels\\Orc\\Orcblood\\BattrollBlood.mdl"
    constant string REAS4___e2 = "Objects\\Spawnmodels\\Other\\BeastmasterBlood\\BeastmasterBlood.mdl"
    constant string REAS4___e3 = "Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodFootman.mdl"
    constant string REAS4___e4 = "Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodRifleman.mdl"
    constant string REAS4___e5 = "Objects\\Spawnmodels\\Orc\\Orcblood\\BattrollBlood.mdl"
    constant string REAS4___e6 = "war3mapImported\\BloodEX.mdl"
    constant string REAS4___att = "Abilities\\Spells\\Orc\\Bloodlust\\BloodlustTarget.mdl"
    constant integer REAS4___h_1 = StringHash( "h_1" )
    constant integer REAS4___h_2 = StringHash( "h_2" )
    constant integer REAS4___h_3 = StringHash( "h_3" )
    constant integer REAS4___h_4 = StringHash( "h_4" )
    constant integer REAS4___h_5 = StringHash( "h_5" )
    constant integer REAS4___h_6 = StringHash( "h_6" )
    constant integer REAS4___h_7 = StringHash( "h_7" )
    constant integer REAS4___h_a = StringHash( "h_has_a_REA_ult" )
  //constant integer REAS6___chance = 30
    constant real REAS6___time = 5.
    constant real REAS6___t = 5.
    constant integer REAS6___a_r = 'A04O'
    constant integer REAS6___s_r = 'A04P'
    constant integer REAS6___h_att = StringHash( "h_att" )
    trigger REAS6_Trg = CreateTrigger( )
    constant integer Max_Runes = 5
    constant integer Max_Locs = 2
    constant real Spawn_Period = 60.
    constant string Text_1 = "|r подобрал руну: "
    boolean RunesLib_RunesOn = FALSE
    boolean RunesLib__Rune_Exists = FALSE
    trigger RunesLib__Pick_Up_Trg = null
    trigger SHAS3A_Trg = null
    constant string Stun__eff_id = "Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdl"
    constant integer Stun__max_stuns = 10
    trigger TDMMultiboardLib_Set_TDM_MB_Trg_Var = null
    multiboard TDMMultiboardLib_TDM_MB = null
    integer array TEHS2___turrel_id
    real TEHS4_REDUCE = 0.75
    integer TEHS4_TYPE_1 = 'Ntin'
    integer TEHS4_TYPE_2 = 'N004'
    constant integer TKLS7_buff_id = 'B00B'
    constant real TKLS7_modifer = 0.8
    integer TimeLib_Seconds = 0
    integer TimeLib__Minutes = 0
    boolean TimeLib_CD_Time = FALSE
    boolean TimeLib_GO_Time = FALSE
    constant integer X__h_1 = StringHash( "H_1" )
    constant integer X__h_2 = StringHash( "H_2" )
    trigger ADSLib_Trg = null
    constant integer ASSS4___invis_ab = 'A03W'
    constant integer ASSS4___illus_it = 'I01F'
    constant integer ASSS4___h_order = StringHash( "H_ASS_ORDER" )
    constant integer ASSS4___h_x = StringHash( "H_ASS_X" )
    constant integer ASSS4___h_y = StringHash( "H_ASS_Y" )
    constant integer ASSS4___h_target = StringHash( "H_ASS_TARGET" )
    constant integer ASSS4___h_u = StringHash( "H_ASS_U" )
    group ASSS4___the_g = CreateGroup( )
    player ASSS4___the_p = null
    trigger ASSS4___Trg = CreateTrigger( )
    trigger ASSS4___Trg_Cast = CreateTrigger( )
    constant real ASSS5___check_period = 1.
    constant real ASSS5___radius = 300.
    constant integer ASSS5___dummy_ab = 'A02X'
    constant integer ASSS5___inv_ab = 'A02W'
    boolean ASSS5___the_bool = FALSE
    real array ASSS5___t_x
    real array ASSS5___t_y
    constant integer ASSS6___ab_id = 'A032'
    constant real ASSS6___time = 4.
    constant integer ASSS6___modifer = 1
    trigger ASSS6_Trg = CreateTrigger( )
    constant integer ASSS6___h_u = StringHash( "h_u" )
    sound array DMKillsLib__Multi_Sound
    trigger DMKillsLib_DMKills_Trg_Var = null
    boolean DMKillsLib_Game_Ended = FALSE
    string array DMKillsLib__Multi_Img
    trigger DRASp2Lib_Trg = null
    group DRASp6Lib__gr = CreateGroup( )
    trigger DamageLib__Damage_Trg_Var = null
    group DamageLib__All_Units_Group = CreateGroup( )
    constant real DamageLib__Normal_Size = 8.
    constant real DamageLib__Crit_Size = 12.
    constant real DamageLib__Spell_Damage_Height = 0.
    constant real DamageLib__Spell_Heal_Height = 0.
    constant real DamageLib__Usual_Damage_Height = 0.
    trigger DamageLib__ExplodeTrg = CreateTrigger( )
    integer DamageLib__Cond_Type_Num
    integer array DamageLib__Cond_Type
    trigger Dest__Trg = CreateTrigger( )
    trigger GLAS5_Trg = null
    player GLAS6___ch_p = null
    trigger GLAS6_Trg_A = CreateTrigger( )
    trigger GLAS7_Trg = null
    constant real GROS4___min_dmg = 10.
    constant real GROS4___max_dist = 600.
    trigger GROS4_Trg_A = CreateTrigger( )
    constant string ISS__FX = "Abilities\\Spells\\Items\\AIem\\AIemTarget.mdl"
    trigger ISS__ISS_trig_GetItem
    trigger ISS__ISS_trig_LostItem
    trigger ISS__ISS_trig_OrderToItem
    integer receptlist
    integer itemlist
    integer MRAS4Lib__Now_Lvl = 0
    constant real REAS2___p_str = 0.2
    constant real REAS2___time = 4.
    constant real REAS2___hp_minus = 0.15
    constant integer REAS2___a_r = 'A04G'
    constant integer REAS2___s_r = 'A005'
    constant integer REAS2___str_r = 'A04M'
    constant string REAS2___e = "war3mapImported\\BloodCloudBIG.mdl"
    constant integer REAS2___h_1 = StringHash( "h_1" )
    constant integer REAS2___h_2 = StringHash( "h_2" )
    constant real REAS3___aoe = 300.
    constant real REAS3___time = 7.
    constant integer REAS3___a_r = 'A04I'
    constant integer REAS3___s_a = 'A04L'
    constant integer REAS3___dummy = 'h00N'
    constant integer REAS3___h_cst = StringHash( "cst" )
    constant integer REAS3___h_x = StringHash( "x" )
    constant integer REAS3___h_y = StringHash( "y" )
    constant integer REAS3___h_tim = StringHash( "tim" )
    constant integer REAS3___h_player = StringHash( "player" )
    player REAS3___ch_p = null
    group REAS3___g = CreateGroup( )
    trigger SHAS4_Trg_A = CreateTrigger( )
    trigger SHAS4___Trg = CreateTrigger( )
    sound array TDMKillsLib__Multi_Sound
    trigger TDMKillsLib_TDMKills_Trg_Var = null
    boolean TDMKillsLib_Game_Ended = FALSE
    string array TDMKillsLib__Multi_Img
    constant integer TKLS6___weather_eff = 'WNcw'
    constant real TKLS6___time = 6.
    constant integer TKLS6___abil_id = 'A041'
    constant integer TKLS6___armor_abil_id = 'A042'
    constant integer TKLS6___aura_abil_id = 'A03M'
    constant integer TKLS6___q_abil_id = 'A03K'
    constant integer TKLS6___w_abil_id = 'A03Y'
    constant integer TKLS6___e_abil_id = 'A03N'
    constant integer TKLS6___p_abil_id = 'A03P'
    constant integer TKLS6___h_cst = StringHash( "h_cst" )
    weathereffect TKLS6___we = null
    rect TKLS6___r = null
    boolean TKLS6_metel = FALSE
    constant integer UseItem__max_used = 1
    player ASSS1___ch_p = null
    group ASSS1___gr = CreateGroup( )
    player ASSS3___ch_p = null

    integer CreepsLib__Times = 0
    integer CreepsLib__Lvl = 1
    integer CreepsLib__Matching_Type = 0
    constant integer CreepsLib__count_drop = 24

    player DRASp1Lib__ch_p = null
    group DRASp1Lib__gr = CreateGroup( )
    player DRASp3Lib__ch_p = null
    group DRASp3Lib__gr = CreateGroup( )
    player DRASp4Lib__ch_p = null
    group DRASp4Lib__gr = CreateGroup( )
    player DRASp5Lib__ch_p = null
    group DRASp5Lib__gr = CreateGroup( )
    player FLOS6__ch_p = null
    player GLAS1__ch_p = null
    group GLAS1__gr = CreateGroup( )
    player GLAS2__ch_p = null
    group GLAS2__gr = CreateGroup( )
    player GLAS3__ch_p = null
    group GLAS3__g = CreateGroup( )
    player GROS1___ch_p = null
    group GROS1___gr = CreateGroup( )
    player GROS2___ch_p = null
    group GROS2___gr = CreateGroup( )
    player GROS3___ch_p = null
    group GROS3___gr = CreateGroup( )
    player GROS6___ch_p
    group GROS6___gr = CreateGroup( )
    player MRAS5Lib__ch_p = null
    player MRASp1Lib__ch_p = null
    group MRASp1Lib__gr = CreateGroup( )
    player MRASp2Lib__ch_p = null
    player PALS1__ch_p = null
    constant integer PALS2__energy = 20
    player PALS2__ch_p = null
    player PALS3__ch_p = null
    player REAS1___ch_p = null
    group REAS1___gr = CreateGroup( )
    constant real REAS5___per_str = 1.
    constant real REAS5___aoe = 300.
    constant integer REAS5___a_r = 'A04N'
    constant string REAS5___e = "Abilities\\Spells\\Demon\\DemonBoltImpact\\DemonBoltImpact.mdl"
    player REAS5___ch_p = null
    group REAS5___g = CreateGroup( )
    player SHAS1___ch_p = null
    group SHAS1___gr = CreateGroup( )
    player SHAS2___ch_p = null
    player SHAS3___ch_p = null
    group SHAS3___g = CreateGroup( )
    player TEHS1___ch_p = null
    group TEHS1___gr = CreateGroup( )
    player TEHS3___ch_p = null
    group TEHS3___gr = CreateGroup( )
    integer TEHS3___dest_counter = 0
    constant integer TKLS3___sl_id = 'A04E'
    constant integer TKLS3___buff_id = 'Bfro'
    constant integer TKLS3___max_slowness = 100
    constant integer TKLS3___min_slowness = 0
    constant real TKLS3___slow_time = 0.5
    constant real TKLS3___period = 0.1 //так
    group TKLS3___slowed_units = CreateGroup( )
    integer TKLS3___count_units = 0
    unit array TKLS3___slowed
    integer array TKLS3___slowness
    unit TKLS3___d = null
    constant integer TKLS3___h_u = StringHash( "TKLh_u" )
    constant integer TKLS3___h_id = StringHash( "TKLh_id" )
    player FLOS1__ch_p = null
    player FLOS3__ch_p = null
    group FLOS3__gr = CreateGroup( )
    player FLOS4__ch_p = null
    player FLOS5__ch_p = null
    boolean StartGameLib_Is_Game_Started = FALSE
    group StartGameLib__gr = CreateGroup( )
    timer StartGameLib__SB_Timer = CreateTimer( )
    timer StartGameLib__Sec_Timer = CreateTimer( )
    trigger StartGameLib__Trg = CreateTrigger( )
    sound StartGameLib__CD_Snd
    sound StartGameLib__Go_Snd
    sound StartGameLib__Horn
    player TKLS1___ch_p = null
    group TKLS1___gr = CreateGroup( )
    player TKLS2___ch_p = null
    constant integer TKLS4___slow = 7
    constant real TKLS4___dist = 200.
    trigger TKLS4_Trg = CreateTrigger( )
    constant integer TKLS5___ab_id = 'A03Y'
    constant real TKLS5___percent_int = 1.2
    constant real TKLS5___stun_time = 2.0
    constant real TKLS5___radius = 300.
    constant integer TKLS5___slowing = 8
    constant string TKLS5___eff_target = "war3mapImported\\Crystal Impale.mdl"
    constant string TKLS5___eff_target_2 = "war3mapImported\\Shiva'sWrath.mdl"
    constant string TKLS5___eff_caster = "war3mapImported\\IceNova.mdl"
    group TKLS5___g = CreateGroup( )
    player TKLS5___p = null
    trigger DMRevivingLib_DM_Rev = null
    constant integer FirstMultiboardLib__First_MB_Columns = 4
    constant integer FirstMultiboardLib__First_MB_Rows = 8
    constant integer FirstMultiboardLib__Max_Items = 23
    constant real FirstMultiboardLib__Width = 0.20
    constant real FirstMultiboardLib__FullScreen_Width = 0.99
    constant integer FirstMultiboardLib__Delta_DM_Score = 5
    constant integer FirstMultiboardLib__Delta_TDM_Score = 5
    constant integer FirstMultiboardLib__Max_DM_Score = 205
    constant integer FirstMultiboardLib__Max_TDM_Score = 205
    integer FirstMultiboardLib__DM_Winpoints = 20
    integer FirstMultiboardLib__TDM_Winpoints = 30
    boolean FirstMultiboardLib__RAID_HardMode = FALSE
    boolean FirstMultiboardLib__DM_Creeps = TRUE
    boolean FirstMultiboardLib__TDM_Creeps = TRUE
    boolean FirstMultiboardLib__DM_Runes = TRUE
    boolean FirstMultiboardLib__TDM_Runes = TRUE
    integer FirstMultiboardLib__DM_Pick = 1
    integer FirstMultiboardLib__TDM_Pick = 1
    integer FirstMultiboardLib__RAID_Pick = 1
    integer FirstMultiboardLib__Choosed_I = 2
    integer FirstMultiboardLib__Enabled_Column = 1
    multiboard FirstMultiboardLib__First_MB = null
    string array FirstMultiboardLib__Item_D
    integer array FirstMultiboardLib__Item_R
    integer array FirstMultiboardLib__Item_C
    real array FirstMultiboardLib__Item_W
    string array FirstMultiboardLib__Item_S
    trigger FirstMultiboardLib__Arrows_Trg
    trigger FirstMultiboardLib__Start_Trg
    boolean array FirstMultiboardLib__Item_N
    boolean array FirstMultiboardLib__Item_Disabled
    trigger TDMRevivingLib_TDM_Rev = null
    group XPLib__XP_Group = CreateGroup( )
    player XPLib__XP_Player = null
    unit XPLib__Non_XP_Unit = null
    real array udg_all_real
    timer udg_J_timer = null
    group udg_all_units_group = null
    rect gg_rct_OBEL = null
    rect gg_rct_MR = null
    sound gg_snd_click = null
    sound gg_snd_start = null
    sound gg_snd_victory = null
    sound gg_snd_defeat = null
    sound gg_snd_startstart = null
    sound gg_snd_kill = null
    sound gg_snd_LeaveSound = null
    sound gg_snd_a = null
    sound gg_snd_laugh = null
    sound gg_snd_Boss_1_Berserk = null
    sound gg_snd_Boss_1_Cripple = null
    sound gg_snd_BossDead = null
    sound gg_snd_MentalCry = null
    sound gg_snd_Roar = null
    string gg_snd_Music2
    string gg_snd_Music1
    sound gg_snd_horn = null
    sound gg_snd_Multi_2 = null
    sound gg_snd_Multi_3 = null
    sound gg_snd_Multi_4 = null
    sound gg_snd_Multi_5 = null
    sound gg_snd_Multi_6 = null
    sound gg_snd_cd = null
    sound gg_snd_die = null
    sound gg_snd_Impuls_sound = null
    sound gg_snd_GROS3_Sound = null
    sound gg_snd_ASS_Acid = null
    sound gg_snd_DEA_horn = null
    sound gg_snd_REA_S3 = null
    sound gg_snd_MR_Say = null
    trigger gg_trg_PartyFrame_Alliance = null
    trigger gg_trg_PartyFrame_Share = null
    trigger gg_trg_Quests = null
    trigger gg_trg_Music = null
    trigger gg_trg_createsets = null
    unit gg_unit_n000_0005 = null
    unit gg_unit_n002_0006 = null
    unit gg_unit_n001_0007 = null
    unit gg_unit_ncp2_0008 = null
    unit gg_unit_ncp2_0009 = null
    unit gg_unit_ncp2_0010 = null
    unit gg_unit_ncp2_0011 = null
    unit gg_unit_ncp2_0012 = null
    unit gg_unit_ncp2_0013 = null
    unit gg_unit_ncp2_0014 = null
    unit gg_unit_ncp2_0015 = null
    unit gg_unit_ncp2_0016 = null
    unit gg_unit_ncp2_0017 = null
    unit gg_unit_edos_0053 = null
    hashtable udg_Hash = InitHashtable( )
    hashtable HT = InitHashtable( )
    hashtable udg_SystemHash = InitHashtable()
    string Color_Soft_Green = "|cFF404040"
    integer Online_Players = 0
    player Host_Player = null
    trigger Creeps_Creating_Trg = null
    integer Choosed_Mode = 0
    integer Choosed_WP = 0
    boolean Choosed_Creeps = TRUE
    boolean Choosed_HardMode = FALSE
    integer Choosed_Pick = 1
    boolean Choosed_Runes = TRUE
    sound snd_Error = CreateSound( "Sound\\Interface\\Error.wav", false, false, false, 10, 10, "" )
    constant boolean OWNERS = true
    constant integer Count_Spec_Items = 12
    integer si__recept_F = 0
    integer si__recept_I = 0
    integer array si__recept_V
    integer array s__recept_count
    integer array s__recept_target
    integer array s___recept_it
    integer array s__recept_it
    integer array s___recept_kratn
    integer array s__recept_kratn
    integer si__recepts_F = 0
    integer si__recepts_I = 0
    integer array si__recepts_V
    integer array s___recepts_list
    integer array s__recepts_list
    integer array s__recepts_count
    integer si__itemdummy_F = 0
    integer si__itemdummy_I = 0
    integer array si__itemdummy_V
    integer array s__itemdummy_it
    integer array s__itemdummy_du
    boolean array s__itemdummy_buy
    integer si__items_F = 0
    integer si__items_I = 0
    integer array si__items_V
    integer array s__items_count
    integer array s___items_list
    integer array s__items_list
    timer array s__AI__Spam_Timer
    timer array s__AI__Check_Timer
    timer array s__AI__Move_Timer
    boolean array s__ComLib_Show_Dmg
    real array s__DPSLib_DPS
    real array s__DPSLib_Total_Damage_Done
    texttag array s__Energy__EB_tt
    integer array s__ItemsLib__stack_r_r
    integer array s__ItemsLib__stack_i_r
    integer array s__RunesLib__Rune_Id
    real array s__RunesLib__x
    real array s__RunesLib__y
    boolean array s__ADSLib_ADS_Enabled
    integer array s__DMKillsLib__Multies
    timer array s__DMKillsLib__Multi_Timer
    integer array s__TDMKillsLib__Multies
    timer array s__TDMKillsLib__Multi_Timer
    integer array s__UseItem__id
    integer array s__UseItem__it_order
    integer array s__UseItem__abil_id
    boolean array s__UseItem__point
    integer array s__CreepsLib__Count_Creeps
    integer array s__CreepsLib__Max_Levels
    group array s__CreepsLib__Creep_Camp_Group
    integer array s__CreepsLib__dr_item_r
    integer array s__CreepsLib__dr_item_c
    integer array s__Hero_Raw
    integer array s__StartGameLib__Hero_Str
    integer array s__StartGameLib__Hero_Agi
    integer array s__StartGameLib__Hero_Int
    string array s__Hero_Ic_A
    string array s__Hero_Ic_D
    boolean array s__Is_Hero_Bought
    location array s__DMRevivingLib__Revive_Loc
    boolean array s__DMRevivingLib__Is_Loc_Occupied
    location array s__TDMRevivingLib__Team_1_Loc
    location array s__TDMRevivingLib__Team_2_Loc
    location array s__BuyHeroesLib__Create_Loc
    location array s__BuyHeroesLib__Team_1_Loc
    location array s__BuyHeroesLib__Team_2_Loc
    boolean array s__BuyHeroesLib__Is_Loc_Occ
    string array s__Color_Hex
    integer array s__Color_Dec_1
    integer array s__Color_Dec_2
    integer array s__Color_Dec_3
    integer array s__now_energy
    player array s__Online_Player
    player array s__Team_Leader
    string array s__Team_Name
    unit array s__Circle
    unit array s__Hero
    integer array s__Kills
    integer array s__Deaths
    integer array s__Level
    integer array s__Creeps
    integer array s__Kills_Team
    integer array s__Deaths_Team
    integer array s__Lvl_Team
    integer array s__Creeps_Team
    string array s__Hero_Icon_A
    string array s__Hero_Icon_D
    integer array s__Spec_Item
    trigger st__recept_normalize
    integer f__arg_this
    trigger gg_trg_AddToGroupDamage = null
    trigger gg_trg_DamageCategory0 = null
endglobals

function sc__recept_normalize takes integer this returns nothing
    set f__arg_this = this
    call TriggerEvaluate( st__recept_normalize )
endfunction

function s__recept__allocate takes nothing returns integer
    local integer this = si__recept_F
    if ( this != 0 ) then
        set si__recept_F = si__recept_V[this]
    else
        set si__recept_I = si__recept_I + 1
        set this = si__recept_I
    endif
    if ( this > 1169 ) then
        call DisplayTimedTextToPlayer( GetLocalPlayer( ), 0, 0, 1000., "Unable to allocate id for an object of type: recept" )
        return 0
    endif
    set s__recept_it[this] = ( this - 1 ) * 7
    set s__recept_kratn[this] = ( this - 1 ) * 7
    set si__recept_V[this] = -1
    return this
endfunction
function s__items__allocate takes nothing returns integer
    local integer this = si__items_F
    if ( this != 0 ) then
        set si__items_F = si__items_V[this]
    else
        set si__items_I = si__items_I + 1
        set this = si__items_I
    endif
    if ( this > 39 ) then
        call DisplayTimedTextToPlayer( GetLocalPlayer( ), 0, 0, 1000., "Unable to allocate id for an object of type: items" )
        return 0
    endif
    set s__items_list[this] = ( this - 1 ) * 200
    set si__items_V[this] = -1
    return this
endfunction
function s__itemdummy__allocate takes nothing returns integer
    local integer this = si__itemdummy_F
    if ( this != 0 ) then
        set si__itemdummy_F = si__itemdummy_V[this]
    else
        set si__itemdummy_I = si__itemdummy_I + 1
        set this = si__itemdummy_I
    endif
    if ( this > 8190 ) then
        call DisplayTimedTextToPlayer( GetLocalPlayer( ), 0, 0, 1000., "Unable to allocate id for an object of type: itemdummy" )
        return 0
    endif
    set si__itemdummy_V[this] = -1
    return this
endfunction
function s__recepts__allocate takes nothing returns integer
    local integer this = si__recepts_F
    if ( this != 0 ) then
        set si__recepts_F = si__recepts_V[this]
    else
        set si__recepts_I = si__recepts_I + 1
        set this = si__recepts_I
    endif
    if ( this > 80 ) then
        call DisplayTimedTextToPlayer( GetLocalPlayer( ), 0, 0, 1000., "Unable to allocate id for an object of type: recepts" )
        return 0
    endif
    set s__recepts_list[this] = ( this - 1 ) * 100
    set si__recepts_V[this] = -1
    return this
endfunction

function cj_true_a497bnsor7 takes nothing returns boolean
    return true
endfunction

function cjLibw560nbs9b8nse46703948__init takes nothing returns nothing
    set cj_true_bool_4896bnao87 = Condition( function cj_true_a497bnsor7 )
endfunction




function IsUnitInvul takes unit u returns boolean
    return LoadBoolean( HT, GetHandleId( u ), StringHash( "Has_Invul" ) )
endfunction

function SetUnitInvul takes unit Target, boolean Flag returns nothing
    call SetUnitInvulnerable( Target, Flag )
    call SaveBoolean( HT, GetHandleId( Target ), StringHash( "Has_Invul" ), Flag )
endfunction

function RemoveUnitUnitInvulEx takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local integer i = GetHandleId( t )
    local unit u = LoadUnitHandle( HT, i, 0 )
    call SetUnitInvul(u, false)
    call FlushChildHashtable( HT, i )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

function SetUnitInvulTimer takes unit u, real time returns nothing
    local timer t = CreateTimer( )
    local integer i = GetHandleId( t )
    call SetUnitInvul(u, true)
    call SaveUnitHandle( HT, i, 0, u )
    call TimerStart( t, time, false, function RemoveUnitUnitInvulEx )
    set t = null
    set u = null
endfunction

function AddUnitGroupDamage takes nothing returns nothing
    local unit caster
    if GetEnumUnit() != null then
        set caster = GetEnumUnit()
    else
        set caster = GetTriggerUnit()
    endif
    call GroupAddUnit(LoadGroupHandle(udg_SystemHash, 412, StringHash("damageGroup")), caster)
    call TriggerRegisterUnitEvent(gg_trg_DamageCategory0, caster, EVENT_UNIT_DAMAGED)
    set caster = null

endfunction

function AddUnitGroupDamage_Cond takes nothing returns boolean
    if not IsUnitInGroup(GetEnteringUnit(), LoadGroupHandle(udg_SystemHash, 412, StringHash("damageGroup"))) then
        if IsUnitType(GetEnteringUnit(), UNIT_TYPE_HERO)or GetOwningPlayer(GetEnteringUnit()) == Player(PLAYER_NEUTRAL_AGGRESSIVE) then
            return true
        endif
    endif
    return false
endfunction

function RemoveUnitGroupDamage takes nothing returns nothing
    call GroupRemoveUnit(LoadGroupHandle(udg_SystemHash, 412, StringHash("damageGroup")), GetDyingUnit())
endfunction

function RemoveUnitGroupDamage_Cond takes nothing returns boolean
    if IsUnitInGroup(GetDyingUnit(), LoadGroupHandle(udg_SystemHash, 412, StringHash("damageGroup"))) then
        if not IsUnitType(GetDyingUnit(), UNIT_TYPE_HERO)or IsUnitIllusion(GetDyingUnit()) then
            return true
        endif
    endif
    return false
endfunction

function AddToGroupDamage_Start takes nothing returns nothing
    local trigger t = CreateTrigger()
    local region reg = CreateRegion()
    local group g
    call RegionAddRect(reg, bj_mapInitialPlayableArea)
    set g = GetUnitsInRectAll(bj_mapInitialPlayableArea)
    call ForGroup(g, function AddUnitGroupDamage)
    call DestroyGroup(g)
    call TriggerRegisterEnterRegion(t, reg, null)
    call TriggerAddCondition(t, Condition(function AddUnitGroupDamage_Cond))
    call TriggerAddAction(t, function AddUnitGroupDamage)
    set t = CreateTrigger()
    call TriggerAddCondition(t, Condition(function RemoveUnitGroupDamage_Cond))
    call TriggerAddAction(t, function RemoveUnitGroupDamage)
    call DestroyTimer(GetExpiredTimer())
    set reg = null
    set t = null
    set g = null
endfunction

function InitTrig_AddToGroupDamage takes nothing returns nothing
    call TimerStart(CreateTimer(), 1, false, function AddToGroupDamage_Start)
endfunction


function SimError takes player ForPlayer, string msg returns nothing
    if ( GetLocalPlayer( ) == ForPlayer ) then
        call ClearTextMessages( )
        call DisplayTimedTextToPlayer( ForPlayer, 0.52, -1.00, 2.00, "|cffffcc00" + msg + "|r" )
        call StartSound( snd_Error )
    endif
endfunction


function DropItemLiver takes unit a returns nothing
    local integer i = 0
    local item it = null
    local player p = GetOwningPlayer(a)
    local real x =GetUnitX(a)
    local real y = GetUnitY(a)
    loop
        exitwhen i > 5
        set it = UnitItemInSlot(a, i)
        if it != null then
            call UnitRemoveItem(a, it)
    
            call SetItemDroppable(it, true)
            call SetItemPosition(it, x, y)
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", x, y))
        endif
        
        set i = i + 1
    endloop
    set it = null
endfunction

function ItemDestroyUpdate takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local integer id = GetHandleId( t )
    local item it = LoadItemHandle( HT, id, 0 )
    local real time = LoadReal( HT, id, 1 )
   
    if time > 0 and IsItemOwned( it ) == false and GetWidgetLife( it ) > 0 then

    //поменял сохрание внутрь условия
    set time = time - 1.0
    call SaveReal( HT, id, 1, time )
    // call DisplayTextToForce( GetPlayersAll( ), GetItemName(it) + " время жизни_"  + R2S(time) )

    else
        if GetWidgetLife( it ) > 0 and IsItemOwned( it ) == false then
         //   call PingMinimapLocForForceEx( GetPlayersAll(), GetItemLoc(it), 0.50, bj_MINIMAPPINGSTYLE_ATTACK, 100, 100, 100 )
            call DisplayTextToForce( GetPlayersAll( ), "|cffff0000предмет удален:|r "+ GetItemName(it))
            call SetWidgetLife(it, 1.)
            call RemoveItem( it )
            call FlushChildHashtable( HT, id )
            call PauseTimer( t )
            call DestroyTimer( t )
        endif

    
    endif


    if IsItemOwned( it ) == true then
      //  call DisplayTextToForce( GetPlayersAll( ), GetItemName(it) + " подобран" )
        call FlushChildHashtable( HT, id )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif

    set t = null
    set it = null
endfunction

function ItemDestroy takes item it, real time returns nothing
    local timer t = CreateTimer( )
    local integer id = GetHandleId( t )
    call SaveItemHandle( HT, id, 0, it )
    call SaveReal( HT, id, 1, time )
    call TimerStart( t, 1, true, function ItemDestroyUpdate )
    set it = null
endfunction

function ItemDropBossUpdate takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local integer id = GetHandleId( t )
    local real r = LoadReal( HT, id, 1 )
    local item it = LoadItemHandle( HT, id, 0 )
    if r > 0.0 and GetWidgetLife( it ) > 0.405 then
        call SaveReal( HT, id, 1, r - 0.1 )
    else
        if GetWidgetLife( it ) > 0 then
            call SetWidgetLife(it, 1.)
            call RemoveItem( it )
        endif
        call FlushChildHashtable( HT, id )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set t = null
    set it = null
endfunction

function ItemDropBoss takes integer itdrop, real time , real x , real y returns nothing
    local timer t = CreateTimer( )
    local integer id = GetHandleId( t )
    local item it = CreateItem( itdrop, x, y )
    call SaveItemHandle( HT, id, 0, it )
    call SaveReal( HT, id, 1, time )
    call TimerStart( t, 0.1, true, function ItemDropBossUpdate )
    set t = null
    set it = null
endfunction

function RemoveUnitPerTimerExpired takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local integer i = GetHandleId( t )
    local unit u = LoadUnitHandle( HT, i, 0 )
    if u != null then
      //  call DisplayTextToForce( GetPlayersAll(),GetUnitName(u) + "_удален юнит" )
        call KillUnit( u )
        call RemoveUnit( u )
    endif
    call FlushChildHashtable( HT, i )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

function RemoveUnitPerTimer takes unit u, real time returns nothing
    local timer t = CreateTimer( )
    local integer i = GetHandleId( t )
    call SaveUnitHandle( HT, i, 0, u )
    call TimerStart( t, time, false, function RemoveUnitPerTimerExpired )
    set t = null
    set u = null
endfunction


function Dist takes real x, real y, real x1, real y1 returns real
    return SquareRoot( ( x - x1 ) * ( x - x1 ) + ( y - y1 ) * ( y - y1 ) )
endfunction

function AngleXY takes real x, real y, real x1, real y1 returns real
    return 180.0 / 3.14159 * Atan2( y1 - y, x1 - x )
endfunction

function LightningUnit_Move takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local integer i = GetHandleId( t )
    local unit caster = LoadUnitHandle( HT, i, 0 )
    local unit target = LoadUnitHandle( HT, i, 1 )
    local real Time = LoadReal( HT, i, 2 )
    local real maxdist = LoadReal( HT, i, 4 )
    local real proz = LoadReal(HT, i, 5)
    local real red = LoadReal(HT, i, 6)
    local real green = LoadReal(HT, i, 7)
    local real blue = LoadReal(HT, i, 8)
    local lightning Light = LoadLightningHandle( HT, i, 3 )
    local real x1 = GetUnitX( caster )
    local real y1 = GetUnitY( caster )
    local real z1 = GetUnitFlyHeight( caster ) + 60 //FuncLocationZ( x1, y1 ) // + 
    local real x2 = GetUnitX( target )
    local real y2 = GetUnitY( target )
    local real z2 = GetUnitFlyHeight( target ) + 60 //FuncLocationZ( x2, y2 ) //
    if Time <= 0 or caster == null or target == null or GetUnitState( caster, UNIT_STATE_LIFE ) <= 0.405 or GetUnitState(target, UNIT_STATE_LIFE ) <= 0.405 or Dist( x1 , y1 , x2 , y2 ) >= maxdist then
        call DestroyLightning( Light )
        call FlushChildHashtable( HT, i )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call MoveLightningEx( Light, true, x1, y1, z1, x2, y2, z2 )
        call SetLightningColor(Light, red, green, blue, proz)
        call SaveReal( HT, i, 2, Time - 0.03 )
        call SaveReal(HT, i, 5, proz)
    endif

    set caster = null
    set target = null
    set t = null
    set Light = null
endfunction

function LightningUnit takes unit caster, unit target, string lightningtype, real red, real green, real blue, real inv, real time, real maxdist returns nothing
    local timer t = CreateTimer( )
    local integer i = GetHandleId( t )
    local real x1 = GetUnitX( caster )
    local real y1 = GetUnitY( caster )
    local real z1 = GetUnitFlyHeight( caster ) + 60 // + FuncLocationZ( x1, y1 )
    local real x2 = GetUnitX( target )
    local real y2 = GetUnitY( target )
    local real z2 = GetUnitFlyHeight( target ) + 60 // + FuncLocationZ( x2, y2 )
    local lightning Light = AddLightningEx( lightningtype, true, x1, y1, z1, x2, y2, z2 )
    call SetLightningColor( Light, red, green, blue, inv )
    call SaveUnitHandle( HT, i, 0, caster )
    call SaveUnitHandle( HT, i, 1, target )
    call SaveReal( HT, i, 2, time )
    call SaveLightningHandle( HT, i, 3, Light )
    call SaveReal( HT, i, 4, maxdist )
    call SaveReal(HT, i , 5, inv) // прозрачность
    call SaveReal(HT, i , 6, red)
    call SaveReal(HT, i , 7, green)
    call SaveReal(HT, i , 8, blue)
    call TimerStart( t, 0.03, true, function LightningUnit_Move )
    set t = null
    set caster = null
    set target = null
    set Light = null
endfunction


function LightningRemove takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local integer i = GetHandleId(t)
    local lightning gl = LoadLightningHandle(HT, i, 0)
    if gl != null then
        call DestroyLightning(gl)
    endif
    call DestroyLightning(gl)
    call PauseTimer(t)
    call DestroyTimer(t)
    call FlushChildHashtable(HT, i)
    set gl = null
    set t = null
endfunction
 
function AddTimeLightning takes lightning gl, real time returns nothing
    local timer t = CreateTimer()
    call SaveLightningHandle(HT, GetHandleId(t), 0, gl)
    call TimerStart(t, time, false, function LightningRemove)
    set t = null
    set gl = null
endfunction

function TriggerRegister takes trigger t, playerunitevent e returns nothing
    local integer i = 0
    loop
        call TriggerRegisterPlayerUnitEvent( t, Player( i ), e, null )
        set i = i + 1
        exitwhen i > 15
    endloop
endfunction


function SetStrStatsSave takes unit caster, integer newStr, boolean permanent returns nothing
    local real stats = GetUnitState( caster, UNIT_STATE_LIFE ) / GetUnitState( caster, UNIT_STATE_MAX_LIFE )
    call SetHeroStr( caster, newStr, permanent )
    call SetUnitState( caster, UNIT_STATE_LIFE, stats * GetUnitState( caster, UNIT_STATE_MAX_LIFE ) )
    set caster = null
endfunction

function SetIntStatsSave takes unit caster, integer newInt, boolean permanent returns nothing
    local real stats = GetUnitState( caster, UNIT_STATE_MANA ) / GetUnitState( caster, UNIT_STATE_MAX_MANA )
    call SetHeroInt( caster, newInt, permanent )
    call SetUnitState( caster, UNIT_STATE_MANA, stats * GetUnitState( caster, UNIT_STATE_MAX_MANA ) )
    set caster = null
endfunction

//Проверка атрибута героя
function CheckStatsHero takes unit a returns integer
    if GetHeroStr( a, true ) > GetHeroAgi( a, true ) and GetHeroStr( a, true ) > GetHeroInt( a, true ) then
        return GetHeroStr( a, true )
    elseif GetHeroAgi( a, true ) > GetHeroStr( a, true ) and GetHeroAgi( a, true ) > GetHeroInt( a, true ) then
        return GetHeroAgi( a, true )
    else
        return GetHeroInt( a, true )
    endif
    return 0
endfunction


function Trig_DeleteRune_Conditions takes nothing returns boolean
    return GetItemType(GetManipulatedItem()) == ITEM_TYPE_POWERUP
endfunction

function Trig_DeleteRune_Actions takes nothing returns nothing
    local item it = GetManipulatedItem( )
    local unit u = GetManipulatingUnit( )
    local integer r_r = GetItemTypeId( it )
   // call DisplayTextToForce( GetPlayersAll( ), GetItemName(it) +"-id_"+ I2S(r_r) )

    call TriggerSleepAction(1.)
      //вейт тут нужен НЕДОДЕЛАЛ НЕТ РАЗДЕЛЕНИЯ НА РУНЫ
    if (r_r == 'tdex') or (r_r == 'tint') or (r_r == 'tstr') or (r_r == 'tkno') then
        //удалить руну
        
        call SetWidgetLife(it, 1.)
      //  call DisplayTextToForce( GetPlayersAll( ), GetItemName(it) + " _предмет удален_" )

        call RemoveItem(it)
    endif
    set it = null
endfunction

function InitTrig_DeleteRune takes nothing returns nothing
    local trigger trg = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(trg, EVENT_PLAYER_UNIT_PICKUP_ITEM )
//    call TriggerAddCondition(trg, Condition( function Trig_DeleteRune_Conditions ) )
    call TriggerAddAction(trg, function Trig_DeleteRune_Actions )
    set trg = null
endfunction


function AAK__Act2 takes nothing returns nothing
    local unit cjlocgn_00000000 = GetTriggerUnit( )
    local unit cjlocgn_00000001 = GetOrderTargetUnit( )
    if GetIssuedOrderId( ) == 851983 then
        if IsPlayerAlly( GetOwningPlayer( cjlocgn_00000000 ), GetOwningPlayer( cjlocgn_00000001 ) ) then
            call IssueImmediateOrderById( cjlocgn_00000000, 851972 )
          //  call DisplayTextToForce( GetPlayersAll( ), "стоп приказа атаки" )
        endif
 
    endif
    set cjlocgn_00000000 = null
    set cjlocgn_00000001 = null
endfunction

function AAK__Act takes nothing returns nothing
    local unit attacker = GetAttacker( )
    local unit attacked = GetTriggerUnit( )
    if IsUnitAlly( attacker, GetOwningPlayer( attacked ) ) == true and GetUnitTypeId( attacked ) != 'n003' then
        call IssueImmediateOrder( attacker, "stop" )
    endif
    set attacker = null
    set attacked = null
endfunction

function AAK__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
   // call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddAction( Trg, function AAK__Act )
    set Trg = null
endfunction


function Get_Target_Unit takes unit u, real x, real y returns unit
    local unit uf
    local unit ut_hero
    local unit ut_creep
    local boolexpr b
    local real hp
    local real min_hp_hero = 0.0
    local real min_hp_creep = 0.0
    local group G = CreateGroup()
    local player p = GetOwningPlayer(u)

    call GroupEnumUnitsInRange(G, x, y, 800.0, null)
    loop
        set uf = FirstOfGroup(G)
        exitwhen uf == null

        if GetWidgetLife(uf) > 0.405 and IsUnitEnemy(uf, p) and IsUnitVisible(uf, p) then

            set hp = GetUnitState(uf, UNIT_STATE_LIFE)

            if IsUnitType(uf, UNIT_TYPE_HERO) == true then
                if hp < min_hp_hero or min_hp_hero == 0.0 then
                    set min_hp_hero = hp
                    set ut_hero = uf
                endif
            elseif IsUnitType(uf, UNIT_TYPE_HERO) == false then

                if hp < min_hp_creep or min_hp_creep == 0.0 then
                    set min_hp_creep = hp
                    set ut_creep = uf
                endif

            endif

        endif
        call GroupRemoveUnit(G, uf)
    endloop
    call DestroyGroup(G)
//всегда возвщает героя
    set b = null
    set u = null
    if ut_hero != null then
        set ut_creep = null
        return ut_hero
    endif
    return ut_creep
endfunction


function IsGroupEmpty takes group g returns boolean
    return FirstOfGroup(g) == null
endfunction


function AI__FilterHeroAndEnemy takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsUnitType( u, UNIT_TYPE_HERO )and IsPlayerEnemy( AI__ch_p, GetOwningPlayer( u ) )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and not( GetUnitAbilityLevel( u, 'Avul' ) > 0 ) and IsUnitVisible( u, AI__ch_p ) //and GetUnitAbilityLevel( u, 'Aloc' ) == 0
    set u = null
    return b
endfunction

function AI__FilterEnemy takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( AI__ch_p, GetOwningPlayer( u ) )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and not( GetUnitAbilityLevel( u, 'Avul' ) > 0 )and IsUnitVisible( u, AI__ch_p ) //and GetUnitAbilityLevel( u, 'Aloc' ) == 0
    set u = null
    return b
endfunction

function AI__OrderBuyItem takes unit u, unit shop, integer id returns boolean
    call IssueNeutralTargetOrder( GetOwningPlayer( u ), shop, "smart", u )
    return IssueNeutralImmediateOrderById( GetOwningPlayer( u ), shop, id )
endfunction

function AI__A_Buy takes nothing returns nothing
    local integer i = Online_Players //число игроков
    local player p
    local integer id = 0
    local unit u
    local boolean b = FALSE
    local integer ch = 0
    local integer state = 0
    local integer j = 1
    loop
        exitwhen( j > 10 )
        set ch = 0
        set state = 0
        set p = Player(j - 1) //s__Online_Player[i]
        set id = GetPlayerId( p ) + 1

        //call DisplayTextToForce( GetPlayersAll( ),GetPlayerName(p) + "_игрок_ "+ I2S(Online_Players ) +"_онлайн число" )
        set b = FALSE
        if GetPlayerController( p ) == MAP_CONTROL_COMPUTER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING and GetPlayerState( p, PLAYER_STATE_RESOURCE_GOLD ) >= 290 then

          //  call DisplayTextToForce( GetPlayersAll( ),GetPlayerName(p) + "_комп_ "+ I2S(Online_Players ) +"_онлайн число2" )
            set u = s__Hero[id]
            //call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "_герой должен покупать " )

            set ch = GetHeroStr( u, TRUE )
            set state = 1
            if GetHeroAgi( u, TRUE ) > ch then
                set ch = GetHeroAgi( u, TRUE )
                set state = 2
            endif
            if GetHeroInt( u, TRUE ) > ch then
                set ch = GetHeroInt( u, TRUE )
                set state = 3
            endif
            
            if state == 1 then
                if AI__OrderBuyItem( u, AI__Shop, 'tstr' ) then
                 //   call BJDebugMsg( "buyed" )
                  //  call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "купил силу_" )

                endif
            endif
            if state == 2 then
                if AI__OrderBuyItem( u, AI__Shop, 'tdex' ) then
                  //  call BJDebugMsg( "buyed" )
                  //  call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "купил ловкость_" )
                endif
            endif
            if state == 3 then
                if AI__OrderBuyItem( u, AI__Shop, 'tint' ) then
                  //  call BJDebugMsg( "buyed" )
                   // call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "купил разум_" )

                endif
            endif
        endif
      //  set i = i - 1
        set j = j + 1
    endloop
    set u = null
endfunction
//LOWS FUNC



function AI__A_Death takes nothing returns nothing
    local unit u = GetTriggerUnit( )
    local player p = GetOwningPlayer( u )
    local integer id = GetPlayerId( p ) + 1
    if GetPlayerController( p ) == MAP_CONTROL_COMPUTER and IsUnitType( u, UNIT_TYPE_HERO ) then

        call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_IS_CREEPING" ), FALSE )
        call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ), null ) //вернул
      //call RemoveSavedHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ) ) // добавил
   //   call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "_цель потерял ИИ мертв" + I2S(id)  )
    endif
    set u = null
    set p = null
endfunction

function AI__Spam_Abils takes unit u, unit t returns nothing
    local integer u_id = GetUnitTypeId( u )
    local real u_x = GetUnitX( u )
    local real u_y = GetUnitY( u )
    local real t_x = GetUnitX( t )
    local real t_y = GetUnitY( t )
    //local real dist = SquareRoot( ( u_x - t_x ) * ( u_x - t_x ) + ( u_y - t_y ) * ( u_y - t_y ) )
    local real dist = Dist(u_x, u_y, t_x, t_y)

    local boolean b = FALSE

    if u_id == 'Hpal' then //Паладин
        if GetUnitStatePercent( u, UNIT_STATE_LIFE, UNIT_STATE_MAX_LIFE ) <= 0.1 then
            set b = IssueImmediateOrderById( u, 852127 )
            if not b then
                set b = IssueTargetOrderById( u, 852209, u )
                if not b then
                    set b = IssueImmediateOrderById( u, 852096 )
                endif
            endif
        endif
        if dist > 250.then
            set b = IssueImmediateOrderById( u, 852096 )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
            endif
        endif
        if dist <= 250.then
            set b = IssuePointOrderById( u, 852218, t_x, t_y )
            if not b then
                set b = IssueImmediateOrderById( u, 852096 )
                if not b then
                    set b = IssuePointOrderById( u, 852652, t_x, t_y )
                endif
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
    endif

    if u_id == 'Nfir' then //Повелитель огня
        if dist <= 350.then
            set b = IssueImmediateOrderById( u, 852096 )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
                if not b then
                    set b = IssuePointOrderById( u, 852218, t_x, t_y )
                    if not b then
                        set b = IssueImmediateOrderById( u, 852127 )
                    endif
                endif
            endif
        endif
        if dist > 350.then
            set b = IssuePointOrderById( u, 852218, t_x, t_y )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
                if not b then
                    set b = IssueImmediateOrderById( u, 852127 )
                endif
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'H000' then //Исщадье тьмы
        if dist <= 400.then
            set b = IssueImmediateOrderById( u, 852127 )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
                if not b then
                    set b = IssueImmediateOrderById( u, 852096 )
                    if not b then
                        set b = IssuePointOrderById( u, 852218, t_x, t_y )
                    endif
                endif
            endif
        endif
        if dist > 400.then
            set b = IssueImmediateOrderById( u, 852096 )
            if not b then
                set b = IssuePointOrderById( u, 852218, t_x, t_y )
                if not b then
                    set b = IssuePointOrderById( u, 852652, t_x, t_y )
                endif
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'E000' then //Мрак
        if dist <= 350.then
            set b = IssueImmediateOrderById( u, 852096 )
            if not b then
                set b = IssueTargetOrderById( u, 852209, u )
                if not b then
                    set b = IssuePointOrderById( u, 852218, t_x, t_y )
                    if not b then
                        set b = IssuePointOrderById( u, 852652, t_x, t_y )
                        if not b then
                            set b = IssueImmediateOrderById( u, 852127 )
                        endif
                    endif
                endif
            endif
        endif
        if dist > 350.then
            set b = IssuePointOrderById( u, 852652, t_x, t_y )
            if not b then
                set b = IssuePointOrderById( u, 852218, t_x, t_y )
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'Obla' then //Гладиатор
        if dist <= 250.then
            set b = IssueImmediateOrderById( u, 852100 )
            if not b then
                set b = IssueImmediateOrderById( u, 852096 )
                if not b then
                    set b = IssuePointOrderById( u, 852218, t_x, t_y )
                    if not b then
                        set b = IssuePointOrderById( u, 852652, t_x, t_y )
                    endif
                endif
            endif
        endif
        if dist > 250.then
            set b = IssuePointOrderById( u, 852652, t_x, t_y )
            if not b then
                set b = IssuePointOrderById( u, 852218, t_x, t_y )
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'Otch' then //Шаман Земли
        if dist <= 450.then
            set b = IssueImmediateOrderById( u, 852127 )
            if not b then
                set b = IssueTargetOrderById( u, 852209, u )
                if not b then
                    set b = IssueImmediateOrderById( u, 852096 )
                    if not b then
                        set b = IssuePointOrderById( u, 852652, t_x, t_y )
                        if not b then
                            set b = IssuePointOrderById( u, 852218, t_x, t_y )
                        endif
                    endif
                endif
            endif
        endif
        if dist > 450.then
            set b = IssuePointOrderById( u, 852218, t_x, t_y )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
                if not b then
                    set b = IssueImmediateOrderById( u, 852127 )
                endif
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'N005' then //Громовержец
        if dist <= 500.then
            set b = IssueImmediateOrderById( u, 852127 )
            if not b then
                set b = IssueTargetOrderById( u, 852209, u )
                if not b then
                    set b = IssueImmediateOrderById( u, 852096 )
                    if not b then
                        set b = IssuePointOrderById( u, 852652, t_x, t_y )
                    endif
                endif
            endif
        endif
        if dist > 500.then
            set b = IssuePointOrderById( u, 852652, t_x, t_y )
            if not b then
                set b = IssueImmediateOrderById( u, 852127 )
                if not b then
                    set b = IssuePointOrderById( u, 852218, t_x, t_y )
                endif
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'N006' then //Убийца
        if dist <= 250.then
            set b = IssueImmediateOrderById( u, 852096 )
            if not b then
                call IssuePointOrderById( u, 852218, t_x, t_y )
                if not b then
                    call IssueImmediateOrderById( u, 852127 )
                endif
            endif
        endif
        if dist > 250.then
            set b = IssuePointOrderById( u, 852555, t_x, t_y )
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'Ntin' or u_id == 'N004' then //Техник
        call IssueImmediateOrderById( u, 852096 )
        if dist <= 300.then
            set b = IssueImmediateOrderById( u, 852656 )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
                if not b then
                    set b = IssuePointOrderById( u, 852218, t_x, t_y )
                endif
            endif
        endif
        if dist > 300.then
            set b = IssuePointOrderById( u, 852218, t_x, t_y )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'Hgam' then //Ткач
        if dist > 250.then
            set b = IssuePointOrderById( u, 852218, t_x, t_y )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
                if not b then
                    set b = IssueImmediateOrderById( u, 852127 )
                endif
            endif
        endif
        if dist <= 250.then
            set b = IssueImmediateOrderById( u, 852096 )
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'H00M' then //Рипер
        if GetUnitStatePercent( u, UNIT_STATE_LIFE, UNIT_STATE_MAX_LIFE ) > 0.3 then
            set b = IssueImmediateOrderById( u, 852096 )
        endif
        if not b then
            if dist <= 250.then
                set b = IssueTargetOrderById( u, 852095, t )
            endif
            if not b then
                set b = IssuePointOrderById( u, 852218, t_x, t_y )
                if not b then
                    set b = IssuePointOrderById( u, 852652, t_x, t_y )
                endif
            endif
            if not b then
                call IssueTargetOrderById( u, 851983, t )
            endif
        endif
    endif
endfunction

function AI_A_Spam takes nothing returns nothing
    local integer i = Online_Players
    local player p
    local integer id = 0
    local unit u
    local unit target
    local real t_t = 0.
    local integer j = 1
    loop
        exitwhen( j > 10 )
       // set p = s__Online_Player[i]

        set p = Player(j - 1)
        set id = GetPlayerId(p) + 1
      

       // call DisplayTextToForce( GetPlayersAll( ),GetPlayerName( p) +  "_игрок в цикле_spam" + I2S(j) )

        if GetPlayerController( p ) == MAP_CONTROL_COMPUTER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then
            set u = s__Hero[id]
          
           //  call DisplayTextToForce( GetPlayersAll( ),GetPlayerName( p) +  "_игрок айди_spam" + I2S(id)+ "__.юнит  " + GetUnitName(u ))

            if not IsUnitPaused( u ) and GetUnitAbilityLevel( u, 'Arav' ) == 0 then


                if TimerGetRemaining( s__AI__Spam_Timer[id] ) == 0.then

                 //   call DisplayTextToForce( GetPlayersAll( ),"s__AI__Spam_Timer" + I2S(id ))

                    set target = LoadUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ) )

                    if target != null then // and target != u not( LoadBoolean( HT, GetHandleId( target ), StringHash( "H_IS_SHIELD" ) ) ) щит паладина
                        if GetUnitAbilityLevel( target, 'Avul' ) == 0 and GetUnitState( target, UNIT_STATE_LIFE ) > 0.405 and IsUnitVisible( target, p ) and GetUnitAbilityLevel( target, 'Aloc' ) == 0 then
                            call AI__Spam_Abils( u, target )
                        //call IssueTargetOrder( u, "attack", target)
                      //      call DisplayTextToForce( GetPlayersAll( ), GetUnitName( u ) + "_id_" + I2S(id) + "_кастует в _" + GetUnitName( target ) )
                        else
                            call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ), null )
                         //  call DisplayTextToForce( GetPlayersAll( ),GetUnitName( u ) + "_id_"+ I2S(id) +  "цель потеряна кастует ИИ SPAM" )
                        endif
                    endif
                    
                    if GetAIDifficulty( p ) == AI_DIFFICULTY_NEWBIE then
                        set t_t = 2.
                    endif
                    if GetAIDifficulty( p ) == AI_DIFFICULTY_NORMAL then
                        set t_t = 1.5
                    endif
                    if GetAIDifficulty( p ) == AI_DIFFICULTY_INSANE then
                        set t_t = 1.
                    endif
                    call TimerStart( s__AI__Spam_Timer[id ], t_t, FALSE, null )
                endif
            endif

        endif
      
        set j = j + 1

    endloop
    set target = null
    set u = null
endfunction


function UnitOccupiedSlotsNumber takes unit target returns integer
    local integer i = -1
    local item itemID
    local integer index = 0
    loop
        set i = i + 1
        exitwhen i > 5
        set itemID = UnitItemInSlot( target, i )
        if itemID != null then
            set index = index + 1
        endif
        set itemID = null
    endloop
    set target = null
    set itemID = null
    return index
endfunction

function AI__GetItems takes nothing returns nothing
    local item it = GetEnumItem( )
    local unit u = AI__ch_u
    if UnitOccupiedSlotsNumber( u ) < 6 and u != null and GetWidgetLife( u ) > 0 and IsUnitPaused( u ) == false then
    call IssueTargetOrderById( u, 851971, it )
//подобрать предмет с земли
    endif
    set u = null
    set it = null
endfunction

function AI_A_Do takes nothing returns nothing
    local integer i = Online_Players
    local player p
    local integer id = 0
    local unit u
    local unit FoG
    local integer camp_id
    local real c_x
    local real c_y
    local unit t_unit
   // local real min_hp = 10000000.
    local real min_hp = 999999.0
    local integer a = 0
    local rect r = null
    local real x = 0.
    local real y = 0.
    local real t_t = 0.
    local timer t
    local integer j = 1

    local unit f
    local group g
    local group gRR = CreateGroup()


    loop
        exitwhen ( j > 10 )
       // set p = s__Online_Player[i]
  
        set p = Player(j - 1)
        set id = GetPlayerId(p) + 1
      

        if GetPlayerController( p ) == MAP_CONTROL_COMPUTER and GetPlayerSlotState( p ) == PLAYER_SLOT_STATE_PLAYING then
       // call DisplayTextToForce( GetPlayersAll( ),GetPlayerName( p) +  "_игрок в цикле_do" + I2S(i) + I2S(GetPlayerId( p )) )

            set u = s__Hero[id]
            if not IsUnitPaused( u ) and GetUnitAbilityLevel( u, 'Arav' ) == 0 then
            
           //call DisplayTextToForce( GetPlayersAll( ),GetPlayerName( p) +  "_игрок айди_do" + I2S(id)+ "__" + GetUnitName(u ))

                if TimerGetRemaining( s__AI__Check_Timer[id] ) == 0.then
                //создается рект для подбора прдеметов рядом, тупость полня
               // call DisplayTextToForce( GetPlayersAll( ),"_s__AI__Check_Timer" + I2S(id ))

              //  set id = GetPlayerId( p ) + 1
             //   set u = s__Hero[id]
                //добавил

                    set r = Rect( GetUnitX( u ) - 300., GetUnitY( u ) - 300., GetUnitX( u ) + 300., GetUnitY( u ) + 300. )
                    set AI__ch_u = u
                    set AI__ch_p = GetOwningPlayer(u)
                
                    call EnumItemsInRect( r, null, function AI__GetItems )
                    call RemoveRect( r )
                    set r = null

                    set g = CreateGroup()
                    call GroupEnumUnitsInRange(g, GetUnitX( u ), GetUnitY( u ), 800., null)
                    loop
                        set f = FirstOfGroup(g)
                        exitwhen f == null
                        if IsUnitInGroup(f, gRR) == false and IsUnitType( f, UNIT_TYPE_HERO ) and IsPlayerEnemy( GetOwningPlayer( f ) , GetOwningPlayer( u ) ) and GetUnitState(f, UNIT_STATE_LIFE ) > 0.405 and not( GetUnitAbilityLevel( f, 'Avul' ) > 0 ) and IsUnitVisible( f, GetOwningPlayer( u ) ) and IsUnitType(f, UNIT_TYPE_MAGIC_IMMUNE) == false then
                            call GroupAddUnit(gRR, f)
                        endif
                        call GroupRemoveUnit(g, f)
                    endloop
                    call DestroyGroup(g)

                    if not IsGroupEmpty(gRR) then

                        loop
                            set FoG = FirstOfGroup( gRR )
                            exitwhen ( FoG == null )
                        
                            if GetUnitState( FoG, UNIT_STATE_LIFE ) < min_hp then
                                set t_unit = FoG
                                set min_hp = GetUnitState( FoG, UNIT_STATE_LIFE )

                            //поменял местами
                        //     call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + " ищем 1" + GetUnitName(FoG) + "мин хп_" + R2S(min_hp) )
 
                            endif
                            call GroupRemoveUnit( gRR, FoG )
                        
                        endloop
                        call DestroyGroup(gRR)
                    //set t_unit = Get_Target_Unit(u, GetUnitX( u ), GetUnitY( u ))
                   // set t_unit = Get_Target_Unit(u, GetUnitX( u ), GetUnitY( u )) вызвает поиск цели из ловса

                        if t_unit != null then

                            call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ), t_unit )
                          //  call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "нашел супер цель ИИ1_" + GetUnitName(t_unit) )
                            //герой или крип
                        else
                            set g = CreateGroup()
                            call GroupEnumUnitsInRange(g, GetUnitX( u ), GetUnitY( u ), 800., null)
                            loop
                                set f = FirstOfGroup(g)
                                exitwhen f == null
                                if IsUnitInGroup(f, gRR) == false and IsPlayerEnemy( GetOwningPlayer( f ) , GetOwningPlayer( u ) ) and GetUnitState(f, UNIT_STATE_LIFE ) > 0.405 and not( GetUnitAbilityLevel( f, 'Avul' ) > 0 ) and IsUnitVisible( f, GetOwningPlayer( u ) ) then
                                    call GroupAddUnit(gRR, f)
                                endif
                                call GroupRemoveUnit(g, f)
                            endloop
                            call DestroyGroup(g)

                        
                            if not IsGroupEmpty(gRR) then

                           //     call DisplayTextToForce( GetPlayersAll( ), "цель доп переборки ИИ2_" )
   
                                loop
                                    set FoG = FirstOfGroup( gRR )
                                    exitwhen( FoG == null )
                                    if GetUnitState( FoG, UNIT_STATE_LIFE ) < min_hp then
                                   
                                        set t_unit = FoG
                                        set min_hp = GetUnitState( FoG, UNIT_STATE_LIFE )
                                   //     call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + " ищем 2" + GetUnitName(FoG) + "мин хп_" + R2S(min_hp) )


                                    endif
                                    call GroupRemoveUnit( gRR, FoG )
                               
                                endloop
                                call DestroyGroup(gRR)

                                call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ), t_unit )
                            //    call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "нашел цель ИИ2_" + GetUnitName(t_unit) )
                            // цели 2 никогда нет
                            
                            else

                                if TimerGetRemaining( s__AI__Move_Timer[id] ) == 0.then
                                 //   call DisplayTextToForce( GetPlayersAll( ), "Бродить 0_" + GetUnitName(u) )

                                    set x = GetRandomReal( GetRectMinX( bj_mapInitialPlayableArea ), GetRectMaxX( bj_mapInitialPlayableArea ) )
                                    set y = GetRandomReal( GetRectMinY( bj_mapInitialPlayableArea ), GetRectMaxY( bj_mapInitialPlayableArea ) )
                                    if IssuePointOrderById( u, 851983, x, y ) then
                                        call TimerStart( s__AI__Move_Timer[id], GetRandomReal( 3., 10. ), false, null )
                                    endif
                                endif


                            endif
                        
                        endif
                    else

                        set g = CreateGroup()
                        call GroupEnumUnitsInRange(g, GetUnitX( u ), GetUnitY( u ), 800., null)
                        loop
                            set f = FirstOfGroup(g)
                            exitwhen f == null
                            if IsUnitInGroup(f, gRR) == false and IsPlayerEnemy( GetOwningPlayer( f ) , GetOwningPlayer( u ) ) and GetUnitState(f, UNIT_STATE_LIFE ) > 0.405 and not( GetUnitAbilityLevel( f, 'Avul' ) > 0 ) and IsUnitVisible( f, GetOwningPlayer( u ) ) and IsUnitType(f, UNIT_TYPE_MAGIC_IMMUNE) == false then
                                call GroupAddUnit(gRR, f)
                            endif
                            call GroupRemoveUnit(g, f)
                        endloop
                        call DestroyGroup(g)
    
                        if not IsGroupEmpty(gRR) then
                        //call DisplayTextToForce( GetPlayersAll( ), "цель доп переборки ИИ3_" )
                            loop
                                set FoG = FirstOfGroup( gRR )
                                exitwhen( FoG == null )
                                if GetUnitState( FoG, UNIT_STATE_LIFE ) < min_hp then
                                
                                    set t_unit = FoG
                                    set min_hp = GetUnitState( FoG, UNIT_STATE_LIFE )
                               //     call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + " ищем 3 " + GetUnitName(FoG) + "мин хп врага крип3_" + R2S(min_hp) )

                                endif

                                call GroupRemoveUnit( gRR, FoG )
                            
                            endloop

                            call DestroyGroup(gRR)
                            // работает

                            if t_unit != null then
                                call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ), t_unit )
                               // call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "нашел цель ИИ3_" + GetUnitName(t_unit) )

                            else

                                if TimerGetRemaining( s__AI__Move_Timer[id] ) == 0.then
                                  //  call DisplayTextToForce( GetPlayersAll( ), "Бродить 1_" + GetUnitName(u) )
                              //  call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ), null ) //добавил нулл

                                    set x = GetRandomReal( GetRectMinX( bj_mapInitialPlayableArea ), GetRectMaxX( bj_mapInitialPlayableArea ) )
                                    set y = GetRandomReal( GetRectMinY( bj_mapInitialPlayableArea ), GetRectMaxY( bj_mapInitialPlayableArea ) )
                                    if IssuePointOrderById( u, 851983, x, y ) then
                                   //     call DisplayTextToForce( GetPlayersAll( ), "Бродить 1 таймер_" + GetUnitName(u) )
                                        call TimerStart( s__AI__Move_Timer[id], GetRandomReal( 3., 10. ), false, null )
                                    endif
                                endif

                            endif
                        else


                            if TimerGetRemaining( s__AI__Move_Timer[id] ) == 0.then
                         //  call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ), null ) //добавил нулл ОНО тут было???

                             //   call DisplayTextToForce( GetPlayersAll( ), "Бродить 2_" + GetUnitName(u) )
                         //   call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "мы помним цель хеш" + GetUnitName(LoadUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" )) ) )
                           // call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "мы помним цель2" + GetUnitName(t_unit ) )

                                set x = GetRandomReal( GetRectMinX( bj_mapInitialPlayableArea ), GetRectMaxX( bj_mapInitialPlayableArea ) )
                                set y = GetRandomReal( GetRectMinY( bj_mapInitialPlayableArea ), GetRectMaxY( bj_mapInitialPlayableArea ) )
                                if IssuePointOrderById( u, 851983, x, y ) then
                          //   call DisplayTextToForce( GetPlayersAll( ), "Бродить 2 таймер_" + GetUnitName(u) )

                                    call TimerStart( s__AI__Move_Timer[id], GetRandomReal( 3., 10. ), false, null )
                                endif

                            endif

                        endif
                    endif


                    if GetAIDifficulty( p ) == AI_DIFFICULTY_NEWBIE then
                        set t_t = 3.
                    endif
                    if GetAIDifficulty( p ) == AI_DIFFICULTY_NORMAL then
                        set t_t = 2.
                    endif
                    if GetAIDifficulty( p ) == AI_DIFFICULTY_INSANE then
                        set t_t = 1.
                    endif
                    call TimerStart( s__AI__Check_Timer[id], t_t, FALSE, null )
                endif

            endif
        endif

        set j = j + 1

    endloop
    set g = null
    set gRR = null
    set u = null
    set t_unit = null
endfunction


function Ai_wait takes nothing returns nothing
    call TimerStart(CreateTimer(), 5., TRUE, function AI__A_Buy )
endfunction


function AI__I takes nothing returns nothing
    local timer t = CreateTimer( )
    local trigger T_Death
    local integer i = 0 //хз на 0
    call TimerStart( t, 30., false, function Ai_wait)
    set t = null //перекопировал триггорв
    set T_Death = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( T_Death, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( T_Death, function AI__A_Death )
    set AI__Shop = gg_unit_edos_0053 //Магазин
    loop
        exitwhen( i > 11 )

        set s__AI__Check_Timer[i] = CreateTimer( )
        set s__AI__Spam_Timer[i] = CreateTimer( )
        set s__AI__Move_Timer[i] = CreateTimer( )

        set i = i + 1
    endloop
endfunction


function MakingAlpha takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "u" ) )
    local real max = LoadReal( HT, GetHandleId( t ), StringHash( "max" ) )
    local real alpha = LoadReal( HT, GetHandleId( t ), StringHash( "alpha" ) )
    if max > 0.then
        call SetUnitVertexColorBJ( u, 100., 100., 100., alpha - ( 2. / 0.04 / 100. ) * 4 )
        call SaveReal( HT, GetHandleId( t ), StringHash( "max" ), max - 1. )
        call SaveReal( HT, GetHandleId( t ), StringHash( "alpha" ), alpha - ( 2. / 0.04 / 100. ) * 4 )
    else
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set t = null
    set u = null
endfunction

function AlphaLib_AddAlphing takes unit u returns nothing
    local timer t = CreateTimer( )
    if ( GetUnitTypeId( u ) != 'N006' ) then
        call SetUnitVertexColorBJ( u, 100, 100, 100, 100 )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "u" ), u )
        call SaveReal( HT, GetHandleId( t ), StringHash( "max" ), 2. / 0.04 )
        call SaveReal( HT, GetHandleId( t ), StringHash( "alpha" ), 100. )
        call TimerStart( t, 0.04, true, function MakingAlpha )
    endif
    set t = null
endfunction

function Anims__BE takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local integer id = GetUnitTypeId( u )
    local boolean b = FALSE
    if id == 'nrac' or id == 'necr' or id == 'nfro' or id == 'nder' or id == 'ndog' then
        set b = TRUE
    endif
    set u = null
    return b
endfunction

function Anims__B takes nothing returns nothing
    local unit u = GetEnumUnit( )
    call SetUnitExploded( u, TRUE )
    set u = null
endfunction

function Anims__A takes nothing returns nothing
    local group g = CreateGroup( )
    call GroupEnumUnitsInRange( g, 0., 0., 9999999., Condition( function Anims__BE ) )
    call ForGroup( g, function Anims__B )
    call GroupClear( g )
    call DestroyGroup( g )
    set g = null
endfunction

function Anims__I takes nothing returns nothing
    local timer t = CreateTimer( )
    call TimerStart( t, 1., FALSE, function Anims__A )
endfunction

function AntiBJ_MultiboardSetItemWidthBJN takes multiboard mb, integer col, integer row, real width returns nothing
    local integer curRow = 0
    local integer curCol = 0
    local integer numRows = MultiboardGetRowCount( mb )
    local integer numCols = MultiboardGetColumnCount( mb )
    local multiboarditem mbitem = null
    loop
        set curRow = curRow + 1
        exitwhen curRow > numRows
        if ( row == 0 or row == curRow ) then
            set curCol = 0
            loop
                set curCol = curCol + 1
                exitwhen curCol > numCols
                if ( col == 0 or col == curCol ) then
                    set mbitem = MultiboardGetItem( mb, curRow - 1, curCol - 1 )
                    call MultiboardSetItemWidth( mbitem, width / 100.0 )
                    call MultiboardReleaseItem( mbitem )
                endif
            endloop
        endif
    endloop
    set mbitem = null
endfunction
function Colors__I takes nothing returns nothing
    call TriggerSleepAction( 0.01 )
    set s__Color_Hex[1] = "|c00ff0303"
    set s__Color_Hex[2] = "|c000042ff"
    set s__Color_Hex[3] = "|c001ce6b9"
    set s__Color_Hex[4] = "|c00540079"
    set s__Color_Hex[5] = "|c00fffc01"
    set s__Color_Hex[6] = "|c00fe8a0e"
    set s__Color_Hex[7] = "|c0020c000"
    set s__Color_Hex[8] = "|c00e55bb0"
    set s__Color_Hex[9] = "|c00959697"
    set s__Color_Hex[10] = "|c007ebff1"
    set s__Color_Hex[11] = "|c00106246"
    set s__Color_Hex[12] = "|c004e2a04"
    set s__Color_Dec_1[1] = 255
    set s__Color_Dec_2[1] = 3
    set s__Color_Dec_3[1] = 3
    set s__Color_Dec_1[2] = 0
    set s__Color_Dec_2[2] = 66
    set s__Color_Dec_3[2] = 255
    set s__Color_Dec_1[3] = 28
    set s__Color_Dec_2[3] = 230
    set s__Color_Dec_3[3] = 185
    set s__Color_Dec_1[4] = 84
    set s__Color_Dec_2[4] = 0
    set s__Color_Dec_3[4] = 121
    set s__Color_Dec_1[5] = 255
    set s__Color_Dec_2[5] = 252
    set s__Color_Dec_3[5] = 1
    set s__Color_Dec_1[6] = 254
    set s__Color_Dec_2[6] = 138
    set s__Color_Dec_3[6] = 14
    set s__Color_Dec_1[7] = 32
    set s__Color_Dec_2[7] = 192
    set s__Color_Dec_3[7] = 0
    set s__Color_Dec_1[8] = 229
    set s__Color_Dec_2[8] = 91
    set s__Color_Dec_3[8] = 176
    set s__Color_Dec_1[9] = 149
    set s__Color_Dec_2[9] = 150
    set s__Color_Dec_3[9] = 151
    set s__Color_Dec_1[10] = 126
    set s__Color_Dec_2[10] = 191
    set s__Color_Dec_3[10] = 241
    set s__Color_Dec_1[11] = 16
    set s__Color_Dec_2[11] = 98
    set s__Color_Dec_3[11] = 70
    set s__Color_Dec_1[12] = 78
    set s__Color_Dec_2[12] = 42
    set s__Color_Dec_3[12] = 4
    set s__Color_Dec_1[13] = 128
    set s__Color_Dec_2[13] = 128
    set s__Color_Dec_3[13] = 128
endfunction

function ComLib__Act takes nothing returns nothing
    local string chat = GetEventPlayerChatString( )
    local player p = GetTriggerPlayer( )
    local integer id = GetConvertedPlayerId( p )
    local string ss = null
    local string ss2 = null
    local integer i = 0
    local unit u

    if ( chat == "-test" ) then
        if Online_Players == 1 then
            set ComLib__Is_Test = TRUE
            call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, "" )
        endif
    endif

    if ( chat == "-bug" ) then
        set i = 1
        loop
            exitwhen( i > Online_Players )
            if GetPlayerController( s__Online_Player[i] ) == MAP_CONTROL_COMPUTER then
                if GetUnitTypeId( s__Hero[GetConvertedPlayerId( s__Online_Player[i] )] ) == 'Obla' then //Гладиатор
                    set u = s__Hero[GetConvertedPlayerId( s__Online_Player[i] )]
                    if GetUnitFlyHeight( u ) > 0.then
                        call UnitRemoveAbility( u, 'Avul' )
                        call SetUnitFlyHeight( u, 0., 0. )
                        call UnitRemoveAbility( u, 'Arav' )
                        call PauseUnit( u, FALSE )
                        call IssueImmediateOrderById( u, 851972 )
    
                        call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, s__Color_Hex[1] + "•|r" )
                        set u = null
                        set chat = null
                        return
                    endif
                    set u = null
                endif
            endif
            set i = i + 1
        endloop
    endif

    if ComLib__Is_Test then
        set ss = SubString( chat, 0, 5 )
        if ( ss == "-gold" ) then
            set ss2 = SubString( chat, 6, StringLength( chat ) )
            set i = S2I( ss2 )
            call SetPlayerState( p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState( p, PLAYER_STATE_RESOURCE_GOLD ) + i )
        endif
    endif

    if ( chat == "-nodmg" ) or ( chat == "-nd" ) then
        if s__ComLib_Show_Dmg[id]then
            set s__ComLib_Show_Dmg[id] = FALSE
            call DisplayTextToPlayer( p, 0., 0., "Показ урона выключен." )
        else
            set s__ComLib_Show_Dmg[id] = TRUE
            call DisplayTextToPlayer( p, 0., 0., "Показ урона включен." )
        endif
    endif

    if ( chat == "-ms" ) or ( chat == "-movespeed" ) then
        call DisplayTextToPlayer( p, 0., 0., "Скорость передвижения Вашего героя = " + I2S( R2I( GetUnitMoveSpeed( s__Hero[id] ) ) ) )
    endif

    if ( chat == "-ads" ) or ( chat == "-ds" ) then
        if s__ADSLib_ADS_Enabled[id]then
            set s__ADSLib_ADS_Enabled[id] = FALSE
            call DisplayTextToPlayer( p, 0., 0., "Отмены выделения выключена." )
        else
            set s__ADSLib_ADS_Enabled[id] = TRUE
            call DisplayTextToPlayer( p, 0., 0., "Отмена выделения включена." )
        endif
    endif

    set ss = SubString( chat, 0, 5 )
    if ( ss == "-team" ) then
        set ss2 = SubString( chat, 6, StringLength( chat ) )
        if p == s__Team_Leader[1]then
            call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, "'" + s__Team_Name[1] + "' » '" + ss2 + "'." )
            set s__Team_Name[1] = ss2
        endif
        if p == s__Team_Leader[2]then
            call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, "'" + s__Team_Name[2] + "' » '" + ss2 + "'." )
            set s__Team_Name[2] = ss2
        endif
    endif
    set ss = null
    set ss2 = null
    set chat = null
endfunction


function ComLib__ComLib_Init takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    local integer i = 0
    loop
        exitwhen( i > 12 )
        call TriggerRegisterPlayerChatEvent( Trg, Player( i ), "-", false )
        set s__ComLib_Show_Dmg[i + 1] = TRUE
        set i = i + 1
    endloop
    call TriggerAddAction( Trg, function ComLib__Act )
    set Trg = null
endfunction

function Crit_IsCrit takes unit source returns boolean
    local real chance = I2R( GetHeroInt( source, true ) ) * Crit__Crit_Per_Int * ( Crit__Decrease_Chance_Modifer + GetUnitLevel( source ) * Crit__Decrease_Per_Lvl )
    local real dice = GetRandomReal( 1., 100. )
    if dice <= chance then
        return TRUE
    else
        return FALSE
    endif
endfunction

function Crit_GetDamage takes real damage, boolean crit returns real
    if crit then
        return( damage * Crit__Crit_Modifer ) * ( 1. + GetRandomReal( -Crit__UnConst_Value, Crit__UnConst_Value ) )
    else
        return damage * ( 1. + GetRandomReal( -Crit__UnConst_Value, Crit__UnConst_Value ) )
    endif
endfunction

function Set_DM_MB_Act takes nothing returns nothing
    local boolean array is_min
    local integer i = 1
    local multiboarditem mbi = null
    loop
        exitwhen( i > 10 )
        if GetLocalPlayer( ) == Player( i - 1 ) then
            set is_min[i] = IsMultiboardMinimized( DMMultiboardLib_DM_MB )
        endif
        set i = i + 1
    endloop
    call MultiboardDisplay( DMMultiboardLib_DM_MB, FALSE )
    call DestroyMultiboard( DMMultiboardLib_DM_MB )
    set DMMultiboardLib_DM_MB = null
    set DMMultiboardLib_DM_MB = CreateMultiboard( )
    call MultiboardSetColumnCount( DMMultiboardLib_DM_MB, 5 )
    if Choosed_Creeps then
        call MultiboardSetColumnCount( DMMultiboardLib_DM_MB, 5 + 1 )
    endif
    call MultiboardSetRowCount( DMMultiboardLib_DM_MB, Online_Players + 1 )
    call MultiboardSetItemsStyle( DMMultiboardLib_DM_MB, true, false )
    call MultiboardSetTitleText( DMMultiboardLib_DM_MB, "Арена || Лимит: " + I2S( Choosed_WP ) )
    set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, 0, 0 )
    call AntiBJ_MultiboardSetItemWidthBJN( DMMultiboardLib_DM_MB, 1, 0, 12. ) //8 10
    set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, 0, 1 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "K" )
    call AntiBJ_MultiboardSetItemWidthBJN( DMMultiboardLib_DM_MB, 2, 0, 1.8 ) //1.5 1.6
    set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, 0, 2 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "D" )
    call AntiBJ_MultiboardSetItemWidthBJN( DMMultiboardLib_DM_MB, 3, 0, 1.8 ) //1.5
    set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, 0, 3 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "L" )
    call AntiBJ_MultiboardSetItemWidthBJN( DMMultiboardLib_DM_MB, 4, 0, 1.8 ) //1.5
    set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, 0, 4 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "DPS" )
    call AntiBJ_MultiboardSetItemWidthBJN( DMMultiboardLib_DM_MB, 5, 0, 3.4 ) //2.8 3.1
    set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, 0, 5 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "CR" )
    call AntiBJ_MultiboardSetItemWidthBJN( DMMultiboardLib_DM_MB, 6, 0, 2.5 ) //1.9 2.2
    set i = 1
    loop
        exitwhen( i > Online_Players )
        set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, i, 0 )
        call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + GetPlayerName( s__Online_Player[i] ) + "|r" )
        call MultiboardSetItemStyle( mbi, true, true )
        if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
            call MultiboardSetItemValue( mbi, s__Color_Hex[9] + "[-]|r" + s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + GetPlayerName( s__Online_Player[i] ) + "|r" )
        endif
        if GetUnitState( s__Hero[GetConvertedPlayerId( s__Online_Player[i] )], UNIT_STATE_LIFE ) > 0.405 then
            call MultiboardSetItemIcon( mbi, s__Hero_Icon_A[GetConvertedPlayerId( s__Online_Player[i] )] )
        else
            call MultiboardSetItemIcon( mbi, s__Hero_Icon_D[GetConvertedPlayerId( s__Online_Player[i] )] )
        endif
        set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, i, 1 )
        call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Kills[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
        if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
            call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
        endif
        set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, i, 2 )
        call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Deaths[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
        if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
            call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
        endif
        set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, i, 3 )
        call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Level[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
        if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
            call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
        endif
        set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, i, 4 )
        call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( R2I( s__DPSLib_DPS[GetConvertedPlayerId( s__Online_Player[i] )] ) ) + "|r" )
        if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
            call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
        endif
        if Choosed_Creeps then
            set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, i, 5 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Creeps[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
        endif
        set i = i + 1
    endloop
    call MultiboardDisplay( DMMultiboardLib_DM_MB, true )
    set i = 1
    loop
        exitwhen( i > 10 )
        if GetLocalPlayer( ) == Player( i - 1 ) then
            if is_min[i]then
                call MultiboardMinimize( DMMultiboardLib_DM_MB, true )
            else
                call MultiboardMinimize( DMMultiboardLib_DM_MB, FALSE )
            endif
        endif
        set i = i + 1
    endloop
    set mbi = null
endfunction
function DMMultiboardLib_Init takes nothing returns nothing
    set DMMultiboardLib_Set_DM_MB_Trg_Var = CreateTrigger( )
    call TriggerRegisterTimerEvent( DMMultiboardLib_Set_DM_MB_Trg_Var, 1., true )
    call TriggerAddAction( DMMultiboardLib_Set_DM_MB_Trg_Var, function Set_DM_MB_Act )
    call DisableTrigger( DMMultiboardLib_Set_DM_MB_Trg_Var )
endfunction

function DPSLib__PeriodicEvent takes nothing returns nothing
    local integer i = 1
    set DPSLib__Time = DPSLib__Time + ( DPSLib__Period )
    loop
        exitwhen( i > 10 )
        set s__DPSLib_DPS[i] = s__DPSLib_Total_Damage_Done[i] / DPSLib__Time
        set i = i + 1
    endloop
endfunction

function DPSLib__Act takes nothing returns nothing
    local unit a = GetEventDamageSource( )
    local integer qxA = GetConvertedPlayerId( GetOwningPlayer( a ) )
    call DisableTrigger( DPSLib_DPS_Trg )
    call DisableTrigger( GetTriggeringTrigger( ) )
    if GetEventDamage( ) > 0 then
        set s__DPSLib_Total_Damage_Done[qxA] = s__DPSLib_Total_Damage_Done[qxA] + ( GetEventDamage( ) )
    endif
    call EnableTrigger( DPSLib_DPS_Trg )
    call EnableTrigger( GetTriggeringTrigger( ) )
    set a = null
endfunction

function DPSLib__DPSLib_Init takes nothing returns nothing
    local trigger Trg
    set DPSLib_DPS_Trg = CreateTrigger( )
    call TriggerAddAction( DPSLib_DPS_Trg, function DPSLib__Act )

    set Trg = CreateTrigger( )
    call TriggerRegisterTimerEvent( Trg, DPSLib__Period, true )
    call TriggerAddAction( Trg, function DPSLib__PeriodicEvent )
endfunction


function Eff__RemoveEffect takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "EF" ) )
    call DestroyEffect( e )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set e = null
endfunction

function Eff_AddThenRemoveEffectOnUnit takes string l__gg_snd_DEA_horn, unit u, string attach, real time returns nothing
    local effect e = AddSpecialEffectTarget( l__gg_snd_DEA_horn, u, attach )
    local timer t = CreateTimer( )
    call SaveEffectHandle( HT, GetHandleId( t ), StringHash( "EF" ), e )
    call TimerStart( t, time, false, function Eff__RemoveEffect )
    set e = null
    set t = null
endfunction


function Energy_Get takes unit u, real heal returns real
    local integer i = GetPlayerId( GetOwningPlayer( u ) ) + 1
    local real pc = ( 20. + 1.6 * s__now_energy[i] ) / 100.
    return heal * pc
endfunction

function Energy_Minus takes unit u, integer e returns nothing
    local integer qxA = 0

    if s__now_energy[GetPlayerId( GetOwningPlayer( u ) ) + 1] >= e then

        if ( s__now_energy[GetPlayerId( GetOwningPlayer( u ) ) + 1] - e ) <= Energy_max_energy then
            set qxA = GetPlayerId( GetOwningPlayer( u ) ) + 1
            set s__now_energy[qxA] = s__now_energy[qxA] - ( e )
        else
            set s__now_energy[GetPlayerId( GetOwningPlayer( u ) ) + 1] = 50 //макс энергий
        endif
    else
        set s__now_energy[GetPlayerId( GetOwningPlayer( u ) ) + 1] = 0
    endif
endfunction

function Energy_AcceptEB takes unit u returns nothing
    local integer id = GetUnitTypeId( u )
    local integer i = 1
    local boolean b = TRUE
    local integer cjlocgn_00000000
    local texttag cjlocgn_00000001
    local string cjlocgn_00000002
    local integer cjlocgn_00000003
    call DisplayTextToPlayer( GetOwningPlayer( u ), 0., 0., Energy__SELECT_ENERGY )
    if b then
        set cjlocgn_00000000 = GetPlayerId( GetOwningPlayer( u ) ) + 1
        set cjlocgn_00000001 = CreateTextTag( )
        set cjlocgn_00000002 = ""
        set cjlocgn_00000003 = 0
        set s__Energy__EB_tt[cjlocgn_00000000] = cjlocgn_00000001
        call SetTextTagPos( cjlocgn_00000001, GetUnitX( u ) + Energy__x_offset, GetUnitY( u ) + Energy__y_offset, Energy__z_offset + GetUnitFlyHeight(u) )
        call SetTextTagColor( cjlocgn_00000001, 0, 0, 0, 0 )
        call SetTextTagPermanent( cjlocgn_00000001, TRUE )
        set s__now_energy[cjlocgn_00000000] = Energy_max_energy
        set i = s__now_energy[cjlocgn_00000000]
        set b = FALSE
        if i > 0 then
            set cjlocgn_00000002 = Energy__green
        endif

        loop
            exitwhen( cjlocgn_00000003 > Energy_max_energy )
            set cjlocgn_00000002 = cjlocgn_00000002 + ( Energy__one_bar )
            if cjlocgn_00000003 > i and not b then
                set cjlocgn_00000002 = cjlocgn_00000002 + ( Energy__end )
                set b = TRUE
            endif
            set cjlocgn_00000003 = cjlocgn_00000003 + 1
        endloop
        call SetTextTagText( cjlocgn_00000001, cjlocgn_00000002, Energy__size )
        call SetTextTagVisibility( cjlocgn_00000001, FALSE )
        set cjlocgn_00000003 = 1
        loop
            exitwhen( cjlocgn_00000003 > 10 )
            if GetLocalPlayer( ) == s__Online_Player[cjlocgn_00000003] then

                if IsPlayerAlly( s__Online_Player[cjlocgn_00000003], Player( cjlocgn_00000000 - 1 ) )or s__Online_Player[cjlocgn_00000003] == Player( cjlocgn_00000000 - 1 ) then
                    call SetTextTagVisibility( cjlocgn_00000001, TRUE )
                endif
            endif
            set cjlocgn_00000003 = cjlocgn_00000003 + 1
        endloop
        set cjlocgn_00000001 = null
    endif
endfunction

function Energy__SetTTPos takes nothing returns nothing
    local integer i = 1
    local texttag tt
    local unit u
    local integer a = 0
    local integer c = 0
    local boolean b = FALSE
    local string l__gg_snd_DEA_horn
    loop
        exitwhen( i > 10 )
        if s__Energy__EB_tt[i] != null then

            set tt = s__Energy__EB_tt[i]
            set c = s__now_energy[i]
            set b = FALSE
            set l__gg_snd_DEA_horn = null
            set a = 0
            call SetTextTagColor( tt, 0, 0, 0, 0 )
            set u = s__Hero[i]
            if GetWidgetLife( u ) < 0.405 then
                set c = 0
            endif
            if c > 0 then
                set l__gg_snd_DEA_horn = Energy__green
            endif
            loop
                exitwhen( a > Energy_max_energy )
                set l__gg_snd_DEA_horn = l__gg_snd_DEA_horn + ( Energy__one_bar )
                if a > c and not b then
                    set l__gg_snd_DEA_horn = l__gg_snd_DEA_horn + ( Energy__end )
                    set b = TRUE
                endif
                set a = a + 1
            endloop
            call SetTextTagText( tt, l__gg_snd_DEA_horn, Energy__size )
            call SetTextTagPos( tt, GetUnitX( u ) + Energy__x_offset, GetUnitY( u ) + Energy__y_offset, Energy__z_offset + GetUnitFlyHeight(u) )
        endif
        set i = i + 1
    endloop
    set u = null
    set tt = null
    set l__gg_snd_DEA_horn = null
endfunction

function Energy__Regen takes nothing returns nothing
    local integer i = 1
    loop
        exitwhen( i > 10 )
        if s__now_energy[i] < Energy_max_energy then
            set s__now_energy[i] = s__now_energy[i] + 1
        endif
        set i = i + 1
    endloop
endfunction

function Energy__I takes nothing returns nothing
    local timer t = CreateTimer( )
    call TimerStart( t, 0.04, TRUE, function Energy__SetTTPos )
    set t = CreateTimer( )
    call TimerStart( t, Energy__regen_period, TRUE, function Energy__Regen )
    set t = null
endfunction

function EscShops__Act takes nothing returns nothing
    if GetLocalPlayer( ) == GetTriggerPlayer( ) then
        call ClearSelection( )
        call SelectUnit( EscShops__Shop, TRUE )
    endif
endfunction

function EscShops__init takes nothing returns nothing
    local integer i = 0
    local player p = null
    loop
        exitwhen( i == 12 )
        set p = Player( i )
        call TriggerRegisterPlayerEvent( EscShops_Trg, p, EVENT_PLAYER_END_CINEMATIC )
        set i = i + 1
    endloop
    call TriggerAddAction( EscShops_Trg, function EscShops__Act )
    call DisableTrigger( EscShops_Trg )
    set EscShops__Shop = gg_unit_edos_0053
endfunction

function Filters__Filter_Timer takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    call PauseTimer( t )
    call DestroyTimer( t )
    call DisplayCineFilter( false )
    call EnableUserUI( true )
    set t = null
endfunction

function Filters_Multi takes string l__gg_snd_DEA_horn, player p returns nothing
    local timer t = CreateTimer( )
    call SetCineFilterTexture( l__gg_snd_DEA_horn )
    call SetCineFilterBlendMode( BLEND_MODE_BLEND )
    call SetCineFilterTexMapFlags( TEXMAP_FLAG_NONE )
    call SetCineFilterStartUV( 0, 0, 1, 1 )
    call SetCineFilterEndUV( 0, 0, 1, 1 )
    call SetCineFilterStartColor( 255, 0, 0, 255 )
    call SetCineFilterEndColor( 255, 0, 0, 0 )
    call SetCineFilterDuration( 1. )
    if GetLocalPlayer( ) == p then
        call DisplayCineFilter( true )
    endif
    call TimerStart( t, .5, false, function Filters__Filter_Timer )
    set t = null
endfunction


function X_GetMainChar takes unit u returns integer
    local integer id = GetUnitTypeId( u )
    if id == 'Hpal' then
        return 1
    endif
    if id == 'H000' then
        return 3
    endif
    if id == 'E000' then
        return 2
    endif
    if id == 'Nfir' then
        return 3
    endif
    if id == 'Obla' then
        return 2
    endif
    if id == 'Otch' then
        return 1
    endif
    if id == 'N005' then
        return 3
    endif
    if id == 'N006' then
        return 2
    endif
    if id == 'Ntin' then
        return 1
    endif
    if id == 'Hgam' then
        return 3
    endif
    if id == 'H00M' then
        return 1
    endif
    return 0
endfunction



function GLAS4_preload takes nothing returns nothing
    
endfunction

function GROS5_FilterWater takes real x, real y, real dmg returns real
    if not( IsTerrainPathable( x, y, PATHING_TYPE_FLOATABILITY ) ) then
        return dmg * 1.7
    endif
    return dmg
endfunction



function GLAS4__BloodDmg_Period takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local unit cs = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_0" ) )
    local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local real total_time = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    set total_time = total_time - ( 1.0 )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H _2" ), total_time )

    if total_time >= 0.and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( cs, UNIT_TYPE_DEAD ) == false then
        call UnitDamageTarget( cs, u, dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )

    else
        call DestroyEffect( e )
      //  call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "_кровотечение орк конец" )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
      
    endif
   
    set t = null
    set u = null
    set cs = null
    set e = null
endfunction

function GLAS4_BloodDmg takes unit d, unit at, real dmg returns nothing
    local timer t = CreateTimer( )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_0" ), d )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), at )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), 7. )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), ( dmg * 0.25 ) / ( 7. / 1. ) )
    call SaveEffectHandle( HT, GetHandleId( t ), StringHash( "H_4" ), AddSpecialEffectTarget( "Objects\\Spawnmodels\\Other\\HumanBloodCinematicEffect\\HumanBloodCinematicEffect.mdl", at, "chest" ) )
    call TimerStart( t, 1., TRUE, function GLAS4__BloodDmg_Period )
    set t = null
endfunction

function GLAS4__AttackAct takes nothing returns nothing
    local unit att = GetEventDamageSource( )
    local unit target = GetTriggerUnit( )
    local integer chance = GetRandomInt( 1, 100 )
    local real damage = GetEventDamage( )

   
    if GetEventDamageSource() != null and damage > 1. and IsUnitEnemy(att, GetOwningPlayer(target)) and IsUnitType(target, UNIT_TYPE_MAGIC_IMMUNE) == false then
    
        call DisableTrigger( GetTriggeringTrigger( ) )
    //добавлено условие на 200 дистанции ,чтоб не было бесконечный стак
        if GetEventDamage( ) > 0 and GetUnitAbilityLevel( att, 'A029' ) > 0 and SquareRoot( ( GetUnitX( att ) - GetUnitX( target ) ) * ( GetUnitX( att ) - GetUnitX( target ) ) + ( GetUnitY( att ) - GetUnitY( target ) ) * ( GetUnitY( att ) - GetUnitY( target ) ) ) <= 200. then
  
            if chance <= 10 then
         //   call DisplayTextToForce( GetPlayersAll( ), "кровотечение орк 10 шанс" )
                call GLAS4_BloodDmg( att, target, damage )
            endif
        
        endif

    
    endif
    call EnableTrigger( GetTriggeringTrigger( ) )
    set att = null
    set target = null
endfunction

function GLAS4__I takes nothing returns nothing
    call TriggerAddAction( GLAS4_Trg, function GLAS4__AttackAct )
endfunction

function GROS5_preload takes nothing returns nothing
endfunction

function GoldLib__Gold_Act takes nothing returns nothing
    local integer i = 0
    if GoldLib_enabled then
        
        loop
            exitwhen( i > 11 )
            call SetPlayerState( Player( i ), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState( Player( i ), PLAYER_STATE_RESOURCE_GOLD ) + 1 )
            set i = i + 1
        endloop

    endif
endfunction

function GoldLib__GoldLib_Init takes nothing returns nothing
    local trigger Gold_Trg = CreateTrigger( )
    local integer i = 0
    call TriggerRegisterTimerEvent( Gold_Trg, 1, true )
    call TriggerAddAction( Gold_Trg, function GoldLib__Gold_Act )
    call TriggerSleepAction( 0.01 )
    loop
        exitwhen i > 10
        call SetPlayerState( Player( i ), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState( Player( i ), PLAYER_STATE_RESOURCE_GOLD ) + R2I( 500. ) )
        set i = i + 1
    endloop

endfunction

function IF_CountItemInInventory takes unit u, integer it returns integer
    local integer i = 0
    local integer count = 0
    loop
        exitwhen i > 5
        if ( GetItemTypeId( UnitItemInSlot( u, i ) ) == it ) then
            set count = count + 1
        endif
        set i = i + 1
    endloop
    return count
endfunction

function IF_RemoveItemFromInventory takes unit u, integer it returns nothing
    local integer i = 0
    loop
        exitwhen i > 5 or GetItemTypeId( UnitItemInSlot( u, i ) ) == it
        set i = i + 1
    endloop
    if ( i < 6 ) then
        call RemoveItem( UnitItemInSlot( u, i ) )
    endif
endfunction

function IF_IsItemInInventory takes unit u, item it returns boolean
    local integer i = 0
    loop
        exitwhen i > 5 or UnitItemInSlot( u, i ) == it
        set i = i + 1
    endloop
    return i < 6
endfunction


function InitializationLib__L takes nothing returns nothing
    local unit d
    call StartSound( gg_snd_startstart )
    set s__Circle[1] = gg_unit_ncp2_0008
    set s__Circle[2] = gg_unit_ncp2_0009
    set s__Circle[3] = gg_unit_ncp2_0010
    set s__Circle[4] = gg_unit_ncp2_0011
    set s__Circle[5] = gg_unit_ncp2_0012
    set s__Circle[6] = gg_unit_ncp2_0013
    set s__Circle[7] = gg_unit_ncp2_0014
    set s__Circle[8] = gg_unit_ncp2_0015
    set s__Circle[9] = gg_unit_ncp2_0016
    set s__Circle[10] = gg_unit_ncp2_0017
    set s__Team_Name[1] = "Команда #1"
    set s__Team_Name[2] = "Команда #2"
    call StopMusic( FALSE )
    set d = CreateUnit( Player( 13 ), 'hfoo', 0., 0., 0. ) //пехотинец без москитов
    call UnitAddAbility( d, 'A006' )
    call UnitAddAbility( d, 'Arav' )
    call UnitAddAbility( d, 'A04S' )
    call SetUnitAbilityLevel(d,'A04S',10)
    call RemoveUnit( d )
    set d = null
endfunction

function InitializationLib__InitializationLib_In takes nothing returns nothing
    local integer i = 0
    local player p = null
    local trigger Load
    loop
        exitwhen i > 10
        set p = Player( i )
        if GetPlayerSlotState( p ) == PLAYER_SLOT_STATE_PLAYING then
            //Добавил блок условие на хоста!!!
            if GetPlayerSlotState( p ) == PLAYER_SLOT_STATE_PLAYING and GetPlayerController( p ) == MAP_CONTROL_USER then
                if Host_Player == null then
                    set Host_Player = p
                endif
            endif

            if i < 5 then //тут поменять?
                if GetPlayerController( p ) == MAP_CONTROL_USER then
                    if s__Team_Leader[1] == null then
                        set s__Team_Leader[1] = p
                    endif
                endif
            else
                if GetPlayerController( p ) == MAP_CONTROL_USER then
                    if s__Team_Leader[2] == null then
                        set s__Team_Leader[2] = p
                    endif
                endif
            endif

            set Online_Players = Online_Players + 1
            set s__Online_Player[Online_Players] = p
            //отнимать игроков при ливе кто будет?Смещать плеера онлайн плеер?
            call CreateUnit( p, 'h002', 818., 1321., 0. )
            call SetPlayerAbilityAvailable( p, 'A01L', FALSE )
            call SetPlayerAbilityAvailable( p, 'A02Q', FALSE )
            call SetPlayerAbilityAvailable( p, 'A03L', FALSE )
            call SetPlayerAbilityAvailable( p, 'A03R', FALSE )
            call SetPlayerAbilityAvailable( p, 'A037', FALSE )
        endif
        set i = i + 1
    endloop
  //отключил
    //call SetPlayerState( Player( 10 ), PLAYER_STATE_GIVES_BOUNTY, 1 ) //что за игрок?
    set Load = CreateTrigger( )
    call TriggerRegisterTimerEvent( Load, 0.01, FALSE )
    call TriggerAddAction( Load, function InitializationLib__L )
    call SetMapFlag( MAP_CHEATS, false )
    call SetCreepCampFilterState( false )
    call EnableMinimapFilterButtons( true, false )
endfunction

function ItemsLib__GetItems takes nothing returns nothing
    local item it = GetManipulatedItem( )
    local unit u = GetManipulatingUnit( )
    local integer r_r = GetItemTypeId( it )
    local item it2 = null
    local integer i = 1
    local player p = GetOwningPlayer( u )
    local integer pi = GetConvertedPlayerId( p )
    call DisableTrigger( GetTriggeringTrigger( ) )

    loop
        exitwhen( i > ItemsLib__max_stacks )
        if r_r == s__ItemsLib__stack_r_r[i]then
            if UnitHasItemOfTypeBJ( u, s__ItemsLib__stack_i_r[i] ) then
                set it2 = GetItemOfTypeFromUnitBJ( u, s__ItemsLib__stack_i_r[i] )
                call SetItemCharges( it2, GetItemCharges( it2 ) + GetItemCharges( it ) )
           //     call DisplayTextToForce( GetPlayersAll( ),  GetItemName(it2) +"_складываем заряды+ " + I2S(GetItemCharges( it )))

            else
                set it2 = UnitAddItemById( u, s__ItemsLib__stack_i_r[i] ) //вот тут не может отдать предмет герою 
                call SetItemCharges( it2, GetItemCharges( it ) ) //если забит инвентарь зарядов будет 1
           //     call DisplayTextToForce( GetPlayersAll( ),  GetItemName(it2)+ "устанавливаем заряды" + I2S(GetItemCharges( it )))

            endif
        endif
        set i = i + 1
    endloop

    call EnableTrigger( GetTriggeringTrigger( ) )
    set it = null
    set u = null
    set it2 = null
endfunction

function ItemsLib__DropItems takes nothing returns nothing
    local unit u = GetTriggerUnit( )
    local item cjlocgn_00000000
    local item cjlocgn_00000001
    local integer cjlocgn_00000002
    local integer cjlocgn_00000003
    local integer cjlocgn_00000004
    local real cjlocgn_00000005
    local real cjlocgn_00000006
    local player cjlocgn_00000007
    local integer cjlocgn_00000008
    if IsUnitIllusion( u ) == FALSE then
        set cjlocgn_00000000 = GetManipulatedItem( )
        set cjlocgn_00000001 = null
        set cjlocgn_00000002 = GetItemTypeId( cjlocgn_00000000 )
        set cjlocgn_00000003 = 1
        set cjlocgn_00000004 = GetItemCharges( cjlocgn_00000000 )
        set cjlocgn_00000005 = GetUnitX( u )
        set cjlocgn_00000006 = GetUnitY( u )
        set cjlocgn_00000007 = GetOwningPlayer( u )
        set cjlocgn_00000008 = GetConvertedPlayerId( cjlocgn_00000007 )
        call DisableTrigger( GetTriggeringTrigger( ) )
        loop
            exitwhen( cjlocgn_00000003 > ItemsLib__max_stacks )
            if cjlocgn_00000002 == s__ItemsLib__stack_i_r[cjlocgn_00000003]then
                call RemoveItem( cjlocgn_00000000 )
                set cjlocgn_00000001 = CreateItem( s__ItemsLib__stack_r_r[cjlocgn_00000003], cjlocgn_00000005, cjlocgn_00000006 )
                call SetItemCharges( cjlocgn_00000001, cjlocgn_00000004 )
              //   call DisplayTextToForce( GetPlayersAll( ), GetItemName(cjlocgn_00000001)+ "дроп итем устанавливаем заряды" + I2S(cjlocgn_00000004))

            endif
            set cjlocgn_00000003 = cjlocgn_00000003 + 1
        endloop
        call EnableTrigger( GetTriggeringTrigger( ) )
        set cjlocgn_00000000 = null
        set cjlocgn_00000001 = null
    endif
    set u = null
endfunction

function ItemsLib__SellItems takes nothing returns nothing
    call DisableTrigger( ItemsLib__DropItems_Trg_Var )
    call TriggerSleepAction( 0.01 )
    call EnableTrigger( ItemsLib__DropItems_Trg_Var )
endfunction

function ItemsLib__UseItems takes nothing returns nothing
    call DisableTrigger( ItemsLib__DropItems_Trg_Var )
    call TriggerSleepAction( 0.01 )
    call EnableTrigger( ItemsLib__DropItems_Trg_Var )
endfunction

function ItemsLib__ItemsLib_Init takes nothing returns nothing
    local integer i = 0
    local player p = null
    local trigger GetItems_Trg = CreateTrigger( )
    local trigger DropItems_Trg
    local trigger SellItems_Trg
    local trigger UseItems_Trg
    loop
        exitwhen( i > 10 )
        set p = Player( i )
        call TriggerRegisterPlayerUnitEvent( GetItems_Trg, p, EVENT_PLAYER_UNIT_PICKUP_ITEM, null )
        set i = i + 1
    endloop
    set i = 0
    call TriggerAddAction( GetItems_Trg, function ItemsLib__GetItems )
    set DropItems_Trg = CreateTrigger( )
    loop
        exitwhen( i > 10 )
        set p = Player( i )
        call TriggerRegisterPlayerUnitEvent( DropItems_Trg, p, EVENT_PLAYER_UNIT_DROP_ITEM, null )
        set i = i + 1
    endloop
    set i = 0
    call TriggerAddAction( DropItems_Trg, function ItemsLib__DropItems )
    set ItemsLib__DropItems_Trg_Var = DropItems_Trg
    set SellItems_Trg = CreateTrigger( )
    loop
        exitwhen( i > 10  )
        set p = Player( i )
        call TriggerRegisterPlayerUnitEvent( SellItems_Trg, p, EVENT_PLAYER_UNIT_PAWN_ITEM, null )
        set i = i + 1
    endloop
    set i = 0
    call TriggerAddAction( SellItems_Trg, function ItemsLib__SellItems )
    set UseItems_Trg = CreateTrigger( )
    loop
        exitwhen( i > 10 )
        set p = Player( i )
        call TriggerRegisterPlayerUnitEvent( UseItems_Trg, p, EVENT_PLAYER_UNIT_USE_ITEM, null )
        set i = i + 1
    endloop
    set i = 0
    call TriggerAddAction( UseItems_Trg, function ItemsLib__UseItems )
    set p = null
    
    set s__ItemsLib__stack_r_r[1] = 'I00U' //Крест пустышка
    set s__ItemsLib__stack_i_r[1] = 'ankh' //Крест оригинал
    set s__ItemsLib__stack_r_r[2] = 'I00R' //Зелье прозрения всей карты
    set s__ItemsLib__stack_i_r[2] = 'pomn' //Зелье прозрения оригинал
    set s__ItemsLib__stack_r_r[3] = 'I00V' //Невидимый страж пустышка
    set s__ItemsLib__stack_i_r[3] = 'wswd' //Невидимый страж оригинал
    set s__ItemsLib__stack_r_r[4] = 'I00W' //Проницательный страж пустышка
    set s__ItemsLib__stack_i_r[4] = 'fgfh' //Проницательный страж оригинал
    set s__ItemsLib__stack_r_r[5] = 'I00X' //Свиток телепортации в магазин
    set s__ItemsLib__stack_i_r[5] = 'stwp' //Свиток телепортации в магазин оригинал
    set s__ItemsLib__stack_r_r[6] = 'I00Q' //Тотем исцеления
    set s__ItemsLib__stack_i_r[6] = 'whwd'//Тотем исцеления оригинал
endfunction

function LeaveLib__Act takes nothing returns nothing
    local player p = GetTriggerPlayer( )
    local integer i = GetConvertedPlayerId( p )
    local integer a = 0
    local player p2 = null
    local boolean b = FALSE
    //поменять тут игроков?
    //тут надо циклом пресчитать оставишься игроков и сместить ячеку
    //  set Online_Players = Online_Players + 1  -1
    //  set s__Online_Player[Online_Players] = p

    if i < 6 then
        set a = 1
        loop
            exitwhen( ( a > 5 ) or b )
            if GetPlayerController( Player( a - 1 ) ) == MAP_CONTROL_USER then
                set s__Team_Leader[1] = Player( a - 1 )
                set b = TRUE
            endif
            set a = a + 1
        endloop
    else
        set a = 6
        loop
            exitwhen( ( a > 10 ) or b )
            if GetPlayerController( Player( a - 1 ) ) == MAP_CONTROL_USER then
                set s__Team_Leader[2] = Player( a - 1 )
                set b = TRUE
            endif
            set a = a + 1
        endloop
    endif

    call ClearTextMessages( )
    call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, "|cFFFF0000Игрок|r " + s__Color_Hex[i] + GetPlayerName( p ) + "|r |cFFFF0000покинул игру!!!|r" )
    call StartSound( gg_snd_LeaveSound )
     if s__Hero[GetConvertedPlayerId( p )] != null then
        call RemoveUnit(s__Hero[GetConvertedPlayerId( p )])
        call DropItemLiver(s__Hero[GetConvertedPlayerId( p )])
        set s__Hero[GetConvertedPlayerId( p )] = null
    endif
 
    //добавил удаление героя
    // когда игрок ливает число игроков не  пересчитывается, а только меняются лидеры команды 
endfunction

function LeaveLib__LeaveLib_Init takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    local integer i = 0
    loop
        exitwhen( i > ( 10 ) )
        call TriggerRegisterPlayerEvent( Trg, Player( i ), EVENT_PLAYER_LEAVE )
        set i = i + 1
    endloop
    call TriggerAddAction( Trg, function LeaveLib__Act )
endfunction

function MoonRiderQuestLib__Death_Act takes nothing returns nothing
    set MoonRiderQuestLib__Unit_Marked = FALSE
endfunction

function MoonRiderQuestLib__Deer_Death_Act takes nothing returns nothing
    set MoonRiderQuestLib__Quest_Finished_P1 = TRUE
    call CreateItem( 'I01G', GetUnitX( MoonRiderQuestLib__Deer ), GetUnitY( MoonRiderQuestLib__Deer ) )
    set MoonRiderQuestLib__Quest_Started_P2 = TRUE
endfunction

function MoonRiderQuestLib__MR_Act takes nothing returns nothing
    local real time = GetFloatGameState( GAME_STATE_TIME_OF_DAY )
    local unit cjlocgn_00000000 = GetEnteringUnit( )
    if time >= MoonRiderQuestLib__Start_Time and time <= MoonRiderQuestLib__End_Time and MoonRiderQuestLib__Quest_Started_P2 and not MoonRiderQuestLib__Quest_Finished_P2 then
        
        if IsUnitType( cjlocgn_00000000, UNIT_TYPE_HERO )and UnitHasItemOfTypeBJ( cjlocgn_00000000, 'I01G' ) then
            call RemoveItem( GetItemOfTypeFromUnitBJ(cjlocgn_00000000, 'I01G' ) )

            set MoonRiderQuestLib__MoonRider = CreateUnit( Player( PLAYER_NEUTRAL_AGGRESSIVE ), 'e001', MoonRiderQuestLib__MR_X, MoonRiderQuestLib__MR_Y, 270. )
            //Олень
            call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Items\\AItb\\AItbTarget.mdl", MoonRiderQuestLib__MoonRider, "origin" ) )

            call UnitAddItemById( MoonRiderQuestLib__MoonRider, 'desc' )
            call IssueTargetOrderById( MoonRiderQuestLib__MoonRider, 851983, cjlocgn_00000000 )
            call StartSound( gg_snd_MR_Say )
            set MoonRiderQuestLib__Quest_Finished_P2 = TRUE
        endif
    endif
    set cjlocgn_00000000 = null
endfunction

function MoonRiderQuestLib__Act takes nothing returns nothing
    local real time = GetFloatGameState( GAME_STATE_TIME_OF_DAY )
    local unit u = GetEnteringUnit( )
    if time >= MoonRiderQuestLib__Start_Time and time <= MoonRiderQuestLib__End_Time and not MoonRiderQuestLib__Unit_Marked and not MoonRiderQuestLib__Quest_Finished_P1 then
        
        if IsUnitType( u, UNIT_TYPE_HERO ) then
            call Eff_AddThenRemoveEffectOnUnit( "Abilities\\Spells\\NightElf\\TargetArtLumber\\TargetArtLumber.mdl", u, "origin", 5. )
            call UnitAddAbility( u, 'A00E' )
            call TriggerRegisterUnitEvent( MoonRiderQuestLib__Death_Trg, u, EVENT_UNIT_DEATH )
            //Ебаный ОЛЕНЬ
           // call DisplayTextToForce( GetPlayersAll(), "олень создался" )
            set MoonRiderQuestLib__Deer = CreateUnit( Player( PLAYER_NEUTRAL_PASSIVE ), 'n003', MoonRiderQuestLib__Deer_X, MoonRiderQuestLib__Deer_Y, 0. )
            call AlphaLib_AddAlphing( MoonRiderQuestLib__Deer )
            call TriggerRegisterUnitEvent( MoonRiderQuestLib__Deer_Death_Trg, MoonRiderQuestLib__Deer, EVENT_UNIT_DEATH )
            set MoonRiderQuestLib__Unit_Marked = TRUE
        endif
        
    endif
    set u = null
endfunction

function MoonRiderQuestLib__Init takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    local integer i = 0
    call TriggerRegisterEnterRectSimple( Trg, gg_rct_OBEL )
    call TriggerAddAction( Trg, function MoonRiderQuestLib__Act )
    loop
        exitwhen( i > ( 10  ) )
        call SetPlayerAbilityAvailable( Player( i ), 'A00E', FALSE )
        set i = i + 1
    endloop

    set MoonRiderQuestLib__Death_Trg = CreateTrigger( )
    call TriggerAddAction( MoonRiderQuestLib__Death_Trg, function MoonRiderQuestLib__Death_Act )
    set MoonRiderQuestLib__Deer_Death_Trg = CreateTrigger( )
    call TriggerAddAction( MoonRiderQuestLib__Deer_Death_Trg, function MoonRiderQuestLib__Deer_Death_Act )
    set MoonRiderQuestLib__MR_Trg = CreateTrigger( )
    call TriggerRegisterEnterRectSimple( MoonRiderQuestLib__MR_Trg, gg_rct_MR )
    call TriggerAddAction( MoonRiderQuestLib__MR_Trg, function MoonRiderQuestLib__MR_Act )
endfunction


function PALS4__Act takes nothing returns nothing
    local integer i = 1
    local unit u = null
    loop
        exitwhen( i > 10 )
        set u = s__Hero[i]
        if u != null and GetUnitAbilityLevel( u, PALS4__ar ) > 0 then
            call UnitRemoveAbility( u, PALS4__ar )
            call UnitAddAbility( u, PALS4__ar )
        endif
        set i = i + 1
    endloop
    set u = null
endfunction

function PALS4__I takes nothing returns nothing
    local timer t = CreateTimer( )
    call TimerStart( t, PALS4__period, TRUE, function PALS4__Act )
    set t = null
endfunction

function PALS6__Rem takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "palados" ) )
    if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then

      // call SetHeroStr( u, GetHeroStr( u, FALSE ) - 1, TRUE )
        call SetStrStatsSave( u, GetHeroStr( u, false ) - 1, true )
      //  call DisplayTextToForce( GetPlayersAll( ), "пал отняли силу" )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 0.1, TRUE, function PALS6__Rem )
        //call DisplayTextToForce( GetPlayersAll( ), "пал рекурсия силы" )
    endif
    set t = null
    set u = null
endfunction

function PALS6__Act_Attack takes nothing returns nothing
    local unit u = GetEventDamageSource( )
    local unit a = GetTriggerUnit( )
    local timer t
    local real d = SquareRoot( ( GetUnitX( u ) - GetUnitX( a ) ) * ( GetUnitX( u ) - GetUnitX( a ) ) + ( GetUnitY( u ) - GetUnitY( a ) ) * ( GetUnitY( u ) - GetUnitY( a ) ) )
    

    if GetEventDamage( ) > 0 and GetUnitAbilityLevel( u, 'A043' ) > 0 and d <= 140.and PALS6_m_type[GetConvertedPlayerId( GetOwningPlayer( u ) )] == 2 then

        if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false and u != null then
       // call DisableTrigger( GetTriggeringTrigger( ) )
        //call SetHeroStr( u, GetHeroStr( u, FALSE ) + 1, TRUE )
            call SetStrStatsSave( u, GetHeroStr( u, false ) + 1, true )
      //  call DisplayTextToForce( GetPlayersAll( ), "пал дали силу+1" )
            set t = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "palados" ), u )
            call TimerStart( t, 6., FALSE, function PALS6__Rem )
      //  call EnableTrigger( GetTriggeringTrigger( ) )
            set t = null
        endif

    endif

    if GetEventDamage( ) > 0 and GetUnitAbilityLevel( a, 'A043' ) > 0 and PALS6_m_type[GetConvertedPlayerId( GetOwningPlayer( a ) )] == 1 then
      //  call DisableTrigger( GetTriggeringTrigger( ) )
        if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false and u != null then
       // call SetHeroStr( a, GetHeroStr( a, FALSE ) + 1, TRUE )
            call SetStrStatsSave( a, GetHeroStr( a, false ) + 1, true )
      //  call DisplayTextToForce( GetPlayersAll( ), "пал дали силу хз+1" )
            set t = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "palados" ), a )
            call TimerStart( t, 6., FALSE, function PALS6__Rem )
    //    call EnableTrigger( GetTriggeringTrigger( ) )
            set t = null
        endif
    endif
    set t = null
    set u = null
    set a = null
endfunction


function PALS6__Trg_Ch_A takes nothing returns nothing
    local unit u = GetTriggerUnit( )
    if GetIssuedOrderId( ) == 852177 then
        set PALS6_m_type[GetConvertedPlayerId( GetOwningPlayer( u ) )] = 2
    endif
    if GetIssuedOrderId( ) == 852178 then
        set PALS6_m_type[GetConvertedPlayerId( GetOwningPlayer( u ) )] = 1
    endif
    set u = null
endfunction

function PALS6__I takes nothing returns nothing
    local trigger Trg_Ch
    set PALS6_Trg_Attack = CreateTrigger( )
    call TriggerAddAction( PALS6_Trg_Attack, function PALS6__Act_Attack )
    set Trg_Ch = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg_Ch, EVENT_PLAYER_UNIT_ISSUED_ORDER )
    call TriggerAddAction( Trg_Ch, function PALS6__Trg_Ch_A )
endfunction

function PALS7_preload takes nothing returns nothing
endfunction

function PALS7__TT takes unit u, real time returns nothing
    local texttag tt = CreateTextTagUnitBJ( R2SW( time, 1, 1 ) + " сек.", u, -0., 9., 0., 0., 0., 0. )
    local integer id = GetPlayerId( GetOwningPlayer( u ) ) + 1
    if IsPlayerAlly( GetLocalPlayer( ), GetOwningPlayer( u ) ) then
        call SetTextTagVisibility( tt, TRUE )
    else
        call SetTextTagVisibility( tt, FALSE )
    endif
    call SetTextTagColor( tt, s__Color_Dec_1[id], s__Color_Dec_2[id], s__Color_Dec_3[id], 255 )
    call SetTextTagVelocity( tt, 0., 0.03 )
    call SetTextTagFadepoint( tt, 2. / 2 )
    call SetTextTagLifespan( tt, 2. )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

function PALS7__B takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local effect e = LoadEffectHandle( HT, GetHandleId( u ), StringHash( "ShieldFX_2" ) )
    if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then
        call DestroyEffect( e )
        call SaveBoolean( HT, GetHandleId( u ), StringHash( "PalShield" ), FALSE )
      //  call DisplayTextToForce( GetPlayersAll( ), "пал щит удоли" )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 0.5, FALSE, function PALS7__B )
     //   call DisplayTextToForce( GetPlayersAll( ), "пал щит рекрс" )
    endif
    set t = null
    set u = null
    set e = null
endfunction


function PALS7__Act_S takes nothing returns nothing
    local unit caster
    local effect fx
    local timer t
    local real energy

    if GetSpellAbilityId( ) == 'A008' then
       // call DisplayTextToForce( GetPlayersAll( ), "пал щит акт" )
        set caster = GetTriggerUnit( )
        

        if LoadBoolean( HT, GetHandleId( caster ), StringHash( "PalShield" ) ) then
          //  call PauseTimer( t )
         //   call DestroyTimer( t ) //под вопросом
         //   call DisplayTextToForce( GetPlayersAll( ), "пал щит обновление" )
            set energy = Energy_Get( caster, PALS7__length )
            call PALS7__TT( caster, energy )
            call Energy_Minus( caster , PALS7__energy )
            set t = LoadTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_PAL" ) )
            call TimerStart( t, TimerGetRemaining( t ) + energy, FALSE, function PALS7__B )
                //добавил хрень с энергией
              
        else
            set fx = AddSpecialEffectTarget( PALS7__eff, caster, PALS7__attach )
            set t = CreateTimer( )
            set energy = Energy_Get( caster, PALS7__length )
            call PALS7__TT( caster, energy )
            call Energy_Minus( caster , PALS7__energy )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
            call SaveEffectHandle( HT, GetHandleId( caster ), StringHash( "ShieldFX_2" ), fx )
            call SaveTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_PAL" ), t )
            call SaveBoolean( HT, GetHandleId( caster ), StringHash( "PalShield" ), TRUE )
            call TimerStart( t, energy, FALSE, function PALS7__B )
         //   call DisplayTextToForce( GetPlayersAll( ), "пал щит запись" )
        endif
        set caster = null
        set fx = null
        set t = null
    endif
endfunction

function PALS7__Act_T takes nothing returns nothing
    local unit caster
    local unit target
    local effect fx
    local timer t
    local real energy
    if GetSpellAbilityId( ) == 'A03Q' then
        set caster = GetTriggerUnit( )
        set target = GetSpellTargetUnit( )
        //set fx = AddSpecialEffectTarget( PALS7__eff, target, PALS7__attach )
      //  set t = CreateTimer( )
      //  set energy = Energy_Get( caster, PALS7__length )
       // call PALS7__TT( target, energy )
       // call Energy_Minus( caster, PALS7__energy )

        if LoadBoolean( HT, GetHandleId( target ), StringHash( "PalShield" ) ) then
          //  call PauseTimer( t )
          //  call DestroyTimer( t )
         //   call DisplayTextToForce( GetPlayersAll( ), "пал щит обновление" )
            set energy = Energy_Get( caster, PALS7__length )
            call PALS7__TT( target, energy )
            call Energy_Minus( caster, PALS7__energy )
            set t = LoadTimerHandle( HT, GetHandleId( target ), StringHash( "H_TIMER_PAL" ) )
            call TimerStart( t, TimerGetRemaining( t ) + energy, FALSE, function PALS7__B )
            //добавил хрень с энергией
               
        else
            set fx = AddSpecialEffectTarget( PALS7__eff, target, PALS7__attach )
            set t = CreateTimer( )
            set energy = Energy_Get( caster, PALS7__length )
            call PALS7__TT( target, energy )
            call Energy_Minus( caster, PALS7__energy )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), target )
            call SaveEffectHandle( HT, GetHandleId( target ), StringHash( "ShieldFX_2" ), fx )
            call SaveTimerHandle( HT, GetHandleId( target ), StringHash( "H_TIMER_PAL" ), t )
            call SaveBoolean( HT, GetHandleId( target ), StringHash( "PalShield" ), TRUE )
            call TimerStart( t, energy , FALSE, function PALS7__B )
          //  call DisplayTextToForce( GetPlayersAll( ), "пал щит запись" )
        endif
        set caster = null
        set fx = null
        set t = null
        set target = null
    endif
endfunction

function PALS7__D takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "PalUnit" ) )
    call UnitRemoveAbility( u, 'Avul' ) //avul
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

function PALS7__C takes nothing returns nothing
    local unit u = GetTriggerUnit( )
    local timer t
    if LoadBoolean( HT, GetHandleId( u ), StringHash( "PalShield" ) ) then
        call UnitAddAbility( u, 'Avul' ) //avul
        set t = CreateTimer( )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "PalUnit" ), u )
        call TimerStart( t, 0.1, FALSE, function PALS7__D )
        set t = null
    endif
    set u = null
endfunction

function PALS7__I takes nothing returns nothing
    call TriggerAddAction( PALS7_Trg, function PALS7__C )
    call TriggerRegisterAnyUnitEventBJ( PALS7__Trg_Cast, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    //на триггер 2 события вешает
    call TriggerAddAction( PALS7__Trg_Cast, function PALS7__Act_S )
    call TriggerAddAction( PALS7__Trg_Cast, function PALS7__Act_T )
endfunction

function PingLib__Ping_Act takes nothing returns nothing
    local integer i = 1
    local player p = GetLocalPlayer( )
    loop
        exitwhen( i > 12 )
        if GetUnitState( s__Hero[i], UNIT_STATE_LIFE ) > 0.405 and s__Hero[i] != null then
            if p != Player( i - 1 ) then
                call PingMinimapEx( GetUnitX( s__Hero[i] ), GetUnitY( s__Hero[i] ), 0.5, s__Color_Dec_1[i], s__Color_Dec_2[i], s__Color_Dec_3[i], FALSE )
            endif
        endif
        set i = i + 1
    endloop
endfunction

function PingLib__PingLib_Init takes nothing returns nothing
    local trigger Ping_Trg = CreateTrigger( )
    call TriggerRegisterTimerEvent( Ping_Trg, 10., true )
    call TriggerAddAction( Ping_Trg, function PingLib__Ping_Act )
endfunction

function REAS4_preload takes nothing returns nothing
  
endfunction

function REAS4___TT takes unit u, integer bonus returns nothing
    local texttag tt = CreateTextTagUnitBJ( I2S( bonus ) + " STR", u, -0., 9., 0., 0., 0., 0. )
    local integer id = GetPlayerId( GetOwningPlayer( u ) ) + 1
    if IsPlayerAlly( GetLocalPlayer( ), GetOwningPlayer( u ) ) then
        call SetTextTagVisibility( tt, TRUE )
    else
        call SetTextTagVisibility( tt, FALSE )
    endif
    call SetTextTagColor( tt, s__Color_Dec_1[id], s__Color_Dec_2[id], s__Color_Dec_3[id], 255 )
    call SetTextTagVelocity( tt, 0., 0.03 )
    call SetTextTagFadepoint( tt, 2. / 2 )
    call SetTextTagLifespan( tt, 2. )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

function REAS4___RemBon takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), REAS4___h_1 )
    local unit tar = LoadUnitHandle( HT, GetHandleId( t ), REAS4___h_2 )
    local integer str = LoadInteger( HT, GetHandleId( t ), REAS4___h_3 )
    local real tim = LoadReal( HT, GetHandleId( t ), REAS4___h_4 )
    local boolean dea_t = LoadBoolean( HT, GetHandleId( t ), REAS4___h_5 )
    local boolean dea_c = LoadBoolean( HT, GetHandleId( t ), REAS4___h_7 )
    local effect e_a = LoadEffectHandle( HT, GetHandleId( t ), REAS4___h_6 )
    local boolean b = FALSE
    if tim == 0.1 then
        call UnitRemoveAbility( cst, 'Avul' )
    endif

    if ( GetWidgetLife( tar ) <= 0.405 and not dea_t ) or ( GetWidgetLife( tar ) > 0.405 and dea_c and not dea_t ) then
       // call SetHeroStr( tar, GetHeroStr( tar, FALSE ) + str, TRUE )
        call SetStrStatsSave( tar, GetHeroStr( tar, false ) + str, true )
        call SaveBoolean( HT, GetHandleId( t ), REAS4___h_5, TRUE )
        call SaveBoolean( HT, GetHandleId( tar ), REAS4___h_a, FALSE )
        set dea_t = TRUE
    endif

    if GetWidgetLife( cst ) <= 0.405 and not dea_c then

        //call SetHeroStr( cst, GetHeroStr( cst, FALSE ) - str, TRUE )
        call SetStrStatsSave( cst, GetHeroStr( cst, false ) - str, true )

        call SetUnitScale( cst, 1., 1., 1. )
        call DestroyEffect( e_a )
        call SaveBoolean( HT, GetHandleId( t ), REAS4___h_7, TRUE )
        set dea_c = TRUE
    endif

    if ( dea_t and tim >= REAS4___time_big ) or ( dea_c and dea_t ) then

        if not dea_c then

           // call SetHeroStr( cst, GetHeroStr( cst, FALSE ) - str, TRUE )
            call SetStrStatsSave( cst, GetHeroStr( cst, false ) - str, true )
            call SetUnitScale( cst, 1., 1., 1. )
            call DestroyEffect( e_a )
        endif
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
        set b = TRUE
    endif

    if not b then
        call SaveReal( HT, GetHandleId( t ), REAS4___h_4, tim + 0.1 )
    endif
    set t = null
    set cst = null
    set tar = null
    set e_a = null
endfunction

function REAS4___Act takes nothing returns nothing
    local unit caster
    local unit target
    local real cjlocgn_00000002
    local integer str
    local effect ef
    local timer t
    //ульт риппера
    if GetSpellAbilityId( ) == REAS4___a_r then
        set caster = GetTriggerUnit( )
        set target = GetSpellTargetUnit( )
        set cjlocgn_00000002 = 0.
        set str = R2I( GetHeroStr( target, FALSE ) * REAS4___percent )
        if not LoadBoolean( HT, GetHandleId( target ), REAS4___h_a ) then
        
            //call SetHeroStr( caster, GetHeroStr( caster, FALSE ) + str, TRUE )
          //call SetHeroStr( target, GetHeroStr( target, FALSE ) - str, TRUE )

            call SetStrStatsSave( caster, GetHeroStr( caster, false ) + str, true )

            call SetStrStatsSave( target, GetHeroStr( target, false ) - str, true )

            call REAS4___TT( caster, str )
            set cjlocgn_00000002 = GetHeroStr( caster, FALSE ) * REAS4___p_s
            call UnitAddAbility( caster, 'Avul' )
            call UnitDamageTarget( caster, target, cjlocgn_00000002, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
            call SetUnitAnimation( caster, "slam" )
            call IssueTargetOrderById( caster, 851983, target )
            call SetUnitScale( caster, 1.5, 1.5, 1.5 )

            set ef = AddSpecialEffectTarget( REAS4___att, caster, "weapon" )
            call DestroyEffect( AddSpecialEffectTarget( REAS4___e1, target, "chest" ) )
            call DestroyEffect( AddSpecialEffectTarget( REAS4___e2, target, "chest" ) )
            call DestroyEffect( AddSpecialEffectTarget( REAS4___e3, target, "chest" ) )
            call DestroyEffect( AddSpecialEffectTarget( REAS4___e4, target, "chest" ) )
            call DestroyEffect( AddSpecialEffectTarget( REAS4___e5, target, "chest" ) )
            call DestroyEffect( AddSpecialEffectTarget( REAS4___e6, target, "origin" ) )
            set t = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( t ), REAS4___h_1, caster )
            call SaveUnitHandle( HT, GetHandleId( t ), REAS4___h_2, target )
            call SaveInteger( HT, GetHandleId( t ), REAS4___h_3, str )
            call SaveReal( HT, GetHandleId( t ), REAS4___h_4, 0. )
            call SaveBoolean( HT, GetHandleId( t ), REAS4___h_5, FALSE )
            call SaveEffectHandle( HT, GetHandleId( t ), REAS4___h_6, ef )
            call TimerStart( t, 0.1, TRUE, function REAS4___RemBon )
            call SaveBoolean( HT, GetHandleId( target ), REAS4___h_a, TRUE )
        else
            call PauseUnit( caster, TRUE )
            call IssueImmediateOrderById( caster, 851972 )
            call PauseUnit( caster, FALSE )
        endif
        set caster = null
        set target = null
    endif
endfunction
function REAS4___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function REAS4___Act )
endfunction

function REAS6_preload takes nothing returns nothing
endfunction

function REAS6___RemSpeed takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), REAS6___h_att )
    if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then
        call UnitRemoveAbility( u, REAS6___s_r )
        //call DisplayTextToForce( GetPlayersAll( ), "удалить скорость рипер" )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 0.5, TRUE, function REAS6___RemSpeed )
      //  call DisplayTextToForce( GetPlayersAll( ), "рекрсия удалить скорость рипер" )
    endif
    set t = null
    set u = null
endfunction

function REAS6___Act takes nothing returns nothing
    local unit attacker = GetEventDamageSource( )
    local unit target = GetTriggerUnit()
    local integer chance = GetRandomInt( 1, 100 )
    local timer t
    local real REAS6___chance = 30
    local real dmg = GetEventDamage()
    if GetEventDamageSource() != null and dmg > 1. and IsUnitEnemy(attacker, GetOwningPlayer(target)) then

        if GetUnitAbilityLevel( attacker, REAS6___a_r ) > 0 and GetEventDamage( ) > 0 then
        //шанс дать скорость атаки
            if chance <= REAS6___chance and GetUnitAbilityLevel( attacker, REAS6___s_r ) == 0 then
                call DisableTrigger( GetTriggeringTrigger( ) )
                call UnitAddAbility( attacker, REAS6___s_r )
           // call DisplayTextToForce( GetPlayersAll( ), "дасть скорость атаки рипер" )
                set t = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( t ), REAS6___h_att, attacker )
                call TimerStart( t, REAS6___time, FALSE, function REAS6___RemSpeed )
                set t = null
                call EnableTrigger( GetTriggeringTrigger( ) )
            endif

        endif

    endif
    set t = null
    set attacker = null
endfunction


function REAS6___I takes nothing returns nothing
    call TriggerAddAction( REAS6_Trg, function REAS6___Act )
endfunction


function RunesLib__Act_2 takes nothing returns nothing
    local item it = GetManipulatedItem( )
    local integer it_id = GetItemTypeId( it )
    local integer i = 1
    local unit u = GetManipulatingUnit( )
    local player p = GetLocalPlayer( )
    local unit dummy
    local integer a = 1
    local item t_it

    loop
        exitwhen( i > Max_Runes )
        if it_id == s__RunesLib__Rune_Id[i] then
            set RunesLib__Rune_Exists = FALSE

            if IsPlayerAlly( GetOwningPlayer( u ), p ) then
                call DisplayTextToPlayer( p, 0., 0., s__Color_Hex[GetConvertedPlayerId( GetOwningPlayer( u ) )] + GetUnitName( u ) + "|r " + Text_1 + GetItemName( it ) )
            endif
            if (it_id == 'rman') then
                //heyf ldjqyjuj ehjyf rfcnetn d uthjz edtxmt
                set dummy = CreateUnit( GetOwningPlayer( u ), 'hfoo', GetItemX( it ), GetItemY( it ), 0. )
                call UnitAddAbility( dummy, 'A009' )
                call IssueTargetOrderById( dummy, 852189, u )
                call TriggerSleepAction( 0.1 )
                call RemoveUnit( dummy )
                set dummy = null

            endif

            if (it_id == 'rreb' ) then
                //bludlast
                set dummy = CreateUnit( GetOwningPlayer( u ), 'hfoo', GetItemX( it ), GetItemY( it ), 0. )
                call UnitAddAbility( dummy, 'A00A' )
                call IssueTargetOrderById( dummy, 852101, u )
                call TriggerSleepAction( 0.1 )
                call RemoveUnit( dummy )
                set dummy = null
            endif
            
        endif
        set i = i + 1
    endloop


    set t_it = null
    set dummy = null
    set it = null
    set u = null
endfunction

function RunesLib__Act takes nothing returns nothing
    local integer cjlocgn_00000000 = 0
    if StartGameLib_Is_Game_Started and RunesLib_RunesOn then
        if not RunesLib__Rune_Exists then
            set cjlocgn_00000000 = GetRandomInt( 1, Max_Locs )
            call CreateItem( s__RunesLib__Rune_Id[GetRandomInt( 1, Max_Runes )], s__RunesLib__x[cjlocgn_00000000], s__RunesLib__y[cjlocgn_00000000] )
            set RunesLib__Rune_Exists = TRUE
        endif
    endif
endfunction
function RunesLib__RunesLib_Init takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    local trigger Trg_2
    call TriggerRegisterTimerEvent( Trg, Spawn_Period, true )
    call TriggerAddAction( Trg, function RunesLib__Act )
    set Trg_2 = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg_2, EVENT_PLAYER_UNIT_PICKUP_ITEM )
    call TriggerAddAction( Trg_2, function RunesLib__Act_2 )
    set RunesLib__Pick_Up_Trg = Trg_2
    set s__RunesLib__x[1] = 379.
    set s__RunesLib__y[1] = -444.
    set s__RunesLib__x[2] = -1666.
    set s__RunesLib__y[2] = 1025.
    set s__RunesLib__Rune_Id[1] = 'rspd'
    set s__RunesLib__Rune_Id[2] = 'rman'
    set s__RunesLib__Rune_Id[3] = 'rreb'
    set s__RunesLib__Rune_Id[4] = 'rdis'
    set s__RunesLib__Rune_Id[5] = 'rwat'
endfunction

function SHAS3A___Act takes nothing returns nothing
    local unit attacked = GetTriggerUnit( )
    local unit attacker = GetEventDamageSource( )
    local real dist = SquareRoot( ( GetUnitX( attacker ) - GetUnitX( attacked ) ) * ( GetUnitX( attacker ) - GetUnitX( attacked ) ) + ( GetUnitY( attacker ) - GetUnitY( attacked ) ) * ( GetUnitY( attacker ) - GetUnitY( attacked ) ) )
    local real cjlocgn_00000000 = 0.
    local real dmg = GetEventDamage()
    if attacker != null and dmg > 1. and IsUnitEnemy(attacker, GetOwningPlayer(attacked)) and IsUnitType(attacked, UNIT_TYPE_MAGIC_IMMUNE) == false then

        if GetEventDamage( ) > 0 and GetUnitAbilityLevel( attacker, 'A02J' ) > 0 and GetUnitAbilityLevel( attacked, 'B004' ) > 0 and dist <= 128.then
            call DisableTrigger( GetTriggeringTrigger( ) )
            set cjlocgn_00000000 = GetHeroStr( attacker, TRUE ) * 0.2
            call UnitDamageTarget( attacker, attacked, cjlocgn_00000000, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
            //call DisplayTextToForce( GetPlayersAll( ), "shas 02" )
            call EnableTrigger( GetTriggeringTrigger( ) )
        endif

    endif
    set attacker = null
    set attacked = null
endfunction
function SHAS3A___I takes nothing returns nothing
    set SHAS3A_Trg = CreateTrigger( )
    call TriggerAddAction( SHAS3A_Trg, function SHAS3A___Act )
endfunction

function SetUnitMax_Life takes unit u, integer val returns nothing
    local integer i = 'A00J'
    local integer c = val - R2I( GetUnitState( u, UNIT_STATE_MAX_LIFE ) )
    if i == 0 then
        return
    endif
    if c > 0 then
        loop
            exitwhen c == 0
            call UnitAddAbility( u, i )
            if c >= 100 then
                set c = c - 100
                call SetUnitAbilityLevel( u, i, 4 )
            elseif c >= 10 then
                set c = c - 10
                call SetUnitAbilityLevel( u, i, 3 )
            else
                set c = c - 1
                call SetUnitAbilityLevel( u, i, 2 )
            endif
            call UnitRemoveAbility( u, i )
        endloop
    elseif c < 0 then
        set c = -c
        loop
            exitwhen c == 0
            call UnitAddAbility( u, i )
            if c >= 100 then
                set c = c - 100
                call SetUnitAbilityLevel( u, i, 7 )
            elseif c >= 10 then
                set c = c - 10
                call SetUnitAbilityLevel( u, i, 6 )
            else
                set c = c - 1
                call SetUnitAbilityLevel( u, i, 5 )
            endif
            call UnitRemoveAbility( u, i )
        endloop
    endif
endfunction

function SetUnitMax__I takes nothing returns nothing
    local unit dummy = CreateUnit( Player( 13 ), 'hfoo', 0., 0., 0. )
    call SetUnitMax_Life( dummy, 100 )
    call TriggerSleepAction( 0.1 )
    call RemoveUnit( dummy )
endfunction


function StunUnitAct takes nothing returns nothing
    local timer t=GetExpiredTimer()
    local integer HID=GetHandleId(t)
    local unit target=LoadUnitHandle(udg_Hash,HID,400)
    local integer UID=GetHandleId(target)
    local real last=LoadReal(udg_Hash,UID,300)
    call SaveReal(udg_Hash,UID,300,last-0.10)
    
  //call DisplayTextToForce( GetPlayersAll(), GetUnitName(target)+ "stun time-"  + R2S(last) )
  
    if last<0.10 or GetUnitAbilityLevel(target,'BPSE')==0 then
    
      if IsUnitType(target,UNIT_TYPE_HERO)==false then
     //   call FlushChildHashtable(udg_Hash,UID)
      endif
      
      call UnitRemoveAbility(target,'BPSE')
  //    call DisplayTextToForce( GetPlayersAll(), GetUnitName(target)+ "stun clear" )
      call RemoveSavedReal(udg_Hash,UID,300)
      call RemoveSavedHandle(udg_Hash,UID,100)
      call FlushChildHashtable(udg_Hash,HID)
      call PauseTimer(t)
      call DestroyTimer(t)
    endif
    
    set t =null
    set t=null
endfunction

function StunUnit takes unit target,real last returns real
    local timer t=null
    local integer UID=GetHandleId(target)
    local unit dummy
    local integer HID=0
    local boolean boolean01=false
    set last = last

    //своя хештаблица для стана
    if GetUnitAbilityLevel(target,'BPSE')==0 and LoadTimerHandle(udg_Hash,UID,100)==null then
    set t=CreateTimer()
    set boolean01=true
    else
    set t=LoadTimerHandle(udg_Hash,UID,100)
    endif
    
    set HID=GetHandleId(t)
    call SaveTimerHandle(udg_Hash,UID,100,t)
    call SaveUnitHandle(udg_Hash,HID,400, target)
    
    if last>LoadReal(udg_Hash,UID,300) then
    set last=last
    call SaveReal(udg_Hash,UID,300,last)
    set dummy=CreateUnitAtLoc(GetOwningPlayer(target),'e002',GetUnitLoc(target),0)
    call UnitAddAbility(dummy,'A04S')
    call SetUnitAbilityLevel(dummy,'A04S',1+R2I(last))

    call UnitShareVision( target, GetOwningPlayer( dummy ), true )
    call IssueTargetOrder(dummy,"thunderbolt",target)
    call UnitShareVision( target, GetOwningPlayer( dummy ), false )
    //call DisplayTextToForce( GetPlayersAll(), GetUnitName(target)+ "stun continue" + R2S(last) )
    else
    if last > 0.01 and last < LoadReal(udg_Hash, UID, 300) then
    call SaveReal(udg_Hash, UID, 300, last)
    //call DisplayTextToForce( GetPlayersAll(), GetUnitName(target) + " stun updated " + R2S(last) )
    else
    //set boolean01=true Работает без него
    set last=LoadReal(udg_Hash,UID,300)+last
    call SaveReal(udg_Hash,UID,300,last)
    //call DisplayTextToForce( GetPlayersAll(), GetUnitName(target)+ "stun increase+" + R2S(last) )
    endif
    endif
    
    if boolean01 then
    //call DisplayTextToForce( GetPlayersAll(), "Stun timer start" )
    call TimerStart(t,0.10,true,function StunUnitAct)
    endif
    set t=null
    set dummy=null
    return last
endfunction


function Stun__StopUnit takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "StunUnitH_1" ) )
    local real time = LoadReal( HT, GetHandleId( t ), StringHash( "StunTimeH_2" ) )
    local effect fx = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "StunEH_3" ) )
    if ( time > 0. ) and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false and u != null then
        call IssueImmediateOrderById( u, 851972 )
        call SaveReal( HT, GetHandleId( t ), StringHash( "StunTimeH_2" ), time - 0.005 )
    else
        call DestroyEffect( fx )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
        set fx = null
    endif
    set t = null
    set u = null
endfunction

function Stun_Target takes unit cst, unit u, real time returns nothing
    local integer stuns = LoadInteger( HT, GetHandleId( u ), StringHash( I2S( GetPlayerId( GetOwningPlayer( cst ) ) + 1 ) + "stuns" ) )
    local timer t
    local effect fx
    set time = time * ( ( I2R( Stun__max_stuns ) - I2R( stuns ) ) / I2R( Stun__max_stuns ) )
    if time != 0.and not( IsUnitType( u, UNIT_TYPE_TAUREN ) ) and GetUnitAbilityLevel( u, 'Avul' ) == 0 then
        set t = CreateTimer( )
        set fx = AddSpecialEffectTarget( Stun__eff_id, u, "overhead" )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "StunUnitH_1" ), u )
        call SaveReal( HT, GetHandleId( t ), StringHash( "StunTimeH_2" ), time )
        call SaveEffectHandle( HT, GetHandleId( t ), StringHash( "StunEH_3" ), fx )
        call SaveInteger( HT, GetHandleId( u ), StringHash( I2S( GetPlayerId( GetOwningPlayer( cst ) ) + 1 ) + "stuns" ), stuns + 1 )
        call TimerStart( t, 0.005, TRUE, function Stun__StopUnit )
        set t = null
        set fx = null
    endif
    set t = null
    set fx = null
endfunction

function Stun_ClearStuns takes unit u returns nothing
    // почему с 10 считаем?
    local integer i = 10
    loop
        exitwhen( i == 0 )
        if i != ( GetPlayerId( GetOwningPlayer( u ) ) + 1 ) then //как это полнять блять
            call SaveInteger( HT, GetHandleId( u ), StringHash( I2S( i ) + "stuns" ), 0 )
        else
        //вывести число станов на юните
        endif
        set i = i - 1
    endloop
endfunction

function Stun__I takes nothing returns nothing
endfunction

function Set_TDM_MB_Act takes nothing returns nothing
    local boolean array is_min
    local integer i = 1
    local multiboarditem mbi = null
    local boolean team2set
    loop
        exitwhen( i > 10 )
        if GetLocalPlayer( ) == Player( i - 1 ) then
            set is_min[i] = IsMultiboardMinimized( TDMMultiboardLib_TDM_MB )
        endif
        set i = i + 1
    endloop
    call MultiboardDisplay( TDMMultiboardLib_TDM_MB, FALSE )
    call DestroyMultiboard( TDMMultiboardLib_TDM_MB )
    set TDMMultiboardLib_TDM_MB = null
    set TDMMultiboardLib_TDM_MB = CreateMultiboard( )
    call MultiboardSetColumnCount( TDMMultiboardLib_TDM_MB, 5 )
    if Choosed_Creeps then
        call MultiboardSetColumnCount( TDMMultiboardLib_TDM_MB, 5 + 1 )
    endif
    call MultiboardSetRowCount( TDMMultiboardLib_TDM_MB, Online_Players + 3 )
    call MultiboardSetItemsStyle( TDMMultiboardLib_TDM_MB, true, false )
    call MultiboardSetTitleText( TDMMultiboardLib_TDM_MB, "Командная Арена || Лимит: " + I2S( Choosed_WP ) )
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 0, 0 )
    call AntiBJ_MultiboardSetItemWidthBJN( TDMMultiboardLib_TDM_MB, 1, 0, 12. ) //8 10 
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 0, 1 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "K" )
    call AntiBJ_MultiboardSetItemWidthBJN( TDMMultiboardLib_TDM_MB, 2, 0, 1.8 ) //1.5 1.7
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 0, 2 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "D" )
    call AntiBJ_MultiboardSetItemWidthBJN( TDMMultiboardLib_TDM_MB, 3, 0, 1.8 ) //1.5
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 0, 3 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "L" )
    call AntiBJ_MultiboardSetItemWidthBJN( TDMMultiboardLib_TDM_MB, 4, 0, 1.8 ) //1.5
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 0, 4 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "DPS" )
    call AntiBJ_MultiboardSetItemWidthBJN( TDMMultiboardLib_TDM_MB, 5, 0, 3.4 ) //2.8 3.1
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 0, 5 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "CR" )
    call AntiBJ_MultiboardSetItemWidthBJN( TDMMultiboardLib_TDM_MB, 6, 0, 2.5 ) //1.9 2.2
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 1, 0 )
    call MultiboardSetItemValue( mbi, "|cFF00FF00»|r " + s__Team_Name[1] )
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 1, 1 )
    call MultiboardSetItemValue( mbi, I2S( s__Kills_Team[1] ) )
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 1, 2 )
    call MultiboardSetItemValue( mbi, I2S( s__Deaths_Team[1] ) )
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 1, 3 )
    call MultiboardSetItemValue( mbi, I2S( s__Lvl_Team[1] ) )
    if Choosed_Creeps then
        set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 1, 5 )
        call MultiboardSetItemValue( mbi, I2S( s__Creeps_Team[1] ) )
    endif
    set team2set = FALSE
    set i = 1

    loop
        exitwhen( i > Online_Players )
        if GetConvertedPlayerId( s__Online_Player[i] ) < 6 then
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 0 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + GetPlayerName( s__Online_Player[i] ) + "|r" )
            call MultiboardSetItemStyle( mbi, true, true )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValue( mbi, s__Color_Hex[9] + "[-]|r" + s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + GetPlayerName( s__Online_Player[i] ) + "|r" )
            endif
            if GetUnitState( s__Hero[GetConvertedPlayerId( s__Online_Player[i] )], UNIT_STATE_LIFE ) > 0.405 then
                call MultiboardSetItemIcon( mbi, s__Hero_Icon_A[GetConvertedPlayerId( s__Online_Player[i] )] )
            else
                call MultiboardSetItemIcon( mbi, s__Hero_Icon_D[GetConvertedPlayerId( s__Online_Player[i] )] )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 1 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Kills[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 2 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Deaths[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 3 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Level[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 4 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( R2I( s__DPSLib_DPS[GetConvertedPlayerId( s__Online_Player[i] )] ) ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            if Choosed_Creeps then
                set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 5 )
                call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Creeps[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
                if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                    call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
                endif
            endif
        else
            if not team2set then
                set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 0 )
                call MultiboardSetItemValue( mbi, "|cFF00FF00»|r " + s__Team_Name[2] )
                set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 1 )
                call MultiboardSetItemValue( mbi, I2S( s__Kills_Team[2] ) )
                set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 2 )
                call MultiboardSetItemValue( mbi, I2S( s__Deaths_Team[2] ) )
                set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 3 )
                call MultiboardSetItemValue( mbi, I2S( s__Lvl_Team[2] ) )
                if Choosed_Creeps then
                    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 5 )
                    call MultiboardSetItemValue( mbi, I2S( s__Creeps_Team[2] ) )
                endif
                set team2set = TRUE
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 2, 0 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + GetPlayerName( s__Online_Player[i] ) + "|r" )
            call MultiboardSetItemStyle( mbi, true, true )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValue( mbi, s__Color_Hex[9] + "[-]|r" + s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + GetPlayerName( s__Online_Player[i] ) + "|r" )
            endif
            if GetUnitState( s__Hero[GetConvertedPlayerId( s__Online_Player[i] )], UNIT_STATE_LIFE ) > 0.405 then
                call MultiboardSetItemIcon( mbi, s__Hero_Icon_A[GetConvertedPlayerId( s__Online_Player[i] )] )
            else
                call MultiboardSetItemIcon( mbi, s__Hero_Icon_D[GetConvertedPlayerId( s__Online_Player[i] )] )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 2, 1 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Kills[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 2, 2 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Deaths[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 2, 3 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Level[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 2, 4 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( R2I( s__DPSLib_DPS[GetConvertedPlayerId( s__Online_Player[i] )] ) ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            if Choosed_Creeps then
                set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 2, 5 )
                call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Creeps[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
                if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                    call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
                endif
            endif
        endif
        set i = i + 1
    endloop
    call MultiboardDisplay( TDMMultiboardLib_TDM_MB, true )
    set i = 1
    loop
        exitwhen( i > 10 )
        if GetLocalPlayer( ) == Player( i - 1 ) then
            if is_min[i]then
                call MultiboardMinimize( TDMMultiboardLib_TDM_MB, true )
            else
                call MultiboardMinimize( TDMMultiboardLib_TDM_MB, FALSE )
            endif
        endif
        set i = i + 1
    endloop
    set mbi = null
endfunction

function TDMMultiboardLib_Init takes nothing returns nothing
    set TDMMultiboardLib_Set_TDM_MB_Trg_Var = CreateTrigger( )
    call TriggerRegisterTimerEvent( TDMMultiboardLib_Set_TDM_MB_Trg_Var, 1., true )
    call TriggerAddAction( TDMMultiboardLib_Set_TDM_MB_Trg_Var, function Set_TDM_MB_Act )
    call DisableTrigger( TDMMultiboardLib_Set_TDM_MB_Trg_Var )
endfunction



function TimeLib__Time_Act takes nothing returns nothing
    local integer i = 0
    if TimeLib_GO_Time then
        if TimeLib_Seconds >= 59 then
            set TimeLib_Seconds = 0
            set TimeLib__Minutes = TimeLib__Minutes + 1
        else
            set TimeLib_Seconds = TimeLib_Seconds + 1
        endif
    else
        if TimeLib_CD_Time then
            set TimeLib_Seconds = TimeLib_Seconds - 1
        endif
    endif
    loop
        exitwhen( i > 11 ) //12 игроков
        call SetPlayerState( Player( i ), PLAYER_STATE_RESOURCE_FOOD_USED, TimeLib_Seconds )
        call SetPlayerState( Player( i ), PLAYER_STATE_RESOURCE_LUMBER, TimeLib__Minutes )
        set i = i + 1
    endloop
endfunction

function TimeLib__TimeLib_Init takes nothing returns nothing
    local trigger Time_Trg = CreateTrigger( )
    call TriggerRegisterTimerEvent( Time_Trg, 1., true )
    call TriggerAddAction( Time_Trg, function TimeLib__Time_Act )
endfunction

function X_ApplyLife takes unit d returns nothing
    call UnitApplyTimedLife( d, 'BTLF', 1. )
endfunction
function X_ApplyLifeSmall takes unit d returns nothing
    call UnitApplyTimedLife( d, 'BTLF', 0.5 )
endfunction

function X_KillLightning takes lightning lt returns nothing
    call DestroyLightning( lt )
endfunction

function X__RemoveEffect takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "EF" ) )
    call DestroyEffect( e )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set e = null
endfunction

function X_AddTimedEff takes string l__gg_snd_DEA_horn, real x, real y, real time returns nothing
    local effect e = AddSpecialEffect( l__gg_snd_DEA_horn, x, y )
    local timer t = CreateTimer( )
    call SaveEffectHandle( HT, GetHandleId( t ), StringHash( "EF" ), e )
    call TimerStart( t, time, false, function X__RemoveEffect )
    set e = null
    set t = null
endfunction



function X_PreloadAbility takes integer aid returns nothing
    local unit d = CreateUnit( Player( 13 ), 'hfoo', 0., 0., 0. )
    call UnitAddAbility( d, aid )
    call RemoveUnit( d )
    set d = null
endfunction

function X__ThrowUpTwo takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), X__h_2 )
   // call UnitRemoveAbility( u, 'Arav' )
    call PauseUnit( u, FALSE )
    call IssueImmediateOrderById( u, 851972 )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

function X__ThrowUpOne takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), X__h_2 )
    local real ti = LoadReal( HT, GetHandleId( t ), X__h_1 )
    call TimerStart( t, GetUnitFlyHeight( u ) / ti, FALSE, function X__ThrowUpTwo )
    call SetUnitFlyHeight( u, 0., ti )
    set t = null
    set u = null
endfunction

function X_ThrowUp takes unit u, real height, real time returns nothing
    local timer t = CreateTimer( )
    local real ti = ( 1. / time ) * height * 2.
    call PauseUnit( u, TRUE )
    call UnitAddAbility( u, 'Arav' )
    call UnitRemoveAbility( u, 'Arav' )

    call SetUnitFlyHeight( u, height, ti )
    call SaveReal( HT, GetHandleId( t ), X__h_1, ti )
    call SaveUnitHandle( HT, GetHandleId( t ), X__h_2, u )
    call TimerStart( t, height / ti, FALSE, function X__ThrowUpOne )
    set t = null
endfunction

function Act takes nothing returns nothing
    local integer i = 0
    loop
        exitwhen( i > ( 10  ) )

        if s__ADSLib_ADS_Enabled[i + 1] and GetPlayerSlotState(Player( i )) == PLAYER_SLOT_STATE_PLAYING  then
            if not IsUnitSelected( s__Hero[i + 1], Player( i ) ) and not IsUnitSelected( gg_unit_n000_0005, Player( i ) )and not IsUnitSelected( gg_unit_n002_0006, Player( i ) )and not IsUnitSelected( gg_unit_n001_0007, Player( i ) )and not IsUnitSelected( gg_unit_edos_0053, Player( i ) ) then

                if GetLocalPlayer( ) == Player( i ) then
                    call ClearSelection( )
                    call SelectUnit( s__Hero[i + 1], TRUE )
                endif
            endif
        endif
        set i = i + 1
    endloop
endfunction

function ADSLib_Init takes nothing returns nothing
    set ADSLib_Trg = CreateTrigger( )
    call TriggerRegisterTimerEvent( ADSLib_Trg, 0.01, TRUE )
    call TriggerAddAction( ADSLib_Trg, function Act )
endfunction

function ASSS4_preload takes nothing returns nothing
    call X_PreloadAbility( ASSS4___invis_ab )
endfunction

function ASSS4___MakeInvisisble takes unit u returns nothing
    local unit d = CreateUnit( GetOwningPlayer( u ), 'hfoo', GetUnitX( u ), GetUnitY( u ), 0. )
    call X_ApplyLife( d )
    call UnitAddAbility( d, ASSS4___invis_ab )
    call IssueTargetOrderById( d, 852069, u )
    set d = null
endfunction

function ASSS4___Move takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), ASSS4___h_u )
    call SetUnitPosition( u, LoadReal( HT, GetHandleId( t ), ASSS4___h_x ), LoadReal( HT, GetHandleId( t ), ASSS4___h_y ) )
    call IssueImmediateOrderById( u, 851993 )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

function ASSS4___MoveInWalkable takes real angle, real x, real y, unit u returns nothing
    local real tX = x
    local real tY = y
    local timer t = CreateTimer( )
    loop
        exitwhen not IsTerrainPathable( tX, tY, PATHING_TYPE_WALKABILITY )
        set tX = tX - 10. * Cos( angle )
        set tY = tY - 10. * Sin( angle )
    endloop
    call SaveUnitHandle( HT, GetHandleId( t ), ASSS4___h_u, u )
    call SaveReal( HT, GetHandleId( t ), ASSS4___h_x, tX )
    call SaveReal( HT, GetHandleId( t ), ASSS4___h_y, tY )
    call TimerStart( t, 0.01, FALSE, function ASSS4___Move )
    set t = null
endfunction

function ASSS4___IsIllusion takes nothing returns boolean
    local unit u = GetFilterUnit( )
    //нихуя не работает
    if IsUnitIllusion( u )and GetOwningPlayer( u ) == ASSS4___the_p then
        set u = null
        return TRUE
    else
        set u = null
        return FALSE
    endif
endfunction

function ASSS4___IssueOrderToIllusion takes unit u returns nothing
    local unit FoG = null
    local widget w = null
    set ASSS4___the_p = GetOwningPlayer( u )
    call GroupEnumUnitsInRange( ASSS4___the_g, GetUnitX( u ), GetUnitY( u ), 100., Condition( function ASSS4___IsIllusion ) )
    ///нету цикла самого перебора кого оно перебирает
 //вопрос
    if not IsGroupEmpty( ASSS4___the_g ) then
        set w = LoadWidgetHandle( HT, GetHandleId( u ), ASSS4___h_target )

        if w != null then
            call IssueTargetOrderById( FoG, LoadInteger( HT, GetHandleId( u ), ASSS4___h_order ), w )
            
        //    call DisplayTextToForce( GetPlayersAll( ), "приказ иллюзий 1" )
        else
         //   call DisplayTextToForce( GetPlayersAll( ), "приказ иллюзий 2" )
            call IssuePointOrderById( FoG, LoadInteger( HT, GetHandleId( u ), ASSS4___h_order ), LoadReal( HT, GetHandleId( u ), ASSS4___h_x ), LoadReal( HT, GetHandleId( u ), ASSS4___h_y ) )
        endif
    endif

    call GroupClear( ASSS4___the_g )
    set FoG = null
    set w = null
endfunction

function ASSS4___Act_Cast takes nothing returns nothing
    local unit caster
    local string cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local item cjlocgn_00000005
    if GetSpellAbilityId( ) == 'A040' then
        set caster = GetTriggerUnit( )
        set cjlocgn_00000001 = ""
        set cjlocgn_00000002 = GetSpellTargetX( )
        set cjlocgn_00000003 = GetSpellTargetY( )
        set cjlocgn_00000004 = Atan2( GetUnitY( caster ) - cjlocgn_00000003, GetUnitX( caster ) - cjlocgn_00000002 )
        set cjlocgn_00000005 = null
        call SetUnitPathing( caster, FALSE )
        call SetUnitVertexColor( caster, 0, 0, 0, 0 )
        set cjlocgn_00000005 = UnitAddItemById( caster, ASSS4___illus_it )
        call ASSS4___IssueOrderToIllusion( caster )
        call ASSS4___MakeInvisisble( caster )
        call DestroyEffect( AddSpecialEffect( cjlocgn_00000001, GetUnitX( caster ), GetUnitY( caster ) ) )
        call ASSS4___MoveInWalkable( cjlocgn_00000004, cjlocgn_00000002, cjlocgn_00000003, caster )
        call SetUnitPathing( caster, TRUE )
        call SetUnitVertexColor( caster, 100, 200, 100, 255 )
        set caster = null
        set cjlocgn_00000001 = null
        set cjlocgn_00000005 = null
    endif
endfunction

function ASSS4___OnOrder takes nothing returns nothing
    local unit caster
    local widget cjlocgn_00000001
    if GetIssuedOrderId( ) == 851983 or GetIssuedOrderId( ) == 851986 or GetIssuedOrderId( ) == 851971 then
        set caster = GetTriggerUnit( )
        set cjlocgn_00000001 = null
        if GetUnitAbilityLevel( caster, 'A040' ) > 0 and not IsUnitIllusion( caster ) then
            set cjlocgn_00000001 = GetOrderTarget( )
            if cjlocgn_00000001 != null then
                call SaveWidgetHandle( HT, GetHandleId( caster ), ASSS4___h_target, cjlocgn_00000001 )
                call SaveInteger( HT, GetHandleId( caster ), ASSS4___h_order, GetIssuedOrderId( ) )
            else
                call SaveWidgetHandle( HT, GetHandleId( caster ), ASSS4___h_target, null )
                call SaveReal( HT, GetHandleId( caster ), ASSS4___h_x, GetOrderPointX( ) )
                call SaveReal( HT, GetHandleId( caster ), ASSS4___h_y, GetOrderPointY( ) )
                call SaveInteger( HT, GetHandleId( caster ), ASSS4___h_order, GetIssuedOrderId( ) )
            endif
        endif
        set caster = null
        set cjlocgn_00000001 = null
    endif
endfunction

function ASSS4___I takes nothing returns nothing
    local integer i = 1
    loop
        exitwhen( i > 11 )
        call TriggerRegisterPlayerUnitEvent( ASSS4___Trg, Player( i - 1 ), EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER, null )
        call TriggerRegisterPlayerUnitEvent( ASSS4___Trg, Player( i - 1 ), EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER, null )
        call TriggerRegisterPlayerUnitEvent( ASSS4___Trg_Cast, Player( i - 1 ), EVENT_PLAYER_UNIT_SPELL_EFFECT, null )
        set i = i + 1
    endloop
    call TriggerAddAction( ASSS4___Trg, function ASSS4___OnOrder )
    call TriggerAddAction( ASSS4___Trg_Cast, function ASSS4___Act_Cast )
endfunction

function ASSS5___ForDest takes nothing returns nothing
    local destructable dt = GetEnumDestructable( )
    if GetDestructableTypeId( dt ) == 'ATtr' and GetWidgetLife( dt ) > 0.405 then
        set ASSS5___the_bool = TRUE
    endif
    set dt = null
endfunction

function ASSS5___Check takes nothing returns nothing
    local integer i = 1
    local unit u = null
    local rect r = null
    local real x = 0.
    local real y = 0.
    loop
        exitwhen( i > 10 )
        set u = s__Hero[i]
        set x = GetUnitX( u )
        set y = GetUnitY( u )
        if u != null and GetUnitAbilityLevel( u, ASSS5___dummy_ab ) > 0 then

            if GetUnitAbilityLevel( u, ASSS5___inv_ab ) > 0 then
                set r = Rect( x - ASSS5___radius, y - ASSS5___radius, x + ASSS5___radius, y + ASSS5___radius )
                call EnumDestructablesInRect( r, null, function ASSS5___ForDest )
                if not ASSS5___the_bool and( x != ASSS5___t_x[i] or y != ASSS5___t_y[i] ) then
                    call UnitRemoveAbility( u, ASSS5___inv_ab )
                endif
                call RemoveRect( r )
            else
                set r = Rect( x - ASSS5___radius, y - ASSS5___radius, x + ASSS5___radius, y + ASSS5___radius )
                call EnumDestructablesInRect( r, null, function ASSS5___ForDest )

                if ASSS5___the_bool or( x == ASSS5___t_x[i]and y == ASSS5___t_y[i] ) then
                    call UnitAddAbility( u, ASSS5___inv_ab )
                endif

                call RemoveRect( r )
            endif
            set ASSS5___the_bool = FALSE
            set ASSS5___t_x[i] = x
            set ASSS5___t_y[i] = y
        endif
        set i = i + 1
    endloop
    set u = null
endfunction
function ASSS5___I takes nothing returns nothing
    local timer t = CreateTimer( )
    call TimerStart( t, ASSS5___check_period, TRUE, function ASSS5___Check )
    set t = null
endfunction

function ASSS6___onTimer takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "agi_u" ) )
    call SetHeroAgi( u, GetHeroAgi( u, false ) - 1, TRUE )
   // call DisplayTextToForce( GetPlayersAll( ), "аги -" )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

function ASSS6___Act takes nothing returns nothing
    local unit u = GetEventDamageSource( )
    local timer t
   
    if GetEventDamage( ) > 0 and GetUnitAbilityLevel( u, 'A032' ) > 0 and not IsUnitIllusion( u ) then

        if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false and u != null then
            set t = CreateTimer( )
            call SetHeroAgi( u, GetHeroAgi( u, false ) + 1, TRUE )
       // call DisplayTextToForce( GetPlayersAll( ), "аги +" )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "agi_u" ), u )
            call TimerStart( t, 4., FALSE, function ASSS6___onTimer )
        endif

    endif
    set u = null
    set t = null
endfunction

function ASSS6___I takes nothing returns nothing
    call TriggerAddAction( ASSS6_Trg, function ASSS6___Act )
endfunction

function DMKillsLib__RemoveMulti takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    set s__DMKillsLib__Multies[LoadInteger( HT, GetHandleId( t ), StringHash( "RemoveMulti_1" ) )] = 0
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
endfunction

function DMKillsLib__WinPlayer takes integer pid returns nothing
    local player p
    local real time = 30.
    call SetGameSpeed( MAP_SPEED_SLOWEST )
    set DMKillsLib_Game_Ended = TRUE
    //call PauseGame(true)
   // call ClearTextMessages( )
    call BJDebugMsg( s__Color_Hex[pid] + GetPlayerName( Player( pid - 1 ) ) + " одержал победу! Игра заканчивается через " + I2S( R2I( 30. ) ) + " секунд. " + s__Color_Hex[5] + "Спасибо!|r" )
   // call StopMusic( FALSE )
    call FogEnable( false )
    call FogMaskEnable( false )
   // set p = GetLocalPlayer( )
   // if p != Player( pid - 1 ) then
    //    call StartSound( gg_snd_defeat )
   // else
   //     call StartSound( gg_snd_victory )
   // endif
    call StartSound( gg_snd_defeat )
    loop
        exitwhen( time <= 0. )
        call TriggerSleepAction( 1. )
        call PauseGame( true )
        set time = time - ( 1.0 )
    endloop
    call EndGame( true )
endfunction

function DMKillsLib__DMKills_Act takes nothing returns nothing
    local unit d = GetDyingUnit( )
    local unit k = GetKillingUnit( )
    local integer dp = GetConvertedPlayerId( GetOwningPlayer( d ) )
    local integer kp = GetConvertedPlayerId( GetOwningPlayer( k ) )

    if IsUnitType( d, UNIT_TYPE_HERO ) then
       // call Stun_ClearStuns( d )
        if kp == 13 or kp == 11 then // 11 игрок это 12 игрок 13 враждебный
            call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, "Игрок " + s__Color_Hex[dp] + GetPlayerName( Player( dp - 1 ) ) + "|r погиб от лап монстров! (|cFF80FFFF-" + I2S( 100 ) + "|r)" )
            call AdjustPlayerStateBJ( -100, Player( dp - 1 ), PLAYER_STATE_RESOURCE_GOLD )
            set s__DMKillsLib__Multies[dp] = 0
            if GetLocalPlayer( ) == GetOwningPlayer( d ) then
                call StartSound( gg_snd_die )
            endif
        else
            if s__DMKillsLib__Multies[kp] < 6 then
                set s__DMKillsLib__Multies[kp] = s__DMKillsLib__Multies[kp] + 1

            endif
            call StartSound( gg_snd_kill )
            set s__Kills[kp] = s__Kills[kp] + 1
            call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, s__Color_Hex[kp] + GetPlayerName( Player( kp - 1 ) ) + "|r † " + s__Color_Hex[dp] + GetPlayerName( Player( dp - 1 ) ) + "|r (|cFF80FFFF+" + I2S( 50 + GetUnitLevel( d ) * 5 + s__DMKillsLib__Multies[dp] * 15 ) + "|r)" )
            set s__DMKillsLib__Multies[dp] = 0
            call AdjustPlayerStateBJ( 50 + GetUnitLevel( d ) * 5 + s__DMKillsLib__Multies[dp] * 15, Player( kp - 1 ), PLAYER_STATE_RESOURCE_GOLD )
            call AdjustPlayerStateBJ( R2I( -( ( 50 + GetUnitLevel( d ) * 5 + s__DMKillsLib__Multies[dp] * 15 ) * 0.33 ) ), Player( dp - 1 ), PLAYER_STATE_RESOURCE_GOLD )
            if s__Kills[kp] >= Choosed_WP then
                call DMKillsLib__WinPlayer( kp )
                set d = null
                set k = null
                return
            endif
            if GetLocalPlayer( ) == GetOwningPlayer( d ) then
                call StartSound( gg_snd_die )
            endif
            if s__DMKillsLib__Multies[kp] > 1 then
                call StartSound( DMKillsLib__Multi_Sound[s__DMKillsLib__Multies[kp]] )
                call Filters_Multi( DMKillsLib__Multi_Img[s__DMKillsLib__Multies[kp]], Player( kp - 1 ) )
            endif
            call PauseTimer( s__DMKillsLib__Multi_Timer[kp] )
            call DestroyTimer( s__DMKillsLib__Multi_Timer[kp] )
            set s__DMKillsLib__Multi_Timer[kp] = CreateTimer( )
            call SaveInteger( HT, GetHandleId( s__DMKillsLib__Multi_Timer[kp] ), StringHash( "RemoveMulti_1" ), kp )
            call TimerStart( s__DMKillsLib__Multi_Timer[kp], 10., FALSE, function DMKillsLib__RemoveMulti )
            set PALS6_m_type[dp] = 1
        endif
    endif
    set d = null
    set k = null
endfunction

function DMKillsLib__L takes nothing returns nothing
    set s__DMKillsLib__Multi_Timer[1] = CreateTimer( )
    set s__DMKillsLib__Multi_Timer[2] = CreateTimer( )
    set s__DMKillsLib__Multi_Timer[3] = CreateTimer( )
    set s__DMKillsLib__Multi_Timer[4] = CreateTimer( )
    set s__DMKillsLib__Multi_Timer[5] = CreateTimer( )
    set s__DMKillsLib__Multi_Timer[6] = CreateTimer( )
    set s__DMKillsLib__Multi_Timer[7] = CreateTimer( )
    set s__DMKillsLib__Multi_Timer[8] = CreateTimer( )
    set s__DMKillsLib__Multi_Timer[9] = CreateTimer( )
    set s__DMKillsLib__Multi_Timer[10] = CreateTimer( )
    set DMKillsLib__Multi_Sound[2] = gg_snd_Multi_2
    set DMKillsLib__Multi_Sound[3] = gg_snd_Multi_3
    set DMKillsLib__Multi_Sound[4] = gg_snd_Multi_4
    set DMKillsLib__Multi_Sound[5] = gg_snd_Multi_5
    set DMKillsLib__Multi_Sound[6] = gg_snd_Multi_6
    set DMKillsLib__Multi_Img[2] = "war3mapImported\\Multi_2.blp"
    set DMKillsLib__Multi_Img[3] = "war3mapImported\\Multi_3.blp"
    set DMKillsLib__Multi_Img[4] = "war3mapImported\\Multi_4.blp"
    set DMKillsLib__Multi_Img[5] = "war3mapImported\\Multi_5.blp"
    set DMKillsLib__Multi_Img[6] = "war3mapImported\\Multi_6.blp"
endfunction

function DMKillsLib__DMKillsLib_Init takes nothing returns nothing
    local trigger Load
    set DMKillsLib_DMKills_Trg_Var = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( DMKillsLib_DMKills_Trg_Var, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( DMKillsLib_DMKills_Trg_Var, function DMKillsLib__DMKills_Act )
    call DisableTrigger( DMKillsLib_DMKills_Trg_Var )
    set Load = CreateTrigger( )
    call TriggerRegisterTimerEvent( Load, 0.01, FALSE )
    call TriggerAddAction( Load, function DMKillsLib__L )
endfunction

function DRASp2Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'A00I' )
endfunction

function DRASp2Lib__Time_Act takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit att = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "darkpass" ) )

    if GetUnitState( att, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( att, UNIT_TYPE_DEAD ) == false then

        if GetUnitAbilityLevel( att, 'A00I' ) > 1 then
            call DecUnitAbilityLevel( att, 'A00I' )
        else
            call UnitRemoveAbility( att, 'A00I' )
        endif

       // call DisplayTextToForce( GetPlayersAll( ), "минус атака стаки стоп_" + GetUnitName(att) )

        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else

        if IsUnitType( att, UNIT_TYPE_HERO ) then
            call TimerStart( t, 1., false, function DRASp2Lib__Time_Act )
        //    call DisplayTextToForce( GetPlayersAll( ), "минус атака рекурсия" )

        else
         //   call DisplayTextToForce( GetPlayersAll( ), "минус атака рекурсия стоп чистка_" + GetUnitName(att) )
            call FlushChildHashtable( HT, GetHandleId( t ) )
            call PauseTimer( t )
            call DestroyTimer( t )
        endif

    endif
    set att = null
    set t = null
endfunction

function DRASp2Lib__Act takes nothing returns nothing
    local unit dmgd = GetTriggerUnit( )
    local unit damager = GetEventDamageSource( )
    local timer t

    // call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger( GetTriggeringTrigger( ) )
    if GetUnitAbilityLevel( dmgd, 'A00G' ) > 0 and GetEventDamage( ) > 0 then
        
        if SquareRoot( ( GetUnitX( dmgd ) - GetUnitX( damager ) ) * ( GetUnitX( dmgd ) - GetUnitX( damager ) ) + ( GetUnitY( dmgd ) - GetUnitY( damager ) ) * ( GetUnitY( dmgd ) - GetUnitY( damager ) ) ) <= 150.then

            if GetWidgetLife( damager ) > 0.405 and IsUnitType( damager, UNIT_TYPE_DEAD ) == false and damager != null then
                if GetUnitAbilityLevel( damager, 'A00I' ) > 0 then
                    
                    call IncUnitAbilityLevel( damager, 'A00I' )
                else
                    call UnitAddAbility( damager, 'A00I' )
                endif
            
              //  call DisplayTextToForce( GetPlayersAll( ), "минус атака стаки_" + GetUnitName( damager ) )
                set t = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "darkpass" ), damager )
                call TimerStart( t, 5., FALSE, function DRASp2Lib__Time_Act )
                set t = null
                set damager = null
            endif
        
        endif
        
    endif
    call EnableTrigger( GetTriggeringTrigger( ) )
    set t = null
    set dmgd = null
endfunction

function DRASp2Lib__DRASp2Lib_Init takes nothing returns nothing
    set DRASp2Lib_Trg = CreateTrigger( )
    call TriggerAddAction( DRASp2Lib_Trg, function DRASp2Lib__Act )
endfunction

function DRASp6Lib_preload takes nothing returns nothing
endfunction

function DRASp6Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( u, UNIT_TYPE_HERO ) and GetUnitAbilityLevel( u, 'Aloc' ) == 0
    set u = null
    return b
endfunction

function DRASp6Lib__TT takes unit u, string t, boolean plus returns nothing
    local texttag tt = CreateTextTagUnitBJ( t, u, -3., 6., 0., 0., 0., 0. )
    if plus then
        call SetTextTagColor( tt, 128, 255, 128, 200 )
    else
        call SetTextTagColor( tt, 255, 128, 128, 200 )
    endif
    call SetTextTagVelocity( tt, 0.00, 0.03 )
    call SetTextTagFadepoint( tt, 1. / 2 )
    call SetTextTagLifespan( tt, 1. )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

function DRASp6Lib__Act takes nothing returns nothing
    local unit d = GetDyingUnit( )
    local unit FoG = null
    local group g
    if not IsUnitType( d, UNIT_TYPE_HERO )and GetConvertedPlayerId( GetOwningPlayer( d ) ) == 13 then

        set g = CreateGroup( )
        call GroupEnumUnitsInRange( g, GetUnitX( d ), GetUnitY( d ), 500., Condition( function DRASp6Lib__Cond1 ) )
        
        loop
            set FoG = FirstOfGroup( g )
            exitwhen ( FoG == null )

            if ( GetUnitAbilityLevel( FoG, 'A00O' ) > 0 ) then //кража хп
                call SetUnitMax_Life( FoG, R2I( GetUnitState(FoG, UNIT_STATE_MAX_LIFE ) + GetUnitState( d, UNIT_STATE_MAX_LIFE ) * 0.005 ) )
                call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Undead\\DeathCoil\\DeathCoilSpecialArt.mdl", FoG, "origin" ) )
                call DRASp6Lib__TT( FoG, "+" + I2S( R2I( GetUnitState( d, UNIT_STATE_MAX_LIFE ) * 0.005 ) ) + " hp", true )
                //добавить просто хилл хп
            endif

            call GroupRemoveUnit( g, FoG )
        endloop
        set FoG = null
        call GroupClear( g )
        call DestroyGroup( g )
    endif

    set g = null
    set d = null
endfunction
function DRASp6Lib__DRASp6Lib_Init takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction(Trg, function DRASp6Lib__Act) //трубил
    set Trg = null
endfunction

function DamageLib__ExplodeAct takes nothing returns nothing
    local unit u = GetDyingUnit( )
    if LoadBoolean( HT, GetHandleId( u ), StringHash( "H_explodeB" ) ) and u != null then
   //     call DisplayTextToForce( GetPlayersAll( ), GetUnitName( u ) + "_explode ddd" )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\BloodEX.mdl", GetUnitX( u ), GetUnitY( u ) ) )
    endif
    set u = null
endfunction

function DamageLib__NoExplode takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_explodeUnit" ) )
    if u != null then
        call SetUnitExploded( u, FALSE )
        call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_explodeB" ), FALSE )
        call DisplayTextToForce( GetPlayersAll( ), GetUnitName( u ) + "_explode_false" )
    else
        call DisplayTextToForce( GetPlayersAll( ), GetUnitName( u ) + "_explode_Null" )
    endif
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction


function DamageLib_Explode takes unit u returns nothing
    local integer j
    local boolean b
    local timer t

    if not LoadBoolean( HT, GetHandleId( u ), StringHash( "H_explodeB" ) ) then
        set j = 1
        set b = FALSE
        loop
            exitwhen( j > DamageLib__Cond_Type_Num )
            if GetUnitTypeId( u ) == DamageLib__Cond_Type[j] then
                set b = TRUE
            endif
            set j = j + 1
        endloop

        if not b then
            set t = CreateTimer( )
            call SetUnitExploded( u, TRUE )
            call TriggerRegisterUnitEvent( DamageLib__ExplodeTrg, u, EVENT_UNIT_DEATH )
            call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_explodeB" ), TRUE )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_explodeUnit" ), u )
            call TimerStart( t, 1.0, FALSE, function DamageLib__NoExplode )
           // call TimerStart( t, 0.5, FALSE, function DamageLib__NoExplode ) закоментил

            set t = null
        endif
    endif
endfunction

function DamageLib_AddToDamageGroup takes unit u returns nothing
    if IsUnitInGroup(u, DamageLib__All_Units_Group) == false then
        //добавил проверку что юнит в группе
        //вызывается функция при пике героя с таверы
        call GroupAddUnit( DamageLib__All_Units_Group, u )
        call TriggerRegisterUnitEvent( DamageLib__Damage_Trg_Var, u, EVENT_UNIT_DAMAGED ) //плавающий тексты
        call TriggerRegisterUnitEvent( DPSLib_DPS_Trg, u, EVENT_UNIT_DAMAGED ) //дпс либа
        // оставля. в дпс либе

        call TriggerRegisterUnitEvent( PALS7_Trg, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( PALS6_Trg_Attack, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( GLAS4_Trg, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( GLAS5_Trg, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( GLAS6_Trg_A, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( GLAS7_Trg, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( SHAS3A_Trg, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( SHAS4_Trg_A, u, EVENT_UNIT_DAMAGED )
       // call TriggerRegisterUnitEvent( GROS4_Trg_A, u, EVENT_UNIT_DAMAGED ) //фаталит
        call TriggerRegisterUnitEvent( ASSS6_Trg, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( REAS6_Trg, u, EVENT_UNIT_DAMAGED )
    endif
    set u = null
endfunction



function DamageLib__DamagePerSecondNulling takes nothing returns nothing
endfunction

function DamageLib__UsualDamageTextTag takes unit u, real dmg, integer dmgOwnPlayerId returns nothing
    local texttag tt = CreateTextTagUnitBJ( I2S( R2I( dmg ) ), u, DamageLib__Usual_Damage_Height, DamageLib__Normal_Size, 0., 0., 0., 0. )
    local integer i = 1
    if LoadBoolean( HT, GetHandleId( u ), StringHash( "PalShield" ) ) then
        call SetTextTagText( tt, "", DamageLib__Normal_Size * 2 )
    endif
    if dmg < 1.then
        call SetTextTagText( tt, "", DamageLib__Normal_Size * 2 )
    endif
    loop
        exitwhen( i > 10 )
        if s__ComLib_Show_Dmg[i]and( Player( i - 1 ) == GetOwningPlayer( u )or Player( i - 1 ) == Player( dmgOwnPlayerId - 1 ) )and dmg != 0.then
            if GetLocalPlayer( ) == Player( i - 1 ) then
                call SetTextTagVisibility( tt, TRUE )
            endif
        else
            if GetLocalPlayer( ) == Player( i - 1 ) then
                call SetTextTagVisibility( tt, FALSE )
            endif
        endif
        set i = i + 1
    endloop
    call SetTextTagVelocity( tt, 0.03, 0.03 )
    call SetTextTagColor( tt, 255, 255, 255, 255 )
    call SetTextTagFadepoint( tt, 0.6 / 2 )
    call SetTextTagLifespan( tt, 0.6 )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

function DamageLib_DamageTextTag takes unit u, real dmg, integer dmgOwnPlayerId, boolean crit returns nothing
    local real size = 0.
    local real time = 0.6
    local texttag tt
    local integer i = 1
    if not crit then
        set size = DamageLib__Normal_Size
    else
        set size = DamageLib__Crit_Size
        set time = time * 2
    endif

    set tt = CreateTextTagUnitBJ( I2S( R2I( dmg ) ), u, DamageLib__Spell_Damage_Height, size, 0., 0., 0., 0. )
    if dmg < 1.then
        call SetTextTagText( tt, "", size * 2 )
    endif

    if LoadBoolean( HT, GetHandleId( u ), StringHash( "PalShield" ) ) then
        call SetTextTagText( tt, "", size * 2 )
    endif

    loop
        exitwhen( i > 10 )
        if s__ComLib_Show_Dmg[i]and( Player( i - 1 ) == GetOwningPlayer( u )or Player( i - 1 ) == Player( dmgOwnPlayerId - 1 ) )and dmg != 0.then
            if GetLocalPlayer( ) == Player( i - 1 ) then
                call SetTextTagVisibility( tt, TRUE )
            endif
        else
            if GetLocalPlayer( ) == Player( i - 1 ) then
                call SetTextTagVisibility( tt, FALSE )
            endif
        endif
        set i = i + 1
    endloop

    call SetTextTagVelocity( tt, 0.03, 0.03 )
    call SetTextTagColor( tt, s__Color_Dec_1[5], s__Color_Dec_2[5], s__Color_Dec_3[5], 255 )
    call SetTextTagFadepoint( tt, time / 2 )
    call SetTextTagLifespan( tt, time )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

function DamageLib_HealTextTag takes unit u, real heal, integer dmgOwnPlayerId, boolean crit returns nothing
    local real size = 0.
    local real time = 0.6
    local texttag tt
    local integer i = 1
    if not crit then
        set size = DamageLib__Normal_Size
    else
        set size = DamageLib__Crit_Size
        set time = time * 2
    endif

    set tt = CreateTextTagUnitBJ( "+" + I2S( R2I( -heal ) ), u, DamageLib__Spell_Heal_Height, size, 0., 0., 0., 0. )

    loop
        exitwhen( i > 10 )
        if s__ComLib_Show_Dmg[i]and( Player( i - 1 ) == GetOwningPlayer( u )or Player( i - 1 ) == Player( dmgOwnPlayerId - 1 ) )and heal != 0.then
            if GetLocalPlayer( ) == Player( i - 1 ) then
                call SetTextTagVisibility( tt, TRUE )
            endif
        else
            if GetLocalPlayer( ) == Player( i - 1 ) then
                call SetTextTagVisibility( tt, FALSE )
            endif
        endif
        set i = i + 1
    endloop
    call SetTextTagVelocity( tt, 0.03, 0.03 )
    call SetTextTagColor( tt, 0, 255, 0, 255 )
    call SetTextTagFadepoint( tt, time / 2 )
    call SetTextTagLifespan( tt, time )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

function DamageLib_SpellDamage takes unit cst, unit target, real dmg returns nothing
    local real r_dmg = 0.
    local boolean crit = FALSE
    local real life = 0.
    set crit = Crit_IsCrit( cst )
    set r_dmg = Crit_GetDamage( dmg, crit ) - GetHeroInt( target, TRUE ) * 0.1 //тут резист 0.5 ед?поменял на 0.1

    // set r_dmg = Crit_GetDamage( dmg, crit ) - GetHeroInt( target, TRUE ) * 0.5
    //call DisplayTextToForce( GetPlayersAll( ), GetUnitName(cst)+ "_spell crit_ " + R2S(Crit_GetDamage( dmg, crit ) ) )
    set life = GetUnitState( target, UNIT_STATE_LIFE )
    call DisableTrigger( DamageLib__Damage_Trg_Var )
    //система спелл урона
    call UnitDamageTarget( cst, target, r_dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_DIVINE, WEAPON_TYPE_WHOKNOWS )
    call EnableTrigger( DamageLib__Damage_Trg_Var )
    call DamageLib_DamageTextTag( target, life - GetUnitState( target, UNIT_STATE_LIFE ), GetConvertedPlayerId( GetOwningPlayer( cst ) ), crit )
endfunction

function DamageLib_SpellHeal takes unit cst, unit target, real heal returns nothing
    local real r_heal = 0.
    local boolean crit = FALSE
    local real life = 0.
    set crit = Crit_IsCrit( cst )
    set r_heal = Crit_GetDamage( heal, crit )
    set life = GetUnitState( target, UNIT_STATE_LIFE )
    //call DisplayTextToForce( GetPlayersAll( ), GetUnitName(target)+ "_spell heal - " + R2S(r_heal) )
    //Не понял тут что кого хилит или дамажит отниманием хп
    if GetWidgetLife( target ) > 0.405 and IsUnitType( target, UNIT_TYPE_DEAD ) == false then //добавил проверки чтоб не хилить мертвого
        call SetWidgetLife( target, GetWidgetLife( target ) - r_heal )
        call DamageLib_HealTextTag( target, life - GetUnitState( target, UNIT_STATE_LIFE ), GetConvertedPlayerId( GetOwningPlayer( cst ) ), crit )
    endif

endfunction

function DamageLib__Damage_Act takes nothing returns nothing
    local unit u = GetTriggerUnit( )
    local unit a = GetEventDamageSource( )
    local real d = GetEventDamage( )
    if d > 0 then
        call DisableTrigger( GetTriggeringTrigger( ) )
        call DamageLib__UsualDamageTextTag( u, d, GetConvertedPlayerId( GetOwningPlayer( a ) ) )
        call EnableTrigger( GetTriggeringTrigger( ) )
    endif
    set a = null
    set u = null
endfunction

function DamageLib__DamageLib_Init takes nothing returns nothing
    local trigger Damage_Trg = CreateTrigger( )
    local trigger DamagePerSecondNulling_Trg
    call TriggerAddAction( Damage_Trg, function DamageLib__Damage_Act )
    set DamageLib__Damage_Trg_Var = Damage_Trg
    set DamagePerSecondNulling_Trg = CreateTrigger( )
    call TriggerRegisterTimerEvent( DamagePerSecondNulling_Trg, 1., true )
    call TriggerAddAction( DamagePerSecondNulling_Trg, function DamageLib__DamagePerSecondNulling )
    call TriggerAddAction( DamageLib__ExplodeTrg, function DamageLib__ExplodeAct )

    set DamageLib__Cond_Type_Num = 8
    set DamageLib__Cond_Type[1] = 'u000'
    set DamageLib__Cond_Type[2] = 'Nfir'
    set DamageLib__Cond_Type[3] = 'H000'
    set DamageLib__Cond_Type[4] = 'E000'
    set DamageLib__Cond_Type[5] = 'ntrv'
    set DamageLib__Cond_Type[6] = 'nsrv'
    set DamageLib__Cond_Type[7] = 'ndrv'
    set DamageLib__Cond_Type[8] = 'nlrv'

endfunction


function GROS4_preload takes nothing returns nothing
endfunction

function GROS4___DamageTextTag takes unit u, real dmg, integer dmgOwnPlayerId returns nothing
    local real size = 0.
    local real time = 0.6
    local texttag tt
    local integer i = 1
    set size = 8.
    set tt = CreateTextTagUnitBJ( I2S( R2I( dmg ) ), u, 0., size, 0., 0., 0., 0. )
    if dmg < 1.then
        call SetTextTagText( tt, "", size * 2 )
    endif

    // фатал в плавающем тексте
    if LoadBoolean( HT, GetHandleId( u ), StringHash( "PalShield" ) ) then //удар обз щит паладина
        call SetTextTagText( tt, "", size * 2 )
    endif

    loop
        exitwhen( i > 10 )

        if s__ComLib_Show_Dmg[i]and( Player( i - 1 ) == GetOwningPlayer( u )or Player( i - 1 ) == Player( dmgOwnPlayerId - 1 ) )and dmg != 0.then
            if GetLocalPlayer( ) == Player( i - 1 ) then
                call SetTextTagVisibility( tt, TRUE )
            endif
        else
            if GetLocalPlayer( ) == Player( i - 1 ) then
                call SetTextTagVisibility( tt, FALSE )
            endif
        endif
        set i = i + 1
    endloop

    call SetTextTagVelocity( tt, 0.03, 0.03 )
    call SetTextTagColor( tt, s__Color_Dec_1[5], s__Color_Dec_2[5], s__Color_Dec_3[5], 255 )
    call SetTextTagFadepoint( tt, time / 2 )
    call SetTextTagLifespan( tt, time )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

function GROS4spell takes unit damageSource, unit target , real eventDamage returns nothing
    local unit u = target
    local unit a = damageSource
    local real damage = eventDamage
    local real uX = GetUnitX( u )
    local real uY = GetUnitY( u )
    local real aX = GetUnitX( a )
    local real aY = GetUnitY( a )
    local real d = SquareRoot( ( uX - aX ) * ( uX - aX ) + ( uY - aY ) * ( uY - aY ) )
    local real cjlocgn_00000000 = 0.
    local real cjlocgn_00000001 = 0. //Потрошитель условия
    // call DisableTrigger(GetTriggeringTrigger())
    // and not( GetUnitTypeId( a ) == 'H00M' )  потрошитель
    // call DisableTrigger(GROS4_Trg_A)

    
    if damage > 0 and damage > GROS4___min_dmg and d <= GROS4___max_dist and LoadBoolean( HT, GetHandleId( u ), StringHash( "H_IS_SHIELD_GRO" ) ) then
           
        if X_GetMainChar( u ) == 1 then
            set cjlocgn_00000000 = GetHeroStr( u, TRUE ) * 1.5
        endif
        if X_GetMainChar( u ) == 2 then
            set cjlocgn_00000000 = GetHeroAgi( u, TRUE ) * 1.5
        endif
        if X_GetMainChar( u ) == 3 then
            set cjlocgn_00000000 = GetHeroInt( u, TRUE ) * 1.5
        endif

        set cjlocgn_00000001 = GetWidgetLife( a )

        if GetUnitTypeId( a ) == TEHS4_TYPE_1 or GetUnitTypeId( a ) == TEHS4_TYPE_2 then
            set cjlocgn_00000000 = cjlocgn_00000000 * TEHS4_REDUCE //0.75 снижен урона молний
        endif

          //  call DisplayTextToForce( GetPlayersAll( ), "щит молний урон фатал_" +R2S(cjlocgn_00000000) )
           // call DisableTrigger(GROS4_Trg_A)
          //  call DisableTrigger(GetTriggeringTrigger())
           // call DisableTrigger(DamageLib__Damage_Trg_Var)
           // call DisableTrigger(DPSLib_DPS_Trg)
        call DamageLib_SpellDamage( u, a, GROS5_FilterWater( GetUnitX(a), GetUnitY(a ), cjlocgn_00000000 ) )
          //call DisplayTextToForce( GetPlayersAll( ), "щит молний урон нанес" +R2S (GROS5_FilterWater( GetUnitX(a), GetUnitY(a ), cjlocgn_00000000 )) )

          //call UnitDamageTarget( u, a, cjlocgn_00000000, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_DIVINE, WEAPON_TYPE_WHOKNOWS )
          //call UnitDamageTarget(a, a, GROS5_FilterWater( GetUnitX( a ), GetUnitY( a ), cjlocgn_00000000 ), true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_DIVINE, WEAPON_TYPE_WHOKNOWS )
         
        //  call EnableTrigger(DamageLib__Damage_Trg_Var)
        //   EnableTrigger(DPSLib_DPS_Trg)

          //  call GROS4___DamageTextTag( u, cjlocgn_00000001 - GetWidgetLife( a ), GetPlayerId( GetOwningPlayer( u ) ) )
        call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Orc\\LightningShield\\LightningShieldBuff.mdl", a, "origin" ) )
           // call EnableTrigger(GetTriggeringTrigger())

    endif
       
    

   // call EnableTrigger(GROS4_Trg_A)
   // call EnableTrigger(GetTriggeringTrigger())
    set a = null
    set u = null
endfunction


function ForkedLightning_Act takes unit caster, unit target, real dmg, integer count returns nothing
    local timer t
    local integer tid
   // local unit caster = GetTriggerUnit()
    //local unit target = GetSpellTargetUnit()
    local integer jump = count
    local integer jumpmax = count
    local lightning chain
    local real damage = dmg
    local real x = GetUnitX(caster)
    local real y = GetUnitY(caster)
    local real z = GetUnitFlyHeight(caster) + 60
    local real tx
    local real ty
    local real tz
    local real number = 0
    local group g = CreateGroup()
    local group g2 = CreateGroup()
    local unit enemy
    local unit tarter
    local real dx
    local real dy
    local real distance
    local real distance2
    loop
        exitwhen jump == 0
        if jump < jumpmax then
            set tx = GetUnitX(target)
            set ty = GetUnitY(target)
            set distance2 = 300
            call GroupEnumUnitsInRange(g, tx, ty, distance2, null)
            loop
                set enemy = FirstOfGroup(g)
                exitwhen enemy == null
                if IsUnitInGroup(enemy, g2) == false and IsUnitType(enemy, UNIT_TYPE_STRUCTURE) == false and IsUnitType(enemy , UNIT_TYPE_MAGIC_IMMUNE) == false and IsUnitType(enemy, UNIT_TYPE_DEAD) == false and IsUnitEnemy(enemy, GetOwningPlayer(caster)) == true and GetUnitState( enemy, UNIT_STATE_LIFE ) > 0.405 then
                    set x = GetUnitX(enemy)
                    set y = GetUnitY(enemy)
                    set dx = tx - x
                    set dy = ty - y
                    
                    set distance = SquareRoot(dx * dx + dy * dy)
                    if distance < distance2 then
                        set distance2 = distance
                        set tarter = enemy
                    endif
                endif
                call GroupRemoveUnit(g, enemy)
                set enemy = null
            endloop
        else
            set tarter = target
        endif
        
        if tarter != null then
            call GroupAddUnit(g2, tarter)
            set jump = jump - 1
            set x = GetUnitX(caster)
            set y = GetUnitY(caster)
            set tx = GetUnitX(tarter)
            set ty = GetUnitY(tarter)
     //       set tz = GetUnitFlyHeight(tarter) + 60
      //      set chain = AddLightningEx( "FORK", true, x, y, z, tx, ty, tz )
            call DestroyEffect( AddSpecialEffectTarget("Abilities\\Weapons\\Bolt\\BoltImpact.mdl" , tarter, "origin") )
         //   call UnitDamageTarget(caster, tarter, damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, null)
          //  call DisableTrigger( gg_trg_DamageCategory0)

            call DamageLib_SpellDamage( caster, tarter, GROS5_FilterWater( tx, ty , dmg ))
           // call EnableTrigger( gg_trg_DamageCategory0 )

            call LightningUnit(caster, tarter, "FORK", 1, 1, 1, 1, 0.8, 2000)

       //     set t = CreateTimer()
       //     set tid = GetHandleId(t)
       //     call SaveUnitHandle(HT, tid, 300, caster)
        //    call SaveUnitHandle(HT, tid, 301, tarter)
         //   call SaveLightningHandle(HT, tid, 302, chain)
        //    call SaveReal(HT, tid, 303, number)
       //     call TimerStart(t, 0.02, true, function Forked_Lightning_timer)

            set tarter = null
        else
            set jump = 0
        endif
    //    call DisplayTextToForce( GetPlayersAll(), I2S(CountUnitsInGroup(g2)) )
    endloop
    call DestroyGroup(g)
    call DestroyGroup(g2)
    set t = null
    set caster = null
    set target = null
    set chain = null
    set g = null
    set g2 = null
endfunction


function GROS_Sfera__Act takes nothing returns nothing
    local unit caster = GetAttacker( )
    local unit target = GetTriggerUnit()
    local integer Random = GetRandomInt(0, 100)
    local real dist = Dist( GetUnitX(caster), GetUnitY(caster), GetUnitX(target), GetUnitY(target) )
    local real damage = 0

    if ( GetUnitAbilityLevel(caster, 'A02U') > 0 and dist <= 500 ) and Random <= 50 then
        set damage = GetHeroInt(caster, true) * 0.50
    //    call ForkedLightning_Act(caster,target,damage ,3)
    endif
    set caster = null
    set target = null
endfunction

function GROS_Sfera_In takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddAction( Trg, function GROS_Sfera__Act )
endfunction


function DamageCategory0_Actions takes nothing returns nothing
    local real eventDamage = GetEventDamage()
    local unit target = GetTriggerUnit()
    local unit damageSource = GetEventDamageSource()
    local timer t
    local integer id
    local integer i = 0
    local integer Random = GetRandomInt(0, 100)
    local real dist = Dist( GetUnitX(damageSource), GetUnitY(damageSource), GetUnitX(target), GetUnitY(target) )

    call DisableTrigger( gg_trg_DamageCategory0)
    if damageSource != null and eventDamage > 0. and IsUnitEnemy(damageSource, GetOwningPlayer(target)) and IsUnitType(damageSource, UNIT_TYPE_MAGIC_IMMUNE) == false and GetUnitState(damageSource, UNIT_STATE_LIFE ) > 0.405 then
        call GROS4spell(damageSource, target, eventDamage )

        //атака молний сюд

    endif

    call EnableTrigger( gg_trg_DamageCategory0 )
    set target = null
    set damageSource = null
    set t = null
endfunction

function DamageCategory0_Cond takes nothing returns boolean
    return GetEventDamage() > 0 and GetEventDamageSource() != GetTriggerUnit()
endfunction

function InitTrig_DamageCategory0 takes nothing returns nothing
    set gg_trg_DamageCategory0 = CreateTrigger()
    call TriggerAddCondition(gg_trg_DamageCategory0, Condition(function DamageCategory0_Cond))
    call TriggerAddAction(gg_trg_DamageCategory0, function DamageCategory0_Actions)
endfunction


function Dest__Kill takes nothing returns nothing
    local destructable dt = GetEnumDestructable( )
    if GetDestructableTypeId( dt ) == 'ATtr' or GetDestructableTypeId( dt ) == 'LTcr' then
        if GetDestructableLife( dt ) > 0 then
            call KillDestructable( dt )
            //call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl",GetDestructableX(dt),GetDestructableY(dt)))
            //call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\FragmentationShards\\FragBoomSpawn.mdl",GetDestructableX(dt),GetDestructableY(dt)))
        endif
    else
    endif
    set dt = null
endfunction

function Dest_KillDestInRange takes real x, real y, real radius returns nothing
    local rect r = Rect( x - radius, y - radius, x + radius, y + radius )
    call EnumDestructablesInRect( r, null, function Dest__Kill )
    call RemoveRect( r )
    set r = null
endfunction

function Dest__Rev takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local destructable dt = LoadDestructableHandle( HT, GetHandleId( t ), StringHash( "decor" ) )
    call DestructableRestoreLife( dt, GetDestructableMaxLife( dt ), true )
    call SaveBoolean( HT, GetHandleId( dt ), StringHash( "decorBoll" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set dt = null
endfunction

function Dest__Check takes nothing returns nothing
    local destructable dt = GetEnumDestructable( )
    local timer t
    if GetDestructableLife( dt ) == 0.and not LoadBoolean( HT, GetHandleId( dt ), StringHash( "decorBoll" ) ) then
        set t = CreateTimer( )
        call SaveDestructableHandle( HT, GetHandleId( t ), StringHash( "decor" ), dt )
        call SaveBoolean( HT, GetHandleId( dt ), StringHash( "decorBoll" ), TRUE )
        call TimerStart( t, GetRandomReal( 10., 40. ), FALSE, function Dest__Rev )
        set t = null
    endif
    set dt = null
    set t = null
endfunction

function Dest__Action takes nothing returns nothing
    local rect r = GetWorldBounds( )
    call EnumDestructablesInRect( r, null, function Dest__Check )
    call RemoveRect( r )
    set r = null
endfunction

function Dest__I takes nothing returns nothing
    call TriggerRegisterTimerEvent( Dest__Trg, 1., TRUE )
    call TriggerAddAction( Dest__Trg, function Dest__Action )
endfunction

function GLAS5_preload takes nothing returns nothing
    call X_PreloadAbility( 'A02B' )
endfunction

function GLAS5___Act takes nothing returns nothing
    local unit att = GetEventDamageSource( )
    local unit target = GetTriggerUnit( )
    local integer chance = GetRandomInt( 1, 100 )
    local real dmg = GetEventDamage()
    local unit dummy
    if att != null and dmg > 1. and IsUnitEnemy(att, GetOwningPlayer(target)) and IsUnitType(target, UNIT_TYPE_MAGIC_IMMUNE) == false then


        if GetEventDamage( ) > 0 and GetUnitAbilityLevel( att, 'A02A' ) > 0 and SquareRoot( ( GetUnitX( att ) - GetUnitX( target ) ) * ( GetUnitX( att ) - GetUnitX( target ) ) + ( GetUnitY( att ) - GetUnitY( target ) ) * ( GetUnitY( att ) - GetUnitY( target ) ) ) <= 128.then
       //Сало при атаке

            if chance <= 7 then
                call DisableTrigger( GetTriggeringTrigger( ) )
                set dummy = CreateUnit( GetOwningPlayer( att ), 'hfoo', GetUnitX( target ), GetUnitY( target ), 0. )
                call X_ApplyLife( dummy )
                call UnitAddAbility( dummy, 'A02B' )
                call IssueTargetOrderById( dummy, 852592, target )
                set dummy = null
                call EnableTrigger( GetTriggeringTrigger( ) )
            endif
            
        endif

    endif
    set att = null
    set target = null
    set dummy = null
endfunction

function GLAS5___I takes nothing returns nothing
    set GLAS5_Trg = CreateTrigger( )
    call TriggerAddAction( GLAS5_Trg, function GLAS5___Act )
endfunction

function GLAS6_preload takes nothing returns nothing
    call X_PreloadAbility( 'A03T' )
endfunction

function GLAS6___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GLAS6___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0
    set u = null
    return b
endfunction

function GLAS6___Act_A takes nothing returns nothing
    local unit att = GetEventDamageSource( )
    local unit target = GetTriggerUnit( )
    local real dmg = GetEventDamage( )
    local real heal = 0.

    if GetEventDamageSource() != null and dmg > 1. and IsUnitEnemy(att, GetOwningPlayer(target)) and IsUnitType(target, UNIT_TYPE_MAGIC_IMMUNE) == false then

        if dmg > 0 and LoadBoolean( HT, GetHandleId( att ), StringHash( "i_hate_rewenger" ) ) then

            call DisableTrigger( GetTriggeringTrigger( ) )
            set heal = dmg * 0.10
       //  call DisplayTextToForce( GetPlayersAll( ), "i_hate_rewenger heal+" + R2S( heal ) )
            call SetUnitState( att, UNIT_STATE_LIFE, GetUnitState( att, UNIT_STATE_LIFE ) + heal )
            call GLAS4_BloodDmg( att, target, dmg )

            call EnableTrigger( GetTriggeringTrigger( ) )

        endif
    endif
    set att = null
    set target = null
endfunction


function GLAS6___Off takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "i_hate_rewenger" ) )
    local effect w_e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_2" ) )
    call DestroyEffect( w_e )
    call SaveBoolean( HT, GetHandleId( cst ), StringHash( "i_hate_rewenger" ), FALSE )
   // call DisplayTextToForce( GetPlayersAll( ), "rewenger false" )
    call DisableTrigger( GLAS6_Trg_A )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set cst = null
    set w_e = null
endfunction

function GLAS6___AddRage takes player owner, unit target returns nothing
    local unit d = CreateUnit( owner, 'hfoo', GetUnitX( target ), GetUnitY( target ), 0. )
    call UnitAddAbility( d, 'A03T' )
    call X_ApplyLife( d )
    call IssueTargetOrderById( d, 852209, target )
    set d = null
endfunction

function GLAS6___Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local timer cjlocgn_00000001
    local effect cjlocgn_00000002
    local integer cjlocgn_00000003
    local unit cjlocgn_00000004

    if GetSpellAbilityId( ) == 'A02D' then
        
      //  call DisplayTextToForce( GetPlayersAll( ), "i_hate_rewenger start" )
        set cjlocgn_00000000 = GetTriggerUnit( )
        call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl", cjlocgn_00000000, "origin" ) )
        set cjlocgn_00000002 = AddSpecialEffectTarget( "war3mapImported\\BloodElementalMisile.mdl", cjlocgn_00000000, "weapon" )
        call SaveBoolean( HT, GetHandleId( cjlocgn_00000000 ), StringHash( "i_hate_rewenger" ), TRUE )
        set cjlocgn_00000001 = CreateTimer( )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000001 ), StringHash( "i_hate_rewenger" ), cjlocgn_00000000 )
        call SaveEffectHandle( HT, GetHandleId( cjlocgn_00000001 ), StringHash( "H_2" ), cjlocgn_00000002 )
        call TimerStart( cjlocgn_00000001, 5., FALSE, function GLAS6___Off )
        call EnableTrigger( GLAS6_Trg_A )
        set cjlocgn_00000003 = 1
        set cjlocgn_00000004 = null

        loop
            exitwhen( cjlocgn_00000003 > 10 )
            set cjlocgn_00000004 = s__Hero[cjlocgn_00000003]
            if IsPlayerAlly( GetOwningPlayer( cjlocgn_00000004 ), GetOwningPlayer( cjlocgn_00000000 ) ) then
                call GLAS6___AddRage( GetOwningPlayer( cjlocgn_00000000 ), cjlocgn_00000004 )
            endif
            set cjlocgn_00000003 = cjlocgn_00000003 + 1
        endloop

        set cjlocgn_00000001 = null
        set cjlocgn_00000002 = null
        set cjlocgn_00000000 = null
        set cjlocgn_00000004 = null
    endif
endfunction

function GLAS6___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GLAS6___Act )
    call TriggerAddAction( GLAS6_Trg_A, function GLAS6___Act_A )
    call DisableTrigger( GLAS6_Trg_A )
endfunction

function GLAS7_preload takes nothing returns nothing
    call X_PreloadAbility( 'A02E' )
endfunction

function GLAS7___Rem takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit ta = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "defminus" ) )
    
    if GetUnitState( ta, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( ta, UNIT_TYPE_DEAD ) == false then

        if GetUnitAbilityLevel( ta, 'A02E' ) > 1 then
            call DecUnitAbilityLevel( ta, 'A02E' )
        else
            call UnitRemoveAbility( ta, 'A02E' )
        //    call DisplayTextToForce( GetPlayersAll( ), "разруение брони удолить" + GetUnitName(ta)  )

        endif
       // call DisplayTextToForce( GetPlayersAll( ), "разруение брони стоп1" + GetUnitName(ta) )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else

        if IsUnitType( ta, UNIT_TYPE_HERO ) then
            call TimerStart( t, 1., false, function GLAS7___Rem )
       //     call DisplayTextToForce( GetPlayersAll( ), "разруение брони  рекурсия" + GetUnitName(ta)  )

        else
      //      call DisplayTextToForce( GetPlayersAll( ), "разруение брони  рекурсия стоп не гер"+ GetUnitName(ta) )
            call FlushChildHashtable( HT, GetHandleId( t ) )
            call PauseTimer( t )
            call DestroyTimer( t )
        endif

    endif
    set ta = null
endfunction

function GLAS7___Act takes nothing returns nothing
    local unit att = GetEventDamageSource( )
    local unit target = GetTriggerUnit( )
    local real damage = GetEventDamage()
    local timer t
    
    if GetEventDamageSource() != null and damage > 1. and IsUnitEnemy(att, GetOwningPlayer(target)) and IsUnitType(target, UNIT_TYPE_MAGIC_IMMUNE) == false then
    //call DisableTrigger( GetTriggeringTrigger( ) )

    //and GetUnitTypeId(target) != 'E000' and GetUnitTypeId(target) != 'Hgam' Ткач и Мрак
    
        if GetEventDamage( ) > 0 and GetUnitAbilityLevel( att, 'A02C' ) > 0 and SquareRoot( ( GetUnitX( att ) - GetUnitX( target ) ) * ( GetUnitX( att ) - GetUnitX( target ) ) + ( GetUnitY( att ) - GetUnitY( target ) ) * ( GetUnitY( att ) - GetUnitY( target ) ) ) <= 128. then


            if GetUnitAbilityLevel( target, 'A02E' ) > 0 then
                if GetUnitAbilityLevel( target, 'A02E' ) < 29 then
                    call IncUnitAbilityLevel( target, 'A02E' )
                endif
            else
                call UnitAddAbility( target, 'A02E' )
            endif

     //   call DisplayTextToForce( GetPlayersAll( ), "разруение брони стаки-30 рекурсия" + GetUnitName(target) )
            set t = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "defminus" ), target )
            call TimerStart( t, 2., FALSE, function GLAS7___Rem )
        
        endif

    endif
   // call EnableTrigger( GetTriggeringTrigger( ) )
    set att = null
    set target = null
endfunction

function GLAS7___I takes nothing returns nothing
    set GLAS7_Trg = CreateTrigger( )
    call TriggerAddAction( GLAS7_Trg, function GLAS7___Act )
endfunction



function GROS4___RemoveShield takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ) )
    if GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then
        call DestroyEffect( LoadEffectHandle( HT, GetHandleId( u ), StringHash( "H_1FX" ) ) )
        call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_IS_SHIELD_GRO" ), FALSE )
      //  call DisplayTextToForce( GetPlayersAll( ), "щит молний стоп" )
      //  call DisableTrigger( GROS4_Trg_A)
       // call DisableTrigger(GROS4_Trg_A)
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 0.5, FALSE, function GROS4___RemoveShield )
    //    call DisplayTextToForce( GetPlayersAll( ), "щит молний рекрсия длительность" )
    endif
    set t = null
    set u = null
endfunction

function GROS4___Act_S takes nothing returns nothing
    local unit caster = GetTriggerUnit( )
    local timer t
    local effect fx
   
    if GetSpellAbilityId( ) == 'A02S' then
        if LoadBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_GRO" ) ) then
           // call DisplayTextToForce( GetPlayersAll( ), "щит молний обновление" )
            set t = LoadTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_GRO" ) )
            call TimerStart( t, TimerGetRemaining( t ) + 6., FALSE, function GROS4___RemoveShield )
        else
         //   call DisplayTextToForce( GetPlayersAll( ), "щит молний старт" )
            set t = CreateTimer( )
            set fx = AddSpecialEffectTarget( "Abilities\\Spells\\Orc\\LightningShield\\LightningShieldTarget.mdl", caster, "origin" )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ), caster )
            call SaveTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_GRO" ), t )
            call SaveBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_GRO" ), TRUE )
            call SaveEffectHandle( HT, GetHandleId( caster ), StringHash( "H_1FX" ), fx )
            call TimerStart( t, 6., FALSE, function GROS4___RemoveShield )

        endif
        set t = null
        set fx = null
        set caster = null
    endif
endfunction


function GROS4___Act_T takes nothing returns nothing
    local unit caster = GetSpellTargetUnit( )
    local timer t
    local effect e
    if GetSpellAbilityId( ) == 'A03U' then
      
        if LoadBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_GRO" ) ) then
            set t = LoadTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_GRO" ) )
            call TimerStart( t, TimerGetRemaining( t ) + 6., FALSE, function GROS4___RemoveShield )
        else
            set t = CreateTimer( )
            set e = AddSpecialEffectTarget( "Abilities\\Spells\\Orc\\LightningShield\\LightningShieldTarget.mdl", caster, "origin" )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ), caster )
            call SaveTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_GRO" ), t )
            call SaveBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_GRO" ), TRUE )
            call SaveEffectHandle( HT, GetHandleId( caster ), StringHash( "H_1FX" ), e )
            call TimerStart( t, 6., FALSE, function GROS4___RemoveShield )
            call EnableTrigger(GROS4_Trg_A)
        endif
        set e = null
        set t = null
        set caster = null
    endif
endfunction

function GROS4___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GROS4___Act_S )
  
    call TriggerAddAction( Trg, function GROS4___Act_T )
    //call TriggerAddAction(GROS4_Trg_A, function GROS4___Attacked)
   // call DisableTrigger(GROS4_Trg_A)
    set Trg = null
endfunction


function s__recept_create takes integer target, integer s1, integer s2, integer s3, integer s4, integer s5, integer s6, integer s7 returns integer
    local integer r = s__recept__allocate( )
    set s__recept_target[r] = target
    set s__recept_count[r] = 0
    set s___recept_it[s__recept_it[r]] = s1
    set s___recept_it[s__recept_it[r] + 1] = s2
    set s___recept_it[s__recept_it[r] + 2] = s3
    set s___recept_it[s__recept_it[r] + 3] = s4
    set s___recept_it[s__recept_it[r] + 4] = s5
    set s___recept_it[s__recept_it[r] + 5] = s6
    set s___recept_it[s__recept_it[r] + 6] = s7
    set s___recept_kratn[s__recept_kratn[r]] = 1
    set s___recept_kratn[s__recept_kratn[r] + 1] = 1
    set s___recept_kratn[s__recept_kratn[r] + 2] = 1
    set s___recept_kratn[s__recept_kratn[r] + 3] = 1
    set s___recept_kratn[s__recept_kratn[r] + 4] = 1
    set s___recept_kratn[s__recept_kratn[r] + 5] = 1
    set s___recept_kratn[s__recept_kratn[r] + 6] = 1
    call sc__recept_normalize( r )
    return r
endfunction
function s__recepts_create takes nothing returns integer
    local integer r = s__recepts__allocate( )
    set s__recepts_count[r] = 0
    return r
endfunction
function s__recepts_add takes integer this, integer target, integer s1, integer s2, integer s3, integer s4, integer s5, integer s6, integer s7 returns nothing
    if ( target > 0 )and( s1 > 0 )and( s2 > 0 ) then
        set s___recepts_list[s__recepts_list[this] + s__recepts_count[this]] = s__recept_create( target, s1, s2, s3, s4, s5, s6, s7 )
        set s__recepts_count[this] = s__recepts_count[this] + 1
    endif
endfunction
function s__recepts_try takes integer this, item it, unit u returns boolean
    local boolean b
    local boolean bb
    local integer i = 0
    local integer j
    local integer k
    local item it1
    loop
        exitwhen i >= s__recepts_count[this]
        set b = true
        set j = 0
        set bb = IF_IsItemInInventory( u, it )
        loop
            exitwhen( j >= s__recept_count[s___recepts_list[s__recepts_list[this] + i]] )or( not b )
            set k = IF_CountItemInInventory( u, s___recept_it[s__recept_it[s___recepts_list[s__recepts_list[this] + i]] + j] )
            set b = ( ( not bb )and( ( k >= s___recept_kratn[s__recept_kratn[s___recepts_list[s__recepts_list[this] + i]] + j] )or( ( k >= s___recept_kratn[s__recept_kratn[s___recepts_list[s__recepts_list[this] + i]] + j] - 1 )and( GetItemTypeId( it ) == s___recept_it[s__recept_it[s___recepts_list[s__recepts_list[this] + i]] + j] ) ) ) )or( ( bb )and( ( k >= s___recept_kratn[s__recept_kratn[s___recepts_list[s__recepts_list[this] + i]] + j] ) ) )
            set j = j + 1
        endloop
        if b then
            call RemoveItem( it )
            set j = 0
            loop
                exitwhen j > s__recept_count[s___recepts_list[s__recepts_list[this] + i]]
                set k = 0
                loop
                    exitwhen( k >= s___recept_kratn[s__recept_kratn[s___recepts_list[s__recepts_list[this] + i]] + j] )or( ( k >= s___recept_kratn[s__recept_kratn[s___recepts_list[s__recepts_list[this] + i]] + j] - 1 )and( GetItemTypeId( it ) == s___recept_it[s__recept_it[s___recepts_list[s__recepts_list[this] + i]] + j] ) )
                    call IF_RemoveItemFromInventory( u, s___recept_it[s__recept_it[s___recepts_list[s__recepts_list[this] + i]] + j] )
                    set k = k + 1
                endloop
                set j = j + 1
            endloop
            set it1 = CreateItem( s__recept_target[s___recepts_list[s__recepts_list[this] + i]], GetUnitX( u ), GetUnitY( u ) )
            call DestroyEffect( AddSpecialEffectTarget( ISS__FX, u, "origin" ) )
            call UnitAddItem( u, it1 )
            set it1 = null
            return true
        endif
        set i = i + 1
    endloop
    set it1 = null
    return false
endfunction

function s__itemdummy_create takes integer it, integer du, boolean buy returns integer
    local integer id = s__itemdummy__allocate( )
    set s__itemdummy_it[id] = it
    set s__itemdummy_du[id] = du
    set s__itemdummy_buy[id] = buy
    return id
endfunction

function s__items_create takes nothing returns integer
    local integer i = s__items__allocate( )
    set s__items_count[i] = 0
    return i
endfunction

function s__items_add takes integer this, integer it, integer du, boolean buy returns nothing
    set s___items_list[s__items_list[this] + s__items_count[this]] = s__itemdummy_create( it, du, buy )
    set s__items_count[this] = s__items_count[this] + 1
endfunction

function s__items_getdummyindex takes integer this, integer it returns integer
    local integer i = 0
    loop
        exitwhen i >= s__items_count[this]
        if ( s__itemdummy_du[s___items_list[s__items_list[this] + i]] == it ) then
            return i
        endif
        set i = i + 1
    endloop
    return - 1
endfunction

function s__items_getitemindex takes integer this, integer it returns integer
    local integer i = 0
    loop
        exitwhen i >= s__items_count[this]
        if ( s__itemdummy_it[s___items_list[s__items_list[this] + i]] == it ) then
            return i
        endif
        set i = i + 1
    endloop
    return - 1
endfunction

function s__items_getdummy takes integer this, integer i returns integer
    return s__itemdummy_du[s___items_list[s__items_list[this] + i]]
endfunction

function s__items_getitem takes integer this, integer i returns integer
    return s__itemdummy_it[s___items_list[s__items_list[this] + i]]
endfunction

function s__items_getbuy takes integer this, integer i returns boolean
    return s__itemdummy_buy[s___items_list[s__items_list[this] + i]]
endfunction

function ISS__replace takes nothing returns nothing
    local item it = GetEnumItem( )
    local integer id = GetItemTypeId( it )
    local integer pl_id
    local real x
    local real y
    local integer k = s__items_getitemindex( itemlist, id )
    if ( k != -1 ) then
        set x = GetItemX( it )
        set y = GetItemY( it )
        set pl_id = GetItemUserData( it )
        call RemoveItem( it )
        set it = CreateItem( s__items_getdummy( itemlist, k ), x, y )
       // call DisplayTextToForce( GetPlayersAll( ), GetItemName(it)+ "-замена предмета")
       // call SetItemUserData( it, pl_id )
    endif
    set it = null
endfunction

function ISS__replacestart takes nothing returns nothing
    call EnumItemsInRect( bj_mapInitialPlayableArea, null, function ISS__replace )
    call DestroyTimer( GetExpiredTimer( ) )
endfunction

function ISS__Trig_GetItem_Actions takes nothing returns nothing
    local real x
    local real y
    local item it = GetManipulatedItem( )
    local integer id = GetItemTypeId( it )
    local integer k = s__items_getdummyindex( itemlist, id )
    local unit u = GetTriggerUnit( )
    if ( k != -1 ) then
        if ( not s__items_getbuy( itemlist, k ) )and( GetItemUserData( it ) == null ) then
            call RemoveItem( it )
            call SimError( GetOwningPlayer( u ), "Вы не можете купить эту вещь." )
        else
            set x = GetItemX( it )
            set y = GetItemY( it )
            call RemoveItem( it )
            set it = CreateItem( s__items_getitem( itemlist, k ), x, y )
            if ( not s__recepts_try( receptlist, it, u ) ) then
                if ( UnitInventoryCount( u ) == 6 ) then
                    call SetItemPosition( it, x, y )
                   // call SetItemUserData( it, GetPlayerId( GetOwningPlayer( u ) ) + 1 )
                    call TimerStart( CreateTimer( ), 0.0, false, function ISS__replacestart )
                else
                    call UnitAddItem( u, it )
                endif
            endif
        endif
    else
        if OWNERS then //Нельзя подобрать секртный итем телепорта
            if GetItemUserData( it ) == null then
              //  call SetItemUserData( GetManipulatedItem( ), GetPlayerId( GetOwningPlayer( u ) ) + 1 )
            endif
            if GetItemUserData( it ) != GetPlayerId( GetOwningPlayer( u ) ) + 1 then
               // call SetItemPosition( it, GetUnitX( u ), GetUnitY( u ) )
              //  call SimError( GetOwningPlayer( u ), GetItemName( it ) + " этот предмет вам не принадлежит." )
            else
                call s__recepts_try( receptlist, it, u )
            endif
        else
            call s__recepts_try( receptlist, it, u )
        endif
    endif
    set it = null
    set u = null
endfunction

function ISS__Trig_LostItem_Actions takes nothing returns nothing
    if GetItemUserData( GetManipulatedItem( ) ) == null then
      //  call SetItemUserData( GetManipulatedItem( ), GetPlayerId( GetOwningPlayer( GetTriggerUnit( ) ) ) + 1 )
    endif
    call TimerStart( CreateTimer( ), 0.0, false, function ISS__replacestart )
endfunction

function ISS__Trig_OrderToItem_Actions takes nothing returns nothing
    local unit u = GetTriggerUnit( )
    local item it = GetOrderTargetItem( )
    local integer j
    local boolean b

    if it != null then
        if ( GetPlayerId( GetOwningPlayer( u ) ) + 1 ) != GetItemUserData( it )and GetItemUserData( it ) != null then
            set j = Count_Spec_Items
            set b = FALSE
            loop
                exitwhen( j == 0 )
                if GetItemTypeId( it ) == s__Spec_Item[ j ]then
                    set b = TRUE
                endif
                set j = j - 1
            endloop
            if not b then
            endif
        endif
    endif
    set u = null
    set it = null
endfunction

function ISS__init takes nothing returns nothing
    set receptlist = s__recepts_create( )
    set itemlist = s__items_create( )
    set ISS__ISS_trig_GetItem = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( ISS__ISS_trig_GetItem, EVENT_PLAYER_UNIT_PICKUP_ITEM )
    call TriggerAddAction( ISS__ISS_trig_GetItem, function ISS__Trig_GetItem_Actions )
    set ISS__ISS_trig_LostItem = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( ISS__ISS_trig_LostItem, EVENT_PLAYER_UNIT_DROP_ITEM )
    call TriggerAddAction( ISS__ISS_trig_LostItem, function ISS__Trig_LostItem_Actions )
    //нужно перевести тут равкоды
    set s__Spec_Item[1] = 'I005' //кольцо регенерации
    set s__Spec_Item[2] = 'I000' //лапа гнула
    set s__Spec_Item[3] = 'I001' //разьеденый посох
    set s__Spec_Item[4] = 'I002' //утерянный медальон
    set s__Spec_Item[5] = 'I00Q' //Тотем исцеления
    set s__Spec_Item[6] = 'I00V' //Невидимый страж
    set s__Spec_Item[7] = 'I00W' //Проницательный страж
    set s__Spec_Item[8] = 'I00R' //Зелье прозрения НЕт такого
    set s__Spec_Item[9] = 'I00Y' //Лечебное зелье 800
    set s__Spec_Item[10] = 'I00T' //Лечебное зелье 400
    set s__Spec_Item[11] = 'I00Z' //Лечебное зелье 1600
    set s__Spec_Item[12] = 'I00S' //Лечебное зелье 200
    if OWNERS then //ЧТО за хуйня просиходит
        set ISS__ISS_trig_OrderToItem = CreateTrigger( )
        call TriggerRegisterAnyUnitEventBJ( ISS__ISS_trig_OrderToItem, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER )
        call TriggerAddAction( ISS__ISS_trig_OrderToItem, function ISS__Trig_OrderToItem_Actions )
    endif
endfunction


function MRAS6__Act_Night takes nothing returns nothing
    call DecUnitAbilityLevel( MRAS6_Unit, 'A01Q' )
endfunction
function MRAS6__Act_Day takes nothing returns nothing
    call IncUnitAbilityLevel( MRAS6_Unit, 'A01Q' )
endfunction

function MRAS6__MRAS6_In takes nothing returns nothing
    local trigger Trg_1 = CreateTrigger( )
    local trigger Trg_2 = CreateTrigger( )
    call TriggerRegisterGameStateEvent( Trg_1, GAME_STATE_TIME_OF_DAY, EQUAL, 18 )
    call TriggerAddAction( Trg_1, function MRAS6__Act_Night )
    call TriggerRegisterGameStateEvent( Trg_2, GAME_STATE_TIME_OF_DAY, EQUAL, 6 )
    call TriggerAddAction( Trg_2, function MRAS6__Act_Day )
endfunction


function MRAS4Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'A01M' )
endfunction

function MRAS4Lib__Rem takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit a = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local integer MrasLvl = LoadInteger(HT, GetHandleId(a), StringHash( "MrasLvl" ) )
    call SaveInteger(HT, GetHandleId(a), StringHash( "MrasLvl" ), MrasLvl - 1)
    call SetUnitAbilityLevel( a, 'A01M', MrasLvl )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set a = null
endfunction

function MRAS4Lib__Act takes nothing returns nothing
    local unit a = GetAttacker( )
    local timer t
    local integer MrasLvl = 0

    if GetUnitAbilityLevel( a, 'A01N' ) > 0 then
        set MrasLvl = LoadInteger(HT, GetHandleId(a), StringHash( "MrasLvl" ) )
        if MrasLvl < 99 then
            set MrasLvl = MrasLvl + 1
            call SaveInteger(HT, GetHandleId(a), StringHash( "MrasLvl" ), MrasLvl)
        endif
        call SetUnitAbilityLevel( a, 'A01M', MrasLvl )
        set t = CreateTimer( )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), a )
        call TimerStart( t, 4., FALSE, function MRAS4Lib__Rem )
        set t = null
    endif
    set a = null
    set t = null
endfunction

function MRAS4Lib__MRAS4Lib_In takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddAction( Trg, function MRAS4Lib__Act )
endfunction

function PALS5_preload takes nothing returns nothing
    call X_PreloadAbility( 'A005' )
endfunction


function PALS5__Act2 takes nothing returns nothing

endfunction

function PALS5__Act takes nothing returns nothing
    local unit cst = GetTriggerUnit( )
    local effect fx
    local timer t
    //Пассивка паладоса
    if GetUnitAbilityLevel( cst, 'A000' ) > 0 then
        if GetRandomInt( 1, 100 ) <= 7 then

            set fx = AddSpecialEffectTarget( "Abilities\\Spells\\Human\\InnerFire\\InnerFireTarget.mdl", cst, "overhead" )
            call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", cst, "origin" ) )

            if GetLocalPlayer( ) == GetOwningPlayer( cst ) then
                call StartSound( gg_snd_a )
            endif
            set t = CreateTimer()
            call UnitAddAbility( cst, 'A005' )
            call Energy_Minus( cst, -15 )
            call IncUnitAbilityLevel( cst, 'A003' )
            call TriggerSleepAction( 0.01 )
            call UnitResetCooldown( cst )
            call TriggerSleepAction( 5. )
            //как это понимать в цикле вейт 0.05 сек ждем пока юнит будет живой, лучше поменять на таймер
            loop
                exitwhen( GetWidgetLife( cst ) > 0.405 )
                call TriggerSleepAction( 0.5 )
            endloop
            call UnitRemoveAbility( cst, 'A005' )
            call DecUnitAbilityLevel( cst, 'A003' )
            call DestroyEffect( fx )
            set fx = null
        endif

    endif
    set t = null
    set cst = null
endfunction

function PALS5__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function PALS5__Act )
endfunction

function REAS2_preload takes nothing returns nothing
endfunction

function REAS2___TT takes unit u, real hp returns nothing
    local texttag tt = CreateTextTagUnitBJ( "-" + I2S( R2I( hp ) ), u, -0., 9., 0., 0., 0., 0. )
    local integer id = GetPlayerId( GetOwningPlayer( u ) ) + 1
    if IsPlayerAlly( GetLocalPlayer( ), GetOwningPlayer( u ) ) then
        call SetTextTagVisibility( tt, TRUE )
    else
        call SetTextTagVisibility( tt, FALSE )
    endif
    call SetTextTagColor( tt, s__Color_Dec_1[id], s__Color_Dec_2[id], s__Color_Dec_3[id], 255 )
    call SetTextTagVelocity( tt, 0., 0.03 )
    call SetTextTagFadepoint( tt, 2. / 2 )
    call SetTextTagLifespan( tt, 2. )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

function REAS2___RemBonus takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), REAS2___h_2 )
    local integer bon = LoadInteger( HT, GetHandleId( t ), REAS2___h_1 )
    local integer a = 0
    if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false and u != null then

        set a = X_GetMainChar( u )
        if a == 1 then
          //  call SetHeroStr( u, GetHeroStr( u, FALSE ) - bon, FALSE )
            call SetStrStatsSave( u, GetHeroStr( u, false ) - bon, true )
        else
            if a == 2 then
                call SetHeroAgi( u, GetHeroAgi( u, FALSE ) - bon, FALSE )
            else
              //  call SetHeroInt( u, GetHeroInt( u, FALSE ) - bon, FALSE )
                call SetIntStatsSave( u, GetHeroInt( u, false ) - bon, true )
            endif
        endif

        call UnitRemoveAbility( u, REAS2___s_r )
        call DecUnitAbilityLevel( u, REAS2___str_r )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 0.5, TRUE, function REAS2___RemBonus )
    endif
    set t = null
    set u = null
endfunction


function REAS2___Act takes nothing returns nothing
    local unit caster
    local integer strcst
    local integer j
    local timer t
    local unit FoG
    local integer cjlocgn_00000005
    //Рипер 2 спелл

    if GetSpellAbilityId( ) == REAS2___a_r then

        set caster = GetTriggerUnit( )
        set strcst = R2I( GetHeroStr( caster, TRUE ) * REAS2___p_str )
        set j = 1
        set cjlocgn_00000005 = 0
        call Eff_AddThenRemoveEffectOnUnit( REAS2___e, caster, "origin", REAS2___time )
        call IssuePointOrderById( caster, 851983, GetUnitX( caster ), GetUnitY( caster ) )
        call IncUnitAbilityLevel( caster, REAS2___str_r )

        //call SetWidgetLife( caster, GetWidgetLife( caster ) - GetUnitState( caster, UNIT_STATE_MAX_LIFE ) * REAS2___hp_minus )
        //отнимает хп и может умереть от его потери
      //  call REAS2___TT( caster, GetUnitState( caster, UNIT_STATE_MAX_LIFE ) * REAS2___hp_minus )
        loop
            exitwhen( j > 10 )

            set FoG = s__Hero[j]

            if GetWidgetLife( FoG ) > 0.405 and IsUnitType( FoG, UNIT_TYPE_DEAD ) == false and IsPlayerAlly( GetOwningPlayer( caster ), GetOwningPlayer( FoG ) ) then

                set cjlocgn_00000005 = X_GetMainChar( FoG )
                if cjlocgn_00000005 == 1 then
                  //  call SetHeroStr( FoG, GetHeroStr( FoG, FALSE ) + strcst, FALSE )
                    call SetStrStatsSave( FoG, GetHeroStr( FoG, false ) + strcst, true )
                else
                    if cjlocgn_00000005 == 2 then
                        call SetHeroAgi( FoG, GetHeroAgi( FoG, FALSE ) + strcst, FALSE )

                    else
                    //    call SetHeroInt( FoG, GetHeroInt( FoG, FALSE ) + strcst, FALSE )
                        call SetIntStatsSave( FoG, GetHeroInt( FoG, false ) + strcst, true )
                    endif
                endif

                if GetLocalPlayer( ) == GetOwningPlayer( FoG ) then
                    call StartSound( gg_snd_DEA_horn )
                endif

                call UnitAddAbility( FoG, REAS2___s_r )
                set t = CreateTimer( )
                call SaveInteger( HT, GetHandleId( t ), REAS2___h_1, strcst )
                call SaveUnitHandle( HT, GetHandleId( t ), REAS2___h_2, FoG )
                call TimerStart( t, REAS2___time, FALSE, function REAS2___RemBonus )
            endif
            set j = j + 1
        endloop
        set FoG = null
        set caster = null
        set t = null

    endif

endfunction

function REAS2___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function REAS2___Act )
endfunction

function REAS3_preload takes nothing returns nothing
    call X_PreloadAbility( 'A006' )
endfunction

function REAS3___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), REAS3___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction


function REAS3___CheckMagRes takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), REAS3___h_cst )
    local real x = LoadReal( HT, GetHandleId( t ), REAS3___h_x )
    local real y = LoadReal( HT, GetHandleId( t ), REAS3___h_y )
    local real tim = LoadReal( HT, GetHandleId( t ), REAS3___h_tim )
    call SaveReal( HT, GetHandleId( t ), REAS3___h_tim, tim + 0.2 )

    if tim < REAS3___time then
        if IsUnitInRangeXY( cst, x, y, REAS3___aoe ) then
            if GetUnitAbilityLevel( cst, REAS3___s_a ) == 0 then
                call UnitAddAbility( cst, REAS3___s_a )
         //       call DisplayTextToForce( GetPlayersAll(), "дали резист" + GetUnitName(cst) )
            endif
        else
            if GetUnitAbilityLevel( cst, REAS3___s_a ) > 0 then
                call UnitRemoveAbility( cst, REAS3___s_a )
         //   call DisplayTextToForce( GetPlayersAll(), "удалил резист" + GetUnitName(cst) )
            endif
        endif
        
    else
        if GetUnitAbilityLevel( cst, REAS3___s_a ) > 0 then
            call UnitRemoveAbility( cst, REAS3___s_a )
         //   call DisplayTextToForce( GetPlayersAll(), "удалил резист конец" + GetUnitName(cst) )
        endif
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set cst = null
    set t = null
endfunction

function REAS3___CheckSlow takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local player p = LoadPlayerHandle( HT, GetHandleId( t ), REAS3___h_player )
    local real x = LoadReal( HT, GetHandleId( t ), REAS3___h_x )
    local real y = LoadReal( HT, GetHandleId( t ), REAS3___h_y )
    local real tim = LoadReal( HT, GetHandleId( t ), REAS3___h_tim )
    local unit FoG = null
    local unit d = null
    call SaveReal( HT, GetHandleId( t ), REAS3___h_tim, tim + 0.2 )

    if tim < REAS3___time then
        set REAS3___ch_p = p
        call GroupEnumUnitsInRange( REAS3___g, x, y, REAS3___aoe, Condition( function REAS3___Cond1 ) )
        loop
            set FoG = FirstOfGroup( REAS3___g )
            exitwhen( FoG == null )
            if GetUnitAbilityLevel(FoG, 'Bslo') == 0 then
                set d = CreateUnit( p, 'hfoo', x, y, 0. )
                call X_ApplyLife( d )
                call UnitAddAbility( d, 'A006' )
                call IssueTargetOrderById( d, 852075, FoG )
            endif
          //  call DisplayTextToForce( GetPlayersAll(), "каст замедла" + GetUnitName(FoG) )    
            set d = null
            call GroupRemoveUnit( REAS3___g, FoG )
        endloop

    else
        call GroupClear( REAS3___g ) //чиста группы добавил
      // call DisplayTextToForce( GetPlayersAll(), "стоп замдело таймер"  )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set t = null
endfunction

function REAS3___Act takes nothing returns nothing
    local unit caster
    local unit dummy
    local timer t

    if GetSpellAbilityId( ) == REAS3___a_r then
        set caster = GetTriggerUnit( )
        set dummy = CreateUnit( GetOwningPlayer( caster ), REAS3___dummy, GetSpellTargetX( ), GetSpellTargetY( ), 0. )
        set t = CreateTimer( )
        call AttachSoundToUnit( gg_snd_REA_S3, dummy )
        call StartSound( gg_snd_REA_S3 )
        call SaveUnitHandle( HT, GetHandleId( t ), REAS3___h_cst, caster )
        call SaveReal( HT, GetHandleId( t ), REAS3___h_x, GetSpellTargetX( ) )
        call SaveReal( HT, GetHandleId( t ), REAS3___h_y, GetSpellTargetY( ) )
        call TimerStart( t, 0.2, TRUE, function REAS3___CheckMagRes )

        set t = CreateTimer( )
        call SavePlayerHandle( HT, GetHandleId( t ), REAS3___h_player, GetOwningPlayer( caster ) )
        call SaveReal( HT, GetHandleId( t ), REAS3___h_x, GetSpellTargetX( ) )
        call SaveReal( HT, GetHandleId( t ), REAS3___h_y, GetSpellTargetY( ) )
        call TimerStart( t, 0.2, TRUE, function REAS3___CheckSlow )

        call TriggerSleepAction( REAS3___time )
        call RemoveUnit( dummy )
        call StopSound( gg_snd_REA_S3, false, false )
        call TriggerSleepAction( 0.01 )
        call IssueImmediateOrderById( caster, 851972 ) // стоп каст
        set dummy = null
        set caster = null
        set t = null
    endif
endfunction

function REAS3___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function REAS3___Act )
endfunction

function SHAS4_preload takes nothing returns nothing
endfunction

function SHAS4___Attacked takes nothing returns nothing
    local unit u = GetTriggerUnit( )
    local unit damager = GetEventDamageSource()
    local real damage = GetEventDamage()
    local integer cjlocgn_00000000 = 0
    local real cjlocgn_00000001 = 0.
    if damager != null and damage > 1. and IsUnitEnemy(u, GetOwningPlayer(damager)) then


        if LoadBoolean( HT, GetHandleId( u ), StringHash( "H_IS_SHIELD_SHA" ) ) then

            if LoadInteger( HT, GetHandleId( u ), StringHash( "H_SHIELD_LEFT_SHA" ) ) > 0 then

                set cjlocgn_00000000 = X_GetMainChar( u )
           
                if cjlocgn_00000000 == 1 then
                    set cjlocgn_00000001 = GetHeroStr( u, TRUE ) * 1.0
                endif
                if cjlocgn_00000000 == 2 then
                    set cjlocgn_00000001 = GetHeroAgi( u, TRUE ) * 1.0
                endif
                if cjlocgn_00000000 == 3 then
                    set cjlocgn_00000001 = GetHeroInt( u, TRUE ) * 1.0
                endif

                call SetWidgetLife( u, GetWidgetLife( u ) + cjlocgn_00000001 )
           // call DisplayTextToForce( GetPlayersAll( ), "каменный щит хилл -1" )
                call SaveInteger( HT, GetHandleId( u ), StringHash( "H_SHIELD_LEFT_SHA" ), LoadInteger( HT, GetHandleId( u ), StringHash( "H_SHIELD_LEFT_SHA" ) ) - 1 )
            else
                call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_IS_SHIELD_SHA" ), FALSE )
                call DestroyEffect( LoadEffectHandle( HT, GetHandleId( u ), StringHash( "H_FX" ) ) ) //добавил удаление эффекта
       //     call DisplayTextToForce( GetPlayersAll( ), "каменный щит фалсе" )
//
            endif

        endif



    endif

    set u = null
endfunction

function SHAS4___RemoveShield takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local effect e = LoadEffectHandle( HT, GetHandleId( u ), StringHash( "H_FX" ) )
   //  local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_FX" ) )

    if GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then
        call DestroyEffect( e )
        call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_IS_SHIELD_SHA" ), FALSE )
      //  call DisplayTextToForce( GetPlayersAll( ), "каменный щит стоп" )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 0.5, TRUE, function SHAS4___RemoveShield )
    //    call DisplayTextToForce( GetPlayersAll( ), "каменный щит рекрсия" )
    endif
    set e = null
    set t = null
    set u = null
endfunction

function SHAS4___Act_S takes nothing returns nothing
    local unit caster
    local effect e
    local timer t
    if GetSpellAbilityId( ) == 'A02M' then
        
        set caster = GetTriggerUnit( )
       
        if LoadBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_SHA" ) ) then
        //call PauseTimer(cjlocgn_00000002)
        //call DestroyTimer(cjlocgn_00000002)
            set t = LoadTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_SHA" ) )
            call TimerStart( t, TimerGetRemaining( t ) + 10., FALSE, function SHAS4___RemoveShield )
            call SaveInteger( HT, GetHandleId( caster ), StringHash( "H_SHIELD_LEFT_SHA" ), LoadInteger( HT, GetHandleId( caster ), StringHash( "H_SHIELD_LEFT_SHA" ) ) + 10 )
        else
            set e = AddSpecialEffectTarget( "war3mapImported\\Stone Shield.mdx", caster, "origin" )
            set t = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ), caster )
            call SaveTimerHandle( HT, GetHandleId( t ), StringHash( "H_TIMER_SHA" ), t )
            call SaveBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_SHA" ), TRUE )
            call SaveInteger( HT, GetHandleId( caster ), StringHash( "H_SHIELD_LEFT_SHA" ), 10 )
            call SaveEffectHandle( HT, GetHandleId( caster ), StringHash( "H_FX" ), e )
            //call SaveEffectHandle( HT, GetHandleId( t), StringHash( "H_FX" ), e )

            call TimerStart( t, 10., FALSE, function SHAS4___RemoveShield )
        endif
        set t = null
        set e = null
        set caster = null
    endif
endfunction


function SHAS4___Act_T takes nothing returns nothing
    local unit caster
    local effect fx
    local timer t
    if GetSpellAbilityId( ) == 'A02I' then
       
        set caster = GetSpellTargetUnit( )

        if LoadBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_SHA" ) ) then
          //  call DestroyTimer(cjlocgn_00000002)
            set t = LoadTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_SHA" ) )
            call TimerStart( t, TimerGetRemaining( t ) + 10., FALSE, function SHAS4___RemoveShield )
            call SaveInteger( HT, GetHandleId( caster ), StringHash( "H_SHIELD_LEFT_SHA" ), LoadInteger( HT, GetHandleId( caster ), StringHash( "H_SHIELD_LEFT_SHA" ) ) + 10 )
        else
            set fx = AddSpecialEffectTarget( "war3mapImported\\Stone Shield.mdx", caster, "origin" )
            set t = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ), caster )
            call SaveTimerHandle( HT, GetHandleId( t ), StringHash( "H_TIMER_SHA" ), t )
            call SaveBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_SHA" ), TRUE )
            call SaveInteger( HT, GetHandleId( caster ), StringHash( "H_SHIELD_LEFT_SHA" ), 10 )
            call SaveEffectHandle( HT, GetHandleId( caster ), StringHash( "H_FX" ), fx )
            call TimerStart( t, 10., FALSE, function SHAS4___RemoveShield )
        endif
        set t = null
        set fx = null
        set caster = null
    endif
endfunction

function SHAS4___I takes nothing returns nothing
    call TriggerAddAction( SHAS4_Trg_A, function SHAS4___Attacked )
    call TriggerRegisterAnyUnitEventBJ( SHAS4___Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( SHAS4___Trg, function SHAS4___Act_S )
    call TriggerAddAction( SHAS4___Trg, function SHAS4___Act_T )
endfunction



function TDMKillsLib__RemoveMulti takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    set s__TDMKillsLib__Multies[LoadInteger( HT, GetHandleId( t ), StringHash( "RemoveMulti_1" ) )] = 0
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
endfunction

function TDMKillsLib__WinTeam takes integer t returns nothing
    local player p
    local real time = 30.
    call SetGameSpeed( MAP_SPEED_SLOWEST )
    set TDMKillsLib_Game_Ended = TRUE
   // call PauseGame(true)
    call ClearTextMessages( )
    call BJDebugMsg( "Команда '" + s__Team_Name[t] + "'|r одержала победу! Игра заканчивается через " + I2S( R2I( 30. ) ) + " секунд. " + s__Color_Hex[5] + "Спасибо!|r" )
  //  call StopMusic( false )
    call FogEnable( false )
    call FogMaskEnable( false )
   // set p = GetLocalPlayer( )
    //if t == 1 then

    //    if GetConvertedPlayerId( GetLocalPlayer( ) ) < 6 then
    //        call StartSound( gg_snd_victory )
    //    else
   //         call StartSound( gg_snd_defeat )
   //     endif

    //else
    //    if GetConvertedPlayerId( GetLocalPlayer( ) ) < 6 then
    //        call StartSound( gg_snd_defeat )
    //    else
    //        call StartSound( gg_snd_victory )
   //     endif
   // endif
    call StartSound( gg_snd_victory )
    loop
        exitwhen( time <= 0. )
        call TriggerSleepAction( 1. )
        call PauseGame( true )
        set time = time - ( 1.0 )
    endloop

    call EndGame( true )
endfunction

function TDMKillsLib__TDMKills_Act takes nothing returns nothing
    local unit d = GetDyingUnit( )
    local unit k = GetKillingUnit( )
    local integer dp = GetConvertedPlayerId( GetOwningPlayer( d ) )
    local integer kp = GetConvertedPlayerId( GetOwningPlayer( k ) )
    if IsUnitType( d, UNIT_TYPE_HERO ) and d != k then
       // call Stun_ClearStuns( d )
        if kp == 13 or kp == 11 then
            call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, "Игрок " + s__Color_Hex[dp] + GetPlayerName( Player( dp - 1 ) ) + "|r погиб от лап монстров! (|cFF80FFFF-" + I2S( 100 ) + "|r)" )
            call AdjustPlayerStateBJ( -100, Player( dp - 1 ), PLAYER_STATE_RESOURCE_GOLD )
            set s__TDMKillsLib__Multies[dp] = 0
            if GetLocalPlayer( ) == GetOwningPlayer( d ) then
                call StartSound( gg_snd_die )
            endif
        else

            if s__TDMKillsLib__Multies[kp] < 6 then
                set s__TDMKillsLib__Multies[kp] = s__TDMKillsLib__Multies[kp] + 1
            endif
            call StartSound( gg_snd_kill )
            set s__Kills[kp] = s__Kills[kp] + 1
            if kp < 6 then
                set s__Kills_Team[1] = s__Kills_Team[1] + 1
            else
                set s__Kills_Team[2] = s__Kills_Team[2] + 1
            endif
            call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, s__Color_Hex[kp] + GetPlayerName( Player( kp - 1 ) ) + "|r † " + s__Color_Hex[dp] + GetPlayerName( Player( dp - 1 ) ) + "|r (|cFF80FFFF+" + I2S( 50 + GetUnitLevel( d ) * 5 + s__TDMKillsLib__Multies[dp] * 15 ) + "|r)" )
            set s__TDMKillsLib__Multies[dp] = 0
            call AdjustPlayerStateBJ( 50 + GetUnitLevel( d ) * 5 + s__TDMKillsLib__Multies[dp] * 15, Player( kp - 1 ), PLAYER_STATE_RESOURCE_GOLD )
            call AdjustPlayerStateBJ( R2I( -( ( 50 + GetUnitLevel( d ) * 5 + s__TDMKillsLib__Multies[dp] * 15 ) * 0.5 ) ), Player( dp - 1 ), PLAYER_STATE_RESOURCE_GOLD )
            if s__Kills_Team[1] >= Choosed_WP then
                call TDMKillsLib__WinTeam( 1 )
                set d = null
                set k = null
                return
            endif

            if s__Kills_Team[2] >= Choosed_WP then
                call TDMKillsLib__WinTeam( 2 )
                set d = null
                set k = null
                return
            endif

            if GetLocalPlayer( ) == GetOwningPlayer( d ) then
                call StartSound( gg_snd_die )
            endif
            if s__TDMKillsLib__Multies[kp] > 1 then
                call StartSound( TDMKillsLib__Multi_Sound[s__TDMKillsLib__Multies[kp]] )
                call Filters_Multi( TDMKillsLib__Multi_Img[s__TDMKillsLib__Multies[kp]], Player( kp - 1 ) )
            endif

            call DestroyTimer( s__TDMKillsLib__Multi_Timer[kp] )
            set s__TDMKillsLib__Multi_Timer[kp] = CreateTimer( )
            call SaveInteger( HT, GetHandleId( s__TDMKillsLib__Multi_Timer[kp] ), StringHash( "RemoveMulti_1" ), kp )
            call TimerStart( s__TDMKillsLib__Multi_Timer[kp], 10., FALSE, function TDMKillsLib__RemoveMulti )
            set PALS6_m_type[dp] = 1 // палладин режим пассивки 1
        endif
    endif
    set d = null
    set k = null
endfunction

function TDMKillsLib__L takes nothing returns nothing
    set s__TDMKillsLib__Multi_Timer[1] = CreateTimer( )
    set s__TDMKillsLib__Multi_Timer[2] = CreateTimer( )
    set s__TDMKillsLib__Multi_Timer[3] = CreateTimer( )
    set s__TDMKillsLib__Multi_Timer[4] = CreateTimer( )
    set s__TDMKillsLib__Multi_Timer[5] = CreateTimer( )
    set s__TDMKillsLib__Multi_Timer[6] = CreateTimer( )
    set s__TDMKillsLib__Multi_Timer[7] = CreateTimer( )
    set s__TDMKillsLib__Multi_Timer[8] = CreateTimer( )
    set s__TDMKillsLib__Multi_Timer[9] = CreateTimer( )
    set s__TDMKillsLib__Multi_Timer[10] = CreateTimer( )
    set TDMKillsLib__Multi_Sound[2] = gg_snd_Multi_2
    set TDMKillsLib__Multi_Sound[3] = gg_snd_Multi_3
    set TDMKillsLib__Multi_Sound[4] = gg_snd_Multi_4
    set TDMKillsLib__Multi_Sound[5] = gg_snd_Multi_5
    set TDMKillsLib__Multi_Sound[6] = gg_snd_Multi_6
    set TDMKillsLib__Multi_Img[2] = "war3mapImported\\Multi_2.blp"
    set TDMKillsLib__Multi_Img[3] = "war3mapImported\\Multi_3.blp"
    set TDMKillsLib__Multi_Img[4] = "war3mapImported\\Multi_4.blp"
    set TDMKillsLib__Multi_Img[5] = "war3mapImported\\Multi_5.blp"
    set TDMKillsLib__Multi_Img[6] = "war3mapImported\\Multi_6.blp"
endfunction

function TDMKillsLib__TDMKillsLib_Init takes nothing returns nothing
    local trigger TDMKills_Trg = CreateTrigger( )
    local trigger Load
    call TriggerRegisterAnyUnitEventBJ( TDMKills_Trg, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( TDMKills_Trg, function TDMKillsLib__TDMKills_Act )
    call DisableTrigger( TDMKills_Trg )
    set TDMKillsLib_TDMKills_Trg_Var = TDMKills_Trg
    set Load = CreateTrigger( )
    call TriggerRegisterTimerEvent( Load, 0.01, FALSE )
    call TriggerAddAction( Load, function TDMKillsLib__L )
endfunction

function TKLS6_preload takes nothing returns nothing
    set TKLS6___we = AddWeatherEffect( TKLS6___r, TKLS6___weather_eff )
    call EnableWeatherEffect( TKLS6___we, FALSE )
endfunction


function TKLS6___onTimerOnlyRemoveAbils takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), TKLS6___h_cst )
    if GetWidgetLife( cst ) > 0.405 and IsUnitType( cst, UNIT_TYPE_DEAD ) == false then
        call UnitRemoveAbility( cst, TKLS6___armor_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___aura_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___q_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___w_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___e_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___p_abil_id )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set t = null
    set cst = null
endfunction

function TKLS6___onTimer takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), TKLS6___h_cst )
    local unit temp = null // какой нахуй темп юнит
    local integer count = 0
    local integer i = 1

    loop
        exitwhen( i > 10 )
        set temp = s__Hero[i]
        if temp != null and GetUnitAbilityLevel( temp, TKLS6___aura_abil_id ) == 2 then
            set count = count + 1
        endif
        set i = i + 1
    endloop

    if count == 1 or count == 0 then
        call EnableWeatherEffect( TKLS6___we, FALSE )
        set TKLS6_metel = FALSE
    endif

    if GetWidgetLife( cst ) > 0.405 and IsUnitType( cst, UNIT_TYPE_DEAD ) == false then
        call UnitRemoveAbility( cst, TKLS6___armor_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___aura_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___q_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___w_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___e_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___p_abil_id )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 0.5, TRUE, function TKLS6___onTimerOnlyRemoveAbils )
    endif
    set t = null
    set cst = null
    set temp = null
endfunction

function TKLS6___Act takes nothing returns nothing
    local unit caster
    local unit cjlocgn_00000001
    local timer t
    if GetSpellAbilityId( ) == TKLS6___abil_id then
        set caster = GetTriggerUnit( )
        set cjlocgn_00000001 = null
        set t = CreateTimer( )
        call EnableWeatherEffect( TKLS6___we, TRUE )
        set TKLS6_metel = TRUE
        call UnitAddAbility( caster, TKLS6___armor_abil_id )
        call IncUnitAbilityLevel( caster, TKLS6___aura_abil_id )
        call IncUnitAbilityLevel( caster, TKLS6___q_abil_id )
        call IncUnitAbilityLevel( caster, TKLS6___w_abil_id )
        call IncUnitAbilityLevel( caster, TKLS6___e_abil_id )
        call IncUnitAbilityLevel( caster, TKLS6___p_abil_id )

        call SaveUnitHandle( HT, GetHandleId( t ), TKLS6___h_cst, caster )
        call TimerStart( t, TKLS6___time, FALSE, function TKLS6___onTimer )
        set caster = null
        set t = null
    endif
endfunction

function TKLS6___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function TKLS6___Act )
    set Trg = null
    set TKLS6___r = bj_mapInitialPlayableArea
endfunction

function UseItem__Act takes nothing returns nothing
    local item it = GetOrderTargetItem( )
    local integer j
    local unit caster = GetOrderedUnit( )
    local unit dummy
    if it != null then
        set j = 1
        loop
            exitwhen( j > UseItem__max_used )
            if GetItemTypeId( it ) == s__UseItem__id[j]then
                if GetIssuedOrderId( ) == 852008 or GetIssuedOrderId( ) == 852009 or GetIssuedOrderId( ) == 852010 or GetIssuedOrderId( ) == 852011 or GetIssuedOrderId( ) == 852012 or GetIssuedOrderId( ) == 852013 then
                    set dummy = CreateUnit( GetOwningPlayer( caster ), 'hfoo', GetUnitX( caster ), GetUnitY( caster ), 0. )
                    call UnitAddAbility( dummy, s__UseItem__abil_id[j] )
                    call X_ApplyLife( dummy )

                    if s__UseItem__point[j]then
                        call IssuePointOrderById( dummy, s__UseItem__it_order[j], GetUnitX( caster ), GetUnitY( caster ) )
                    else
                        call IssueTargetOrderById( dummy, s__UseItem__it_order[j], caster )
                    endif
                    
                endif
            endif
            set j = j + 1
        endloop
      
    endif
    set caster = null
    set dummy = null
    set it = null
endfunction

function UseItem__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_ISSUED_ORDER )
    call TriggerAddAction( Trg, function UseItem__Act )
    set s__UseItem__id[1] = 'I01B'
    set s__UseItem__it_order[1] = 852225 //frostarmor
    set s__UseItem__abil_id[1] = 'A02N'
    set s__UseItem__point[1] = FALSE
endfunction

function ASSS1_preload takes nothing returns nothing
    call X_PreloadAbility( 'A02Z' )
endfunction

function ASSS1___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), ASSS1___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function ASSS1___RemoveAttacked takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "ASSS1_2" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "ASSS1_1" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

function ASSS1___CreatePartOfWave takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local real x = LoadReal( HT, GetHandleId( t ), StringHash( "x" ) )
    local real y = LoadReal( HT, GetHandleId( t ), StringHash( "y" ) )
    local player p = LoadPlayerHandle( HT, GetHandleId( t ), StringHash( "p" ) )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "333" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "22" ) )
    local real angle = LoadReal( HT, GetHandleId( t ), StringHash( "1" ) )
    local real dist = LoadReal( HT, GetHandleId( t ), StringHash( "dist" ) )
    local unit arrow = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local timer ti
    local unit cjlocgn_00000000
    local unit cjlocgn_00000001
    if dist <= 800.then

        set ASSS1___ch_p = p
        call GroupEnumUnitsInRange( ASSS1___gr, x, y, 100., Condition( function ASSS1___Cond1 ) )
        loop
            set cjlocgn_00000000 = FirstOfGroup( ASSS1___gr )
            exitwhen( cjlocgn_00000000 == null )
            if not( LoadBoolean( HT, GetHandleId( cjlocgn_00000000 ), StringHash( "ASSS1_1" ) ) ) then
                call DamageLib_SpellDamage( cst, cjlocgn_00000000, dmg )
                call SaveBoolean( HT, GetHandleId( cjlocgn_00000000 ), StringHash( "ASSS1_1" ), TRUE )
                set ti = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( ti ), StringHash( "ASSS1_2" ), cjlocgn_00000000 )
                call TimerStart( ti, 1., false, function ASSS1___RemoveAttacked )

                set cjlocgn_00000001 = CreateUnit( p, 'hfoo', x, y, 0. )
                call UnitApplyTimedLife( cjlocgn_00000001, 'BTLF', 0.5 )
                call UnitAddAbility( cjlocgn_00000001, 'A02Z' )
                call IssueTargetOrderById( cjlocgn_00000001, 852171, cjlocgn_00000000 )
                set cjlocgn_00000001 = null

            endif
            call GroupRemoveUnit( ASSS1___gr, cjlocgn_00000000 )
        endloop
        
        set x = x + 50. * Cos( angle * bj_DEGTORAD )
        set y = y + 50. * Sin( angle * bj_DEGTORAD )
        set dist = dist + ( 50. )
        call SetUnitX( arrow, x )
        call SetUnitY( arrow, y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), dist )
    else
        call GroupClear( ASSS1___gr ) //add clear
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
        call RemoveUnit( arrow )
    endif
    set ti = null
    set t = null
    set cst = null
    set arrow = null
endfunction

function ASSS1___Act takes nothing returns nothing
    local unit caster
    local location cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local real cjlocgn_00000005
    local real cjlocgn_00000006
    local real cjlocgn_00000007
    local timer cjlocgn_00000008
    local unit cjlocgn_00000009
    if GetSpellAbilityId( ) == 'A02Y' then
        set caster = GetTriggerUnit( )
        set cjlocgn_00000001 = GetSpellTargetLoc( )
        set cjlocgn_00000002 = GetUnitX( caster )
        set cjlocgn_00000003 = GetUnitY( caster )
        set cjlocgn_00000004 = bj_RADTODEG * Atan2( GetLocationY( cjlocgn_00000001 ) - cjlocgn_00000003, GetLocationX( cjlocgn_00000001 ) - cjlocgn_00000002 )
        set cjlocgn_00000005 = cjlocgn_00000002 + 800. * Cos( cjlocgn_00000004 * bj_DEGTORAD )
        set cjlocgn_00000006 = cjlocgn_00000003 + 800. * Sin( cjlocgn_00000004 * bj_DEGTORAD )
        set cjlocgn_00000007 = GetHeroAgi( caster, true ) * 0.
        set cjlocgn_00000008 = CreateTimer( )
        set cjlocgn_00000009 = CreateUnit( GetOwningPlayer( caster ), 'h008', cjlocgn_00000002, cjlocgn_00000003, cjlocgn_00000004 )
        call PauseUnit( caster, TRUE )
        call SetUnitFacing( caster, cjlocgn_00000004 )
        call SetUnitAnimation( caster, "attack" )
        call SaveReal( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "x" ), cjlocgn_00000002 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "y" ), cjlocgn_00000003 )
        call SavePlayerHandle( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "p" ), GetOwningPlayer( caster ) )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "333" ), caster )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "H_1" ), cjlocgn_00000009 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "22" ), cjlocgn_00000007 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "1" ), cjlocgn_00000004 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "dist" ), 0. )
        call TimerStart( cjlocgn_00000008, 0.04, TRUE, function ASSS1___CreatePartOfWave )
        call PauseUnit( caster, FALSE )
        call IssueImmediateOrderById( caster, 851972 )
        set cjlocgn_00000008 = null
        set caster = null
        call RemoveLocation( cjlocgn_00000001 )
        set cjlocgn_00000001 = null
    endif
endfunction

function ASSS1___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function ASSS1___Act )
endfunction

function ASSS2_preload takes nothing returns nothing
    call X_PreloadAbility( 'A037' )
endfunction

function ASSS2___Remove takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_2" ) )

    if GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType(u, UNIT_TYPE_DEAD ) == false then
        call UnitRemoveAbility( u, 'A037' )
        call DestroyEffect( e )
        call SetUnitVertexColor( u, 100, 200, 100, 255 )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 1., false, function ASSS2___Remove )
    endif
    set t = null
    set u = null
endfunction

function ASSS2___Act takes nothing returns nothing
    local unit caster
    local timer t
    local effect e
    if GetSpellAbilityId( ) == 'A035' then
        set caster = GetTriggerUnit( )
        set t = CreateTimer( )
        set e = AddSpecialEffectTarget( "war3mapImported\\BlackCloudOfFog.mdx", caster, "origin" )
        call AttachSoundToUnit( gg_snd_ASS_Acid, caster )
        call StartSound( gg_snd_ASS_Acid )
        call SetUnitVertexColor( caster, 50, 50, 50, 255 )
        call UnitAddAbility( caster, 'A037' )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
        call SaveEffectHandle( HT, GetHandleId( t ), StringHash( "H_2" ), e )
        call TimerStart( t, 4., FALSE, function ASSS2___Remove )
        set e = null
        set t = null
        set caster = null
    endif
endfunction

function ASSS2___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function ASSS2___Act )
endfunction

function ASSS3_preload takes nothing returns nothing

endfunction
function ASSS3___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), ASSS3___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function ASSS3___PDmg takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local real tim = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real damage = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local unit caster = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_4" ) )
    set tim = tim + ( 1. )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), tim )
    if tim < 5.and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 then
        call UnitDamageTarget( caster, u, damage, true, false, null, null, null )
        //call SaveReal(HT, GetHandleId(t), StringHash("H_3"), tim) // поменял сохранение
    else
        call DestroyEffect( LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_5" ) ) ) //поменял
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set caster = null
    set u = null
    set t = null
endfunction

function ASSS3___Act takes nothing returns nothing
    local unit caster
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local group cjlocgn_00000003
    local unit cjlocgn_00000004
    local real cjlocgn_00000005
    local real cjlocgn_00000006
    local timer cjlocgn_00000007
    local effect cjlocgn_00000008
    local unit cjlocgn_00000009
    if GetSpellAbilityId( ) == 'A036' then
        set caster = GetTriggerUnit( )
        set cjlocgn_00000001 = GetUnitX( caster )
        set cjlocgn_00000002 = GetUnitY( caster )
        set cjlocgn_00000003 = CreateGroup( )
        set cjlocgn_00000005 = GetHeroAgi( caster, true ) * 1.2
        set cjlocgn_00000006 = GetHeroAgi( caster, TRUE ) * 0.5
        call X_AddTimedEff( "Abilities\\Spells\\NightElf\\FanOfKnives\\FanOfKnivesCaster.mdl", cjlocgn_00000001, cjlocgn_00000002, 1.6 )
        set ASSS3___ch_p = GetOwningPlayer( caster )
        //800 аое снизил до 
        call GroupEnumUnitsInRange( cjlocgn_00000003, cjlocgn_00000001, cjlocgn_00000002, 500., Condition( function ASSS3___Cond1 ) )
       
        loop
            set cjlocgn_00000004 = FirstOfGroup( cjlocgn_00000003 )
            exitwhen( cjlocgn_00000004 == null )
            call UnitDamageTarget( caster, cjlocgn_00000004, cjlocgn_00000005, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )

            set cjlocgn_00000009 = CreateUnit( GetOwningPlayer( caster ), 'hfoo', cjlocgn_00000001, cjlocgn_00000002, 0. )
            call X_ApplyLife( cjlocgn_00000009 )
            call UnitAddAbility( cjlocgn_00000009, 'A006' )
            call IssueTargetOrderById( cjlocgn_00000009, 852075, cjlocgn_00000004 )
            set cjlocgn_00000009 = null

            set cjlocgn_00000008 = AddSpecialEffectTarget( "Abilities\\Weapons\\PoisonSting\\PoisonStingTarget.mdl", cjlocgn_00000004, "chest" )
            set cjlocgn_00000007 = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_1" ), cjlocgn_00000004 )
            call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_2" ), cjlocgn_00000006 )
            call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_3" ), 0. )
            call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_4" ), caster )
            call SaveEffectHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_5" ), cjlocgn_00000008 )
            call TimerStart( cjlocgn_00000007, 1., TRUE, function ASSS3___PDmg )

            call GroupRemoveUnit( cjlocgn_00000003, cjlocgn_00000004 )
        endloop
        call GroupClear( cjlocgn_00000003 )
        call DestroyGroup( cjlocgn_00000003 )
        set cjlocgn_00000008 = null
        set cjlocgn_00000007 = null
        set caster = null
        set cjlocgn_00000004 = null
        set cjlocgn_00000003 = null
    endif

endfunction
function ASSS3___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function ASSS3___Act )
endfunction


function creepsInit takes nothing returns nothing
    call TriggerSleepAction( 0.01 )
    set s__CreepsLib__Count_Creeps[1] = 3
    set s__CreepsLib__Count_Creeps[2] = 3
    set s__CreepsLib__Count_Creeps[3] = 3
    set s__CreepsLib__Count_Creeps[4] = 3
    set s__CreepsLib__Count_Creeps[5] = 3
    set s__CreepsLib__Max_Levels[1] = 6
    set s__CreepsLib__Max_Levels[2] = 6
    set s__CreepsLib__Max_Levels[3] = 4
    set s__CreepsLib__Max_Levels[4] = 6
    set s__CreepsLib__Max_Levels[5] = 4
    call SaveInteger( HT, StringHash( "Camp_1" ), StringHash( "Level_1" ), 'nfrl' )
    call SaveInteger( HT, StringHash( "Camp_1" ), StringHash( "Level_2" ), 'nfrs' )
    call SaveInteger( HT, StringHash( "Camp_1" ), StringHash( "Level_3" ), 'nfrb' )
    call SaveInteger( HT, StringHash( "Camp_1" ), StringHash( "Level_4" ), 'nfrg' )
    call SaveInteger( HT, StringHash( "Camp_1" ), StringHash( "Level_5" ), 'nfre' )
    call SaveInteger( HT, StringHash( "Camp_1" ), StringHash( "Level_6" ), 'nfra' )

    call SaveInteger( HT, StringHash( "Camp_2" ), StringHash( "Level_1" ), 'nban' )
    call SaveInteger( HT, StringHash( "Camp_2" ), StringHash( "Level_2" ), 'nbrg' )
    call SaveInteger( HT, StringHash( "Camp_2" ), StringHash( "Level_3" ), 'nrog' )
    call SaveInteger( HT, StringHash( "Camp_2" ), StringHash( "Level_4" ), 'nass' )
    call SaveInteger( HT, StringHash( "Camp_2" ), StringHash( "Level_5" ), 'nenf' )
    call SaveInteger( HT, StringHash( "Camp_2" ), StringHash( "Level_6" ), 'nbld' )

    call SaveInteger( HT, StringHash( "Camp_3" ), StringHash( "Level_1" ), 'nspg' )
    call SaveInteger( HT, StringHash( "Camp_3" ), StringHash( "Level_2" ), 'nssp' )
    call SaveInteger( HT, StringHash( "Camp_3" ), StringHash( "Level_3" ), 'nsgt' )
    call SaveInteger( HT, StringHash( "Camp_3" ), StringHash( "Level_4" ), 'nsbm' )

    call SaveInteger( HT, StringHash( "Camp_4" ), StringHash( "Level_1" ), 'nmcf' )
    call SaveInteger( HT, StringHash( "Camp_4" ), StringHash( "Level_2" ), 'nmbg' )
    call SaveInteger( HT, StringHash( "Camp_4" ), StringHash( "Level_3" ), 'nmtw' )
    call SaveInteger( HT, StringHash( "Camp_4" ), StringHash( "Level_4" ), 'nmsn' )
    call SaveInteger( HT, StringHash( "Camp_4" ), StringHash( "Level_5" ), 'nmrv' )
    call SaveInteger( HT, StringHash( "Camp_4" ), StringHash( "Level_6" ), 'nmsc' )

    call SaveInteger( HT, StringHash( "Camp_5" ), StringHash( "Level_1" ), 'ntrv' )
    call SaveInteger( HT, StringHash( "Camp_5" ), StringHash( "Level_2" ), 'nsrv' )
    call SaveInteger( HT, StringHash( "Camp_5" ), StringHash( "Level_3" ), 'ndrv' )
    call SaveInteger( HT, StringHash( "Camp_5" ), StringHash( "Level_4" ), 'nlrv' )

    call SaveReal( HT, StringHash( "Camp_1" ), StringHash( "X" ), 1555. )
    call SaveReal( HT, StringHash( "Camp_1" ), StringHash( "Y" ), -2078. )
    call SaveReal( HT, StringHash( "Camp_2" ), StringHash( "X" ), 1860. )
    call SaveReal( HT, StringHash( "Camp_2" ), StringHash( "Y" ), -20. )
    call SaveReal( HT, StringHash( "Camp_3" ), StringHash( "X" ), -1538. )
    call SaveReal( HT, StringHash( "Camp_3" ), StringHash( "Y" ), -750. )
    call SaveReal( HT, StringHash( "Camp_4" ), StringHash( "X" ), -2277. )
    call SaveReal( HT, StringHash( "Camp_4" ), StringHash( "Y" ), 2315. )
    call SaveReal( HT, StringHash( "Camp_5" ), StringHash( "X" ), 2102. )
    call SaveReal( HT, StringHash( "Camp_5" ), StringHash( "Y" ), 1925. )
endfunction

function CreepsLib__Is_Unit_Matching takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = ( GetUnitTypeId( u ) == CreepsLib__Matching_Type and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and not IsUnitIllusion( u ) )
    set u = null
    return b
endfunction

function CreepsLib_Creeps_Act takes nothing returns nothing
    local real x
    local real y
    local integer u_type
    local integer i = 1
    local integer a = 1
    local integer lvl
    local unit u
    set CreepsLib__Times = CreepsLib__Times + 1

    if ModuloInteger( CreepsLib__Times, 10 ) == 0 then
        set CreepsLib__Lvl = CreepsLib__Lvl + 1
        call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, Color_Soft_Green + "Монстры стали сильнее!|r" )
    endif

    set i = 1
    loop
        exitwhen( i > 5 )
        set a = 1

        if CreepsLib__Lvl > s__CreepsLib__Max_Levels[i]then

            if s__CreepsLib__Count_Creeps[i] < 7 and ModuloInteger( CreepsLib__Times, 10 ) == 0 then
                set s__CreepsLib__Count_Creeps[i] = s__CreepsLib__Count_Creeps[i] + 1
            endif

            set u_type = LoadInteger( HT, StringHash( "Camp_" + I2S( i ) ), StringHash( "Level_" + I2S( s__CreepsLib__Max_Levels[i] ) ) )
        else
            set u_type = LoadInteger( HT, StringHash( "Camp_" + I2S( i ) ), StringHash( "Level_" + I2S( CreepsLib__Lvl ) ) )
        endif


        if CountUnitsInGroup( s__CreepsLib__Creep_Camp_Group[i] ) == 0 then
            set x = LoadReal( HT, StringHash( "Camp_" + I2S( i ) ), StringHash( "X" ) )
            set y = LoadReal( HT, StringHash( "Camp_" + I2S( i ) ), StringHash( "Y" ) )

            loop
                exitwhen ( a > s__CreepsLib__Count_Creeps[i] )

                set u = CreateUnit( Player( 12 ), u_type, x, y, GetRandomReal( 0., 360. ) )
                call AlphaLib_AddAlphing( u )
                call DamageLib_AddToDamageGroup( u )
                call GroupAddUnit( s__CreepsLib__Creep_Camp_Group[i], u )
                set u = null
                set a = a + 1
            endloop

        endif

        set i = i + 1
    endloop
    set u = null
endfunction

function CreepsLib__CreepDrop takes real x, real y returns nothing
    local integer i = GetRandomInt( 1, 100 )
    local integer a = 1
    local integer b = 0
    local integer array c
    local integer id
    local item it
    loop
        exitwhen( a > CreepsLib__count_drop )
        if s__CreepsLib__dr_item_c[a] >= i then
            set b = b + 1
            set c[b] = s__CreepsLib__dr_item_r[a]
        endif
        set a = a + 1
    endloop
    if b > 1 then
        set i = GetRandomInt( 1, b )
        set id = c[i]
    else
        set id = c[1]
    endif
    if id != 0 then
        set it = CreateItem( id, x, y )
        call ItemDestroy(it,120.) // время жизни выпадющих предметов
        set it = null
    endif
    set it = null
endfunction

function CreepsLib__Loading takes nothing returns nothing
    set s__CreepsLib__dr_item_r[1] = 'I00B' //туфля паука
    set s__CreepsLib__dr_item_c[1] = 12
    set s__CreepsLib__dr_item_r[2] = 'I014' //талисман здоровья
    set s__CreepsLib__dr_item_c[2] = 12
    set s__CreepsLib__dr_item_r[3] = 'I00A' //стальной молот
    set s__CreepsLib__dr_item_c[3] = 12
    set s__CreepsLib__dr_item_r[4] = 'I007' //сапог
    set s__CreepsLib__dr_item_c[4] = 12
    set s__CreepsLib__dr_item_r[5] = 'I009' //рунный браслет
    set s__CreepsLib__dr_item_c[5] = 12
    set s__CreepsLib__dr_item_r[6] = 'I004' // перчатки скорости
    set s__CreepsLib__dr_item_c[6] = 12
    set s__CreepsLib__dr_item_r[7] = 'I00D' // мантия ученого
    set s__CreepsLib__dr_item_c[7] = 12
    set s__CreepsLib__dr_item_r[8] = 'I005' // кольцо регенерациия
    set s__CreepsLib__dr_item_c[8] = 12
    set s__CreepsLib__dr_item_r[9] = 'I006' // кольцо защиты
    set s__CreepsLib__dr_item_c[9] = 12
    set s__CreepsLib__dr_item_r[10] = 'I00C' // железный костет
    set s__CreepsLib__dr_item_c[10] = 12
    set s__CreepsLib__dr_item_r[11] = 'I011'// деревянный щит
    set s__CreepsLib__dr_item_c[11] = 12
    set s__CreepsLib__dr_item_r[12] = 'I008' //боевые когти
    set s__CreepsLib__dr_item_c[12] = 12
    set s__CreepsLib__dr_item_r[13] = 'I00K' //Ботинок авантюриста свиток
    set s__CreepsLib__dr_item_c[13] = 5
    set s__CreepsLib__dr_item_r[14] = 'I015' //Избежание свиток
    set s__CreepsLib__dr_item_c[14] = 5
    set s__CreepsLib__dr_item_r[15] = 'I00O' //оберег рецепт
    set s__CreepsLib__dr_item_c[15] = 5
    set s__CreepsLib__dr_item_r[16] = 'I019' //сапог друида рецепт
    set s__CreepsLib__dr_item_c[16] = 5
    set s__CreepsLib__dr_item_r[17] = 'I010' //клык гнула
    set s__CreepsLib__dr_item_c[17] = 2
    set s__CreepsLib__dr_item_r[18] = 'I000' //лапа гнула
    set s__CreepsLib__dr_item_c[18] = 2
    set s__CreepsLib__dr_item_r[19] = 'I01C' //ледяное сердце
    set s__CreepsLib__dr_item_c[19] = 2
    set s__CreepsLib__dr_item_r[20] = 'I01E' //последня надежда сапог 400
    set s__CreepsLib__dr_item_c[20] = 2
    set s__CreepsLib__dr_item_r[21] = 'I001' //посох безмолвия
    set s__CreepsLib__dr_item_c[21] = 2
    set s__CreepsLib__dr_item_r[22] = 'I002' //утерянный медальон 18 статок
    set s__CreepsLib__dr_item_c[22] = 2
    set s__CreepsLib__dr_item_r[23] = 'I01B' //хладный страж
    set s__CreepsLib__dr_item_c[23] = 2
   // set s__CreepsLib__dr_item_r[24] = 'I017' //большой талисман здоровья добавил и убрал
  //  set s__CreepsLib__dr_item_c[24] = 5
endfunction

function CreepsCount_Act takes nothing returns nothing
    local integer qxA
    local unit u = GetKillingUnit( )
    local unit d = GetDyingUnit( )
    local integer raw
    local integer campid
    local integer i = 1
    local integer a = 1
    set qxA = GetConvertedPlayerId( GetOwningPlayer( u ) )
    set raw = GetUnitTypeId( d )

    if qxA <= 10 then //вопрос
        set s__Creeps[qxA] = s__Creeps[qxA] + 1
    endif

    if qxA < 6 then
        set s__Creeps_Team[1] = s__Creeps_Team[1] + 1
    else
        set s__Creeps_Team[2] = s__Creeps_Team[2] + 1
    endif

  //добавил удаление юнита Не видел чтобы работало

    if IsUnitType(d, UNIT_TYPE_HERO) == false and d!= null then
        call RemoveUnitPerTimer(d, 5)
       // call DisplayTextToForce( GetPlayersAll(),GetUnitName(d) + "удалится через 5 сек" )
    endif



    loop
        exitwhen( i > 5 )
        set a = 1
        loop
            exitwhen( a > s__CreepsLib__Max_Levels[i] )
            if raw == LoadInteger( HT, StringHash( "Camp_" + I2S( i ) ), StringHash( "Level_" + I2S( a ) ) ) then
                call GroupRemoveUnit( s__CreepsLib__Creep_Camp_Group[i], d )
                //удаляет крипа с мертвой группы
                call CreepsLib__CreepDrop( GetUnitX( d ), GetUnitY( d ) )
                set u = null
                set d = null
               // call DisplayTextToForce( GetPlayersAll(),GetUnitName(d) + "return creep lib1" )
                exitwhen true // добавил экситввен
              //  return
              //  call DisplayTextToForce( GetPlayersAll(),GetUnitName(d) + "return creep libend" )

                //почему тут ретурн? триггер дальше не сработает
            endif

            set a = a + 1
        endloop
        set i = i + 1
    endloop

 

    set u = null
    set d = null
endfunction

function CreepsLib__L takes nothing returns nothing
    set s__CreepsLib__Creep_Camp_Group[1] = CreateGroup( )
    set s__CreepsLib__Creep_Camp_Group[2] = CreateGroup( )
    set s__CreepsLib__Creep_Camp_Group[3] = CreateGroup( )
    set s__CreepsLib__Creep_Camp_Group[4] = CreateGroup( )
    set s__CreepsLib__Creep_Camp_Group[5] = CreateGroup( )
endfunction

function CreepsLib__CreepsLib_Init takes nothing returns nothing
    local trigger Creeps_Trg = CreateTrigger( )
    local trigger CreepsCount_Trg
    local trigger Load
    call TriggerRegisterTimerEvent( Creeps_Trg, 15., true ) //респ крипов или первое появленеи
    call TriggerAddAction( Creeps_Trg, function CreepsLib_Creeps_Act )
    set Creeps_Creating_Trg = Creeps_Trg
    call DisableTrigger( Creeps_Creating_Trg )
    set CreepsCount_Trg = CreateTrigger( )
    call TriggerRegisterPlayerUnitEventSimple( CreepsCount_Trg, Player( PLAYER_NEUTRAL_AGGRESSIVE ), EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( CreepsCount_Trg, function CreepsCount_Act )
    set Load = CreateTrigger( )
    call TriggerRegisterTimerEvent( Load, 0.01, FALSE )
    call TriggerAddAction( Load, function CreepsLib__L )
    call CreepsLib__Loading( )
endfunction

function DRASp1Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'A00H' )
endfunction

function DRASp1Lib__TT takes unit u, string t, boolean plus returns nothing
    local texttag tt = CreateTextTagUnitBJ( t, u, -3., 8., 0., 0., 0., 0. )
    if plus then
        call SetTextTagColor( tt, 128, 255, 128, 200 )
    else
        call SetTextTagColor( tt, 255, 128, 128, 200 )
    endif
    call SetTextTagVelocity( tt, 0.00, 0.03 )
    call SetTextTagFadepoint( tt, 1. / 2 )
    call SetTextTagLifespan( tt, 1. )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

function DRASp1Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), DRASp1Lib__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function DRASp1Lib__DRASp1_Death_A takes nothing returns nothing
    local unit u = GetDyingUnit( )
    local integer j = 0
    local unit FoG = null
    if GetUnitAbilityLevel( u, 'A00F' ) > 0 then

        set j = LoadInteger( HT, GetHandleId( u ), StringHash( "H_DRAS1_lol" ) )
     //  call DisplayTextToForce( GetPlayersAll( ), GetUnitName( u ) + " _H_DRAS1_lol" +I2S(j) )

        loop
            exitwhen( j == 0 )
            set FoG = LoadUnitHandle( HT, GetHandleId( u ), StringHash( "AbsorbedUnit_" + I2S( j ) ) )
           // call DisplayTextToForce( GetPlayersAll( ), GetUnitName( FoG ) + "AbsorbedUnit_" +I2S(j) )
            call SetHeroInt( FoG, GetHeroInt( FoG, FALSE ) + 2, TRUE )

         //  call SetIntStatsSave(FoG, GetHeroInt(FoG, false) + 2, true)

            call DRASp1Lib__TT( FoG, "+" + I2S( 2 ) + " ИНТ", TRUE )
            call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Undead\\CarrionSwarm\\CarrionSwarmDamage.mdl", FoG, "chest" ) )
            call SetHeroInt( u, GetHeroInt( u, FALSE ) - 2, TRUE )
            // call SetIntStatsSave(u, GetHeroInt(u, false) - 2, true)
            call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "AbsorbedUnit_" + I2S( j ) ), null )
            set j = j - 1
        endloop

        call SaveInteger( HT, GetHandleId( u ), StringHash( "H_DRAS1_lol" ), 0 )
        set FoG = null
    endif

    set u = null
endfunction

function DRASp1Lib__DRASp1_Act takes nothing returns nothing
    local unit caster
    local real x
    local real y
    local unit FoG
    local integer cjlocgn_00000004
    local real cjlocgn_00000005
    local real damage
    local integer j
    local group g
    
    if GetSpellAbilityId( ) == 'A00F' then

        set caster = GetTriggerUnit( )
        set x = GetUnitX( caster )
        set y = GetUnitY( caster )
        set cjlocgn_00000004 = 0
        set cjlocgn_00000005 = 0.
        set damage = GetHeroInt( caster, TRUE ) * 1.8
        set j = LoadInteger( HT, GetHandleId( caster ), StringHash( "H_DRAS1_lol" ) )
        set DRASp1Lib__ch_p = GetOwningPlayer( caster )
        call SetUnitAnimation( caster, "throw" )
        set g = CreateGroup()
        call GroupEnumUnitsInRange( g, x, y, 700., Condition( function DRASp1Lib__Cond1 ) )
       // set FoG = FirstOfGroup( g ) Не работает
    
        //
        loop
            set FoG = FirstOfGroup( g )
            exitwhen( FoG == null )
                // and ( GetUnitAbilityLevel( FoG, 'Avul' ) == 0 )
            call DamageLib_SpellDamage( caster, FoG, damage )
            if IsUnitType( FoG, UNIT_TYPE_HERO ) and GetHeroInt( FoG, FALSE ) >= 2 then
                set j = j + 1
                call SaveInteger( HT, GetHandleId( caster ), StringHash( "H_DRAS1_lol" ), j )

                    //and GetHeroInt( FoG, false ) >=0 
                call SetHeroInt( FoG, GetHeroInt( FoG, FALSE ) - 2, TRUE )
                   
                    //call SetIntStatsSave(FoG, GetHeroInt(FoG, false) - 2, true)
                call DRASp1Lib__TT( FoG, "-" + I2S( 2 ) + " ИНТ", FALSE )
        
                call SetHeroInt( caster, GetHeroInt( caster, FALSE ) + 2, TRUE )
                 //   call SetIntStatsSave(caster, GetHeroInt( caster, FALSE ) + 2, true)

                call DRASp1Lib__TT( caster, "+" + I2S( 2 ) + " ИНТ", TRUE )
                call SaveUnitHandle( HT, GetHandleId( caster ), StringHash( "AbsorbedUnit_" + I2S(j ) ), FoG )
               //     call DisplayTextToForce( GetPlayersAll( ), GetUnitName( FoG ) + "AbsorbedUnit_" + I2S( j ) )
                call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Undead\\CarrionSwarm\\CarrionSwarmDamage.mdl", FoG, "chest" ) )


            endif
                
            call GroupRemoveUnit( g, FoG )
                
        endloop

        call GroupClear( g )
        call DestroyGroup(g)
        set caster = null
        set FoG = null
    endif
endfunction

function DRASp1Lib__DRASp1Lib_Init takes nothing returns nothing
    local trigger DRASp1_Trg = CreateTrigger( )
    local trigger DRASp1_Death = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( DRASp1_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( DRASp1_Trg, function DRASp1Lib__DRASp1_Act )
    call TriggerRegisterAnyUnitEventBJ( DRASp1_Death, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( DRASp1_Death, function DRASp1Lib__DRASp1_Death_A )
    set DRASp1_Trg = null
    set DRASp1_Death = null
endfunction

function DRASp3Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'A00M' )
    call X_PreloadAbility( 'A00L' )
endfunction

function DRASp3Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), DRASp3Lib__ch_p ) and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function DRASp3Lib__Cond2 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function DRASp3Lib__ReleazeMissile takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local player o = LoadPlayerHandle( HT, GetHandleId( t ), StringHash( "owner" ) )
    local unit c = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "c" ) )
    local real X = LoadReal( HT, GetHandleId( t ), StringHash( "X" ) )
    local real Y = LoadReal( HT, GetHandleId( t ), StringHash( "Y" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "dmg" ) )
    local unit FoG
    set DRASp3Lib__ch_p = o
    call GroupEnumUnitsInRange( DRASp3Lib__gr, X, Y, 150., Condition( function DRASp3Lib__Cond1 ) )
    loop
        set FoG = FirstOfGroup( DRASp3Lib__gr )
        exitwhen( FoG == null )
        call DamageLib_SpellDamage( c, FoG, dmg )
        call GroupRemoveUnit( DRASp3Lib__gr, FoG )
    endloop
    call GroupClear( DRASp3Lib__gr )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set c = null
    set t = null
endfunction

function DRASp3Lib__CreateMissile takes real cX, real cY, real tX, real tY, player owner, real dmg, unit c returns nothing
    local timer t = CreateTimer( )
    local real rX = GetRandomReal( 0., 400. / 2 )
    local real rY = GetRandomReal( 0., 400. / 2 )
    local real rA = GetRandomReal( 0., 359.99 )
    local real X = tX + rX * Cos( rA * bj_DEGTORAD )
    local real Y = tY + rY * Sin( rA * bj_DEGTORAD )
    local real dist = SquareRoot( ( cX - X ) * ( cX - X ) + ( cY - Y ) * ( cY - Y ) )
    local unit dummy = CreateUnit( owner, 'hfoo', cX, cY, 0. )
    call UnitAddAbility( dummy, 'A00L' )
    call IssuePointOrderById( dummy, 852652, X, Y )
    call TriggerSleepAction( 0.05 )
    call RemoveUnit( dummy )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "c" ), c )
    call SavePlayerHandle( HT, GetHandleId( t ), StringHash( "owner" ), owner )
    call SaveReal( HT, GetHandleId( t ), StringHash( "X" ), X )
    call SaveReal( HT, GetHandleId( t ), StringHash( "Y" ), Y )
    call SaveReal( HT, GetHandleId( t ), StringHash( "dmg" ), dmg )
    call TimerStart( t, dist / 5000., FALSE, function DRASp3Lib__ReleazeMissile )
    set dummy = null
    set t = null
endfunction

function DRASp3Lib__DRAS3_Act takes nothing returns nothing
    local unit caster
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local integer cjlocgn_00000004
    local integer cjlocgn_00000005
    if GetSpellAbilityId( ) == 'A00K' then
        set caster = GetTriggerUnit( )
        set cjlocgn_00000001 = GetSpellTargetX( )
        set cjlocgn_00000002 = GetSpellTargetY( )
        set cjlocgn_00000003 = GetHeroInt( caster, true ) * 0.45
        set cjlocgn_00000004 = GetRandomInt( 10, 20 )
        set cjlocgn_00000005 = 1
        loop
            exitwhen( cjlocgn_00000005 > cjlocgn_00000004 )
            if GetUnitState( caster, UNIT_STATE_LIFE ) > 0.405 then
                call DRASp3Lib__CreateMissile( GetUnitX( caster ), GetUnitY( caster ), cjlocgn_00000001, cjlocgn_00000002, GetOwningPlayer( caster ), cjlocgn_00000003, caster )
            endif
            set cjlocgn_00000005 = cjlocgn_00000005 + 1
        endloop
        set caster = null

    endif
endfunction
function DRASp3Lib__DRASp3Lib_Init takes nothing returns nothing
    local trigger DRAS3_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( DRAS3_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( DRAS3_Trg, function DRASp3Lib__DRAS3_Act )
endfunction

function DRASp4Lib_preload takes nothing returns nothing
endfunction

function DRASp4Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), DRASp4Lib__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function DRASp4Lib__RemoveAttacked takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "2" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "darkwave" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

function DRASp4Lib__CreatePartOfWave takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local real x = LoadReal( HT, GetHandleId( t ), StringHash( "x" ) )
    local real y = LoadReal( HT, GetHandleId( t ), StringHash( "y" ) )
    local player p = LoadPlayerHandle( HT, GetHandleId( t ), StringHash( "p" ) )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "333" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "22" ) )
    local real angle = LoadReal( HT, GetHandleId( t ), StringHash( "1" ) )
    local real dist = LoadReal( HT, GetHandleId( t ), StringHash( "dist" ) )
    local unit arrow = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local timer ti
    local unit FoG
    if dist <= 1000.then
        set DRASp4Lib__ch_p = p
        call GroupEnumUnitsInRange( DRASp4Lib__gr, x, y, 100., Condition( function DRASp4Lib__Cond1 ) )
        
        loop
            set FoG = FirstOfGroup( DRASp4Lib__gr )
            exitwhen( FoG == null )
            if not( LoadBoolean( HT, GetHandleId( FoG ), StringHash( "darkwave" ) ) ) then
                call DamageLib_SpellDamage( cst, FoG, dmg )
                call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Other\\BlackArrow\\BlackArrowMissile.mdl", FoG, "chest" ) )
                call SaveBoolean( HT, GetHandleId( FoG ), StringHash( "darkwave" ), TRUE )
                set ti = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( ti ), StringHash( "2" ), FoG )
                call TimerStart( ti, 1., false, function DRASp4Lib__RemoveAttacked )
            endif
            call GroupRemoveUnit( DRASp4Lib__gr, FoG )
        endloop

        set x = x + 50. * Cos( angle * bj_DEGTORAD )
        set y = y + 50. * Sin( angle * bj_DEGTORAD )
        set dist = dist + ( 50. )
        call SetUnitX( arrow, x )
        call SetUnitY( arrow, y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), dist )

    else
        call GroupClear( DRASp4Lib__gr ) //add clear
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
        call RemoveUnit( arrow )
    endif
    set ti = null
    set t = null
    set cst = null
    set arrow = null
endfunction
function DRASp4Lib__DRAS4_Act takes nothing returns nothing
    local unit caster
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local real cjlocgn_00000005
    local real cjlocgn_00000006
    local timer cjlocgn_00000007
    local unit cjlocgn_00000008

    if GetSpellAbilityId( ) == 'A00N' then
        set caster = GetTriggerUnit( )
        set cjlocgn_00000001 = GetUnitX( caster )
        set cjlocgn_00000002 = GetUnitY( caster )
        set cjlocgn_00000003 = bj_RADTODEG * Atan2( GetSpellTargetY( ) - cjlocgn_00000002, GetSpellTargetX( ) - cjlocgn_00000001 )
        set cjlocgn_00000004 = cjlocgn_00000001 + 1000. * Cos( cjlocgn_00000003 * bj_DEGTORAD )
        set cjlocgn_00000005 = cjlocgn_00000002 + 1000. * Sin( cjlocgn_00000003 * bj_DEGTORAD )
        set cjlocgn_00000006 = GetHeroInt( caster, true ) * 2.3
        set cjlocgn_00000007 = CreateTimer( )
        set cjlocgn_00000008 = CreateUnit( GetOwningPlayer( caster ), 'h001', cjlocgn_00000001, cjlocgn_00000002, cjlocgn_00000003 )
        call PauseUnit( caster, TRUE )
        call SetUnitFacing( caster, cjlocgn_00000003 )
        call SetUnitAnimationByIndex( caster, 16 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "x" ), cjlocgn_00000001 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "y" ), cjlocgn_00000002 )
        call SavePlayerHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "p" ), GetOwningPlayer( caster ) )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "333" ), caster )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_1" ), cjlocgn_00000008 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "22" ), cjlocgn_00000006 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "1" ), cjlocgn_00000003 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "dist" ), 0. )
        call TimerStart( cjlocgn_00000007, 0.04, TRUE, function DRASp4Lib__CreatePartOfWave )
        call PauseUnit( caster, FALSE )
        call IssueImmediateOrderById( caster, 851972 )
        set cjlocgn_00000007 = null
        set caster = null
    endif

endfunction
function DRASp4Lib__DRASp4Lib_Init takes nothing returns nothing
    local trigger DRAS4_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( DRAS4_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( DRAS4_Trg, function DRASp4Lib__DRAS4_Act )
endfunction


function DRASp5Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'Arav' )
endfunction

function DRASp5Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), DRASp5Lib__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
function DRASp5Lib__TimerExp takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local real tX = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real tY = LoadReal( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local integer i = 0
    local unit u
    call SetUnitAnimation( cst, "attack" )
    call DestroyEffect( AddSpecialEffect( "war3mapImported\\DarkLightning.mdl", tX, tY ) )
    call DestroyEffect( AddSpecialEffect( "war3mapImported\\DarkLightningNova.mdl", tX, tY ) )
    call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", tX, tY ) )
    call UnitRemoveAbility( cst, 'Avul' )
    call PauseUnit( cst, FALSE )
    call IssuePointOrderById( cst, 851986, tX, tY )
    call SetUnitFlyHeight( cst, 0., 200. / 1.3 )
    call SetUnitAnimation( cst, "channel" )
    call Dest_KillDestInRange( tX, tY, 350. )
    set DRASp5Lib__ch_p = GetOwningPlayer( cst )
    call GroupEnumUnitsInRange( DRASp5Lib__gr, tX, tY, 350., Condition( function DRASp5Lib__Cond1 ) )
    loop
        set u = FirstOfGroup( DRASp5Lib__gr )
        exitwhen( u == null )
        //call DamageLib_Explode( u ) // УДОЛИТЬ
        call DamageLib_SpellDamage( cst, u, dmg )
        call GroupRemoveUnit( DRASp5Lib__gr, u )
    endloop
    call GroupClear( DRASp5Lib__gr ) //добавил чистку группы
    call SetUnitPathing( cst, true )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
endfunction

function DRASp5Lib__PauseCstAnimation takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    call PauseUnit( u, TRUE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

function DRASp5Lib__Proj takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit FoG = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real tX = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real tY = LoadReal( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local real ti = LoadReal( HT, GetHandleId( t ), StringHash( "H_5" ) )

    if ti <= 1.3 then

        call SetUnitX( FoG, GetUnitX( FoG ) + 18. * Cos( Atan2( tY - GetUnitY( FoG ), tX - GetUnitX( FoG ) ) ) )
        call SetUnitY( FoG, GetUnitY( FoG ) + 18. * Sin( Atan2( tY - GetUnitY( FoG ), tX - GetUnitX( FoG ) ) ) )
        call IssueImmediateOrderById( FoG, 851972 )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), ti + 0.04 )
    else
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set t = null
    set FoG = null
endfunction

function DRASp5Lib__RemProj takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit FoG = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    call RemoveSavedBoolean( HT, GetHandleId( FoG ), StringHash( "DRASH_6" ) ) //чистка булеан по юниту
  // call FlushChildHashtable( HT, GetHandleId( FoG ) ) чистка хеша по юниту
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
endfunction

function DRASp5Lib__DRAS5_Act takes nothing returns nothing
    local unit caster
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local timer cjlocgn_00000004
    local unit FoG
    local real cjlocgn_00000006
    if GetSpellAbilityId( ) == 'A00P' then //ульт ищадья тьмы
        set caster = GetTriggerUnit( )
        set cjlocgn_00000001 = GetUnitX( caster )
        set cjlocgn_00000002 = GetUnitY( caster )
        set cjlocgn_00000003 = ( GetHeroInt( caster, TRUE ) + GetHeroAgi( caster, TRUE ) + GetHeroStr( caster, TRUE ) ) * 3.0
        call UnitAddAbility( caster, 'Arav' )
        call UnitRemoveAbility( caster, 'Arav' )
        call SetUnitPathing( caster, false )
        call UnitAddAbility( caster, 'Avul' )
        call PauseUnit( caster, TRUE )
        call SetUnitAnimation( caster, "spell" )
        call SetUnitFlyHeight( caster, 200., 200. / 1.3 )
        set cjlocgn_00000004 = CreateTimer( )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000004 ), StringHash( "H_1" ), caster )
        call TimerStart( cjlocgn_00000004, 1.1, FALSE, function DRASp5Lib__PauseCstAnimation )
        set cjlocgn_00000004 = null
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\Desecrate.mdl", cjlocgn_00000001, cjlocgn_00000002 ) )
        call SetSoundPosition( gg_snd_laugh, cjlocgn_00000001, cjlocgn_00000002, 0. )
        call StartSound( gg_snd_laugh )
        set cjlocgn_00000004 = CreateTimer( )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000004 ), StringHash( "H_1" ), caster )
        call SaveReal( HT, GetHandleId( cjlocgn_00000004 ), StringHash( "H_2" ), cjlocgn_00000003 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000004 ), StringHash( "H_3" ), cjlocgn_00000001 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000004 ), StringHash( "H_4" ), cjlocgn_00000002 )
        call TimerStart( cjlocgn_00000004, 1.3, FALSE, function DRASp5Lib__TimerExp )
        set cjlocgn_00000004 = null
        set cjlocgn_00000006 = 0.
        loop
            exitwhen( cjlocgn_00000006 > 1.3 )
            set DRASp5Lib__ch_p = GetOwningPlayer( caster )
            call GroupEnumUnitsInRange( DRASp5Lib__gr, cjlocgn_00000001, cjlocgn_00000002, 600., Condition( function DRASp5Lib__Cond1 ) )
          
            loop
                set FoG = FirstOfGroup( DRASp5Lib__gr )
                exitwhen ( FoG == null )
                if not LoadBoolean( HT, GetHandleId( FoG ), StringHash( "DRASH_6" ) ) then

                    set cjlocgn_00000004 = CreateTimer( )
                    call SaveBoolean( HT, GetHandleId( FoG ), StringHash( "DRASH_6" ), TRUE )
                    call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000004 ), StringHash( "H_1" ), FoG )
                    call TimerStart( cjlocgn_00000004, 2., FALSE, function DRASp5Lib__RemProj )
                    set cjlocgn_00000004 = CreateTimer( )
                    call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000004 ), StringHash( "H_1" ), FoG )
                    call SaveReal( HT, GetHandleId( cjlocgn_00000004 ), StringHash( "H_3" ), cjlocgn_00000001 )
                    call SaveReal( HT, GetHandleId( cjlocgn_00000004 ), StringHash( "H_4" ), cjlocgn_00000002 )
                    call SaveReal( HT, GetHandleId( cjlocgn_00000004 ), StringHash( "H_5" ), cjlocgn_00000006 )
                    call TimerStart( cjlocgn_00000004, 0.04, TRUE, function DRASp5Lib__Proj )
                endif
                call GroupRemoveUnit( DRASp5Lib__gr, FoG )
           
            endloop
           // call TriggerSleepAction( 0.01 ) // закоментил вейт
            set cjlocgn_00000006 = cjlocgn_00000006 + ( 0.1 )
        endloop

        call GroupClear( DRASp5Lib__gr ) //add clear
        set cjlocgn_00000004 = null
        set caster = null
    endif

endfunction
function DRASp5Lib__DRASp5Lib_Init takes nothing returns nothing
    local trigger DRAS5_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( DRAS5_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( DRAS5_Trg, function DRASp5Lib__DRAS5_Act )
endfunction

function FLOS2_preload takes nothing returns nothing

endfunction

function FLOS2__FireDmg_Period takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local unit cs = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_0" ) )
    local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local real total_time = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    set total_time = total_time - ( 1. )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), total_time )
    if total_time > 0.and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( cs, UNIT_TYPE_DEAD ) == false then
        call DamageLib_SpellDamage( cs, u, dmg )
    else
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
        call DestroyEffect( e )
    endif
    set t = null
    set u = null
    set cs = null
    set e = null
endfunction

function FLOS2_FireDmg takes unit d, unit at, real dmg returns nothing
    local timer t = CreateTimer( )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_0" ), d )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), at )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), 5. )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), ( dmg * 0.20 ) / ( 5. / 1. ) )
    call SaveEffectHandle( HT, GetHandleId( t ), StringHash( "H_4" ), AddSpecialEffectTarget( "Environment\\LargeBuildingFire\\LargeBuildingFire0.mdl", at, "chest" ) )
    call TimerStart( t, 1., TRUE, function FLOS2__FireDmg_Period )
    set t = null
endfunction

function FLOS6_preload takes nothing returns nothing
endfunction

function FLOS6__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), FLOS6__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function FLOS6__Act takes nothing returns nothing
    local unit d = GetDyingUnit( )
    local unit k = GetKillingUnit( )
    local real dmg = GetUnitState( d, UNIT_STATE_MAX_LIFE ) * 0.20
    local real x
    local real y
    local group g
    local unit FoG
    if GetUnitAbilityLevel( k, 'A01Y' ) > 0 then
        set x = GetUnitX( d )
        set y = GetUnitY( d )
        set g = CreateGroup( )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\CorpseExplosion.mdl", x, y ) )
        set FLOS6__ch_p = GetOwningPlayer( k )
        call GroupEnumUnitsInRange( g, x, y, 350., Condition( function FLOS6__Cond1 ) )
      
        loop
            set FoG = FirstOfGroup( g )
            exitwhen( FoG == null )
            call DamageLib_SpellDamage( k, FoG, dmg )
            call GroupRemoveUnit( g, FoG )
        endloop
        call GroupClear( g ) //add clear
        call DestroyGroup( g )
        set g = null
    endif
    set d = null
    set k = null
endfunction

function FLOS6__FLOS6_I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( Trg, function FLOS6__Act )
endfunction

function GLAS1_preload takes nothing returns nothing
    call X_PreloadAbility( 'A006' )
endfunction

function GLAS1__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GLAS1__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function GLAS1__Att takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_FOG" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_ATT_GLA" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction
function GLAS1__proj takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real cX = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local real cY = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real tX = LoadReal( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local real tY = LoadReal( HT, GetHandleId( t ), StringHash( "H_5" ) )
    local real dm = LoadReal( HT, GetHandleId( t ), StringHash( "H_6" ) )
    local real an = LoadReal( HT, GetHandleId( t ), StringHash( "H_8" ) )
    local real nd = LoadReal( HT, GetHandleId( t ), StringHash( "H_9" ) )
    local real di = LoadReal( HT, GetHandleId( t ), StringHash( "H_7" ) )
    local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_10" ) )
    local unit cjlocgn_00000000
    local timer cjlocgn_00000001
    local unit cjlocgn_00000002
    set nd = nd + ( 70. )
    set cX = cX + 70. * Cos( an * bj_DEGTORAD )
    set cY = cY + 70. * Sin( an * bj_DEGTORAD )
    if ( nd < di )and not( IsTerrainPathable( cX, cY, PATHING_TYPE_WALKABILITY ) ) then
        call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl", cX, cY ) )
        call SetUnitX( u, cX )
        call SetUnitY( u, cY )
        set GLAS1__ch_p = GetOwningPlayer( u )
        call Dest_KillDestInRange( cX, cY, 150. )
        call GroupEnumUnitsInRange( GLAS1__gr, cX, cY, 150., Condition( function GLAS1__Cond1 ) )
        loop
            set cjlocgn_00000000 = FirstOfGroup( GLAS1__gr )
            exitwhen( cjlocgn_00000000 == null )
            if not( LoadBoolean( HT, GetHandleId( cjlocgn_00000000 ), StringHash( "H_ATT_GLA" ) ) ) then

                call UnitDamageTarget( u, cjlocgn_00000000, dm, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
                call GLAS4_BloodDmg( u, cjlocgn_00000000, dm )
                call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl", cjlocgn_00000000, "origin" ) )
                set cjlocgn_00000002 = CreateUnit( GetOwningPlayer( u ), 'hfoo', cX, cY, 0. )
                call X_ApplyLife( cjlocgn_00000002 )
                call UnitAddAbility( cjlocgn_00000002, 'A006' )
                call IssueTargetOrderById( cjlocgn_00000002, 852075, cjlocgn_00000000 )
                set cjlocgn_00000002 = null
                call SaveBoolean( HT, GetHandleId( cjlocgn_00000000 ), StringHash( "H_ATT_GLA" ), TRUE )
                set cjlocgn_00000001 = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000001 ), StringHash( "H_FOG" ), cjlocgn_00000000 )
                call TimerStart( cjlocgn_00000001, 1., false, function GLAS1__Att )
                set cjlocgn_00000001 = null
            endif
            call GroupRemoveUnit( GLAS1__gr, cjlocgn_00000000 )
        endloop
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), cX )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), cY )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_9" ), nd )
    else
        call GroupClear( GLAS1__gr ) //add clear
        call SetUnitPathing( u, TRUE )
        call DestroyEffect( e )
        call SetUnitAnimation( u, "stand" )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set e = null
    set t = null
    set u = null
endfunction
function GLAS1__Act takes nothing returns nothing
    local unit caster
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local real cjlocgn_00000005
    local timer cjlocgn_00000006
    local real cjlocgn_00000007
    local real cjlocgn_00000008

    if GetSpellAbilityId( ) == 'A026' then
        set caster = GetTriggerUnit( )
        set cjlocgn_00000001 = GetSpellTargetX( )
        set cjlocgn_00000002 = GetSpellTargetY( )
        set cjlocgn_00000003 = GetUnitX( caster )
        set cjlocgn_00000004 = GetUnitY( caster )
        set cjlocgn_00000005 = GetHeroAgi( caster, true ) * 1.8
        set cjlocgn_00000006 = CreateTimer( )
        set cjlocgn_00000007 = SquareRoot( ( cjlocgn_00000001 - cjlocgn_00000003 ) * ( cjlocgn_00000001 - cjlocgn_00000003 ) + ( cjlocgn_00000002 - cjlocgn_00000004 ) * ( cjlocgn_00000002 - cjlocgn_00000004 ) )
        if cjlocgn_00000007 > 1000.then
            set cjlocgn_00000007 = 1000.
        endif

        set cjlocgn_00000008 = bj_RADTODEG * Atan2( cjlocgn_00000002 - cjlocgn_00000004, cjlocgn_00000001 - cjlocgn_00000003 )
        call SetUnitPathing( caster, FALSE )
        call SetUnitAnimationByIndex( caster, 9 )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_1" ), caster )
        call SaveReal( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_2" ), cjlocgn_00000003 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_3" ), cjlocgn_00000004 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_4" ), cjlocgn_00000001 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_5" ), cjlocgn_00000002 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_6" ), cjlocgn_00000005 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_7" ), cjlocgn_00000007 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_8" ), cjlocgn_00000008 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_9" ), 0. )
        call SaveEffectHandle( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_10" ), AddSpecialEffectTarget( "Abilities\\Spells\\Orc\\Shockwave\\ShockwaveMissile.mdl", caster, "chest" ) )
        call TimerStart( cjlocgn_00000006, 0.04, true, function GLAS1__proj )
        set cjlocgn_00000006 = null
        set caster = null
    endif
endfunction
function GLAS1__In takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GLAS1__Act )
endfunction
function GLAS2_preload takes nothing returns nothing
    call X_PreloadAbility( 'Arav' )
endfunction
function GLAS2__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GLAS2__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
function GLAS2__proj takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real cstX = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real cstY = LoadReal( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local real tX = LoadReal( HT, GetHandleId( t ), StringHash( "H_5" ) )
    local real tY = LoadReal( HT, GetHandleId( t ), StringHash( "H_6" ) )
    local real dist = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local real height = LoadReal( HT, GetHandleId( t ), StringHash( "H_7" ) )
    local real angle = Atan2( tY - cstY, tX - cstX )
    set cstX = cstX + 75. * Cos( angle )
    set cstY = cstY + 75. * Sin( angle )
    set dist = dist - ( 75. )

    if dist > 0.then
        if not( IsTerrainPathable( cstX, cstY, PATHING_TYPE_WALKABILITY ) ) then
            call SetUnitX( cst, cstX )
            call SetUnitY( cst, cstY )
        endif

        call SetUnitFlyHeight( cst, GetUnitFlyHeight( cst ) - height, 0. )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), cstX )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_4" ), cstY )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), dist )
    else
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set t = null
    set cst = null
endfunction

function GLAS2__Down_End takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real tX = LoadReal( HT, GetHandleId( t ), StringHash( "H_5" ) )
    local real tY = LoadReal( HT, GetHandleId( t ), StringHash( "H_6" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local unit FoG
    local unit dummy
    call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl", tX, tY ) )
    set GLAS2__ch_p = GetOwningPlayer( cst )
    call Dest_KillDestInRange( tX, tY, 300. )
    call GroupEnumUnitsInRange( GLAS2__gr, tX, tY, 300., Condition( function GLAS2__Cond1 ) )
    loop
        set FoG = FirstOfGroup( GLAS2__gr )
        exitwhen( FoG == null )
        //call Stun_Target( cst, FoG, 0.8 )
        call StunUnit(FoG,0.8)
      //  call DamageLib_Explode( FoG ) //Удолить
        call DamageLib_SpellDamage( cst, FoG, dmg )
        call GroupRemoveUnit( GLAS2__gr, FoG )
    endloop
    call SetUnitFlyHeight( cst, 0., 0. )
    call UnitRemoveAbility( cst, 'Arav' )
    call SetUnitPathing( cst, TRUE )
    call PauseUnit( cst, FALSE )
    call IssueImmediateOrderById( cst, 851972 )
    call GroupClear( GLAS2__gr ) //add clear
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set cst = null
endfunction

function GLAS2__Up_End takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real cstX = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real cstY = LoadReal( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local real tX = LoadReal( HT, GetHandleId( t ), StringHash( "H_5" ) )
    local real tY = LoadReal( HT, GetHandleId( t ), StringHash( "H_6" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )

    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    call SetUnitTimeScale( cst, 1. )

    set t = CreateTimer( )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), cst )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), cstX )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_4" ), cstY )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), tX )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_6" ), tY )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), SquareRoot( ( tX - cstX ) * ( tX - cstX ) + ( tY - cstY ) * ( tY - cstY ) ) )
    if not( SquareRoot( ( tX - cstX ) * ( tX - cstX ) + ( tY - cstY ) * ( tY - cstY ) ) < 100. ) then
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_7" ), 200. / ( ( SquareRoot( ( tX - cstX ) * ( tX - cstX ) + ( tY - cstY ) * ( tY - cstY ) ) / 75. ) * 0.04 ) )
    else
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_7" ), 200. )
    endif

    call TimerStart( t, 0.04, TRUE, function GLAS2__proj )

    set t = CreateTimer( )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), cst )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), tX )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_6" ), tY )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), dmg )
    call TimerStart( t, 200. / 500., FALSE, function GLAS2__Down_End )
    set t = null
    set cst = null
endfunction

function GLAS2__Act takes nothing returns nothing
    local unit caster
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local real cjlocgn_00000005
    local timer cjlocgn_00000006

    if GetSpellAbilityId( ) == 'A027' then
        set caster = GetTriggerUnit( )
        set cjlocgn_00000001 = GetSpellTargetX( )
        set cjlocgn_00000002 = GetSpellTargetY( )
        set cjlocgn_00000003 = GetUnitX( caster )
        set cjlocgn_00000004 = GetUnitY( caster )
        set cjlocgn_00000005 = GetHeroAgi( caster, true ) * 2.
        if not( IsTerrainPathable( cjlocgn_00000001, cjlocgn_00000002, PATHING_TYPE_WALKABILITY ) ) then
            call PauseUnit( caster, TRUE )
            call UnitAddAbility( caster, 'Arav' )
            call SetUnitFlyHeight( caster, 200., 300. )
            call SetUnitTimeScale( caster, 0.45 )
            call SetUnitAnimationByIndex( caster, 3 )
            call SetUnitPathing( caster, FALSE )
            set cjlocgn_00000006 = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_1" ), caster )
            call SaveReal( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_2" ), cjlocgn_00000005 )
            call SaveReal( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_3" ), cjlocgn_00000003 )
            call SaveReal( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_4" ), cjlocgn_00000004 )
            call SaveReal( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_5" ), cjlocgn_00000001 )
            call SaveReal( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_6" ), cjlocgn_00000002 )
            call TimerStart( cjlocgn_00000006, 200. / 300., FALSE, function GLAS2__Up_End )
            set cjlocgn_00000006 = null
        endif
        set caster = null
    endif
endfunction

function GLAS2__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GLAS2__Act )
endfunction

function GLAS3_preload takes nothing returns nothing
endfunction
function GLAS3__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GLAS3__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function GLAS3__Att takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local integer count = LoadInteger( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local unit FoG

    if count > 0 then
        set GLAS3__ch_p = GetOwningPlayer( cst )
        call Dest_KillDestInRange( GetUnitX( cst ), GetUnitY( cst ), 300. )

        call GroupEnumUnitsInRange( GLAS3__g, GetUnitX( cst ), GetUnitY( cst ), 300., Condition( function GLAS3__Cond1 ) )
        loop
            set FoG = FirstOfGroup( GLAS3__g )
            exitwhen( FoG == null )
            call UnitDamageTarget( cst, FoG, dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
            call GLAS4_BloodDmg( cst, FoG, dmg )
           // call Stun_Target( cst, FoG, 0.3 )
            call StunUnit(FoG,0.3)

            call GroupRemoveUnit( GLAS3__g, FoG )
        endloop
        call SaveInteger( HT, GetHandleId( t ), StringHash( "H_3" ), count - 1 )
    else
        call SetUnitAnimation( cst, "stand" )
        call GroupClear( GLAS3__g ) //add clear
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
        
    endif

    set cst = null
    set t = null
endfunction
function GLAS3__Act takes nothing returns nothing
    local unit caster
    local group cjlocgn_00000001
    local real cjlocgn_00000002
    local timer cjlocgn_00000003

    if GetSpellAbilityId( ) == 'A028' then
        set caster = GetTriggerUnit( )
        set cjlocgn_00000001 = CreateGroup( )
        set cjlocgn_00000002 = GetHeroAgi( caster, true ) * 1.
        set cjlocgn_00000003 = CreateTimer( )
        call SetUnitAnimationByIndex( caster, 13 )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000003 ), StringHash( "H_1" ), caster )
        call SaveReal( HT, GetHandleId( cjlocgn_00000003 ), StringHash( "H_2" ), cjlocgn_00000002 )
        call SaveInteger( HT, GetHandleId( cjlocgn_00000003 ), StringHash( "H_3" ), 1 )
        call TimerStart( cjlocgn_00000003, 0.266, TRUE, function GLAS3__Att )
        set cjlocgn_00000003 = null
        set caster = null
    endif
endfunction
function GLAS3__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GLAS3__Act )
endfunction
function GROS1_preload takes nothing returns nothing
endfunction
function GROS1___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GROS1___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
function GROS1___Att takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_FOG" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_ATT_GRO" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

function GROS1___proj takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real cX = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local real cY = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real tX = LoadReal( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local real tY = LoadReal( HT, GetHandleId( t ), StringHash( "H_5" ) )
    local real dm = LoadReal( HT, GetHandleId( t ), StringHash( "H_6" ) )
    local real an = LoadReal( HT, GetHandleId( t ), StringHash( "H_8" ) )
    local real nd = LoadReal( HT, GetHandleId( t ), StringHash( "H_9" ) )
    local real di = LoadReal( HT, GetHandleId( t ), StringHash( "H_7" ) )
    local unit arrow = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_10" ) )
    local unit FoG
    local timer cjlocgn_00000001
    local unit cjlocgn_00000002
    set nd = nd + ( 90. )
    set cX = cX + 90. * Cos( an * bj_DEGTORAD )
    set cY = cY + 90. * Sin( an * bj_DEGTORAD )
    if ( nd < di )and not( IsTerrainPathable( cX, cY, PATHING_TYPE_WALKABILITY ) ) then
        call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", cX, cY ) )
        call SetUnitX( u, cX )
        call SetUnitY( u, cY )
        call SetUnitX( arrow, cX )
        call SetUnitY( arrow, cY )
        set GROS1___ch_p = GetOwningPlayer( u )
        call Dest_KillDestInRange( cX, cY, 150. )
        call GroupEnumUnitsInRange( GROS1___gr, cX, cY, 150., Condition( function GROS1___Cond1 ) )

        loop
            set FoG = FirstOfGroup( GROS1___gr )
            exitwhen( FoG == null )
            if not( LoadBoolean( HT, GetHandleId( FoG ), StringHash( "H_ATT_GRO" ) ) ) then

                if GetUnitTypeId( FoG ) == TEHS4_TYPE_1 or GetUnitTypeId( FoG ) == TEHS4_TYPE_2 then
                    set dm = dm * TEHS4_REDUCE
                endif

                //call DamageLib_Explode( FoG ) //Удолить
                call DamageLib_SpellDamage( u, FoG, GROS5_FilterWater( GetUnitX( FoG ), GetUnitY( FoG ), dm ) )
                call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Weapons\\Bolt\\BoltImpact.mdl", FoG, "origin" ) )
                call SaveBoolean( HT, GetHandleId( FoG ), StringHash( "H_ATT_GRO" ), TRUE )
                set cjlocgn_00000001 = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000001 ), StringHash( "H_FOG" ), FoG )
                call TimerStart( cjlocgn_00000001, 1., false, function GROS1___Att )
                set cjlocgn_00000001 = null
            endif
            call GroupRemoveUnit( GROS1___gr, FoG )
        endloop
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), cX )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), cY )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_9" ), nd )
    else
        call GroupClear( GROS1___gr ) //add clear
        call SetUnitPathing( u, TRUE )
        call SetUnitAnimation( u, "stand" )
        call X_ApplyLifeSmall( arrow )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set arrow = null
    set t = null
    set u = null
endfunction
function GROS1___Act takes nothing returns nothing
    local unit caster
    local location cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local real cjlocgn_00000005
    local real cjlocgn_00000006
    local timer cjlocgn_00000007
    local real cjlocgn_00000008
    local real cjlocgn_00000009
    local unit cjlocgn_0000000a

    if GetSpellAbilityId( ) == 'A02O' then
        set caster = GetTriggerUnit( )
        set cjlocgn_00000001 = GetSpellTargetLoc( )
        set cjlocgn_00000002 = GetLocationX( cjlocgn_00000001 )
        set cjlocgn_00000003 = GetLocationY( cjlocgn_00000001 )
        set cjlocgn_00000004 = GetUnitX( caster )
        set cjlocgn_00000005 = GetUnitY( caster )
        set cjlocgn_00000006 = GetHeroInt( caster, true ) * 2.0
        set cjlocgn_00000007 = CreateTimer( )
        set cjlocgn_00000008 = SquareRoot( ( cjlocgn_00000002 - cjlocgn_00000004 ) * ( cjlocgn_00000002 - cjlocgn_00000004 ) + ( cjlocgn_00000003 - cjlocgn_00000005 ) * ( cjlocgn_00000003 - cjlocgn_00000005 ) )
        if cjlocgn_00000008 > 800.then
            set cjlocgn_00000008 = 800.
        endif
        set cjlocgn_00000009 = bj_RADTODEG * Atan2( cjlocgn_00000003 - cjlocgn_00000005, cjlocgn_00000002 - cjlocgn_00000004 )
        set cjlocgn_0000000a = CreateUnit( Player( 13 ), 'h006', cjlocgn_00000004, cjlocgn_00000005, cjlocgn_00000009 )
        call SetUnitScale( cjlocgn_0000000a, 2., 2., 2. )
        call AttachSoundToUnit( gg_snd_Impuls_sound, caster )
        call StartSound( gg_snd_Impuls_sound )
        call SetUnitPathing( caster, FALSE )
        call SetUnitAnimationByIndex( caster, 7 )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_1" ), caster )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_2" ), cjlocgn_00000004 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_3" ), cjlocgn_00000005 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_4" ), cjlocgn_00000002 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_5" ), cjlocgn_00000003 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_6" ), cjlocgn_00000006 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_7" ), cjlocgn_00000008 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_8" ), cjlocgn_00000009 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_9" ), 0. )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_10" ), cjlocgn_0000000a )
        call TimerStart( cjlocgn_00000007, 0.04, true, function GROS1___proj )
        set cjlocgn_00000007 = null
        set caster = null
        set cjlocgn_0000000a = null
        call RemoveLocation( cjlocgn_00000001 )
        set cjlocgn_00000001 = null
    endif
endfunction
function GROS1___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GROS1___Act )
endfunction
function GROS2_preload takes nothing returns nothing
    local unit d
    set d = CreateUnit( Player( 13 ), 'h007', 0., 0., 0. )
    call RemoveUnit( d )
    set d = null
    call X_PreloadAbility( 'A02Q' )
endfunction

function GROS2___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GROS2___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function GROS2___TimerEnd takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real x = GetUnitX( u )
    local real y = GetUnitY( u )
    local real r = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local unit e = CreateUnit( GetOwningPlayer( u ), 'h007', x, y, 0. )
    local unit FoG
   
    set GROS2___ch_p = GetOwningPlayer( u )
    call GroupClear( GROS2___gr )
    call Dest_KillDestInRange( x, y, 600. )
    call GroupEnumUnitsInRange( GROS2___gr, x, y, 600., Condition( function GROS2___Cond1 ) )
    loop
        set FoG = FirstOfGroup( GROS2___gr )
        exitwhen( FoG == null )
        if GetUnitTypeId( FoG ) == TEHS4_TYPE_1 or GetUnitTypeId( FoG ) == TEHS4_TYPE_2 then
            set r = r * TEHS4_REDUCE
        endif
        call DamageLib_SpellDamage( u, FoG, GROS5_FilterWater( GetUnitX( FoG ), GetUnitY( FoG ), r ) )
        call GroupRemoveUnit( GROS2___gr, FoG )
    endloop
    call GroupClear( GROS2___gr ) //add clear
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    call X_ApplyLifeSmall( e )
    set e = null
    set t = null
    set u = null
endfunction

function GROS2___RemAbil takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    if GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then
        call UnitRemoveAbility( u, 'A02Q' )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 1., false, function GROS2___RemAbil )
    endif
    set t = null
    set u = null
endfunction
function GROS2___Act takes nothing returns nothing
    local unit caster
    local real x
    local real y
    local real damage
    local timer t

    if GetSpellAbilityId( ) == 'A02P' then
        set caster = GetTriggerUnit( )
        set x = GetUnitX( caster )
        set y = GetUnitY( caster )
        set damage = GetHeroInt( caster, TRUE ) * 2.0
        set t = CreateTimer( )
        call DestroyEffect( AddSpecialEffectTarget( "war3mapImported\\RollingStormSFX.mdl", caster, "origin" ) )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), damage )
        call TimerStart( t, 1., FALSE, function GROS2___TimerEnd )
        call UnitAddAbility( caster, 'A02Q' )
        set t = CreateTimer( )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
        call TimerStart( t, 1.0, false, function GROS2___RemAbil )
        set t = null
        set caster = null
    endif
endfunction
function GROS2___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GROS2___Act )
endfunction
function GROS3_preload takes nothing returns nothing
endfunction
function GROS3___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GROS3___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
function GROS3___CreateLightning takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real tX = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local real tY = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local real dist = LoadReal( HT, GetHandleId( t ), StringHash( "H_5" ) )
    local real angle_mod = 360. / 8
    local real angle = 0.
    local real x = 0.
    local real y = 0.
    local unit FoG
    local unit d
    loop
        exitwhen( angle > 359. )
        set x = tX + dist * Cos( ( angle + ( ( 400. - dist ) * 3 ) ) * bj_DEGTORAD )
        set y = tY + dist * Sin( ( angle + ( ( 400. - dist ) * 3 ) ) * bj_DEGTORAD )
        call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl", x, y ) )
        set GROS3___ch_p = GetOwningPlayer( cst )
        call GroupEnumUnitsInRange( GROS3___gr, x, y, 175., Condition( function GROS3___Cond1 ) )
        loop
            set FoG = FirstOfGroup( GROS3___gr )
            exitwhen( FoG == null )

            if GetUnitTypeId( FoG ) == TEHS4_TYPE_1 or GetUnitTypeId( FoG ) == TEHS4_TYPE_2 then
                set dmg = dmg * TEHS4_REDUCE
            endif

            call DamageLib_SpellDamage( cst, FoG, GROS5_FilterWater( GetUnitX( FoG ), GetUnitY( FoG ), dmg ) )

            if dist <= 250.then
                set d = CreateUnit( GetOwningPlayer( cst ), 'hfoo', x, y, 0. )
                call X_ApplyLife( d )
                call UnitAddAbility( d, 'A006' )
                call IssueTargetOrderById( d, 852075, FoG )
    
                set d = null
            endif

            call GroupRemoveUnit( GROS3___gr, FoG )
        endloop
        set angle = angle + ( angle_mod )
    endloop

    set dist = dist - ( 100. )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), dist )

    if dist <= 0.then
        call GroupClear( GROS3___gr ) //add clear
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
      //  call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), dist )
    endif
    set t = null
    set cst = null
endfunction

function GROS3___Act takes nothing returns nothing
    local unit caster
    local real x
    local real y
    local real damage
    local timer t

    if GetSpellAbilityId( ) == 'A02R' then
        set caster = GetTriggerUnit( )
        //set x = GetUnitX( caster )
       // set y = GetUnitY( caster )
        set x = GetSpellTargetX( )
        set y = GetSpellTargetY( )
        set damage = GetHeroInt( caster, true ) * 0.5
        set t = CreateTimer( )
        call SetSoundPosition( gg_snd_GROS3_Sound, x, y, 0. )
        call StartSound( gg_snd_GROS3_Sound )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_4" ), damage )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), 400. )
        call TimerStart( t, 0.1, TRUE, function GROS3___CreateLightning )
        call TriggerSleepAction( 0.01 )
        call IssueImmediateOrderById( caster, 851972 ) // грозовой закоментил
        set t = null
        set caster = null
    endif
endfunction
function GROS3___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GROS3___Act )
endfunction

function GROS6_preload takes nothing returns nothing
endfunction

function GROS6___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GROS6___ch_p )and GetUnitTypeId( u ) == 'N005' and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    return b
endfunction

function GROS6___Act takes nothing returns nothing
    local unit caster = GetTriggerUnit( )
    local real cjlocgn_00000000
    local real cjlocgn_00000001
    local unit cjlocgn_00000002
    local real cjlocgn_00000003
    local location cjlocgn_00000004
    local location cjlocgn_00000005
    local real cjlocgn_00000006
    local real cjlocgn_00000007
    local lightning cjlocgn_00000008
    local real cjlocgn_00000009
    local real cjlocgn_0000000a
    local integer cjlocgn_0000000b
   // if GetUnitTypeId( caster ) != 'hfoo' then //даммикастер без москитов высер говна

    if IsUnitType( caster, UNIT_TYPE_HERO ) == true then //даммикастер без москитов

        set cjlocgn_00000000 = GetUnitX( caster )
        set cjlocgn_00000001 = GetUnitY( caster )
        set cjlocgn_00000002 = null
        set cjlocgn_00000003 = 0.
        set cjlocgn_00000004 = GetUnitLoc( caster )
        set cjlocgn_00000005 = null
        set cjlocgn_00000006 = GetLocationZ( cjlocgn_00000004 )
        set cjlocgn_00000007 = 0.
        set cjlocgn_00000008 = null
        set cjlocgn_00000009 = 0.
        set cjlocgn_0000000a = 0.
        set cjlocgn_0000000b = 0

        set GROS6___ch_p = GetOwningPlayer( caster )
        call GroupEnumUnitsInRange( GROS6___gr, cjlocgn_00000000, cjlocgn_00000001, 600., Condition( function GROS6___Cond1 ) )
        loop
            set cjlocgn_00000002 = FirstOfGroup( GROS6___gr )
            exitwhen( cjlocgn_00000002 == null )
            set cjlocgn_0000000b = GetRandomInt( 1, 100 )
            if cjlocgn_0000000b <= 15 then
                set cjlocgn_00000005 = GetUnitLoc( cjlocgn_00000002 )
                set cjlocgn_00000007 = GetLocationZ( cjlocgn_00000005 )
                set cjlocgn_00000009 = GetUnitX( cjlocgn_00000002 )
                set cjlocgn_0000000a = GetUnitY( cjlocgn_00000002 )
                //set cjlocgn_00000008 = AddLightningEx( "CLPB", true, cjlocgn_00000000, cjlocgn_00000001, cjlocgn_00000006, cjlocgn_00000009, cjlocgn_0000000a, cjlocgn_00000007 )
               // call X_KillLightning( cjlocgn_00000008 )
                //call AddTimeLightning(cjlocgn_00000008,0.5)
                call RemoveLocation( cjlocgn_00000005 )
              //  call LightningUnit(caster, cjlocgn_00000002, "CLPB", 1, 1, 1, 1, 0.5,2000)
                //молния при касте скиллов
                set cjlocgn_00000003 = GetHeroInt( cjlocgn_00000002, TRUE ) * 0.6
                call GROS5_FilterWater( cjlocgn_00000009, cjlocgn_0000000a, cjlocgn_00000003 )
                call DamageLib_SpellDamage( cjlocgn_00000002, caster, cjlocgn_00000003 )
               // call DisplayTextToForce( GetPlayersAll( ), GetUnitName(cjlocgn_00000002) + "ударил молнией 15%_" + GetUnitName(caster) )
                call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl", caster, "chest" ) )
                set cjlocgn_00000005 = null
                set cjlocgn_00000008 = null
            endif
            call GroupRemoveUnit( GROS6___gr, cjlocgn_00000002 )
        endloop
        call GroupClear( GROS6___gr ) //add clear
        call RemoveLocation( cjlocgn_00000004 )
        set cjlocgn_00000004 = null
    endif

    set caster = null
endfunction

function GROS6___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GROS6___Act )
    set Trg = null
endfunction

function MRAS5Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'A01P' )
endfunction

function MRAS5Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), MRAS5Lib__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function MRAS5Lib__MRAS5_Act takes nothing returns nothing
    local unit caster
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local group cjlocgn_00000005
    local unit cjlocgn_00000006
    local unit array cjlocgn_00000007
    local integer cjlocgn_00000008
    local real array cjlocgn_00000009
    local real cjlocgn_0000000a
    local integer cjlocgn_0000000b
    local location cjlocgn_0000000c
    local unit cjlocgn_0000000d
    local integer cjlocgn_0000000e
    if GetSpellAbilityId( ) == 'A01O' then
        set caster = GetTriggerUnit( )
        set cjlocgn_00000001 = GetSpellTargetX( )
        set cjlocgn_00000002 = GetSpellTargetY( )
        set cjlocgn_00000003 = GetUnitX( caster )
        set cjlocgn_00000004 = GetUnitY( caster )
        set cjlocgn_00000005 = CreateGroup( )
        set cjlocgn_00000008 = 0
        set cjlocgn_0000000a = 400.
        set cjlocgn_0000000b = 0
        call TriggerSleepAction( 0.01 )

        if not IsTerrainPathable( cjlocgn_00000001, cjlocgn_00000002, PATHING_TYPE_WALKABILITY ) then
            call SetUnitPosition( caster, cjlocgn_00000001, cjlocgn_00000002 )
            set MRAS5Lib__ch_p = GetOwningPlayer( caster )
            call GroupEnumUnitsInRange( cjlocgn_00000005, cjlocgn_00000001, cjlocgn_00000002, 400., Condition( function MRAS5Lib__Cond1 ) )
            loop
                set cjlocgn_00000006 = FirstOfGroup( cjlocgn_00000005 )
                exitwhen( cjlocgn_00000006 == null )
                set cjlocgn_00000008 = cjlocgn_00000008 + 1
                set cjlocgn_00000007[cjlocgn_00000008] = cjlocgn_00000006
                set cjlocgn_00000009[cjlocgn_00000008] = SquareRoot( ( cjlocgn_00000001 - GetUnitX( cjlocgn_00000006 ) ) * ( cjlocgn_00000001 - GetUnitX( cjlocgn_00000006 ) ) + ( cjlocgn_00000002 - GetUnitY( cjlocgn_00000006 ) ) * ( cjlocgn_00000002 - GetUnitY( cjlocgn_00000006 ) ) )
                if cjlocgn_00000009[cjlocgn_00000008] < cjlocgn_0000000a then
                    set cjlocgn_0000000a = cjlocgn_00000009[cjlocgn_00000008]
                    set cjlocgn_0000000b = cjlocgn_00000008
                endif
                call GroupRemoveUnit( cjlocgn_00000005, cjlocgn_00000006 )
            endloop

            if cjlocgn_0000000a < 400.then
                set cjlocgn_00000006 = cjlocgn_00000007[cjlocgn_0000000b]
                set cjlocgn_0000000c = GetUnitLoc( cjlocgn_00000006 )
                call SetUnitPositionLoc( caster, cjlocgn_0000000c )
                call RemoveLocation( cjlocgn_0000000c )
                set cjlocgn_0000000c = null
                call IssueTargetOrderById( caster, 851983, cjlocgn_00000006 )
                set cjlocgn_0000000d = CreateUnit( GetOwningPlayer( caster ), 'hfoo', cjlocgn_00000001, cjlocgn_00000002, 0. )
                call UnitAddAbility( cjlocgn_0000000d, 'A01P' )
                call IssueTargetOrderById( cjlocgn_0000000d, 852190, cjlocgn_00000006 )
                call TriggerSleepAction( 0.01 )
                call RemoveUnit( cjlocgn_0000000d )
                set cjlocgn_0000000d = null
            endif
            set cjlocgn_0000000e = cjlocgn_00000008

            loop
                exitwhen( cjlocgn_0000000e == 0 )
                set cjlocgn_00000007[cjlocgn_0000000e] = null
                set cjlocgn_0000000e = cjlocgn_0000000e - 1
            endloop
        endif

        set caster = null
        set cjlocgn_00000006 = null
        call GroupClear( cjlocgn_00000005 )
        call DestroyGroup( cjlocgn_00000005 )
        set cjlocgn_00000005 = null
    endif
endfunction

function MRAS5Lib__MRAS5Lib_Init takes nothing returns nothing
    local trigger MRAS5_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( MRAS5_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( MRAS5_Trg, function MRAS5Lib__MRAS5_Act )
endfunction

function MRASp1Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'A01F' )
endfunction

function MRASp1Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), MRASp1Lib__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
function MRASp1Lib__RemoveAttacked takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "TMA_2" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "TMA_1" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction
function MRASp1Lib__CreatePartOfWave takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local real x = LoadReal( HT, GetHandleId( t ), StringHash( "x" ) )
    local real y = LoadReal( HT, GetHandleId( t ), StringHash( "y" ) )
    local player p = LoadPlayerHandle( HT, GetHandleId( t ), StringHash( "p" ) )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "333" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "22" ) )
    local real angle = LoadReal( HT, GetHandleId( t ), StringHash( "1" ) )
    local real dist = LoadReal( HT, GetHandleId( t ), StringHash( "dist" ) )
    local unit arrow = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local timer ti
    local unit FoG
    local unit cjlocgn_00000001
    if dist <= 1000.then
        set MRASp1Lib__ch_p = p
        call GroupEnumUnitsInRange( MRASp1Lib__gr, x, y, 150., Condition( function MRASp1Lib__Cond1 ) )
        loop
            set FoG = FirstOfGroup( MRASp1Lib__gr )
            exitwhen( FoG == null )
            if not( LoadBoolean( HT, GetHandleId( FoG ), StringHash( "TMA_1" ) ) ) then
                call DamageLib_SpellDamage( cst, FoG, dmg )
                call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Other\\BlackArrow\\BlackArrowMissile.mdl", FoG, "chest" ) )
                call SaveBoolean( HT, GetHandleId( FoG ), StringHash( "TMA_1" ), TRUE )
                set ti = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( ti ), StringHash( "TMA_2" ), FoG )
                call TimerStart( ti, 1., false, function MRASp1Lib__RemoveAttacked )

                set cjlocgn_00000001 = CreateUnit( p, 'hfoo', x, y, 0. )
                call UnitApplyTimedLife( cjlocgn_00000001, 'BTLF', 0.5 )
                call UnitAddAbility( cjlocgn_00000001, 'A01F' )
                call IssueTargetOrderById( cjlocgn_00000001, 852149, FoG )
        
            endif
            call GroupRemoveUnit( MRASp1Lib__gr, FoG )
        endloop
        set cjlocgn_00000001 = null
        set x = x + 45. * Cos( angle * bj_DEGTORAD )
        set y = y + 45. * Sin( angle * bj_DEGTORAD )
        set dist = dist + ( 45. )
        call SetUnitX( arrow, x )
        call SetUnitY( arrow, y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), dist )
    else
        call GroupClear( MRASp1Lib__gr ) //add clear
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
        call RemoveUnit( arrow )
    endif
    set ti = null
    set t = null
    set cst = null
    set arrow = null
endfunction
function MRASp1Lib__MRAS1_Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local real cjlocgn_00000005
    local real cjlocgn_00000006
    local timer cjlocgn_00000007
    local unit cjlocgn_00000008

    if GetSpellAbilityId( ) == 'A01C' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = GetUnitX( cjlocgn_00000000 )
        set cjlocgn_00000002 = GetUnitY( cjlocgn_00000000 )
        set cjlocgn_00000003 = bj_RADTODEG * Atan2( GetSpellTargetY( ) - cjlocgn_00000002, GetSpellTargetX( ) - cjlocgn_00000001 )
        set cjlocgn_00000004 = cjlocgn_00000001 + 1000. * Cos( cjlocgn_00000003 * bj_DEGTORAD )
        set cjlocgn_00000005 = cjlocgn_00000002 + 1000. * Sin( cjlocgn_00000003 * bj_DEGTORAD )
        set cjlocgn_00000006 = GetHeroAgi( cjlocgn_00000000, true ) * 1.8
        set cjlocgn_00000007 = CreateTimer( )
        set cjlocgn_00000008 = CreateUnit( GetOwningPlayer( cjlocgn_00000000 ), 'h003', cjlocgn_00000001, cjlocgn_00000002, cjlocgn_00000003 )
        call PauseUnit( cjlocgn_00000000, TRUE )
        call SetUnitFacing( cjlocgn_00000000, cjlocgn_00000003 )
        call SetUnitAnimation( cjlocgn_00000000, "attack" )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "x" ), cjlocgn_00000001 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "y" ), cjlocgn_00000002 )
        call SavePlayerHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "p" ), GetOwningPlayer( cjlocgn_00000000 ) )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "333" ), cjlocgn_00000000 )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_1" ), cjlocgn_00000008 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "22" ), cjlocgn_00000006 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "1" ), cjlocgn_00000003 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "dist" ), 0. )
        call TimerStart( cjlocgn_00000007, 0.04, TRUE, function MRASp1Lib__CreatePartOfWave )
        call PauseUnit( cjlocgn_00000000, FALSE )
        call IssueImmediateOrderById( cjlocgn_00000000, 851972 )
        set cjlocgn_00000007 = null
        set cjlocgn_00000000 = null
    endif
endfunction
function MRASp1Lib__MRASp1Lib_Init takes nothing returns nothing
    local trigger MRAS1_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( MRAS1_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( MRAS1_Trg, function MRASp1Lib__MRAS1_Act )
endfunction
function MRASp2Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), MRASp2Lib__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
//Не вызывается!
function MRASp2Lib__RemovePause takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    call PauseUnit( u, FALSE )
    call IssueImmediateOrderById( u, 851972 )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

function MRASp2Lib__MRAS2_Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local group cjlocgn_00000003
    local unit cjlocgn_00000004
    local real cjlocgn_00000005
    //local timer cjlocgn_00000006
    if GetSpellAbilityId( ) == 'A01I' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = GetUnitX( cjlocgn_00000000 )
        set cjlocgn_00000002 = GetUnitY( cjlocgn_00000000 )
        set cjlocgn_00000003 = CreateGroup( )
        set cjlocgn_00000005 = GetHeroAgi( cjlocgn_00000000, true ) * 1.5
        call AttachSoundToUnit( gg_snd_MentalCry, cjlocgn_00000000 )
        call StartSound( gg_snd_MentalCry )
        set MRASp2Lib__ch_p = GetOwningPlayer( cjlocgn_00000000 )
        call GroupEnumUnitsInRange( cjlocgn_00000003, cjlocgn_00000001, cjlocgn_00000002, 400., Condition( function MRASp2Lib__Cond1 ) )
        loop
            set cjlocgn_00000004 = FirstOfGroup( cjlocgn_00000003 )
            exitwhen( cjlocgn_00000004 == null )
            call UnitDamageTarget( cjlocgn_00000000, cjlocgn_00000004, cjlocgn_00000005, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
            if GetUnitAbilityLevel( cjlocgn_00000004, 'Avul' ) == 0 then
                call StunUnit(cjlocgn_00000004,2.2)
               // set cjlocgn_00000006 = CreateTimer( )
              //  call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000006 ), StringHash( "H_1" ), cjlocgn_00000004 )
             //   call TimerStart( cjlocgn_00000006, 2.2, FALSE, function MRASp2Lib__RemovePause )
              //  call PauseUnit( cjlocgn_00000004, TRUE )
            endif
            call GroupRemoveUnit( cjlocgn_00000003, cjlocgn_00000004 )
        endloop
  //      set cjlocgn_00000006 = null
        set cjlocgn_00000000 = null
        set cjlocgn_00000004 = null
        call GroupClear( cjlocgn_00000003 )
        call DestroyGroup( cjlocgn_00000003 )
        set cjlocgn_00000003 = null
    endif
endfunction
function MRASp2Lib__MRASp2Lib_Init takes nothing returns nothing
    local trigger MRAS2_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( MRAS2_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( MRAS2_Trg, function MRASp2Lib__MRAS2_Act )
    set MRAS2_Trg = null
endfunction
function MRASp3Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'A01L' )
    call X_PreloadAbility( 'A03S' )
endfunction

function MRASp3Lib__Remove takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    if GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then
        call UnitRemoveAbility( u, 'A01L' )
        call SetUnitPathing( u, TRUE )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 1., false, function MRASp3Lib__Remove )
    endif
    set t = null
    set u = null
endfunction
function MRASp3Lib__MRAS3_Act takes nothing returns nothing
    local unit cst = null
    local timer t = null
    if GetSpellAbilityId( ) == 'A01J' then
        set cst = GetTriggerUnit( )
        set t = CreateTimer( )
        call SetUnitPathing( cst, FALSE )
        call UnitAddAbility( cst, 'A01L' )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), cst )
        call TimerStart( t, 2.5, FALSE, function MRASp3Lib__Remove )
        set t = null
        set cst = null
    else
        if GetSpellAbilityId( ) == 'A03S' then
            set cst = GetSpellTargetUnit( )
            set t = CreateTimer( )
            call SetUnitPathing( cst, FALSE )
            call UnitAddAbility( cst, 'A01L' )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), cst )
            call TimerStart( t, 2.5, FALSE, function MRASp3Lib__Remove )
            set t = null
            set cst = null
        endif
    endif
endfunction
function MRASp3Lib__MRASp3Lib_Init takes nothing returns nothing
    local trigger MRAS3_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( MRAS3_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( MRAS3_Trg, function MRASp3Lib__MRAS3_Act )
endfunction
function PALS1_preload takes nothing returns nothing
endfunction
function PALS1__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), PALS1__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
function PALS1__Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local real cjlocgn_00000005
    local group cjlocgn_00000006
    local unit cjlocgn_00000007
    local real cjlocgn_00000008
    local effect cjlocgn_00000009
    local unit cjlocgn_0000000a
    local timer cjlocgn_0000000b

    if GetSpellAbilityId( ) == 'A002' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = GetUnitX( cjlocgn_00000000 )
        set cjlocgn_00000002 = GetUnitY( cjlocgn_00000000 )
        set cjlocgn_00000003 = bj_RADTODEG * Atan2( GetSpellTargetY( ) - cjlocgn_00000002, GetSpellTargetX( ) - cjlocgn_00000001 )
        set cjlocgn_00000004 = cjlocgn_00000001 + 100. * Cos( cjlocgn_00000003 * bj_DEGTORAD )
        set cjlocgn_00000005 = cjlocgn_00000002 + 100. * Sin( cjlocgn_00000003 * bj_DEGTORAD )
        set cjlocgn_00000006 = CreateGroup( )
        set cjlocgn_00000008 = GetHeroStr( cjlocgn_00000000, true ) * 2.3
        call SetUnitFacing( cjlocgn_00000000, cjlocgn_00000003 )
        call PauseUnit( cjlocgn_00000000, TRUE )
        call SetUnitAnimationByIndex( cjlocgn_00000000, 5 )
        set cjlocgn_00000009 = AddSpecialEffectTarget( "Abilities\\Spells\\Items\\ScrollOfRegeneration\\Scroll_Regen_Target", cjlocgn_00000000, "weapon" )
        call TriggerSleepAction( 0.35 )
        call PauseUnit( cjlocgn_00000000, FALSE )
        call IssueImmediateOrderById( cjlocgn_00000000, 851972 )
        call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Undead\\ReplenishHealth\\ReplenishHealthCaster.mdl", cjlocgn_00000004, cjlocgn_00000005 ) )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\HolyStomp.mdx", cjlocgn_00000004, cjlocgn_00000005 ) )
        call DestroyEffect( cjlocgn_00000009 )
        call SetUnitAnimation( cjlocgn_00000000, "stand" )
        set PALS1__ch_p = GetOwningPlayer( cjlocgn_00000000 )
        call Dest_KillDestInRange( cjlocgn_00000004, cjlocgn_00000005, 200. )
        call GroupEnumUnitsInRange( cjlocgn_00000006, cjlocgn_00000004, cjlocgn_00000005, 200., Condition( function PALS1__Cond1 ) )
        loop
            set cjlocgn_00000007 = FirstOfGroup( cjlocgn_00000006 )
            exitwhen( cjlocgn_00000007 == null )
          //  call DamageLib_Explode( cjlocgn_00000007 ) // Удолить
            call UnitDamageTarget( cjlocgn_00000000, cjlocgn_00000007, cjlocgn_00000008, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
          //  call Stun_Target( cjlocgn_00000000, cjlocgn_00000007, 1.5 )
            call StunUnit(cjlocgn_00000007,1.5)

            call GroupRemoveUnit( cjlocgn_00000006, cjlocgn_00000007 )
        endloop
        set cjlocgn_0000000a = null
        set cjlocgn_00000000 = null
        set cjlocgn_00000007 = null
        set cjlocgn_00000009 = null
        call GroupClear( cjlocgn_00000006 )
        call DestroyGroup( cjlocgn_00000006 )
        set cjlocgn_00000006 = null
    endif

endfunction
function PALS1__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function PALS1__Act )
endfunction

function PALS2__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), PALS2__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function PALS2__Cond2 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerAlly( GetOwningPlayer( u ), PALS2__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
function PALS2__Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local group cjlocgn_00000003
    local unit cjlocgn_00000004
    local real cjlocgn_00000005
    local integer cjlocgn_00000006
    if GetSpellAbilityId( ) == 'A001' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = GetUnitX( cjlocgn_00000000 )
        set cjlocgn_00000002 = GetUnitY( cjlocgn_00000000 )
        set cjlocgn_00000003 = CreateGroup( )
        set cjlocgn_00000005 = Energy_Get( cjlocgn_00000000, GetHeroInt( cjlocgn_00000000, true ) * 2.8 )
        set cjlocgn_00000006 = 0
        call Energy_Minus( cjlocgn_00000000, PALS2__energy )
        set PALS2__ch_p = GetOwningPlayer( cjlocgn_00000000 )
        call GroupEnumUnitsInRange( cjlocgn_00000003, cjlocgn_00000001, cjlocgn_00000002, 600., Condition( function PALS2__Cond1 ) )
        loop
            set cjlocgn_00000004 = FirstOfGroup( cjlocgn_00000003 )
            exitwhen( cjlocgn_00000004 == null )
            call DamageLib_SpellDamage( cjlocgn_00000000, cjlocgn_00000004, cjlocgn_00000005 * 0.5 )
            set cjlocgn_00000006 = GetRandomInt( 1, 100 )
            if cjlocgn_00000006 < 15 then
                call UnitRemoveBuffs( cjlocgn_00000004, true, false )
            endif
            call GroupRemoveUnit( cjlocgn_00000003, cjlocgn_00000004 )
        endloop
        call GroupClear( cjlocgn_00000003 )
        call GroupEnumUnitsInRange( cjlocgn_00000003, cjlocgn_00000001, cjlocgn_00000002, 600., Condition( function PALS2__Cond2 ) )
        loop
            set cjlocgn_00000004 = FirstOfGroup( cjlocgn_00000003 )
            exitwhen( cjlocgn_00000004 == null )
            if not( cjlocgn_00000004 == cjlocgn_00000000 ) then
                call DamageLib_SpellHeal( cjlocgn_00000000, cjlocgn_00000004, -cjlocgn_00000005 * 1. )
                set cjlocgn_00000006 = GetRandomInt( 1, 100 )
                if cjlocgn_00000006 < 15 then
                    call UnitRemoveBuffs( cjlocgn_00000004, false, true )
                endif
            endif
            call GroupRemoveUnit( cjlocgn_00000003, cjlocgn_00000004 )
        endloop

        if cjlocgn_00000005 > GetUnitState( cjlocgn_00000000, UNIT_STATE_MAX_LIFE ) * 0.05 then
            call DamageLib_SpellHeal( cjlocgn_00000000, cjlocgn_00000000, -cjlocgn_00000005 )
        else
            call DamageLib_SpellHeal( cjlocgn_00000000, cjlocgn_00000004, -GetUnitState( cjlocgn_00000000, UNIT_STATE_MAX_LIFE ) * 0.05 )
        endif
        set cjlocgn_00000006 = GetRandomInt( 1, 100 )
        if cjlocgn_00000006 < 15 then
            call UnitRemoveBuffs( cjlocgn_00000000, true, false )
        endif
        set cjlocgn_00000000 = null
        set cjlocgn_00000004 = null
        call GroupClear( cjlocgn_00000003 )
        call DestroyGroup( cjlocgn_00000003 )
        set cjlocgn_00000003 = null
    endif
endfunction
function PALS2__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function PALS2__Act )
endfunction
function PALS3_preload takes nothing returns nothing
endfunction
function PALS3__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), PALS3__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
function PALS3__Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local group cjlocgn_00000005
    local unit cjlocgn_00000006
    local real cjlocgn_00000007
    local real cjlocgn_00000008
    local unit cjlocgn_00000009

    if GetSpellAbilityId( ) == 'A004' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = GetSpellTargetX( )
        set cjlocgn_00000002 = GetSpellTargetY( )
        set cjlocgn_00000003 = GetUnitX( cjlocgn_00000000 )
        set cjlocgn_00000004 = GetUnitY( cjlocgn_00000000 )
        set cjlocgn_00000005 = CreateGroup( )
        set cjlocgn_00000007 = SquareRoot( ( cjlocgn_00000001 - cjlocgn_00000003 ) * ( cjlocgn_00000001 - cjlocgn_00000003 ) + ( cjlocgn_00000002 - cjlocgn_00000004 ) * ( cjlocgn_00000002 - cjlocgn_00000004 ) )
        set cjlocgn_00000008 = ( GetHeroStr( cjlocgn_00000000, true ) + GetHeroInt( cjlocgn_00000000, true ) ) * 0.7
        call TriggerSleepAction( cjlocgn_00000007 / 1000. ) //летит анимация
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\s_HolymagicProjectile.mdl", cjlocgn_00000001, cjlocgn_00000002 ) )
        set PALS3__ch_p = GetOwningPlayer( cjlocgn_00000000 )
        call GroupEnumUnitsInRange( cjlocgn_00000005, cjlocgn_00000001, cjlocgn_00000002, 300., Condition( function PALS3__Cond1 ) )
        loop
            set cjlocgn_00000006 = FirstOfGroup( cjlocgn_00000005 )
            exitwhen( cjlocgn_00000006 == null )
            call DamageLib_SpellDamage( cjlocgn_00000000, cjlocgn_00000006, cjlocgn_00000008 )
            call GroupRemoveUnit( cjlocgn_00000005, cjlocgn_00000006 )
        endloop
        call GroupClear( cjlocgn_00000005 )
        call GroupEnumUnitsInRange( cjlocgn_00000005, cjlocgn_00000001, cjlocgn_00000002, 300., Condition( function PALS3__Cond1 ) )
        set cjlocgn_00000009 = CreateUnit( GetOwningPlayer( cjlocgn_00000000 ), 'hfoo', cjlocgn_00000001, cjlocgn_00000002, 0. )
        call UnitAddAbility( cjlocgn_00000009, 'A006' ) //замедление дааммик
        loop
            set cjlocgn_00000006 = FirstOfGroup( cjlocgn_00000005 )
            exitwhen( cjlocgn_00000006 == null )
            call IssueTargetOrderById( cjlocgn_00000009, 852075, cjlocgn_00000006 )
          //  call TriggerSleepAction( 0.01 )
            call GroupRemoveUnit( cjlocgn_00000005, cjlocgn_00000006 )
        endloop
        call RemoveUnit( cjlocgn_00000009 )
        call GroupClear( cjlocgn_00000005 )
        call DestroyGroup( cjlocgn_00000005 )
        set cjlocgn_00000009 = null
        set cjlocgn_00000000 = null
        set cjlocgn_00000006 = null
        set cjlocgn_00000005 = null
    endif
endfunction
function PALS3__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function PALS3__Act )
endfunction

function REAS1_preload takes nothing returns nothing
endfunction
function REAS1___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), REAS1___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function REAS1___RemoveAttacked takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "2" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "ReasWave" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

function REAS1___CreatePartOfWave takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local real x = LoadReal( HT, GetHandleId( t ), StringHash( "x" ) )
    local real y = LoadReal( HT, GetHandleId( t ), StringHash( "y" ) )
    local player p = LoadPlayerHandle( HT, GetHandleId( t ), StringHash( "p" ) )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "333" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "22" ) )
    local real angle = LoadReal( HT, GetHandleId( t ), StringHash( "1" ) )
    local real dist = LoadReal( HT, GetHandleId( t ), StringHash( "dist" ) )
    local unit arrow = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local timer ti
    local unit cjlocgn_00000000
    if dist <= 800.then
        set REAS1___ch_p = p
        call Dest_KillDestInRange( x, y, 170. )

        call GroupEnumUnitsInRange( REAS1___gr, x, y, 170., Condition( function REAS1___Cond1 ) )
        loop
            set cjlocgn_00000000 = FirstOfGroup( REAS1___gr )
            exitwhen( cjlocgn_00000000 == null )

            if not( LoadBoolean( HT, GetHandleId( cjlocgn_00000000 ), StringHash( "ReasWave" ) ) ) then
                call DamageLib_SpellDamage( cst, cjlocgn_00000000, dmg )
                call X_ThrowUp( cjlocgn_00000000, 100., 0.4 )
             //   call Stun_Target( cst, cjlocgn_00000000, 1.3 )
                call StunUnit(cjlocgn_00000000,1.3)
                call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Undead\\Impale\\ImpaleMissTarget.mdl", x, y ) )
    
                call SaveBoolean( HT, GetHandleId( cjlocgn_00000000 ), StringHash( "ReasWave" ), TRUE )
                set ti = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( ti ), StringHash( "2" ), cjlocgn_00000000 )
                call TimerStart( ti, 1., false, function REAS1___RemoveAttacked )
            endif
            call GroupRemoveUnit( REAS1___gr, cjlocgn_00000000 )
        endloop
        set x = x + 80. * Cos( angle * bj_DEGTORAD )
        set y = y + 80. * Sin( angle * bj_DEGTORAD )
        set dist = dist + ( 80. )
        call SetUnitX( arrow, x )
        call SetUnitY( arrow, y )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\BloodEX.mdl", x, y ) )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), dist )
    else
        call GroupClear( REAS1___gr ) //добавил чистку группы
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
        call RemoveUnit( arrow )
    endif
    set ti = null
    set t = null
    set cst = null
    set arrow = null
endfunction
function REAS1___Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local real cjlocgn_00000005
    local real cjlocgn_00000006
    local timer cjlocgn_00000007
    local unit cjlocgn_00000008
    
    if GetSpellAbilityId( ) == 'A04H' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = GetUnitX( cjlocgn_00000000 )
        set cjlocgn_00000002 = GetUnitY( cjlocgn_00000000 )
        set cjlocgn_00000003 = bj_RADTODEG * Atan2( GetSpellTargetY( ) - cjlocgn_00000002, GetSpellTargetX( ) - cjlocgn_00000001 )
        set cjlocgn_00000004 = cjlocgn_00000001 + 800. * Cos( cjlocgn_00000003 * bj_DEGTORAD )
        set cjlocgn_00000005 = cjlocgn_00000002 + 800. * Sin( cjlocgn_00000003 * bj_DEGTORAD )
        set cjlocgn_00000006 = GetHeroInt( cjlocgn_00000000, true ) * 0.0 + GetHeroStr( cjlocgn_00000000, true ) * 1.7
        set cjlocgn_00000007 = CreateTimer( )
        set cjlocgn_00000008 = CreateUnit( GetOwningPlayer( cjlocgn_00000000 ), 'hfoo', cjlocgn_00000001, cjlocgn_00000002, cjlocgn_00000003 )
        call PauseUnit( cjlocgn_00000000, TRUE )
        call SetUnitFacing( cjlocgn_00000000, cjlocgn_00000003 )
        call SetUnitAnimation( cjlocgn_00000000, "attack slam" )
        call TriggerSleepAction( 0.2 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "x" ), cjlocgn_00000001 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "y" ), cjlocgn_00000002 )
        call SavePlayerHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "p" ), GetOwningPlayer( cjlocgn_00000000 ) )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "333" ), cjlocgn_00000000 )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_1" ), cjlocgn_00000008 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "22" ), cjlocgn_00000006 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "1" ), cjlocgn_00000003 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "dist" ), 0. )
        call TimerStart( cjlocgn_00000007, 0.04, TRUE, function REAS1___CreatePartOfWave )
        call PauseUnit( cjlocgn_00000000, FALSE )
        call IssueImmediateOrderById( cjlocgn_00000000, 851972 )
        //call IssueImmediateOrderById( cjlocgn_00000000, 851972 )
    
        set cjlocgn_00000007 = null
        set cjlocgn_00000000 = null
    endif
endfunction
function REAS1___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function REAS1___Act )
endfunction
function REAS5_preload takes nothing returns nothing
endfunction
function REAS5___GetUnitZ takes unit u returns real
    local location l = GetUnitLoc( u )
    local real z = GetLocationZ( l )
    call RemoveLocation( l )
    set l = null
    return z
endfunction
function REAS5___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = ( IsPlayerAlly( GetOwningPlayer( u ), REAS5___ch_p ) or REAS5___ch_p == GetOwningPlayer( u ) )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0
    set u = null
    return b
endfunction

function REAS5___Act takes nothing returns nothing
    local unit killer = GetKillingUnit( )
    local unit killed = GetTriggerUnit( )
    local unit cjlocgn_00000000
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local lightning cjlocgn_00000005
    if IsUnitType( killed, UNIT_TYPE_HERO )and GetUnitAbilityLevel( killer, REAS5___a_r ) > 0 then
        set cjlocgn_00000001 = GetHeroStr( killer, TRUE ) * REAS5___per_str
        set cjlocgn_00000002 = GetUnitX( killer )
        set cjlocgn_00000003 = GetUnitY( killer )
        set cjlocgn_00000004 = REAS5___GetUnitZ( killer )
        set cjlocgn_00000005 = null
        set REAS5___ch_p = GetOwningPlayer( killer )
        call GroupEnumUnitsInRange( REAS5___g, GetUnitX( killer ), GetUnitY( killer ), REAS5___aoe, Condition( function REAS5___Cond1 ) )
        //set cjlocgn_00000000 = FirstOfGroup(REAS5___g)
        loop
            set cjlocgn_00000000 = FirstOfGroup( REAS5___g )
            exitwhen( cjlocgn_00000000 == null )
            set cjlocgn_00000005 = AddLightningEx( "AFOD", TRUE, cjlocgn_00000002, cjlocgn_00000003, cjlocgn_00000004, GetUnitX( cjlocgn_00000000 ), GetUnitY( cjlocgn_00000000 ), REAS5___GetUnitZ( cjlocgn_00000000 ) )
          //  call X_KillLightning( cjlocgn_00000005 )
            call AddTimeLightning(cjlocgn_00000005, 0.5)

            set cjlocgn_00000005 = null
            call DamageLib_SpellHeal( killer, cjlocgn_00000000, -cjlocgn_00000001 )
            call DestroyEffect( AddSpecialEffectTarget( REAS5___e, cjlocgn_00000000, "chest" ) )
            call GroupRemoveUnit( REAS5___g, cjlocgn_00000000 )
        endloop
        call GroupClear( REAS5___g ) //add clear
    endif
    set killer = null
    set killed = null
endfunction

function REAS5___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( Trg, function REAS5___Act )
endfunction
function SHAS1_preload takes nothing returns nothing
   
endfunction
function SHAS1___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), SHAS1___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
function SHAS1___RemoveAttacked takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "2" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "dirtwave" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction
function SHAS1___CreatePartOfWave takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local real x = LoadReal( HT, GetHandleId( t ), StringHash( "x" ) )
    local real y = LoadReal( HT, GetHandleId( t ), StringHash( "y" ) )
    local player p = LoadPlayerHandle( HT, GetHandleId( t ), StringHash( "p" ) )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "333" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "22" ) )
    local real angle = LoadReal( HT, GetHandleId( t ), StringHash( "1" ) )
    local real dist = LoadReal( HT, GetHandleId( t ), StringHash( "dist" ) )
    local unit arrow = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local timer ti
    local unit cjlocgn_00000000
    if dist <= 1000.then
        set SHAS1___ch_p = p
        call Dest_KillDestInRange( x, y, 300. )
        call GroupEnumUnitsInRange( SHAS1___gr, x, y, 300., Condition( function SHAS1___Cond1 ) )
       // set cjlocgn_00000000 = FirstOfGroup(SHAS1___gr)
        loop
            set cjlocgn_00000000 = FirstOfGroup( SHAS1___gr )
            exitwhen( cjlocgn_00000000 == null )
            if not( LoadBoolean( HT, GetHandleId( cjlocgn_00000000 ), StringHash( "dirtwave" ) ) ) then
                call DamageLib_SpellDamage( cst, cjlocgn_00000000, dmg )
                call SaveBoolean( HT, GetHandleId( cjlocgn_00000000 ), StringHash( "dirtwave" ), TRUE )
                set ti = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( ti ), StringHash( "2" ), cjlocgn_00000000 )
                call TimerStart( ti, 1., false, function SHAS1___RemoveAttacked )
            endif
            call GroupRemoveUnit( SHAS1___gr, cjlocgn_00000000 )
        endloop
        set x = x + 90. * Cos( angle * bj_DEGTORAD )
        set y = y + 90. * Sin( angle * bj_DEGTORAD )
        set dist = dist + ( 90. )
        call SetUnitX( arrow, x )
        call SetUnitY( arrow, y )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\NewDirtEXNofire.mdx", x, y ) )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), dist )
    else
        call GroupClear( SHAS1___gr ) //add clear
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
        call RemoveUnit( arrow )
    endif
    set ti = null
    set t = null
    set cst = null
    set arrow = null
endfunction

function SHAS1___Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local real cjlocgn_00000005
    local real cjlocgn_00000006
    local timer cjlocgn_00000007
    local unit cjlocgn_00000008
    if GetSpellAbilityId( ) == 'A025' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = GetUnitX( cjlocgn_00000000 )
        set cjlocgn_00000002 = GetUnitY( cjlocgn_00000000 )
        set cjlocgn_00000003 = bj_RADTODEG * Atan2( GetSpellTargetY( ) - cjlocgn_00000002, GetSpellTargetX( ) - cjlocgn_00000001 )
        set cjlocgn_00000004 = cjlocgn_00000001 + 1000. * Cos( cjlocgn_00000003 * bj_DEGTORAD )
        set cjlocgn_00000005 = cjlocgn_00000002 + 1000. * Sin( cjlocgn_00000003 * bj_DEGTORAD )
        set cjlocgn_00000006 = GetHeroInt( cjlocgn_00000000, true ) * 0.0 + GetHeroStr( cjlocgn_00000000, true ) * 1.8
        set cjlocgn_00000007 = CreateTimer( )
        set cjlocgn_00000008 = CreateUnit( GetOwningPlayer( cjlocgn_00000000 ), 'hfoo', cjlocgn_00000001, cjlocgn_00000002, cjlocgn_00000003 )
        call PauseUnit( cjlocgn_00000000, TRUE )
        call SetUnitFacing( cjlocgn_00000000, cjlocgn_00000003 )
        call SetUnitAnimation( cjlocgn_00000000, "attack slam" )
        call TriggerSleepAction( 0.2 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "x" ), cjlocgn_00000001 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "y" ), cjlocgn_00000002 )
        call SavePlayerHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "p" ), GetOwningPlayer( cjlocgn_00000000 ) )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "333" ), cjlocgn_00000000 )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_1" ), cjlocgn_00000008 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "22" ), cjlocgn_00000006 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "1" ), cjlocgn_00000003 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "dist" ), 0. )
        call TimerStart( cjlocgn_00000007, 0.04, TRUE, function SHAS1___CreatePartOfWave )
        call PauseUnit( cjlocgn_00000000, FALSE )
        call IssueImmediateOrderById( cjlocgn_00000000, 851972 )
        set cjlocgn_00000007 = null
        set cjlocgn_00000000 = null
    endif
endfunction
function SHAS1___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function SHAS1___Act )
endfunction
function SHAS2_preload takes nothing returns nothing
endfunction
function SHAS2___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), SHAS2___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
function SHAS2___Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local group cjlocgn_00000003
    local unit cjlocgn_00000004
    local real cjlocgn_00000005
    local unit cjlocgn_00000006
    if GetSpellAbilityId( ) == 'A02F' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = GetUnitX( cjlocgn_00000000 )
        set cjlocgn_00000002 = GetUnitY( cjlocgn_00000000 )
        set cjlocgn_00000003 = CreateGroup( )
        set cjlocgn_00000005 = GetHeroStr( cjlocgn_00000000, true ) * 2.0
        call PauseUnit( cjlocgn_00000000, TRUE )
        call SetUnitAnimationByIndex( cjlocgn_00000000, 10 )
        call TriggerSleepAction( 0.35 )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\EarthNova.mdx", cjlocgn_00000001, cjlocgn_00000002 ) )
        call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl", cjlocgn_00000001, cjlocgn_00000002 ) )
        call PauseUnit( cjlocgn_00000000, FALSE )
        call SetUnitAnimation( cjlocgn_00000000, "stand" )
        call IssueImmediateOrderById( cjlocgn_00000000, 851972 )
        set SHAS2___ch_p = GetOwningPlayer( cjlocgn_00000000 )
        call Dest_KillDestInRange( cjlocgn_00000001, cjlocgn_00000002, 500. )
        call GroupEnumUnitsInRange( cjlocgn_00000003, cjlocgn_00000001, cjlocgn_00000002, 500., Condition( function SHAS2___Cond1 ) )
        //set cjlocgn_00000004 = FirstOfGroup(cjlocgn_00000003)
        loop
            set cjlocgn_00000004 = FirstOfGroup( cjlocgn_00000003 )
            exitwhen( cjlocgn_00000004 == null )
            call UnitDamageTarget( cjlocgn_00000000, cjlocgn_00000004, cjlocgn_00000005, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
            set cjlocgn_00000006 = CreateUnit( GetOwningPlayer( cjlocgn_00000000 ), 'hfoo', cjlocgn_00000001, cjlocgn_00000002, 0. )
            call UnitAddAbility( cjlocgn_00000006, 'A006' )
            call X_ApplyLife( cjlocgn_00000006 )
            call IssueTargetOrderById( cjlocgn_00000006, 852075, cjlocgn_00000004 )
            
            call GroupRemoveUnit( cjlocgn_00000003, cjlocgn_00000004 )
        endloop
        call GroupClear( cjlocgn_00000003 )
        call DestroyGroup( cjlocgn_00000003 )
        set cjlocgn_00000006 = null
        set cjlocgn_00000000 = null
        set cjlocgn_00000004 = null
        set cjlocgn_00000003 = null
    endif
endfunction

function SHAS2___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function SHAS2___Act )
endfunction

function SHAS3_preload takes nothing returns nothing
    call X_PreloadAbility( 'A02K' )
    call X_PreloadAbility( 'A02L' )
endfunction

function SHAS3___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), SHAS3___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
function SHAS3___Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local unit cjlocgn_00000005
    local real cjlocgn_00000006
    local real cjlocgn_00000007
    local unit cjlocgn_00000008
    if GetSpellAbilityId( ) == 'A02J' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = GetSpellTargetX( )
        set cjlocgn_00000002 = GetSpellTargetY( )
        set cjlocgn_00000003 = GetUnitX( cjlocgn_00000000 )
        set cjlocgn_00000004 = GetUnitY( cjlocgn_00000000 )
        set cjlocgn_00000006 = SquareRoot( ( cjlocgn_00000001 - cjlocgn_00000003 ) * ( cjlocgn_00000001 - cjlocgn_00000003 ) + ( cjlocgn_00000002 - cjlocgn_00000004 ) * ( cjlocgn_00000002 - cjlocgn_00000004 ) )
        set cjlocgn_00000007 = GetHeroStr( cjlocgn_00000000, true ) * 1.7 + GetHeroInt( cjlocgn_00000000, true ) * 0.6
        set cjlocgn_00000008 = CreateUnit( GetOwningPlayer( cjlocgn_00000000 ), 'hfoo', cjlocgn_00000003, cjlocgn_00000004, 0. )
        call UnitAddAbility( cjlocgn_00000008, 'A02L' )
        call SetUnitScale( cjlocgn_00000008, 2., 2., 2. )
        call IssuePointOrderById( cjlocgn_00000008, 852652, cjlocgn_00000001, cjlocgn_00000002 )
        call X_ApplyLife( cjlocgn_00000008 )

        call TriggerSleepAction( 0.01 )
        call IssueImmediateOrderById( cjlocgn_00000000, 851972 )
        call TriggerSleepAction( cjlocgn_00000006 / 1400. )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\NewDirtEXNofire.mdx", cjlocgn_00000001, cjlocgn_00000002 ) )
        set SHAS3___ch_p = GetOwningPlayer( cjlocgn_00000000 )
        call Dest_KillDestInRange( cjlocgn_00000001, cjlocgn_00000002, 300. )

        call GroupEnumUnitsInRange( SHAS3___g, cjlocgn_00000001, cjlocgn_00000002, 300., Condition( function SHAS3___Cond1 ) )
       // set cjlocgn_00000005 = FirstOfGroup(SHAS3___g)
        loop
            set cjlocgn_00000005 = FirstOfGroup( SHAS3___g )
            exitwhen( cjlocgn_00000005 == null )
            call DamageLib_SpellDamage( cjlocgn_00000000, cjlocgn_00000005, cjlocgn_00000007 )
            set cjlocgn_00000008 = CreateUnit( GetOwningPlayer( cjlocgn_00000000 ), 'hfoo', cjlocgn_00000001, cjlocgn_00000002, 0. )
            call UnitAddAbility( cjlocgn_00000008, 'A02K' )
            call X_ApplyLife( cjlocgn_00000008 )
            call IssueTargetOrderById( cjlocgn_00000008, 852149, cjlocgn_00000005 )

         //   call Stun_Target( cjlocgn_00000000, cjlocgn_00000005, 1. )
            call StunUnit(cjlocgn_00000005,1.0)

            call GroupRemoveUnit( SHAS3___g, cjlocgn_00000005 )
        endloop
        call GroupClear( SHAS3___g ) //add clear
        set cjlocgn_00000008 = null
        set cjlocgn_00000000 = null
        set cjlocgn_00000005 = null
    endif
endfunction
function SHAS3___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function SHAS3___Act )
endfunction
function TEHS1_preload takes nothing returns nothing
    call X_PreloadAbility( 'A039' )
endfunction
function TEHS1___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), TEHS1___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
function TEHS1___ReleazeMissile takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local player o = LoadPlayerHandle( HT, GetHandleId( t ), StringHash( "owner" ) )
    local unit c = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "c" ) )
    local real X = LoadReal( HT, GetHandleId( t ), StringHash( "X" ) )
    local real Y = LoadReal( HT, GetHandleId( t ), StringHash( "Y" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "dmg" ) )
    local unit FoG
    local unit d
    set TEHS1___ch_p = o
    call Dest_KillDestInRange( X, Y, 200. )
    call GroupEnumUnitsInRange( TEHS1___gr, X, Y, 200., Condition( function TEHS1___Cond1 ) )

    loop
        set FoG = FirstOfGroup( TEHS1___gr )
        exitwhen( FoG == null )
        set d = CreateUnit( GetOwningPlayer( c ), 'hfoo', X, Y, 0. )
        call UnitAddAbility( d, 'A006' )
        call X_ApplyLife( d )
        call IssueTargetOrderById( d, 852075, FoG )
        set d = null
        call DamageLib_SpellDamage( c, FoG, dmg )
        call GroupRemoveUnit( TEHS1___gr, FoG )
    endloop
    call GroupClear( TEHS1___gr )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set c = null
    set t = null
endfunction

function TEHS1___CreateMissile takes real cX, real cY, real tX, real tY, player owner, real dmg, unit c returns nothing
    local timer t = CreateTimer( )
    local real rX = GetRandomReal( 0., 400. / 2 )
    local real rY = GetRandomReal( 0., 400. / 2 )
    local real rA = GetRandomReal( 0., 359.99 )
    local real X = tX + rX * Cos( rA * bj_DEGTORAD )
    local real Y = tY + rY * Sin( rA * bj_DEGTORAD )
    local real dist = SquareRoot( ( cX - X ) * ( cX - X ) + ( cY - Y ) * ( cY - Y ) )
    local unit dummy = CreateUnit( owner, 'hfoo', cX, cY, 0. )
    call X_ApplyLife( dummy )
    call UnitAddAbility( dummy, 'A039' )
    call IssuePointOrderById( dummy, 852652, X, Y )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "c" ), c )
    call SavePlayerHandle( HT, GetHandleId( t ), StringHash( "owner" ), owner )
    call SaveReal( HT, GetHandleId( t ), StringHash( "X" ), X )
    call SaveReal( HT, GetHandleId( t ), StringHash( "Y" ), Y )
    call SaveReal( HT, GetHandleId( t ), StringHash( "dmg" ), dmg )
    call TimerStart( t, dist / 1500., FALSE, function TEHS1___ReleazeMissile )
    set dummy = null
    set t = null
endfunction

function TEHS1___Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local integer cjlocgn_00000004
    if GetSpellAbilityId( ) == 'A038' or GetSpellAbilityId( ) == 'A03C' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = GetSpellTargetX( )
        set cjlocgn_00000002 = GetSpellTargetY( )
        set cjlocgn_00000003 = ( GetHeroInt( cjlocgn_00000000, true ) ) * 1.4
        if GetSpellAbilityId( ) == 'A03C' then
            set cjlocgn_00000003 = ( GetHeroInt( cjlocgn_00000000, true ) ) * 2.
        endif
        set cjlocgn_00000004 = 1
        loop
            exitwhen( cjlocgn_00000004 > 8 )
            call TriggerSleepAction( 0.03 )
            if GetUnitState( cjlocgn_00000000, UNIT_STATE_LIFE ) > 0.405 then
                call TEHS1___CreateMissile( GetUnitX( cjlocgn_00000000 ), GetUnitY( cjlocgn_00000000 ), cjlocgn_00000001, cjlocgn_00000002, GetOwningPlayer( cjlocgn_00000000 ), cjlocgn_00000003, cjlocgn_00000000 )
            endif
            set cjlocgn_00000004 = cjlocgn_00000004 + 1
        endloop
        call IssueImmediateOrderById( cjlocgn_00000000, 851972 )
        set cjlocgn_00000000 = null
    endif
endfunction

function TEHS1___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function TEHS1___Act )
endfunction


function TEHS2_preload takes nothing returns nothing
endfunction

function TEHS2___Act takes nothing returns nothing
    local unit caster
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local integer cjlocgn_00000003
    local unit cjlocgn_00000004
    local integer turelLvl
    if GetSpellAbilityId( ) == 'A03D' or GetSpellAbilityId( ) == 'A03E' then
        set caster = GetTriggerUnit( )
        set cjlocgn_00000001 = GetUnitX( caster )
        set cjlocgn_00000002 = GetUnitY( caster )
        set turelLvl = 1 + R2I( I2R( GetUnitLevel( caster ) ) / I2R( 5 ) )
        if turelLvl > 10 then
            set turelLvl = 10
        endif
        set cjlocgn_00000003 = TEHS2___turrel_id[turelLvl]
        set cjlocgn_00000004 = CreateUnit( GetOwningPlayer( caster ), cjlocgn_00000003, cjlocgn_00000001, cjlocgn_00000002, 0. )
        call UnitApplyTimedLife( cjlocgn_00000004, 'BTLF', 20. )
        set cjlocgn_00000004 = null
        set caster = null
    endif
endfunction

function TEHS2___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function TEHS2___Act )
    set TEHS2___turrel_id[1] = 'h00C'
    set TEHS2___turrel_id[2] = 'h00D'
    set TEHS2___turrel_id[3] = 'h00E'
    set TEHS2___turrel_id[4] = 'h00F'
    set TEHS2___turrel_id[5] = 'h00G'
    set TEHS2___turrel_id[6] = 'h00H'
    set TEHS2___turrel_id[7] = 'h00I'
    set TEHS2___turrel_id[8] = 'h00J'
    set TEHS2___turrel_id[9] = 'h00K'
    set TEHS2___turrel_id[10] = 'h00L'
    set Trg = null
endfunction


function TEHS3_preload takes nothing returns nothing
    local unit d
    set d = CreateUnit( Player( 13 ), 'h009', 0., 0., 0. )
    call RemoveUnit( d )
    set d = CreateUnit( Player( 13 ), 'h00A', 0., 0., 0. )
    call RemoveUnit( d )
    set d = null
endfunction

function TEHS3___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), TEHS3___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function TEHS3___Count takes nothing returns nothing
    local destructable dt = GetEnumDestructable( )
    if GetDestructableTypeId( dt ) == 'ATtr' then
        set TEHS3___dest_counter = TEHS3___dest_counter + 1
    endif
    set dt = null
endfunction

function TEHS3___DelChain takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit elem
    local unit head = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_8" ) )
    local unit head2 = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_17" ) )
    local integer now_chains = LoadInteger( HT, GetHandleId( t ), StringHash( "H_10" ) )
    local timer ti = LoadTimerHandle( HT, GetHandleId( t ), StringHash( "H_9" ) )
    local unit FoG = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    if FoG == cst then
        if now_chains > 0 then
            set elem = LoadUnitHandle( HT, GetHandleId( ti ), StringHash( "Elem_" + I2S( LoadInteger( HT, GetHandleId( t ), StringHash( "H_16" ) ) + 1 - now_chains ) ) )
            call SetUnitPosition( head, GetUnitX( elem ), GetUnitY( elem ) )
            call SetUnitPosition( FoG, GetUnitX( elem ), GetUnitY( elem ) )
            call RemoveUnit( elem )
            set now_chains = now_chains - 1
            call SaveInteger( HT, GetHandleId( t ), StringHash( "H_10" ), now_chains )
        else
            call PauseUnit( cst, FALSE )
            call IssueImmediateOrderById( cst, 851972 )
            call SetUnitPathing( cst, TRUE )
            call RemoveUnit( head )
            call RemoveUnit( head2 )
            call FlushChildHashtable( HT, GetHandleId( ti ) )
            //почему 2 таймера
            call PauseTimer( ti )
            call DestroyTimer( ti )
            call FlushChildHashtable( HT, GetHandleId( t ) )

            call PauseTimer( t )
            call DestroyTimer( t )
            set cst = null
        endif
    else
        if now_chains > 0 then
            set elem = LoadUnitHandle( HT, GetHandleId( ti ), StringHash( "Elem_" + I2S( now_chains ) ) )
            call SetUnitPosition( head, GetUnitX( elem ), GetUnitY( elem ) )
            call SetUnitPosition( FoG, GetUnitX( elem ), GetUnitY( elem ) )
            call RemoveUnit( elem )
            set now_chains = now_chains - 1
            call SaveInteger( HT, GetHandleId( t ), StringHash( "H_10" ), now_chains )
        else
            call PauseUnit( cst, FALSE )
            if FoG != null then
                call PauseUnit( FoG, FALSE )
                call SetUnitPathing( FoG, TRUE )
                call IssueTargetOrderById( cst, 851983, FoG )
            else
                call IssueImmediateOrderById( cst, 851972 )
               
            endif
            call RemoveUnit( head )
            call FlushChildHashtable( HT, GetHandleId( ti ) )
            call PauseTimer( ti )
            call DestroyTimer( ti )
            call FlushChildHashtable( HT, GetHandleId( t ) )
            call PauseTimer( t )
            call DestroyTimer( t )
            set cst = null
        endif
    endif
    set FoG = null
    set t = null
    set elem = null
    set head = null
    set ti = null
endfunction

function TEHS3___Chain takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real now_dist = LoadReal( HT, GetHandleId( t ), StringHash( "H_11" ) )
    local real dist = LoadReal( HT, GetHandleId( t ), StringHash( "H_7" ) )
    local real cX = LoadReal( HT, GetHandleId( t ), StringHash( "H_12" ) )
    local real cY = LoadReal( HT, GetHandleId( t ), StringHash( "H_13" ) )
    local real speed = LoadReal( HT, GetHandleId( t ), StringHash( "H_9" ) )
    local real angle = LoadReal( HT, GetHandleId( t ), StringHash( "H_14" ) )
    local unit head = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_8" ) )
    local integer now_chains = LoadInteger( HT, GetHandleId( t ), StringHash( "H_10" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_6" ) )
    local unit elem
    local rect r = Rect( cX - 110., cY - 110., cX + 110., cY + 110. )
    local timer ti
    local unit FoG
    set TEHS3___dest_counter = 0
    call EnumDestructablesInRect( r, null, function TEHS3___Count )
    set TEHS3___ch_p = GetOwningPlayer( cst )
    call GroupEnumUnitsInRange( TEHS3___gr, cX, cY, 110., Condition( function TEHS3___Cond1 ) )

    set FoG = FirstOfGroup( TEHS3___gr )
    if LoadInteger( HT, GetHandleId( t ), StringHash( "H_15" ) ) == 1 then
        if now_dist < dist and FoG == null and TEHS3___dest_counter == 0 then
            set now_chains = now_chains + 1
            set elem = CreateUnit( GetOwningPlayer( cst ), 'h009', cX, cY, angle )
            if speed == 100.then
                call SetUnitScale( elem, 4., 4., 4. )
            endif
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "Elem_" + I2S( now_chains ) ), elem )
            set cX = cX + speed * Cos( angle * bj_DEGTORAD )
            set cY = cY + speed * Sin( angle * bj_DEGTORAD )
            set now_dist = now_dist + ( speed )
            call SetUnitPosition( head, cX, cY )
            call SaveInteger( HT, GetHandleId( t ), StringHash( "H_10" ), now_chains )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_12" ), cX )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_13" ), cY )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_11" ), now_dist )
        else
            if TEHS3___dest_counter == 0 then
                call PauseTimer( t )
                set ti = t
                set t = CreateTimer( )
                call SaveTimerHandle( HT, GetHandleId( t ), StringHash( "H_9" ), ti )
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_8" ), head )
                call SaveInteger( HT, GetHandleId( t ), StringHash( "H_10" ), now_chains )
                call SaveInteger( HT, GetHandleId( t ), StringHash( "H_16" ), now_chains )
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), cst )

                if FoG != null and GetUnitTypeId( FoG ) != 'ncp2' then
                    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ), FoG )
                    call DestroyEffect( AddSpecialEffectTarget( "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", FoG, "chest" ) )
                    call DamageLib_SpellDamage( cst, FoG, dmg )
                    call PauseUnit( FoG, TRUE )
                    call SetUnitPathing( FoG, FALSE )
                endif
                call TimerStart( t, 0.04, TRUE, function TEHS3___DelChain )
                set ti = null
            else
                call PauseTimer( t )
                set ti = t
                set t = CreateTimer( )
                call SaveTimerHandle( HT, GetHandleId( t ), StringHash( "H_9" ), ti )
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_17" ), head )
                set head = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "Elem_1" ) )
                if head != null then
                    call BJDebugMsg( "test hook" )
                endif
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_8" ), head )
                call SaveInteger( HT, GetHandleId( t ), StringHash( "H_10" ), now_chains )
                call SaveInteger( HT, GetHandleId( t ), StringHash( "H_16" ), now_chains )
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), cst )
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ), cst )
                call PauseUnit( cst, TRUE )
                call SetUnitPathing( cst, FALSE )
                call TimerStart( t, 0.04, TRUE, function TEHS3___DelChain )
                set ti = null
            endif
        endif
    else
        if now_dist < dist and FoG == null then
            set now_chains = now_chains + 1
            set elem = CreateUnit( GetOwningPlayer( cst ), 'h009', cX, cY, angle )
            call Dest_KillDestInRange( cX, cY, 110. )
            if speed == 100.then
                call SetUnitScale( elem, 4., 4., 4. )
            endif
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "Elem_" + I2S( now_chains ) ), elem )
            set cX = cX + speed * Cos( angle * bj_DEGTORAD )
            set cY = cY + speed * Sin( angle * bj_DEGTORAD )
            set now_dist = now_dist + ( speed )
            call SetUnitPosition( head, cX, cY )
            call SaveInteger( HT, GetHandleId( t ), StringHash( "H_10" ), now_chains )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_12" ), cX )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_13" ), cY )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_11" ), now_dist )
        else
            call PauseTimer( t )
            set ti = t
            set t = CreateTimer( )
            call SaveTimerHandle( HT, GetHandleId( t ), StringHash( "H_9" ), ti )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_8" ), head )
            call SaveInteger( HT, GetHandleId( t ), StringHash( "H_10" ), now_chains )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), cst )
            if FoG != null and GetUnitTypeId( FoG ) != 'ncp2' then
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ), FoG )
                call DestroyEffect( AddSpecialEffectTarget( "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", FoG, "chest" ) )
                call DamageLib_SpellDamage( cst, FoG, dmg )
                call PauseUnit( FoG, TRUE )
                call SetUnitPathing( FoG, FALSE )
            endif
            call TimerStart( t, 0.04, TRUE, function TEHS3___DelChain )
            set ti = null
        endif
    endif
    call GroupClear( TEHS3___gr )
    call RemoveRect( r )
    set FoG = null
    set t = null
    set cst = null
    set head = null
    set elem = null
    set r = null
endfunction
function TEHS3___Unpause takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    call PauseUnit( u, FALSE )
    call IssueImmediateOrderById( u, 851972 )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction
function TEHS3___Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local real cjlocgn_00000005
    local real cjlocgn_00000006
    local real cjlocgn_00000007
    local unit cjlocgn_00000008
    local real cjlocgn_00000009
    local timer cjlocgn_0000000a
    if GetSpellAbilityId( ) == 'A03F' or GetSpellAbilityId( ) == 'A03G' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = GetUnitX( cjlocgn_00000000 )
        set cjlocgn_00000002 = GetUnitY( cjlocgn_00000000 )
        set cjlocgn_00000003 = GetSpellTargetX( )
        set cjlocgn_00000004 = GetSpellTargetY( )
        set cjlocgn_00000005 = bj_RADTODEG * Atan2( cjlocgn_00000004 - cjlocgn_00000002, cjlocgn_00000003 - cjlocgn_00000001 )
        set cjlocgn_00000006 = GetHeroStr( cjlocgn_00000000, TRUE ) * 1.0
        if GetSpellAbilityId( ) == 'A03G' then
            set cjlocgn_00000006 = GetHeroStr( cjlocgn_00000000, TRUE ) * 1.3
        endif
        set cjlocgn_00000007 = SquareRoot( ( cjlocgn_00000003 - cjlocgn_00000001 ) * ( cjlocgn_00000003 - cjlocgn_00000001 ) + ( cjlocgn_00000004 - cjlocgn_00000002 ) * ( cjlocgn_00000004 - cjlocgn_00000002 ) )
        if cjlocgn_00000007 > 1200.then
            set cjlocgn_00000007 = 1200.
        endif
        set cjlocgn_00000008 = CreateUnit( GetOwningPlayer( cjlocgn_00000000 ), 'h00A', cjlocgn_00000001, cjlocgn_00000002, cjlocgn_00000005 )
        set cjlocgn_00000009 = 80.
        if GetSpellAbilityId( ) == 'A03G' then
            set cjlocgn_00000009 = 100.
            call SetUnitScale( cjlocgn_00000008, 4., 4., 4. )
        endif
        set cjlocgn_0000000a = CreateTimer( )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_1" ), cjlocgn_00000000 )
        call SaveReal( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_2" ), cjlocgn_00000001 )
        call SaveReal( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_3" ), cjlocgn_00000002 )
        call SaveReal( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_4" ), cjlocgn_00000003 )
        call SaveReal( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_5" ), cjlocgn_00000004 )
        call SaveReal( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_6" ), cjlocgn_00000006 )
        call SaveReal( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_7" ), cjlocgn_00000007 )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_8" ), cjlocgn_00000008 )
        call SaveReal( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_9" ), cjlocgn_00000009 )
        call SaveInteger( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_10" ), 0 )
        call SaveReal( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_11" ), 0. )
        call SaveReal( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_12" ), cjlocgn_00000001 )
        call SaveReal( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_13" ), cjlocgn_00000002 )
        call SaveReal( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_14" ), cjlocgn_00000005 )
        call TimerStart( cjlocgn_0000000a, 0.04, TRUE, function TEHS3___Chain )
        call PauseUnit( cjlocgn_00000000, TRUE )
        if GetSpellAbilityId( ) == 'A03F' then
            call SetUnitAnimationByIndex( cjlocgn_00000000, 5 )
            call SaveInteger( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_15" ), 1 )
        else
            call SetUnitAnimationByIndex( cjlocgn_00000000, 16 )
            call SaveInteger( HT, GetHandleId( cjlocgn_0000000a ), StringHash( "H_15" ), 2 )
        endif
        set cjlocgn_00000000 = null
        set cjlocgn_00000008 = null
        set cjlocgn_0000000a = null
    endif
endfunction
function TEHS3___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function TEHS3___Act )
endfunction

function TKLS3_preload takes nothing returns nothing
    call X_PreloadAbility( 'A04E' )
    set TKLS3___d = CreateUnit( Player( PLAYER_NEUTRAL_PASSIVE ), 'hfoo', 0., 0., 0. )
    call UnitAddAbility( TKLS3___d, 'A04E' )
    call X_ApplyLife( TKLS3___d )
endfunction


function TKLS3___ReduceSlowness takes nothing returns nothing
    local integer i = TKLS3___count_units
    loop
        exitwhen( i == 0 )
        if TKLS3___slowness[i] > 0 then
            set TKLS3___slowness[i] = TKLS3___slowness[i] - 1
        endif
        set i = i - 1
    endloop
endfunction

function TKLS3___onTimer takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), TKLS3___h_u )
    local integer id = LoadInteger( HT, GetHandleId( t ), TKLS3___h_id )

    if TKLS3___slowness[id] <= 0 then
        //call DisplayTextToForce( GetPlayersAll(), "slownes_id" + GetUnitName(u) + I2S(TKLS3___slowness[id]) )

        if TKLS3___count_units > 0 then
            set TKLS3___count_units = TKLS3___count_units - 1
        //    call DisplayTextToForce( GetPlayersAll(), "кол-во заморозки -1_" + I2S(TKLS3___count_units ) )

        endif

        set TKLS3___slowed[id] = null

        if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false and IsUnitType( u, UNIT_TYPE_HERO) == true then

       
            call UnitRemoveAbility( u, 'A04E' )
            call UnitRemoveAbility( u, TKLS3___buff_id ) //хуй знает
       // call DisplayTextToForce( GetPlayersAll(), "удалилить замороку у живого героя " + GetUnitName(u) )
        // едиф опустил посте дестрой таймера
            call GroupRemoveUnit( TKLS3___slowed_units, u )
     // call DisplayTextToForce( GetPlayersAll(), "юнит удален из группы_slow  " +GetUnitName(u) )
            call FlushChildHashtable( HT, GetHandleId( t ) )
            call PauseTimer( t )
            call DestroyTimer( t )

        endif



        if IsUnitType( u, UNIT_TYPE_HERO) == false and ( GetWidgetLife( u ) <= 0.405 or IsUnitType( u, UNIT_TYPE_DEAD ) == false ) then
           // call DisplayTextToForce( GetPlayersAll(), "юнит удален из группы_slow  " +GetUnitName(u) )
            //call UnitRemoveAbility( u, 'A04E' )
            call GroupRemoveUnit( TKLS3___slowed_units, u )
            call FlushChildHashtable( HT, GetHandleId( t ) )
            call PauseTimer( t )
            call DestroyTimer( t )
        endif
       

    else

        if TKLS3___slowness[id] > 0 then
            set TKLS3___slowness[id] = TKLS3___slowness[id] - 1
        endif

        if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then
            if GetUnitAbilityLevel( u, 'A04E' ) == 0 then
                call UnitAddAbility( u, 'A04E' )
            endif
        //    call DisplayTextToForce( GetPlayersAll(), "заморозка юнита_ " +GetUnitName(u) + I2S(TKLS3___slowness[id]) )

            call SetUnitAbilityLevel( u, 'A04E', TKLS3___slowness[id] )
            call SetUnitAbilityLevel( u, TKLS3___buff_id, TKLS3___slowness[id] )
            //меняет уровень бафа может быть фатал
        else
        
            set TKLS3___slowness[id] = 0
          //  call DisplayTextToForce( GetPlayersAll(), "slownes 0" +GetUnitName(u) + I2S(TKLS3___slowness[id]) )

        endif

    endif

    set t = null
    set u = null
endfunction

function TKLS3_Act takes unit u, integer modifer returns nothing
    local timer t = CreateTimer( )
    //СТАКИ ХУЙНИ ЗАМДЕЛЕНИЯ4
    local unit temp
    local integer i = 0
    local integer a = 0

    if TKLS6_metel then
        set modifer = modifer * 2
    endif

    if IsUnitInGroup( u, TKLS3___slowed_units ) then

        set i = TKLS3___count_units
        loop
            exitwhen( i <= 0 )
            set temp = TKLS3___slowed[i]
            if temp == u then
                set a = i
                set i = 0
            endif
            set i = i - 1
        endloop

        if temp == u then
            if TKLS3___slowness[a] + modifer > TKLS3___max_slowness then
                set TKLS3___slowness[a] = TKLS3___max_slowness
            else
                if ( TKLS3___slowness[a] - modifer ) < TKLS3___min_slowness then
                    set TKLS3___slowness[a] = TKLS3___min_slowness
                endif

            endif

        endif
    else

        call GroupAddUnit( TKLS3___slowed_units, u )
        set i = 1

        loop
            exitwhen( i > TKLS3___count_units )
            set temp = TKLS3___slowed[i]
            if temp == null then
                set a = i
                set i = 9999
            endif
            set i = i + 1
        endloop
        if i == 9999 then
            set TKLS3___slowed[a] = u
            set TKLS3___slowness[a] = modifer

        else
            set TKLS3___count_units = TKLS3___count_units + 1
            set TKLS3___slowed[TKLS3___count_units] = u
            set TKLS3___slowness[TKLS3___count_units] = modifer
            set a = TKLS3___count_units
        endif
        
        call SaveUnitHandle( HT, GetHandleId( t ), TKLS3___h_u, u )
        call SaveInteger( HT, GetHandleId( t ), TKLS3___h_id, a )
        call TimerStart( t, TKLS3___period, TRUE, function TKLS3___onTimer )

    endif
    set temp = null
    set t = null
endfunction

function TKLS3___I takes nothing returns nothing
    local timer t = CreateTimer( )
  //   call TimerStart( t, TKLS3___slow_time, TRUE, function TKLS3___ReduceSlowness )
    set t = null
endfunction

function ASSPreload_Go takes nothing returns nothing
    call ASSS1_preload( )
    call ASSS2_preload( )
    call ASSS3_preload( )
endfunction
function DRAPreload_Go takes nothing returns nothing
    call DRASp1Lib_preload( )
    call DRASp2Lib_preload( )
    call DRASp3Lib_preload( )
    call DRASp4Lib_preload( )
    call DRASp5Lib_preload( )
    call DRASp6Lib_preload( )
endfunction
function FLOS1_preload takes nothing returns nothing
endfunction


function FLOS1__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), FLOS1__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
function FLOS1__FLOS1_Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local group cjlocgn_00000005
    local unit cjlocgn_00000006
    local real cjlocgn_00000007
    if GetSpellAbilityId( ) == 'A01H' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = GetSpellTargetX( )
        set cjlocgn_00000002 = GetSpellTargetY( )
        set cjlocgn_00000003 = GetUnitX( cjlocgn_00000000 )
        set cjlocgn_00000004 = GetUnitY( cjlocgn_00000000 )
        set cjlocgn_00000005 = CreateGroup( )
        set cjlocgn_00000007 = GetHeroInt( cjlocgn_00000000, true ) * 2.5
        call DestroyEffect( AddSpecialEffect( "Units\\Demon\\Infernal\\InfernalBirth.mdl", cjlocgn_00000001, cjlocgn_00000002 ) )
        call TriggerSleepAction( 0.6 )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\NewGroundEX.mdl", cjlocgn_00000001, cjlocgn_00000002 ) )
        set FLOS1__ch_p = GetOwningPlayer( cjlocgn_00000000 )
        call Dest_KillDestInRange( cjlocgn_00000001, cjlocgn_00000002, 300. )
        call GroupEnumUnitsInRange( cjlocgn_00000005, cjlocgn_00000001, cjlocgn_00000002, 300., Condition( function FLOS1__Cond1 ) )
        loop
            set cjlocgn_00000006 = FirstOfGroup( cjlocgn_00000005 )
            exitwhen( cjlocgn_00000006 == null )
            //call DamageLib_Explode( cjlocgn_00000006 ) //Удолить
            call UnitDamageTarget( cjlocgn_00000000, cjlocgn_00000006, cjlocgn_00000007, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
            call FLOS2_FireDmg( cjlocgn_00000000, cjlocgn_00000006, cjlocgn_00000007 )
            //call Stun_Target( cjlocgn_00000000, cjlocgn_00000006, 1.5 )
            call StunUnit(cjlocgn_00000006,1.5)

            call GroupRemoveUnit( cjlocgn_00000005, cjlocgn_00000006 )
        endloop
        set cjlocgn_00000000 = null
        set cjlocgn_00000006 = null
        call GroupClear( cjlocgn_00000005 )
        call DestroyGroup( cjlocgn_00000005 )
        set cjlocgn_00000005 = null
    endif
endfunction

function FLOS1__FLOS1_I takes nothing returns nothing
    local trigger FLOS1_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( FLOS1_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( FLOS1_Trg, function FLOS1__FLOS1_Act )
endfunction

function FLOS3_preload takes nothing returns nothing
endfunction
function FLOS3__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), FLOS3__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function FLOS3__RemoveAttacked takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "FLO_2" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "FLO_1" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

function FLOS3__RemEff takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    call DestroyEffect( e )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set e = null
endfunction

function FLOS3__CreatePartOfWave takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local real x = LoadReal( HT, GetHandleId( t ), StringHash( "x" ) )
    local real y = LoadReal( HT, GetHandleId( t ), StringHash( "y" ) )
    local player p = LoadPlayerHandle( HT, GetHandleId( t ), StringHash( "p" ) )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "333" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "22" ) )
    local real angle = LoadReal( HT, GetHandleId( t ), StringHash( "1" ) )
    local real dist = LoadReal( HT, GetHandleId( t ), StringHash( "dist" ) )
    local unit arrow = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local timer ti
    local unit cjlocgn_00000000
    if dist <= 1200.then
        set FLOS3__ch_p = p
        call Dest_KillDestInRange( x, y, 250. )
        call GroupEnumUnitsInRange( FLOS3__gr, x, y, 250., Condition( function FLOS3__Cond1 ) )
        //set cjlocgn_00000000 = FirstOfGroup(FLOS3__gr)
        loop
            set cjlocgn_00000000 = FirstOfGroup( FLOS3__gr )
            exitwhen( cjlocgn_00000000 == null )
            if not( LoadBoolean( HT, GetHandleId( cjlocgn_00000000 ), StringHash( "FLO_1" ) ) ) then
                call DamageLib_SpellDamage( cst, cjlocgn_00000000, dmg )
                call SaveBoolean( HT, GetHandleId( cjlocgn_00000000 ), StringHash( "FLO_1" ), TRUE )
                set ti = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( ti ), StringHash( "FLO_2" ), cjlocgn_00000000 )
                call TimerStart( ti, 1., false, function FLOS3__RemoveAttacked )
                call FLOS2_FireDmg( cst, cjlocgn_00000000, dmg )
                set ti = null
            endif
            call GroupRemoveUnit( FLOS3__gr, cjlocgn_00000000 )
            
        endloop
        set x = x + 70. * Cos( angle * bj_DEGTORAD )
        set y = y + 70. * Sin( angle * bj_DEGTORAD )
        set dist = dist + ( 70. )
        call SetUnitX( arrow, x )
        call SetUnitY( arrow, y )
        call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", x, y ) )

        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), dist )
    else
        call GroupClear( FLOS3__gr )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
        call RemoveUnit( arrow )
    endif
    set ti = null
    set t = null
    set cst = null
    set arrow = null
endfunction

function FLOS3__Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local real cjlocgn_00000005
    local real cjlocgn_00000006
    local timer cjlocgn_00000007
    local unit cjlocgn_00000008
    if GetSpellAbilityId( ) == 'A01R' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = GetUnitX( cjlocgn_00000000 )
        set cjlocgn_00000002 = GetUnitY( cjlocgn_00000000 )
        set cjlocgn_00000003 = bj_RADTODEG * Atan2( GetSpellTargetY( ) - cjlocgn_00000002, GetSpellTargetX( ) - cjlocgn_00000001 )
        set cjlocgn_00000004 = cjlocgn_00000001 + 1200. * Cos( cjlocgn_00000003 * bj_DEGTORAD )
        set cjlocgn_00000005 = cjlocgn_00000002 + 1200. * Sin( cjlocgn_00000003 * bj_DEGTORAD )
        set cjlocgn_00000006 = GetHeroInt( cjlocgn_00000000, true ) * 1.8
        set cjlocgn_00000007 = CreateTimer( )
        set cjlocgn_00000008 = CreateUnit( GetOwningPlayer( cjlocgn_00000000 ), 'hfoo', cjlocgn_00000001, cjlocgn_00000002, cjlocgn_00000003 )
        call TriggerSleepAction( 0.2 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "x" ), cjlocgn_00000001 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "y" ), cjlocgn_00000002 )
        call SavePlayerHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "p" ), GetOwningPlayer( cjlocgn_00000000 ) )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "333" ), cjlocgn_00000000 )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "H_1" ), cjlocgn_00000008 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "22" ), cjlocgn_00000006 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "1" ), cjlocgn_00000003 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000007 ), StringHash( "dist" ), 0. )
        call TimerStart( cjlocgn_00000007, 0.04, TRUE, function FLOS3__CreatePartOfWave )
        set cjlocgn_00000007 = null
        set cjlocgn_00000000 = null
    endif
endfunction

function FLOS3__FLOS3_I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function FLOS3__Act )
endfunction

function FLOS4_preload takes nothing returns nothing
endfunction
function FLOS4__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), FLOS4__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function FLOS4__Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local group cjlocgn_00000001
    local unit cjlocgn_00000002
    local real cjlocgn_00000003
    local timer cjlocgn_00000004
    local integer cjlocgn_00000005
    if GetSpellAbilityId( ) == 'A01T' then
    
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = CreateGroup( )
        set cjlocgn_00000003 = GetHeroInt( cjlocgn_00000000, true ) * 0.7
        set cjlocgn_00000004 = CreateTimer( )
        set cjlocgn_00000005 = 5

        loop
            exitwhen( cjlocgn_00000005 == 0 )
            call TimerStart( cjlocgn_00000004, 0.2, FALSE, null )
            loop
                exitwhen( TimerGetRemaining( cjlocgn_00000004 ) == 0. )
                call TriggerSleepAction( 0.01 )
            endloop

            call DestroyEffect( AddSpecialEffectTarget( "war3mapImported\\FireNova.mdl", cjlocgn_00000000, "origin" ) )
            set FLOS4__ch_p = GetOwningPlayer( cjlocgn_00000000 )
            call GroupEnumUnitsInRange( cjlocgn_00000001, GetUnitX( cjlocgn_00000000 ), GetUnitY( cjlocgn_00000000 ), 400., Condition( function FLOS4__Cond1 ) )
           // set cjlocgn_00000002 = FirstOfGroup(cjlocgn_00000001)
            loop
                set cjlocgn_00000002 = FirstOfGroup( cjlocgn_00000001 )
                exitwhen( cjlocgn_00000002 == null )
                call DamageLib_SpellDamage( cjlocgn_00000000, cjlocgn_00000002, cjlocgn_00000003 )
                call FLOS2_FireDmg( cjlocgn_00000000, cjlocgn_00000002, cjlocgn_00000003 )
                call GroupRemoveUnit( cjlocgn_00000001, cjlocgn_00000002 )
            endloop
            call GroupClear( cjlocgn_00000001 )
            set cjlocgn_00000005 = cjlocgn_00000005 - 1
        endloop
        call PauseTimer( cjlocgn_00000004 )
        call DestroyTimer( cjlocgn_00000004 )
        call GroupClear( cjlocgn_00000001 )
        call DestroyGroup( cjlocgn_00000001 )
        set cjlocgn_00000004 = null
        set cjlocgn_00000000 = null
        set cjlocgn_00000002 = null
        set cjlocgn_00000001 = null
    endif
endfunction
function FLOS4__FLOS4_I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function FLOS4__Act )
endfunction

function FLOS5_preload takes nothing returns nothing
endfunction

function FLOS5__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), FLOS5__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function FLOS5__Act_2 takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real x = LoadReal( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real y = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local group g = CreateGroup( )
    local real dmg = GetHeroInt( cst, TRUE ) * 1.7
    local unit FoG
    call DestroyEffect( AddSpecialEffect( "war3mapImported\\NewGroundEX.mdl", x, y ) )
    set FLOS5__ch_p = GetOwningPlayer( cst )
    call Dest_KillDestInRange( x, y, 300. )

    call GroupEnumUnitsInRange( g, x, y, 300., Condition( function FLOS5__Cond1 ) )
    loop
        set FoG = FirstOfGroup( g )
        exitwhen( FoG == null )
       // call DamageLib_Explode( FoG ) //Удолить
        call UnitDamageTarget( cst, FoG, dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
        call FLOS2_FireDmg( cst, FoG, dmg )
        //call Stun_Target( cst, FoG, 0.7 )
        call StunUnit(FoG,0.7)
        call GroupRemoveUnit( g, FoG )
    endloop
    call GroupClear( g )
    call DestroyGroup( g )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set g = null
    set FoG = null
    set cst = null
    set t = null
endfunction

function FLOS5__Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local timer cjlocgn_00000001
    local timer cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local integer cjlocgn_00000005
    if GetSpellAbilityId( ) == 'A01U' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = CreateTimer( )
        call TimerStart( cjlocgn_00000001, 0.3, FALSE, null )
        set cjlocgn_00000005 = 15
        loop
            exitwhen( cjlocgn_00000005 == 0 )
            loop
                exitwhen( TimerGetRemaining( cjlocgn_00000001 ) == 0. )
                call TriggerSleepAction( 0.01 )
            endloop

            if GetUnitState( cjlocgn_00000000, UNIT_STATE_LIFE ) > 0.405 then
                set cjlocgn_00000003 = GetUnitX( cjlocgn_00000000 ) + GetRandomReal( 0., 500. ) * Cos( GetRandomReal( 0., 359.99 ) * bj_DEGTORAD )
                set cjlocgn_00000004 = GetUnitY( cjlocgn_00000000 ) + GetRandomReal( 0., 500. ) * Sin( GetRandomReal( 0., 359.99 ) * bj_DEGTORAD )
                call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Demon\\RainOfFire\\RainOfFireTarget.mdl", cjlocgn_00000003, cjlocgn_00000004 ) )
                set cjlocgn_00000002 = CreateTimer( )
                call SaveReal( HT, GetHandleId( cjlocgn_00000002 ), StringHash( "H_1" ), cjlocgn_00000003 )
                call SaveReal( HT, GetHandleId( cjlocgn_00000002 ), StringHash( "H_2" ), cjlocgn_00000004 )
                call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000002 ), StringHash( "H_3" ), cjlocgn_00000000 )
                call TimerStart( cjlocgn_00000002, 0.55, FALSE, function FLOS5__Act_2 )
                call TimerStart( cjlocgn_00000001, 0.3, FALSE, null )
            else
                set cjlocgn_00000005 = 0
            endif
            set cjlocgn_00000005 = cjlocgn_00000005 - 1
        endloop
        call DestroyTimer( cjlocgn_00000001 )
        set cjlocgn_00000001 = null
        set cjlocgn_00000002 = null
        set cjlocgn_00000000 = null
    endif
endfunction

function FLOS5__FLOS5_I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function FLOS5__Act )
endfunction
function GLAPreload_Go takes nothing returns nothing
    call GLAS1_preload( )
    call GLAS2_preload( )
    call GLAS3_preload( )
    call GLAS4_preload( )
    call GLAS5_preload( )
endfunction
function GROPreload_Go takes nothing returns nothing
    call GROS1_preload( )
    call GROS2_preload( )
    call GROS3_preload( )
    call GROS4_preload( )
    call GROS5_preload( )
    call GROS6_preload( )
endfunction
function MRAPreload_Go takes nothing returns nothing
    call MRASp1Lib_preload( )
    call MRASp3Lib_preload( )
    call MRAS4Lib_preload( )
    call MRAS5Lib_preload( )
endfunction
function PALPreload_Go takes nothing returns nothing
    call PALS1_preload( )
    call PALS3_preload( )
    call PALS5_preload( )
endfunction
function REAPreload_Go takes nothing returns nothing
    call REAS1_preload( )
    call REAS2_preload( )
    call REAS3_preload( )
    call REAS4_preload( )
    call REAS5_preload( )
    call REAS6_preload( )
endfunction
function SHAPreload_Go takes nothing returns nothing
    call SHAS1_preload( )
    call SHAS2_preload( )
    call SHAS3_preload( )
    call SHAS4_preload( )
endfunction

function OrderBuyUnit takes unit u, unit shop, integer id returns boolean
    call IssueNeutralTargetOrder( GetOwningPlayer( u ), shop, "smart", u )
    return IssueNeutralImmediateOrderById( GetOwningPlayer( u ), shop, id )
endfunction

function StartGameLib__ReallyStart takes nothing returns nothing
    local timer t
    call SetTimeOfDay( 5.59 )
    set TimeLib_CD_Time = FALSE
    set TimeLib_GO_Time = TRUE
    set GoldLib_enabled = TRUE
    call ResumeMusic( )
    call PlayMusic( "UFSbGmQVULSzqPCRbdetPuuCorebGmQVULSzqPCRbdetPuuMusicbGmQVULSzqPCRbdetPuuMusic1.mp3" )
    if Choosed_Creeps then
        call CreepsLib_Creeps_Act( )
        call EnableTrigger( Creeps_Creating_Trg )
    endif
    set RunesLib_RunesOn = Choosed_Runes
    set t = CreateTimer( )
    call TimerStart( t, 2., TRUE, function AI_A_Do )
    set t = CreateTimer( )
    call TimerStart( t, 1.0, TRUE, function AI_A_Spam )
    set t = null
    call CinematicFadeBJ( bj_CINEFADETYPE_FADEOUTIN, 5.00, "war3mapImported\\start.blp", 100, 100, 100, 0 )
endfunction

function StartGameLib__Act takes nothing returns nothing
    local integer t = R2I( TimerGetRemaining( StartGameLib__SB_Timer ) )
    local unit FoG
    call GroupEnumUnitsInRect( StartGameLib__gr, bj_mapInitialPlayableArea, null )
   // set FoG = FirstOfGroup(StartGameLib__gr)
    loop
        set FoG = FirstOfGroup( StartGameLib__gr )
        exitwhen( FoG == null )
        call SetUnitState( FoG, UNIT_STATE_LIFE, GetUnitState( FoG, UNIT_STATE_MAX_LIFE ) )
        call GroupRemoveUnit( StartGameLib__gr, FoG )
    endloop

    if t <= 10 and t != 0 then
        if TimerGetRemaining( StartGameLib__Sec_Timer ) == 0.then
            if R2I( t ) != 0 then
                call ClearTextMessages( )
                call StartSound( StartGameLib__CD_Snd )
                call DisplayTextToPlayer( GetLocalPlayer( ), 0.9, 1., "Осталось секунд: " + s__Color_Hex[1] + I2S( t ) + "|r" )
                call TimerStart( StartGameLib__Sec_Timer, 1., FALSE, null )
            endif
            if R2I( t ) == 10 then
                call StartSound( StartGameLib__Horn )
            endif
        endif
    endif

    if t == 0 then
        call ClearTextMessages( )
        call StartSound( StartGameLib__Go_Snd )
        call DisableTrigger( GetTriggeringTrigger( ) )
    endif
endfunction

function StartStartTimer takes nothing returns nothing
    call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, s__Color_Hex[1] + I2S( R2I( 30. ) ) + " |r секунд до начала игры. Вы можете изучать способности и покупать предметы." )
    if Choosed_Pick == 2 or Choosed_Pick == 4 then
        call TimerStart( StartGameLib__SB_Timer, 15., FALSE, function StartGameLib__ReallyStart )
        set TimeLib_Seconds = R2I( 15. )
    else
        call TimerStart( StartGameLib__SB_Timer, 30., FALSE, function StartGameLib__ReallyStart )
        set TimeLib_Seconds = R2I( 30. )
    endif
    set TimeLib_CD_Time = TRUE
    call EnableTrigger( StartGameLib__Trg )
endfunction

function StartGameLib_AddHeroesToTaverns takes nothing returns nothing
    local integer i = 1
    local integer c = 0
    local integer cjlocgn_00000000
    local boolean cjlocgn_00000001
    set StartGameLib_Is_Game_Started = TRUE

    if Choosed_Pick == 1 or Choosed_Pick == 2 then
        set c = 1
    else
        set c = 10
    endif

    loop
        exitwhen( i > 4 )
        call AddUnitToStock( gg_unit_n000_0005, s__StartGameLib__Hero_Str[i], c, c )
        set i = i + 1
    endloop

    set i = 1
    loop
        exitwhen( i > 3 )
        call AddUnitToStock( gg_unit_n001_0007, s__StartGameLib__Hero_Agi[i], c, c )
        set i = i + 1
    endloop
    set i = 1
    loop
        exitwhen( i > 4 )
        call AddUnitToStock( gg_unit_n002_0006, s__StartGameLib__Hero_Int[i], c, c )
        set i = i + 1
    endloop
    set i = 1

    if Choosed_Pick == 3 or Choosed_Pick == 4 then
        set cjlocgn_00000000 = 0
        set cjlocgn_00000001 = FALSE
        loop

            exitwhen( i > Online_Players )

            if GetPlayerSlotState( s__Online_Player[i] ) != PLAYER_SLOT_STATE_LEFT then
                set cjlocgn_00000001 = FALSE
                loop
                    exitwhen cjlocgn_00000001
                    set cjlocgn_00000000 = GetRandomInt( 1, 11 )
                    if not s__Is_Hero_Bought[cjlocgn_00000000] or Choosed_Pick == 4 then
                        set cjlocgn_00000001 = TRUE
                    endif
                endloop
                set cjlocgn_00000001 = FALSE
                loop
                    exitwhen cjlocgn_00000001
                    if not cjlocgn_00000001 then
                        set cjlocgn_00000001 = OrderBuyUnit( s__Circle[GetConvertedPlayerId( s__Online_Player[i] )], gg_unit_n000_0005, s__Hero_Raw[cjlocgn_00000000] )
                    endif
                    if not cjlocgn_00000001 then
                        set cjlocgn_00000001 = OrderBuyUnit( s__Circle[GetConvertedPlayerId( s__Online_Player[i] )], gg_unit_n001_0007, s__Hero_Raw[cjlocgn_00000000] )
                    endif
                    if not cjlocgn_00000001 then
                        set cjlocgn_00000001 = OrderBuyUnit( s__Circle[GetConvertedPlayerId( s__Online_Player[i] )], gg_unit_n002_0006, s__Hero_Raw[cjlocgn_00000000] )
                    endif
                    if Choosed_Pick == 2 then
                        if cjlocgn_00000001 then
                            set s__Is_Hero_Bought[cjlocgn_00000000] = TRUE
                        endif
                    endif
                endloop
            endif
            set i = i + 1

            call TriggerSleepAction( 1.0 )
        endloop
    else
        call TriggerSleepAction( 10. )
        set cjlocgn_00000000 = 0
        set cjlocgn_00000001 = FALSE
        loop
            exitwhen( i > Online_Players )
            if GetPlayerSlotState( s__Online_Player[i] ) != PLAYER_SLOT_STATE_LEFT and GetPlayerController( s__Online_Player[i] ) == MAP_CONTROL_COMPUTER then
                set cjlocgn_00000001 = FALSE
                loop
                    exitwhen cjlocgn_00000001
                    set cjlocgn_00000000 = GetRandomInt( 1, 11 )
                    if not s__Is_Hero_Bought[cjlocgn_00000000]or Choosed_Pick == 3 then
                        set cjlocgn_00000001 = TRUE
                    endif
                endloop
                set cjlocgn_00000001 = FALSE
                loop
                    exitwhen cjlocgn_00000001
                    if not cjlocgn_00000001 then
                        set cjlocgn_00000001 = OrderBuyUnit( s__Circle[GetConvertedPlayerId( s__Online_Player[i] )], gg_unit_n000_0005, s__Hero_Raw[cjlocgn_00000000] )
                    endif
                    if not cjlocgn_00000001 then
                        set cjlocgn_00000001 = OrderBuyUnit( s__Circle[GetConvertedPlayerId( s__Online_Player[i] )], gg_unit_n001_0007, s__Hero_Raw[cjlocgn_00000000] )
                    endif
                    if not cjlocgn_00000001 then
                        set cjlocgn_00000001 = OrderBuyUnit( s__Circle[GetConvertedPlayerId( s__Online_Player[i] )], gg_unit_n002_0006, s__Hero_Raw[cjlocgn_00000000] )
                    endif
                    if Choosed_Pick == 3 then
                        if cjlocgn_00000001 then
                            set s__Is_Hero_Bought[cjlocgn_00000000] = TRUE
                        endif
                    endif
                endloop
            endif
            set i = i + 1

            call TriggerSleepAction( 1.0 )

        endloop
    endif
endfunction
function StartGameLib__StartGameLib_Init takes nothing returns nothing
    call TriggerRegisterTimerEvent( StartGameLib__Trg, 0.01, TRUE )
    call TriggerAddAction( StartGameLib__Trg, function StartGameLib__Act )
    call DisableTrigger( StartGameLib__Trg )
    set StartGameLib__CD_Snd = gg_snd_cd
    set StartGameLib__Go_Snd = gg_snd_BossDead
    set StartGameLib__Horn = gg_snd_horn
    set s__Hero_Raw[1] = 'Hpal'
    set s__StartGameLib__Hero_Str[1] = 'Hpal'
    set s__Hero_Ic_A[1] = "war3mapImported\\BTN_PAL.blp"
    set s__Hero_Ic_D[1] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTN_PAL.blp"
    set s__Hero_Raw[2] = 'Nfir'
    set s__StartGameLib__Hero_Int[1] = 'Nfir'
    set s__Hero_Ic_A[2] = "war3mapImported\\BTN_FLO.blp"
    set s__Hero_Ic_D[2] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTN_FLO.blp"
    set s__Hero_Raw[3] = 'H000'
    set s__StartGameLib__Hero_Int[2] = 'H000'
    set s__Hero_Ic_A[3] = "war3mapImported\\BTN_DRA.blp"
    set s__Hero_Ic_D[3] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTN_DRA.blp"
    set s__Hero_Raw[4] = 'E000'
    set s__StartGameLib__Hero_Agi[1] = 'E000'
    set s__Hero_Ic_A[4] = "war3mapImported\\BTN_MRA.blp"
    set s__Hero_Ic_D[4] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTN_MRA.blp"
    set s__Hero_Raw[5] = 'Otch'
    set s__StartGameLib__Hero_Str[2] = 'Otch'
    set s__Hero_Ic_A[5] = "war3mapImported\\BTN_SHA.blp"
    set s__Hero_Ic_D[5] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTN_SHA.blp"
    set s__Hero_Raw[6] = 'Obla'
    set s__StartGameLib__Hero_Agi[2] = 'Obla'
    set s__Hero_Ic_A[6] = "war3mapImported\\BTN_GLA.blp"
    set s__Hero_Ic_D[6] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTN_GLA.blp"
    set s__Hero_Raw[7] = 'N005'
    set s__StartGameLib__Hero_Int[3] = 'N005'
    set s__Hero_Ic_A[7] = "war3mapImported\\BTN_GRO.blp"
    set s__Hero_Ic_D[7] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTN_GRO.blp"
    set s__Hero_Raw[8] = 'N006'
    set s__StartGameLib__Hero_Agi[3] = 'N006'
    set s__Hero_Ic_A[8] = "war3mapImported\\BTN_ASS.blp"
    set s__Hero_Ic_D[8] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTN_ASS.blp"
    set s__Hero_Raw[9] = 'Ntin'
    set s__StartGameLib__Hero_Str[3] = 'Ntin'
    set s__Hero_Ic_A[9] = "war3mapImported\\BTN_TEH.blp"
    set s__Hero_Ic_D[9] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTN_TEH.blp"
    set s__Hero_Raw[10] = 'Hgam'
    set s__StartGameLib__Hero_Int[4] = 'Hgam'
    set s__Hero_Ic_A[10] = "war3mapImported\\BTN_TKL.blp"
    set s__Hero_Ic_D[10] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTN_TKL.blp"
    set s__Hero_Raw[11] = 'H00M'
    set s__StartGameLib__Hero_Str[4] = 'H00M'
    set s__Hero_Ic_A[11] = "war3mapImported\\BTN_REA.blp"
    set s__Hero_Ic_D[11] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTN_REA.blp"
endfunction

function TEHPreload_Go takes nothing returns nothing
    call TEHS1_preload( )
    call TEHS2_preload( )
    call TEHS3_preload( )
endfunction
function TKLS1_preload takes nothing returns nothing
endfunction

function TKLS1___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), TKLS1___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
function TKLS1___RemoveAttacked takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_FOG" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "TKL_LOL" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction
function TKLS1___CreatePartOfWave takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local real x = LoadReal( HT, GetHandleId( t ), StringHash( "x" ) )
    local real y = LoadReal( HT, GetHandleId( t ), StringHash( "y" ) )
    local player p = LoadPlayerHandle( HT, GetHandleId( t ), StringHash( "p" ) )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "333" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "22" ) )
    local real angle = LoadReal( HT, GetHandleId( t ), StringHash( "1" ) )
    local real dist = LoadReal( HT, GetHandleId( t ), StringHash( "dist" ) )
    local unit arrow = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local timer ti
    local unit cjlocgn_00000000

    if dist <= 1000.then
        set TKLS1___ch_p = p
        call GroupEnumUnitsInRange( TKLS1___gr, x, y, 160., Condition( function TKLS1___Cond1 ) )
        loop
            set cjlocgn_00000000 = FirstOfGroup( TKLS1___gr )
            exitwhen( cjlocgn_00000000 == null )
            if not( LoadBoolean( HT, GetHandleId( cjlocgn_00000000 ), StringHash( "TKL_LOL" ) ) ) then
                call DamageLib_SpellDamage( cst, cjlocgn_00000000, dmg )
                call SaveBoolean( HT, GetHandleId( cjlocgn_00000000 ), StringHash( "TKL_LOL" ), TRUE )
                set ti = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( ti ), StringHash( "H_FOG" ), cjlocgn_00000000 )
                call TimerStart( ti, 1., false, function TKLS1___RemoveAttacked )
                call TKLS3_Act( cjlocgn_00000000, 23 )
            endif
            call GroupRemoveUnit( TKLS1___gr, cjlocgn_00000000 )
        endloop
        set x = x + 45. * Cos( angle * bj_DEGTORAD )
        set y = y + 45. * Sin( angle * bj_DEGTORAD )
        set dist = dist + ( 45. )
        call SetUnitX( arrow, x )
        call SetUnitY( arrow, y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), dist )
    else
        call GroupClear( TKLS1___gr )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
        call RemoveUnit( arrow )
    endif
    set ti = null
    set t = null
    set cst = null
    set arrow = null
endfunction
function TKLS1___Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local location cjlocgn_00000001
    local real cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local real cjlocgn_00000005
    local real cjlocgn_00000006
    local real cjlocgn_00000007
    local timer cjlocgn_00000008
    local unit cjlocgn_00000009
    if GetSpellAbilityId( ) == 'A03K' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000001 = GetSpellTargetLoc( )
        set cjlocgn_00000002 = GetUnitX( cjlocgn_00000000 )
        set cjlocgn_00000003 = GetUnitY( cjlocgn_00000000 )
        set cjlocgn_00000004 = bj_RADTODEG * Atan2( GetLocationY( cjlocgn_00000001 ) - cjlocgn_00000003, GetLocationX( cjlocgn_00000001 ) - cjlocgn_00000002 )
        set cjlocgn_00000005 = cjlocgn_00000002 + 1000. * Cos( cjlocgn_00000004 * bj_DEGTORAD )
        set cjlocgn_00000006 = cjlocgn_00000003 + 1000. * Sin( cjlocgn_00000004 * bj_DEGTORAD )
        set cjlocgn_00000007 = GetHeroInt( cjlocgn_00000000, true ) * 1.8
        set cjlocgn_00000008 = CreateTimer( )
        set cjlocgn_00000009 = CreateUnit( GetOwningPlayer( cjlocgn_00000000 ), 'h00B', cjlocgn_00000002, cjlocgn_00000003, cjlocgn_00000004 )
        call PauseUnit( cjlocgn_00000000, TRUE )
        call SetUnitFacing( cjlocgn_00000000, cjlocgn_00000004 )
        call SetUnitAnimation( cjlocgn_00000000, "attack" )
        call SaveReal( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "x" ), cjlocgn_00000002 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "y" ), cjlocgn_00000003 )
        call SavePlayerHandle( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "p" ), GetOwningPlayer( cjlocgn_00000000 ) )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "333" ), cjlocgn_00000000 )
        call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "H_1" ), cjlocgn_00000009 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "22" ), cjlocgn_00000007 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "1" ), cjlocgn_00000004 )
        call SaveReal( HT, GetHandleId( cjlocgn_00000008 ), StringHash( "dist" ), 0. )
        call TimerStart( cjlocgn_00000008, 0.04, TRUE, function TKLS1___CreatePartOfWave )
        call PauseUnit( cjlocgn_00000000, FALSE )
        call IssueImmediateOrderById( cjlocgn_00000000, 851972 )
        set cjlocgn_00000008 = null
        set cjlocgn_00000000 = null
        call RemoveLocation( cjlocgn_00000001 )
        set cjlocgn_00000001 = null
    endif
endfunction
function TKLS1___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function TKLS1___Act )
endfunction
function TKLS2_preload takes nothing returns nothing
endfunction
function TKLS2___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), TKLS2___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

function TKLS2___Act_2 takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real x = LoadReal( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real y = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local group g = CreateGroup( )
    local real dmg = GetHeroInt( cst, TRUE ) * 0.8
    local unit FoG
    set TKLS2___ch_p = GetOwningPlayer( cst )
    call Dest_KillDestInRange( x, y, 100. )

    call GroupEnumUnitsInRange( g, x, y, 400., Condition( function TKLS2___Cond1 ) )
    loop
        set FoG = FirstOfGroup( g )
        exitwhen( FoG == null )
        call DamageLib_SpellDamage( cst, FoG, dmg )
        call TKLS3_Act( FoG, 12 )
        call GroupRemoveUnit( g, FoG )
    endloop
    call GroupClear( g )
    call DestroyGroup( g )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set g = null
    set FoG = null
    set cst = null
    set t = null
endfunction

function TKLS2___Act takes nothing returns nothing
    local unit cjlocgn_00000000
    local timer cjlocgn_00000001
    local timer cjlocgn_00000002
    local real cjlocgn_00000003
    local real cjlocgn_00000004
    local real cjlocgn_00000005
    local real cjlocgn_00000006
    local integer cjlocgn_00000007

    if GetSpellAbilityId( ) == 'A03N' then
        set cjlocgn_00000000 = GetTriggerUnit( )
        set cjlocgn_00000003 = GetSpellTargetX( )
        set cjlocgn_00000004 = GetSpellTargetY( )
        set cjlocgn_00000001 = CreateTimer( )
        call TimerStart( cjlocgn_00000001, 0.10, FALSE, null )
        set cjlocgn_00000007 = 12
        loop
            exitwhen( cjlocgn_00000007 == 0 )
            loop
                exitwhen( TimerGetRemaining( cjlocgn_00000001 ) == 0. )
                call TriggerSleepAction( 0.01 )
            endloop
            if GetUnitState( cjlocgn_00000000, UNIT_STATE_LIFE ) > 0.405 then

                set cjlocgn_00000005 = cjlocgn_00000003 + GetRandomReal( 0., 400. ) * Cos( GetRandomReal( 0., 359.99 ) * bj_DEGTORAD )
                set cjlocgn_00000006 = cjlocgn_00000004 + GetRandomReal( 0., 400. ) * Sin( GetRandomReal( 0., 359.99 ) * bj_DEGTORAD )
                call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Human\\Blizzard\\BlizzardTarget.mdl", cjlocgn_00000005, cjlocgn_00000006 ) )
                set cjlocgn_00000002 = CreateTimer( )
                call SaveReal( HT, GetHandleId( cjlocgn_00000002 ), StringHash( "H_1" ), cjlocgn_00000005 )
                call SaveReal( HT, GetHandleId( cjlocgn_00000002 ), StringHash( "H_2" ), cjlocgn_00000006 )
                call SaveUnitHandle( HT, GetHandleId( cjlocgn_00000002 ), StringHash( "H_3" ), cjlocgn_00000000 )
                call TimerStart( cjlocgn_00000002, 0.60, FALSE, function TKLS2___Act_2 )
                call TimerStart( cjlocgn_00000001, 0.10, FALSE, null )

            else
                set cjlocgn_00000007 = 0
            endif
            set cjlocgn_00000007 = cjlocgn_00000007 - 1
        endloop
        call DestroyTimer( cjlocgn_00000001 )
        set cjlocgn_00000001 = null
        set cjlocgn_00000002 = null
        set cjlocgn_00000000 = null
    endif
endfunction

function TKLS2___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function TKLS2___Act )
endfunction
function TKLS4_preload takes nothing returns nothing
endfunction

function TKLS4___Act takes nothing returns nothing
    local unit u = GetEventDamageSource( )
    local unit a = GetTriggerUnit( )
    local real damage = GetEventDamage()
    if GetEventDamageSource() != null and damage > 1. and IsUnitEnemy(u, GetOwningPlayer(a)) and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false then

        if GetEventDamage( ) > 0 and SquareRoot( ( GetUnitX( u ) - GetUnitX( a ) ) * ( GetUnitX( u ) - GetUnitX( a ) ) + ( GetUnitY( u ) - GetUnitY( a ) ) * ( GetUnitY( u ) - GetUnitY( a ) ) ) <= 200 then
            call DisableTrigger( GetTriggeringTrigger( ) )
            call TKLS3_Act( u, TKLS4___slow )
      //  call DisplayTextToForce( GetPlayersAll( ), "ткач1" )
            call EnableTrigger( GetTriggeringTrigger( ) )
        endif

    endif
    set u = null
    set a = null
endfunction

function TKLS4___I takes nothing returns nothing
    call TriggerAddAction( TKLS4_Trg, function TKLS4___Act )
endfunction

function TKLS5_preload takes nothing returns nothing
endfunction

function TKLS5___Filter_Enemy takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), TKLS5___p ) and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction
function TKLS5___Act takes nothing returns nothing
    local unit caster
    local real cjlocgn_00000001
    local unit FoG
    if GetSpellAbilityId( ) == TKLS5___ab_id then
        set caster = GetTriggerUnit( )
        set cjlocgn_00000001 = GetHeroInt( caster, TRUE ) * TKLS5___percent_int
        set FoG = null
        set TKLS5___p = GetOwningPlayer( caster )
        call DestroyEffect( AddSpecialEffect( TKLS5___eff_caster, GetUnitX( caster ), GetUnitY( caster ) ) )
        call GroupEnumUnitsInRange( TKLS5___g, GetUnitX( caster ), GetUnitY( caster ), TKLS5___radius, Condition( function TKLS5___Filter_Enemy ) )
        loop
            set FoG = FirstOfGroup( TKLS5___g )
            exitwhen( FoG == null )
            call DestroyEffect( AddSpecialEffect( TKLS5___eff_target, GetUnitX( FoG ), GetUnitY( FoG ) ) )
            call DestroyEffect( AddSpecialEffect( TKLS5___eff_target_2, GetUnitX( FoG ), GetUnitY( FoG ) ) )
         //   call DamageLib_Explode( FoG ) // Удолить
            call UnitDamageTarget( caster, FoG, cjlocgn_00000001, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
            call TKLS3_Act( FoG, TKLS5___slowing )
        //    call Stun_Target( caster, FoG, TKLS5___stun_time )
            call StunUnit(FoG, TKLS5___stun_time)
            call X_ThrowUp( FoG, 150., 0.5 )
            call GroupRemoveUnit( TKLS5___g, FoG )
        endloop
        set FoG = null
        set caster = null
        call GroupClear( TKLS5___g ) //добавил чистку группы
    endif

endfunction
function TKLS5___I takes nothing returns nothing
    local trigger Trg
    set Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function TKLS5___Act )
    set Trg = null
endfunction

function DMRevive_Act takes nothing returns nothing
    local integer qxA
    local unit u = GetDyingUnit( )
    local unit killer = GetKillingUnit( )
    local integer cjlocgn_00000000 = 0
    if IsUnitType( u, UNIT_TYPE_HERO )and ( u != killer ) and not DMKillsLib_Game_Ended and not( GetPlayerSlotState( GetOwningPlayer( u ) ) == PLAYER_SLOT_STATE_LEFT ) then
        set qxA = GetConvertedPlayerId( GetOwningPlayer( u ) )
        set s__Deaths[qxA] = s__Deaths[qxA] + 1
        call TriggerSleepAction( 2. ) //респ героев другой мод
        set cjlocgn_00000000 = GetRandomInt( 1, 10 )
        loop
            exitwhen not s__DMRevivingLib__Is_Loc_Occupied[cjlocgn_00000000]
            set cjlocgn_00000000 = GetRandomInt( 1, 10 )
        endloop
        set s__DMRevivingLib__Is_Loc_Occupied[cjlocgn_00000000] = TRUE
        call ReviveHeroLoc( u, s__DMRevivingLib__Revive_Loc[cjlocgn_00000000], FALSE )
        call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", u, "origin" ) )
        call AlphaLib_AddAlphing( u )
        call SetUnitInvulTimer(u,2.)
        call SetUnitFlyHeight( u, 0., 0. )
        call IssueImmediateOrder( u, "stop" )

        if GetLocalPlayer( ) == GetOwningPlayer( u ) then
            call ClearSelection( )
            call SelectUnit( u, TRUE )
            call SetCameraPosition( GetLocationX( s__DMRevivingLib__Revive_Loc[cjlocgn_00000000] ), GetLocationY( s__DMRevivingLib__Revive_Loc[cjlocgn_00000000] ) )
        endif
        call TriggerSleepAction( 3. )
        set s__DMRevivingLib__Is_Loc_Occupied[cjlocgn_00000000] = FALSE
    endif
    set u = null
endfunction

function DMRevivingLib__L takes nothing returns nothing
    set s__DMRevivingLib__Revive_Loc[1] = Location( 1971., 1774. )
    set s__DMRevivingLib__Revive_Loc[2] = Location( -389., 1881. )
    set s__DMRevivingLib__Revive_Loc[3] = Location( -1543., 1168. )
    set s__DMRevivingLib__Revive_Loc[4] = Location( -1906., -146. )
    set s__DMRevivingLib__Revive_Loc[5] = Location( -2321., -987. )
    set s__DMRevivingLib__Revive_Loc[6] = Location( 1412., -1385. )
    set s__DMRevivingLib__Revive_Loc[7] = Location( 1084., 223. )
    set s__DMRevivingLib__Revive_Loc[8] = Location( 105., -313. )
    set s__DMRevivingLib__Revive_Loc[9] = Location( 377., -1162. )
    set s__DMRevivingLib__Revive_Loc[10] = Location( -562., 733. )
endfunction

function DMRevivingLib__DMRevivingLib_Init takes nothing returns nothing
    local trigger Load
    set DMRevivingLib_DM_Rev = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( DMRevivingLib_DM_Rev, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( DMRevivingLib_DM_Rev, function DMRevive_Act )
    call DisableTrigger( DMRevivingLib_DM_Rev )
    set Load = CreateTrigger( )
    call TriggerRegisterTimerEvent( Load, 0.01, FALSE )
    call TriggerAddAction( Load, function DMRevivingLib__L )
endfunction

function FLOPreload_Go takes nothing returns nothing
    call FLOS1_preload( )
    call FLOS2_preload( )
    call FLOS3_preload( )
    call FLOS4_preload( )
    call FLOS5_preload( )
    call FLOS6_preload( )
endfunction

function ChooseDM takes nothing returns nothing
    local integer a = 0
    local integer b = 0
    call EnableTrigger( DMMultiboardLib_Set_DM_MB_Trg_Var )
    set DMMultiboardLib_DM_MB = CreateMultiboard( )
    call EnableTrigger( DMKillsLib_DMKills_Trg_Var )
    call EnableTrigger( DMRevivingLib_DM_Rev )
    loop

        exitwhen( a > ( 10 - 1 ) )
        set b = 0
        loop
            exitwhen( b > ( 10 - 1 ) )
            call SetPlayerAllianceStateBJ( Player( a ), Player( b ), bj_ALLIANCE_UNALLIED )
            set b = b + 1
        endloop
        set a = a + 1
    endloop

endfunction

function ChooseTDM takes nothing returns nothing
    call EnableTrigger( TDMMultiboardLib_Set_TDM_MB_Trg_Var )
    set TDMMultiboardLib_TDM_MB = CreateMultiboard( )
    call EnableTrigger( TDMKillsLib_TDMKills_Trg_Var )
    call EnableTrigger( TDMRevivingLib_TDM_Rev )
endfunction


function ChooseRM takes nothing returns nothing
endfunction

function Boolean2String takes boolean b returns string
    if b then
        return "Да"
    else
        return "Нет"
    endif
    return""
endfunction
function Integer2Pick takes integer i returns string
    if i == 1 then
        return "Классический"
    endif
    if i == 2 then
        return "Классический[Повторения]"
    endif
    if i == 3 then
        return "Случайный"
    endif
    if i == 4 then
        return "Случайный[Повторения]"
    endif
    return ""
endfunction

function Boolean2RaidMode takes boolean b returns string
    if not b then
        return "Обычный"
    else
        return "Героический"
    endif
    return ""
endfunction
function EnableColumn takes integer c returns nothing
    if c == 1 then
        set FirstMultiboardLib__Item_Disabled[2] = FALSE
        set FirstMultiboardLib__Item_Disabled[6] = FALSE
        set FirstMultiboardLib__Item_Disabled[10] = FALSE
        set FirstMultiboardLib__Item_Disabled[14] = FALSE
        set FirstMultiboardLib__Item_Disabled[18] = FALSE
        set FirstMultiboardLib__Item_Disabled[3] = TRUE
        set FirstMultiboardLib__Item_Disabled[7] = TRUE
        set FirstMultiboardLib__Item_Disabled[11] = TRUE
        set FirstMultiboardLib__Item_Disabled[15] = TRUE
        set FirstMultiboardLib__Item_Disabled[19] = TRUE
        set FirstMultiboardLib__Item_Disabled[4] = TRUE
        set FirstMultiboardLib__Item_Disabled[8] = TRUE
        set FirstMultiboardLib__Item_Disabled[12] = TRUE
        set FirstMultiboardLib__Item_Disabled[16] = TRUE
        set FirstMultiboardLib__Item_Disabled[20] = TRUE
        set FirstMultiboardLib__Item_S[5] = "|cFFFFFF00» Лимит очков:|r"
    endif
    if c == 2 then
        set FirstMultiboardLib__Item_Disabled[3] = FALSE
        set FirstMultiboardLib__Item_Disabled[7] = FALSE
        set FirstMultiboardLib__Item_Disabled[11] = FALSE
        set FirstMultiboardLib__Item_Disabled[15] = FALSE
        set FirstMultiboardLib__Item_Disabled[19] = FALSE
        set FirstMultiboardLib__Item_Disabled[2] = TRUE
        set FirstMultiboardLib__Item_Disabled[6] = TRUE
        set FirstMultiboardLib__Item_Disabled[10] = TRUE
        set FirstMultiboardLib__Item_Disabled[14] = TRUE
        set FirstMultiboardLib__Item_Disabled[18] = TRUE
        set FirstMultiboardLib__Item_Disabled[4] = TRUE
        set FirstMultiboardLib__Item_Disabled[8] = TRUE
        set FirstMultiboardLib__Item_Disabled[12] = TRUE
        set FirstMultiboardLib__Item_Disabled[16] = TRUE
        set FirstMultiboardLib__Item_Disabled[20] = TRUE
        set FirstMultiboardLib__Item_S[5] = "|cFFFFFF00» Лимит очков:|r"
    endif
    if c == 3 then
        set FirstMultiboardLib__Item_Disabled[4] = FALSE
        set FirstMultiboardLib__Item_Disabled[8] = FALSE
        set FirstMultiboardLib__Item_Disabled[16] = FALSE
        set FirstMultiboardLib__Item_Disabled[3] = TRUE
        set FirstMultiboardLib__Item_Disabled[7] = TRUE
        set FirstMultiboardLib__Item_Disabled[11] = TRUE
        set FirstMultiboardLib__Item_Disabled[15] = TRUE
        set FirstMultiboardLib__Item_Disabled[19] = TRUE
        set FirstMultiboardLib__Item_Disabled[2] = TRUE
        set FirstMultiboardLib__Item_Disabled[6] = TRUE
        set FirstMultiboardLib__Item_Disabled[10] = TRUE
        set FirstMultiboardLib__Item_Disabled[14] = TRUE
        set FirstMultiboardLib__Item_Disabled[18] = TRUE
        set FirstMultiboardLib__Item_S[5] = "|cFFFFFF00» Режим:|r"
    endif
endfunction
function StartInformation takes nothing returns nothing
    local player p
    call TriggerSleepAction( 0.5 )
    set p = GetLocalPlayer( )
    call DisplayTextToPlayer( p, 0., 0., Color_Soft_Green + "Всего игроков:|r " + I2S( Online_Players ) + "/" + I2S( 10 ) )
    call DisplayTextToPlayer( p, 0., 0., Color_Soft_Green + "Хост:|r " + s__Color_Hex[GetPlayerId( Host_Player ) + 1] + GetPlayerName( Host_Player ) + "|r" )
    call DisplayTextToPlayer( p, 0., 0., s__Color_Hex[1] + "Хост должен использовать стрелки.|r" )
    call DisplayTextToPlayer( p, 0., 0., "" )
endfunction

function SetFirstMB takes nothing returns nothing
    local integer i = 1
    local multiboarditem mbi
    call MultiboardDisplay( FirstMultiboardLib__First_MB, FALSE )
    call DestroyMultiboard( FirstMultiboardLib__First_MB )
    set FirstMultiboardLib__First_MB = null
    set FirstMultiboardLib__First_MB = CreateMultiboard( )
    call MultiboardSetColumnCount( FirstMultiboardLib__First_MB, FirstMultiboardLib__First_MB_Columns )
    call MultiboardSetRowCount( FirstMultiboardLib__First_MB, FirstMultiboardLib__First_MB_Rows )
    call StartSound( gg_snd_click )
    call MultiboardSetTitleText( FirstMultiboardLib__First_MB, "|cFFFF0000Только для хоста:|r настройки игры" )
    loop
        exitwhen( i > FirstMultiboardLib__Max_Items )
        set mbi = MultiboardGetItem( FirstMultiboardLib__First_MB, FirstMultiboardLib__Item_R[i], FirstMultiboardLib__Item_C[i] )
        if FirstMultiboardLib__Choosed_I == i then
            if FirstMultiboardLib__Item_N[i]then
                call MultiboardSetItemValue( mbi, "|cFFFFFF00-|r" + FirstMultiboardLib__Item_S[i] + "|cFFFFFF00+|r" )
            else
                call MultiboardSetItemValue( mbi, "|cFFFFFF00<|r" + FirstMultiboardLib__Item_S[i] + "|cFFFFFF00>|r" )
            endif
            set FirstMultiboardLib__Item_S[22] = FirstMultiboardLib__Item_D[i]
        else
            call MultiboardSetItemValue( mbi, FirstMultiboardLib__Item_S[i] )
        endif
        if FirstMultiboardLib__Item_Disabled[i]then
            call MultiboardSetItemValue( mbi, "|cFF808080" + FirstMultiboardLib__Item_S[i] + "|r" )
        endif
        call MultiboardSetItemWidth( mbi, FirstMultiboardLib__Item_W[i] )
        call MultiboardSetItemStyle( mbi, true, false )
        set i = i + 1
    endloop
    set i = 1
    call MultiboardDisplay( FirstMultiboardLib__First_MB, true )
    call MultiboardMinimize( FirstMultiboardLib__First_MB, FALSE )
    set mbi = null
endfunction

function Start_Action takes nothing returns nothing
    local integer i
    local string mode
    local string creeps
    local string wp
    local string pick
    local string runes
    call SetTimeOfDay( 0.00 )
    call ResetToGameCamera( 0.00 )
    call CameraSetSmoothingFactor( 1.0 )

    if FirstMultiboardLib__Item_Disabled[2] == FALSE then
        set Choosed_Mode = 1
        set Choosed_WP = FirstMultiboardLib__DM_Winpoints
        set Choosed_Creeps = FirstMultiboardLib__DM_Creeps
        set Choosed_Pick = FirstMultiboardLib__DM_Pick
        set Choosed_Runes = FirstMultiboardLib__DM_Runes
        set mode = "Арена"
        set creeps = Boolean2String( FirstMultiboardLib__DM_Creeps )
        set wp = I2S( FirstMultiboardLib__DM_Winpoints )
        set pick = Integer2Pick( FirstMultiboardLib__DM_Pick )
        set runes = Boolean2String( FirstMultiboardLib__DM_Runes )
    endif
    if FirstMultiboardLib__Item_Disabled[3] == FALSE then
        set Choosed_Mode = 2
        set Choosed_WP = FirstMultiboardLib__TDM_Winpoints
        set Choosed_Creeps = FirstMultiboardLib__TDM_Creeps
        set Choosed_Pick = FirstMultiboardLib__TDM_Pick
        set Choosed_Runes = FirstMultiboardLib__TDM_Runes
        set mode = "Командная арена"
        set creeps = Boolean2String( FirstMultiboardLib__TDM_Creeps )
        set wp = I2S( FirstMultiboardLib__TDM_Winpoints )
        set pick = Integer2Pick( FirstMultiboardLib__TDM_Pick )
        set runes = Boolean2String( FirstMultiboardLib__TDM_Runes )
    endif
    if FirstMultiboardLib__Item_Disabled[4] == FALSE then
        set Choosed_Mode = 3
        set Choosed_HardMode = FirstMultiboardLib__RAID_HardMode
        set Choosed_Pick = FirstMultiboardLib__RAID_Pick
        set Choosed_Creeps = FALSE
        set Choosed_Runes = FALSE
        set mode = "Рейдмод"
        set pick = Integer2Pick( FirstMultiboardLib__RAID_Pick )
    endif
    call DisableTrigger( FirstMultiboardLib__Arrows_Trg )
    call DisableTrigger( FirstMultiboardLib__Start_Trg )
    call DestroyMultiboard( FirstMultiboardLib__First_MB )
    set FirstMultiboardLib__First_MB = null
    call StartSound( gg_snd_start )
    call ClearTextMessages( )
    call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, Color_Soft_Green + "Выбранный мод: |r" + mode )
    if Choosed_Mode == 3 then
        call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, Color_Soft_Green + "Героический режим: |r" + Boolean2String( Choosed_HardMode ) )
    else
        call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, Color_Soft_Green + "Лимит очков: |r" + wp )
        call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, Color_Soft_Green + "Монстры: |r" + creeps )
        call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, Color_Soft_Green + "Руны: |r" + runes )
    endif
    call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, Color_Soft_Green + "Герои: |r" + pick )
    if Choosed_Pick == 1 then
        call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, s__Color_Hex[1] + "Выбирайте героя в таверне...|r" )
    endif
    call StartStartTimer( )
    if Choosed_Mode == 1 then
        call ChooseDM( )
    endif
    if Choosed_Mode == 2 then
        call ChooseTDM( )
    endif
    if Choosed_Mode == 3 then
        call ChooseRM( )
    endif
    call StartGameLib_AddHeroesToTaverns( )
    call EnableTrigger( EscShops_Trg )
endfunction

function Arrows_Action takes nothing returns nothing
    local string k
    local integer i
    if GetTriggerEventId( ) == EVENT_PLAYER_ARROW_DOWN_DOWN then
        set k = "D"
    endif
    if GetTriggerEventId( ) == EVENT_PLAYER_ARROW_RIGHT_DOWN then
        set k = "R"
    endif
    if GetTriggerEventId( ) == EVENT_PLAYER_ARROW_UP_DOWN then
        set k = "U"
    endif
    if GetTriggerEventId( ) == EVENT_PLAYER_ARROW_LEFT_DOWN then
        set k = "L"
    endif
    if k == "R"then
        if FirstMultiboardLib__Choosed_I == 2 then
            set i = 3
            set FirstMultiboardLib__Choosed_I = i
            call EnableColumn( 2 )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 3 then
            set i = 2
            set FirstMultiboardLib__Choosed_I = i
            call EnableColumn( 1 )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 4 then
            set i = 2
            set FirstMultiboardLib__Choosed_I = i
            call EnableColumn( 1 )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 6 then
            if ( FirstMultiboardLib__DM_Winpoints + FirstMultiboardLib__Delta_DM_Score ) != FirstMultiboardLib__Max_DM_Score then
                set FirstMultiboardLib__DM_Winpoints = FirstMultiboardLib__DM_Winpoints + ( FirstMultiboardLib__Delta_DM_Score )
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = I2S( FirstMultiboardLib__DM_Winpoints )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 7 then
            if ( FirstMultiboardLib__TDM_Winpoints + FirstMultiboardLib__Delta_TDM_Score ) != FirstMultiboardLib__Max_TDM_Score then
                set FirstMultiboardLib__TDM_Winpoints = FirstMultiboardLib__TDM_Winpoints + ( FirstMultiboardLib__Delta_TDM_Score )
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = I2S( FirstMultiboardLib__TDM_Winpoints )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 8 then
            set FirstMultiboardLib__RAID_HardMode = not FirstMultiboardLib__RAID_HardMode
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2RaidMode( FirstMultiboardLib__RAID_HardMode )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 10 then
            set FirstMultiboardLib__DM_Creeps = not FirstMultiboardLib__DM_Creeps
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__DM_Creeps )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 11 then
            set FirstMultiboardLib__TDM_Creeps = not FirstMultiboardLib__TDM_Creeps
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__TDM_Creeps )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 14 then
            if FirstMultiboardLib__DM_Pick == 4 then
                set FirstMultiboardLib__DM_Pick = 1
            else
                set FirstMultiboardLib__DM_Pick = FirstMultiboardLib__DM_Pick + 1
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Integer2Pick( FirstMultiboardLib__DM_Pick )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 15 then
            if FirstMultiboardLib__TDM_Pick == 4 then
                set FirstMultiboardLib__TDM_Pick = 1
            else
                set FirstMultiboardLib__TDM_Pick = FirstMultiboardLib__TDM_Pick + 1
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Integer2Pick( FirstMultiboardLib__TDM_Pick )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 16 then
            if FirstMultiboardLib__RAID_Pick == 4 then
                set FirstMultiboardLib__RAID_Pick = 1
            else
                set FirstMultiboardLib__RAID_Pick = FirstMultiboardLib__RAID_Pick + 1
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Integer2Pick( FirstMultiboardLib__RAID_Pick )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 18 then
            set FirstMultiboardLib__DM_Runes = not FirstMultiboardLib__DM_Runes
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__DM_Runes )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 19 then
            set FirstMultiboardLib__TDM_Runes = not FirstMultiboardLib__TDM_Runes
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__TDM_Runes )
            call SetFirstMB( )
            return
        endif
    endif
    if k == "L"then
        if FirstMultiboardLib__Choosed_I == 2 then
            set i = 3
            set FirstMultiboardLib__Choosed_I = i
            call EnableColumn( 2 )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 3 then
            set i = 2
            set FirstMultiboardLib__Choosed_I = i
            call EnableColumn( 1 )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 4 then
            set i = 3
            set FirstMultiboardLib__Choosed_I = i
            call EnableColumn( 2 )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 6 then
            if ( FirstMultiboardLib__DM_Winpoints - FirstMultiboardLib__Delta_DM_Score ) != 0 then
                set FirstMultiboardLib__DM_Winpoints = FirstMultiboardLib__DM_Winpoints - ( FirstMultiboardLib__Delta_DM_Score )
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = I2S( FirstMultiboardLib__DM_Winpoints )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 7 then
            if ( FirstMultiboardLib__TDM_Winpoints - FirstMultiboardLib__Delta_TDM_Score ) != 0 then
                set FirstMultiboardLib__TDM_Winpoints = FirstMultiboardLib__TDM_Winpoints - ( FirstMultiboardLib__Delta_TDM_Score )
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = I2S( FirstMultiboardLib__TDM_Winpoints )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 8 then
            set FirstMultiboardLib__RAID_HardMode = not FirstMultiboardLib__RAID_HardMode
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2RaidMode( FirstMultiboardLib__RAID_HardMode )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 10 then
            set FirstMultiboardLib__DM_Creeps = not FirstMultiboardLib__DM_Creeps
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__DM_Creeps )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 11 then
            set FirstMultiboardLib__TDM_Creeps = not FirstMultiboardLib__TDM_Creeps
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__TDM_Creeps )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 14 then
            if FirstMultiboardLib__DM_Pick == 1 then
                set FirstMultiboardLib__DM_Pick = 2
            else
                set FirstMultiboardLib__DM_Pick = FirstMultiboardLib__DM_Pick - 1
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Integer2Pick( FirstMultiboardLib__DM_Pick )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 15 then
            if FirstMultiboardLib__TDM_Pick == 1 then
                set FirstMultiboardLib__TDM_Pick = 2
            else
                set FirstMultiboardLib__TDM_Pick = FirstMultiboardLib__TDM_Pick - 1
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Integer2Pick( FirstMultiboardLib__TDM_Pick )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 16 then
            if FirstMultiboardLib__RAID_Pick == 1 then
                set FirstMultiboardLib__RAID_Pick = 2
            else
                set FirstMultiboardLib__RAID_Pick = FirstMultiboardLib__RAID_Pick - 1
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Integer2Pick( FirstMultiboardLib__RAID_Pick )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 18 then
            set FirstMultiboardLib__DM_Runes = not FirstMultiboardLib__DM_Runes
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__DM_Runes )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 19 then
            set FirstMultiboardLib__TDM_Runes = not FirstMultiboardLib__TDM_Runes
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__TDM_Runes )
            call SetFirstMB( )
            return
        endif
    endif
    if k == "D"then
        if FirstMultiboardLib__Choosed_I == 2 then
            set i = 6
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 6 then
            set i = 10
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 10 then
            set i = 14
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 14 then
            set i = 18
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 18 then
            set i = 2
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 3 then
            set i = 7
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 7 then
            set i = 11
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 11 then
            set i = 15
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 15 then
            set i = 19
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 19 then
            set i = 3
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 4 then
            set i = 8
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 8 then
            set i = 16
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 16 then
            set i = 4
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
    endif
    if k == "U"then
        if FirstMultiboardLib__Choosed_I == 2 then
            set i = 18
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 6 then
            set i = 2
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 10 then
            set i = 6
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 14 then
            set i = 10
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 18 then
            set i = 14
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 3 then
            set i = 19
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 7 then
            set i = 3
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 11 then
            set i = 7
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 15 then
            set i = 11
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 19 then
            set i = 15
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 4 then
            set i = 16
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 16 then
            set i = 8
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 8 then
            set i = 4
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
    endif
endfunction

function FirstMultiboardLib_In takes nothing returns nothing
    local integer i = 1
    loop
        exitwhen( i > 10 )
        if GetLocalPlayer( ) == Player( i - 1 ) then
            call SetCameraTargetController( gg_unit_n002_0006, 0., 0., FALSE )
        endif
        set i = i + 1
    endloop
    call TriggerSleepAction( 0.01 )
    set FirstMultiboardLib__First_MB = CreateMultiboard( )
    set i = 1
    loop
        exitwhen( i > FirstMultiboardLib__Max_Items )
        set FirstMultiboardLib__Item_W[i] = FirstMultiboardLib__Width
        set i = i + 1
    endloop
    set i = 1
    set FirstMultiboardLib__Item_R[i] = 0
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = "|cFFFFFF00» Мод:|r"
    set i = 2
    set FirstMultiboardLib__Item_R[i] = 0
    set FirstMultiboardLib__Item_C[i] = 1
    set FirstMultiboardLib__Item_S[i] = "Арена"
    set FirstMultiboardLib__Item_D[i] = "Классическая арена."
    set i = 3
    set FirstMultiboardLib__Item_R[i] = 0
    set FirstMultiboardLib__Item_C[i] = 2
    set FirstMultiboardLib__Item_S[i] = "Командная арена"
    set FirstMultiboardLib__Item_D[i] = "Арена команда на команду."
    set i = 4
    set FirstMultiboardLib__Item_R[i] = 0
    set FirstMultiboardLib__Item_C[i] = 3
    set FirstMultiboardLib__Item_S[i] = "Рейдмод"
    set FirstMultiboardLib__Item_D[i] = "Все игроки объединяются в команду для того, чтобы победить могущественных боссов."
    set i = 5
    set FirstMultiboardLib__Item_R[i] = 1
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = "|cFFFFFF00» Лимит очков:|r"
    set i = 6
    set FirstMultiboardLib__Item_R[i] = 1
    set FirstMultiboardLib__Item_C[i] = 1
    set FirstMultiboardLib__Item_S[i] = I2S( FirstMultiboardLib__DM_Winpoints )
    set FirstMultiboardLib__Item_D[i] = "Выберите лимит очков. Как только лимит будет достигнут, игра заканчивается."
    set FirstMultiboardLib__Item_N[i] = TRUE
    set i = 7
    set FirstMultiboardLib__Item_R[i] = 1
    set FirstMultiboardLib__Item_C[i] = 2
    set FirstMultiboardLib__Item_S[i] = I2S( FirstMultiboardLib__TDM_Winpoints )
    set FirstMultiboardLib__Item_D[i] = "Выберите лимит очков. Как только лимит будет достигнут, игра заканчивается."
    set FirstMultiboardLib__Item_N[i] = TRUE
    set i = 8
    set FirstMultiboardLib__Item_R[i] = 1
    set FirstMultiboardLib__Item_C[i] = 3
    set FirstMultiboardLib__Item_S[i] = Boolean2RaidMode( FirstMultiboardLib__RAID_HardMode )
    set FirstMultiboardLib__Item_D[i] = "В героическом режиме с боссов выпадают более качественные вещи, но убить их гораздо сложнее."
    set i = 9
    set FirstMultiboardLib__Item_R[i] = 2
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = "|cFFFFFF00» Монстры:|r"
    set i = 10
    set FirstMultiboardLib__Item_R[i] = 2
    set FirstMultiboardLib__Item_C[i] = 1
    set FirstMultiboardLib__Item_S[i] = Boolean2String( FirstMultiboardLib__DM_Creeps )
    set FirstMultiboardLib__Item_D[i] = "Включает/Выключает монстров (крипов). Они перерождаются каждые 15 секунд и улучшаются со временем"
    set i = 11
    set FirstMultiboardLib__Item_R[i] = 2
    set FirstMultiboardLib__Item_C[i] = 2
    set FirstMultiboardLib__Item_S[i] = Boolean2String( FirstMultiboardLib__TDM_Creeps )
    set FirstMultiboardLib__Item_D[i] = "Включает/Выключает монстров (крипов). Они перерождаются каждые 15 секунд и улучшаются со временем"
    set i = 12
    set FirstMultiboardLib__Item_R[i] = 2
    set FirstMultiboardLib__Item_C[i] = 3
    set FirstMultiboardLib__Item_S[i] = Boolean2String( FALSE )
    set FirstMultiboardLib__Item_D[i] = "Включает/Выключает монстров (крипов). Они перерождаются каждые 15 секунд и улучшаются со временем"
    set i = 13
    set FirstMultiboardLib__Item_R[i] = 3
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = "|cFFFFFF00» Выбор героев:|r"
    set i = 14
    set FirstMultiboardLib__Item_R[i] = 3
    set FirstMultiboardLib__Item_C[i] = 1
    set FirstMultiboardLib__Item_S[i] = Integer2Pick( FirstMultiboardLib__DM_Pick )
    set FirstMultiboardLib__Item_D[i] = "Классический или случайный? [Повторения] включает возможность выбор одинаковых героев."
    set i = 15
    set FirstMultiboardLib__Item_R[i] = 3
    set FirstMultiboardLib__Item_C[i] = 2
    set FirstMultiboardLib__Item_S[i] = Integer2Pick( FirstMultiboardLib__TDM_Pick )
    set FirstMultiboardLib__Item_D[i] = "Классический или случайный? [Повторения] включает возможность выбор одинаковых героев."
    set i = 16
    set FirstMultiboardLib__Item_R[i] = 3
    set FirstMultiboardLib__Item_C[i] = 3
    set FirstMultiboardLib__Item_S[i] = Integer2Pick( FirstMultiboardLib__RAID_Pick )
    set FirstMultiboardLib__Item_D[i] = "Классический или случайный? [Повторения] включает возможность выбор одинаковых героев."
    set i = 17
    set FirstMultiboardLib__Item_R[i] = 4
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = "|cFFFFFF00» Руны:|r"
    set i = 18
    set FirstMultiboardLib__Item_R[i] = 4
    set FirstMultiboardLib__Item_C[i] = 1
    set FirstMultiboardLib__Item_S[i] = Boolean2String( FirstMultiboardLib__DM_Runes )
    set FirstMultiboardLib__Item_D[i] = "Включает/Выключает появление рун на арене."
    set i = 19
    set FirstMultiboardLib__Item_R[i] = 4
    set FirstMultiboardLib__Item_C[i] = 2
    set FirstMultiboardLib__Item_S[i] = Boolean2String( FirstMultiboardLib__TDM_Runes )
    set FirstMultiboardLib__Item_D[i] = "Включает/Выключает появление рун на арене."
    set i = 20
    set FirstMultiboardLib__Item_R[i] = 4
    set FirstMultiboardLib__Item_C[i] = 3
    set FirstMultiboardLib__Item_S[i] = Boolean2String( FALSE )
    set FirstMultiboardLib__Item_D[i] = "Включает/Выключает появление рун на арене."
    set i = 21
    set FirstMultiboardLib__Item_R[i] = 5
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = "|cFFFFFF00» Описание:|r"
    set FirstMultiboardLib__Item_W[i] = FirstMultiboardLib__FullScreen_Width
    set i = 22
    set FirstMultiboardLib__Item_R[i] = 6
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = FirstMultiboardLib__Item_D[FirstMultiboardLib__Choosed_I]
    set FirstMultiboardLib__Item_W[i] = FirstMultiboardLib__FullScreen_Width
    set i = 23
    set FirstMultiboardLib__Item_R[i] = 7
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = "|cFFFF0000                                                                                                                             Для старта нажмите |r'ESC'|cFFFF0000 или  |r'-go'"
    set FirstMultiboardLib__Item_W[i] = FirstMultiboardLib__FullScreen_Width
    call EnableColumn( FirstMultiboardLib__Enabled_Column )
    call SetFirstMB( )
    call StartInformation( )
    set FirstMultiboardLib__Arrows_Trg = CreateTrigger( )
    call TriggerRegisterPlayerEvent( FirstMultiboardLib__Arrows_Trg, Host_Player, EVENT_PLAYER_ARROW_LEFT_DOWN )
    call TriggerRegisterPlayerEvent( FirstMultiboardLib__Arrows_Trg, Host_Player, EVENT_PLAYER_ARROW_RIGHT_DOWN )
    call TriggerRegisterPlayerEvent( FirstMultiboardLib__Arrows_Trg, Host_Player, EVENT_PLAYER_ARROW_DOWN_DOWN )
    call TriggerRegisterPlayerEvent( FirstMultiboardLib__Arrows_Trg, Host_Player, EVENT_PLAYER_ARROW_UP_DOWN )
    call TriggerAddAction( FirstMultiboardLib__Arrows_Trg, function Arrows_Action )
    set FirstMultiboardLib__Start_Trg = CreateTrigger( )
    call TriggerRegisterPlayerChatEvent( FirstMultiboardLib__Start_Trg, Host_Player, "-go", true )
    call TriggerRegisterPlayerEvent( FirstMultiboardLib__Start_Trg, Host_Player, EVENT_PLAYER_END_CINEMATIC )
    call TriggerAddAction( FirstMultiboardLib__Start_Trg, function Start_Action )
endfunction

function TDMRevive_Act takes nothing returns nothing
    local integer qxA = 0
    local unit u = GetDyingUnit( )
    local unit killer = GetKillingUnit( )
    local integer cjlocgn_00000000 = 0
    set qxA = GetConvertedPlayerId( GetOwningPlayer( u ) )

    if IsUnitType( u, UNIT_TYPE_HERO )and ( u != killer ) and not TDMKillsLib_Game_Ended and not( GetPlayerSlotState( GetOwningPlayer( u ) ) == PLAYER_SLOT_STATE_LEFT ) then
        set s__Deaths[qxA] = s__Deaths[qxA] + 1
        if qxA < 6 then
            set s__Deaths_Team[1] = s__Deaths_Team[1] + 1
        else
            set s__Deaths_Team[2] = s__Deaths_Team[2] + 1
        endif
        call TriggerSleepAction( 2. ) //2 воскрешение героя
        set cjlocgn_00000000 = GetRandomInt( 1, 5 )
        if qxA < 6 then
            call ReviveHeroLoc( u, s__TDMRevivingLib__Team_1_Loc[cjlocgn_00000000], FALSE )
        else
            call ReviveHeroLoc( u, s__TDMRevivingLib__Team_2_Loc[cjlocgn_00000000], FALSE )
        endif

        call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", u, "origin" ) )
        call AlphaLib_AddAlphing( u )
        call SetUnitInvulTimer(u,2.)
        call SetUnitFlyHeight( u, 0., 0. )
        call IssueImmediateOrder( u, "stop" )

        if GetLocalPlayer( ) == GetOwningPlayer( u ) then
            call ClearSelection( )
            call SelectUnit( u, TRUE )
            call SetCameraPosition( GetUnitX( u ), GetUnitY( u ) )
        endif

    endif
    set u = null
endfunction
function TDMRevivingLib__L takes nothing returns nothing
    set s__TDMRevivingLib__Team_1_Loc[1] = Location( -1673., 1033. )
    set s__TDMRevivingLib__Team_1_Loc[2] = Location( -443., 1768. )
    set s__TDMRevivingLib__Team_1_Loc[3] = Location( -1552., -753. )
    set s__TDMRevivingLib__Team_1_Loc[4] = Location( -2135., -1679. )
    set s__TDMRevivingLib__Team_1_Loc[5] = Location( -2714., 1412. )
    set s__TDMRevivingLib__Team_2_Loc[1] = Location( 378., -441. )
    set s__TDMRevivingLib__Team_2_Loc[2] = Location( 1956., -155. )
    set s__TDMRevivingLib__Team_2_Loc[3] = Location( 2018., 1803. )
    set s__TDMRevivingLib__Team_2_Loc[4] = Location( 1594., -2029. )
    set s__TDMRevivingLib__Team_2_Loc[5] = Location( 85., -1456. )
endfunction

function TDMRevivingLib__TDMRevivingLib_Init takes nothing returns nothing
    local trigger Load
    set TDMRevivingLib_TDM_Rev = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( TDMRevivingLib_TDM_Rev, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( TDMRevivingLib_TDM_Rev, function TDMRevive_Act )
    call DisableTrigger( TDMRevivingLib_TDM_Rev )
    set Load = CreateTrigger( )
    call TriggerRegisterTimerEvent( Load, 0.01, FALSE )
    call TriggerAddAction( Load, function TDMRevivingLib__L )
endfunction

function TKLPreload_Go takes nothing returns nothing
    call TKLS1_preload( )
    call TKLS2_preload( )
    call TKLS3_preload( )
    call TKLS4_preload( )
    call TKLS5_preload( )
    call TKLS6_preload( )
endfunction

function XPLib__XPTextTag takes unit u, integer XP returns nothing
    local texttag tt = CreateTextTagUnitBJ( "+" + I2S( XP ) + " XP", u, -3., 7., 0., 0., 0., 0. )
    if GetLocalPlayer( ) == GetOwningPlayer( u ) then
        call SetTextTagVisibility( tt, TRUE )
    else
        call SetTextTagVisibility( tt, FALSE )
    endif
    call SetTextTagColor( tt, s__Color_Dec_1[6], s__Color_Dec_2[6], s__Color_Dec_3[6], 255 )
    call SetTextTagVelocity( tt, -0.03, -0.03 )
    call SetTextTagFadepoint( tt, 0.8 / 2 )
    call SetTextTagLifespan( tt, 0.8 )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

function XPLib__Is_Owner_Enemy takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = ( IsPlayerEnemy( XPLib__XP_Player, GetOwningPlayer( u ) )and IsUnitType( u, UNIT_TYPE_HERO )and u != XPLib__Non_XP_Unit )
    set u = null
    return b
endfunction

function XPLib__Is_Owner_Ally takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = ( IsPlayerAlly( XPLib__XP_Player, GetOwningPlayer( u ) )and IsUnitType( u, UNIT_TYPE_HERO )and u != XPLib__Non_XP_Unit )
    set u = null
    return b
endfunction

function XPLib__XP_Act takes nothing returns nothing
    local unit u = GetDyingUnit( )
    local unit killer = GetKillingUnit( )
    local integer lvl = GetUnitLevel( u )
    local integer xp = lvl * 80
    local unit FoG
    //система опыта 
    if IsPlayerEnemy( GetOwningPlayer( u ), GetOwningPlayer( killer ) ) then
        call AddHeroXP( killer, xp, false )
        call XPLib__XPTextTag( killer, xp )
        set XPLib__XP_Player = GetOwningPlayer( u )
        set XPLib__Non_XP_Unit = killer
        call GroupEnumUnitsInRange( XPLib__XP_Group, GetUnitX( u ), GetUnitY( u ), 800., Condition( function XPLib__Is_Owner_Enemy ) )
      //  set FoG = FirstOfGroup(XPLib__XP_Group)
        loop
            set FoG = FirstOfGroup( XPLib__XP_Group )
            exitwhen( FoG == null )
            if GetUnitAbilityLevel( u, TKLS7_buff_id ) > 0 then
                call AddHeroXP( FoG, R2I( xp / 4 * TKLS7_modifer ), false )
                call XPLib__XPTextTag( FoG, R2I( xp / 4 * TKLS7_modifer ) )
            else
                call AddHeroXP( FoG, xp / 4, false )
                call XPLib__XPTextTag( FoG, xp / 4 )
            endif
            call GroupRemoveUnit( XPLib__XP_Group, FoG )
        endloop

        call GroupClear( XPLib__XP_Group )
        call GroupEnumUnitsInRange( XPLib__XP_Group, GetUnitX( u ), GetUnitY( u ), 800., Condition( function XPLib__Is_Owner_Ally ) )
      //  set FoG = FirstOfGroup(XPLib__XP_Group)
        loop
            set FoG = FirstOfGroup( XPLib__XP_Group )
            exitwhen( FoG == null )
            call AddHeroXP( FoG, xp / 8, false )
            call XPLib__XPTextTag( FoG, xp / 8 )
            call GroupRemoveUnit( XPLib__XP_Group, FoG )
        endloop
        call GroupClear( XPLib__XP_Group )
    endif

    set u = null
    set killer = null
    set FoG = null
endfunction

function XPLib__Lvl_Act takes nothing returns nothing
    local integer qxA = 0
    local unit h = GetLevelingUnit( )
    call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Other\\Levelup\\LevelupCaster.mdl", h, "origin" ) )
    set qxA = GetConvertedPlayerId( GetOwningPlayer( h ) )
    set s__Level[qxA] = s__Level[qxA] + 1
    if qxA < 6 then
        set s__Lvl_Team[1] = s__Lvl_Team[1] + 1
    else
        set s__Lvl_Team[2] = s__Lvl_Team[2] + 1
    endif
    call SetUnitState( h, UNIT_STATE_LIFE, GetUnitState( h, UNIT_STATE_LIFE ) + GetUnitState( h, UNIT_STATE_MAX_LIFE ) * 0.10 )
    //при повышении уровня востанавливается 25 процент здоровья дисбаланс
    //поменял востановление здоровья с 25% на 10%
    set h = null
endfunction

function XPLib__XPLib_Init takes nothing returns nothing
    local trigger XP_Trg = CreateTrigger( )
    local trigger Lvl_Trg
    call TriggerRegisterAnyUnitEventBJ( XP_Trg, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( XP_Trg, function XPLib__XP_Act )
    set Lvl_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Lvl_Trg, EVENT_PLAYER_HERO_LEVEL )
    call TriggerAddAction( Lvl_Trg, function XPLib__Lvl_Act )
endfunction

function GoPreload takes integer id returns nothing
    if id == 'Hpal' then
        call PALPreload_Go( )
    endif
    if id == 'H000' then
        call DRAPreload_Go( )
    endif
    if id == 'E000' then
        call MRAPreload_Go( )
    endif
    if id == 'Nfir' then
        call FLOPreload_Go( )
    endif
    if id == 'Obla' then
        call GLAPreload_Go( )
    endif
    if id == 'Otch' then
        call SHAPreload_Go( )
    endif
    if id == 'N005' then
        call GROPreload_Go( )
    endif
    if id == 'N006' then
        call ASSPreload_Go( )
    endif
    if id == 'Ntin' then
        call TEHPreload_Go( )
    endif
    if id == 'Hgam' then
        call TKLPreload_Go( )
    endif
    if id == 'H00M' then
        call REAPreload_Go( )
    endif
endfunction

function BuyHeroes_Act takes nothing returns nothing
    local unit Seller = GetSellingUnit( )
    local unit cjlocgn_00000000
    local real cjlocgn_00000001
    local real cjlocgn_00000002
    local boolean cjlocgn_00000003
    local integer cjlocgn_00000004
    local integer cjlocgn_00000005
    if Seller == gg_unit_n002_0006 or Seller == gg_unit_n000_0005 or Seller == gg_unit_n001_0007 then
        set cjlocgn_00000000 = GetSoldUnit( )
        set cjlocgn_00000001 = 0.
        set cjlocgn_00000002 = 0.
        set cjlocgn_00000003 = FALSE
        set cjlocgn_00000004 = 0
        
        if Choosed_Mode == 1 then
            loop
                exitwhen cjlocgn_00000003
                set cjlocgn_00000004 = GetRandomInt( 1, 10 )
                //1 -10
                set cjlocgn_00000003 = not( s__BuyHeroesLib__Is_Loc_Occ[cjlocgn_00000004] )
            endloop
            call SetUnitPositionLoc( cjlocgn_00000000, s__BuyHeroesLib__Create_Loc[cjlocgn_00000004] )
            //10 областей
            set s__BuyHeroesLib__Is_Loc_Occ[cjlocgn_00000004] = TRUE
        else

            if GetConvertedPlayerId( GetOwningPlayer( cjlocgn_00000000 ) ) < 6 then
                set cjlocgn_00000004 = GetRandomInt( 1, 5 )
                call SetUnitPositionLoc( cjlocgn_00000000, s__BuyHeroesLib__Team_1_Loc[cjlocgn_00000004] )
            else
                set cjlocgn_00000004 = GetRandomInt( 1, 5 )
                call SetUnitPositionLoc( cjlocgn_00000000, s__BuyHeroesLib__Team_2_Loc[cjlocgn_00000004] )
            endif

        endif

        call DamageLib_AddToDamageGroup( cjlocgn_00000000 )

        if Choosed_Pick == 1 or Choosed_Pick == 2 then
            call RemoveUnitFromStock( Seller, GetUnitTypeId( cjlocgn_00000000 ) )
            //не удаляет рипппера!
        endif

        if GetLocalPlayer( ) == GetOwningPlayer( cjlocgn_00000000 ) then
            call SetCameraPosition( GetUnitX( cjlocgn_00000000 ), GetUnitY( cjlocgn_00000000 ) )
            call ClearSelection( )
            call SelectUnit( cjlocgn_00000000, true )
        endif

        call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, "Игрок " + s__Color_Hex[GetConvertedPlayerId( GetOwningPlayer( cjlocgn_00000000 ) )] + GetPlayerName( GetOwningPlayer( cjlocgn_00000000 ) ) + "|r получил героя: " + GetUnitName( cjlocgn_00000000 ) )
        set s__Hero[GetConvertedPlayerId( GetOwningPlayer( cjlocgn_00000000 ) )] = cjlocgn_00000000
        set s__Level[GetConvertedPlayerId( GetOwningPlayer( cjlocgn_00000000 ) )] = 1
        call SetPlayerTechMaxAllowed( GetOwningPlayer( cjlocgn_00000000 ) , 'HERO', 0 ) // добавил лимит героев игроку

        if Choosed_Mode == 3 then
            call SetHeroLevel( cjlocgn_00000000, 100, true )
            set s__Level[GetConvertedPlayerId( GetOwningPlayer( cjlocgn_00000000 ) )] = 100
        endif
        if GetConvertedPlayerId( GetOwningPlayer( cjlocgn_00000000 ) ) < 6 then
            set s__Lvl_Team[1] = s__Lvl_Team[1] + 1
        else
            set s__Lvl_Team[2] = s__Lvl_Team[2] + 1
        endif


        set s__ADSLib_ADS_Enabled[GetConvertedPlayerId( GetOwningPlayer( cjlocgn_00000000 ) )] = FALSE //TRUE было

        call GoPreload( GetUnitTypeId( cjlocgn_00000000 ) )

        if GetUnitTypeId( cjlocgn_00000000 ) == 'Hpal' then //Паладин
            set PALS6_m_type[GetConvertedPlayerId( GetOwningPlayer( cjlocgn_00000000 ) )] = 1
            call Energy_AcceptEB( cjlocgn_00000000 )
            if Choosed_Mode == 2 or Choosed_Mode == 3 then
                call UnitRemoveAbility( cjlocgn_00000000, 'A008' )
                call UnitAddAbility( cjlocgn_00000000, 'A03Q' )
            endif
        endif
        if GetUnitTypeId( cjlocgn_00000000 ) == 'H000' then // Исщадье тьмы
            call TriggerRegisterUnitEvent( DRASp2Lib_Trg, cjlocgn_00000000, EVENT_UNIT_DAMAGED )
        endif

        if GetUnitTypeId( cjlocgn_00000000 ) == 'E000' then //Мрак
            set MRAS6_Unit = cjlocgn_00000000 //
            if Choosed_Mode == 2 or Choosed_Mode == 3 then
                call UnitRemoveAbility( cjlocgn_00000000, 'A01J' )
                call UnitAddAbility( cjlocgn_00000000, 'A03S' )
            endif
        endif

        if GetUnitTypeId( cjlocgn_00000000 ) == 'Obla' then //Гладиатор
        endif
        if GetUnitTypeId( cjlocgn_00000000 ) == 'Otch' then // Шаман земли
            if Choosed_Mode == 2 or Choosed_Mode == 3 then
                call UnitRemoveAbility( cjlocgn_00000000, 'A02M' )
                call UnitAddAbility( cjlocgn_00000000, 'A02I' )
            endif
        endif
        if GetUnitTypeId( cjlocgn_00000000 ) == 'N005' then // Громовержец
            if Choosed_Mode == 2 or Choosed_Mode == 3 then
                call UnitRemoveAbility( cjlocgn_00000000, 'A02S' )
                call UnitAddAbility( cjlocgn_00000000, 'A03U' )
            endif
        endif
        if GetUnitTypeId( cjlocgn_00000000 ) == 'N006' then //Убийца
            call SetUnitVertexColor( cjlocgn_00000000, 100, 200, 100, 255 )
        endif
        if GetUnitTypeId( cjlocgn_00000000 ) == 'Hgam' then //Ткач льда
            call TriggerRegisterUnitEvent( TKLS4_Trg, cjlocgn_00000000, EVENT_UNIT_DAMAGED )
        endif
        //задать иконки героев 11 героев
        set cjlocgn_00000005 = 1
        loop
            exitwhen( cjlocgn_00000005 > 11 )
            if GetUnitTypeId( cjlocgn_00000000 ) == s__Hero_Raw[cjlocgn_00000005]then
                set s__Is_Hero_Bought[cjlocgn_00000005] = TRUE
                set s__Hero_Icon_A[GetConvertedPlayerId( GetOwningPlayer( cjlocgn_00000000 ) )] = s__Hero_Ic_A[cjlocgn_00000005]
                set s__Hero_Icon_D[GetConvertedPlayerId( GetOwningPlayer( cjlocgn_00000000 ) )] = s__Hero_Ic_D[cjlocgn_00000005]
            endif
            set cjlocgn_00000005 = cjlocgn_00000005 + 1
        endloop
        call RemoveUnit( s__Circle[GetConvertedPlayerId( GetOwningPlayer( cjlocgn_00000000 ) )] )

        set cjlocgn_00000000 = null
    endif
endfunction

function BuyHeroesLib__L takes nothing returns nothing
    set s__BuyHeroesLib__Create_Loc[1] = Location( 1971., 1774. )
    set s__BuyHeroesLib__Create_Loc[2] = Location( -389., 1881. )
    set s__BuyHeroesLib__Create_Loc[3] = Location( -1543., 1168. )
    set s__BuyHeroesLib__Create_Loc[4] = Location( -1906., -146. )
    set s__BuyHeroesLib__Create_Loc[5] = Location( -2321., -987. )
    set s__BuyHeroesLib__Create_Loc[6] = Location( 1412., -1385. )
    set s__BuyHeroesLib__Create_Loc[7] = Location( 1084., 223. )
    set s__BuyHeroesLib__Create_Loc[8] = Location( 1084., -313. )
    set s__BuyHeroesLib__Create_Loc[9] = Location( 105., -1162. )
    set s__BuyHeroesLib__Create_Loc[10] = Location( -562., 733. )
    set s__BuyHeroesLib__Team_1_Loc[1] = Location( -1673., 1033. )
    set s__BuyHeroesLib__Team_1_Loc[2] = Location( -443., 1768. )
    set s__BuyHeroesLib__Team_1_Loc[3] = Location( -1552., -753. )
    set s__BuyHeroesLib__Team_1_Loc[4] = Location( -2135., -1679. )
    set s__BuyHeroesLib__Team_1_Loc[5] = Location( -2714., 1412. )
    set s__BuyHeroesLib__Team_2_Loc[1] = Location( 378., -441. )
    set s__BuyHeroesLib__Team_2_Loc[2] = Location( 1956., -155. )
    set s__BuyHeroesLib__Team_2_Loc[3] = Location( 2018., 1803. )
    set s__BuyHeroesLib__Team_2_Loc[4] = Location( 1594., -2029. )
    set s__BuyHeroesLib__Team_2_Loc[5] = Location( 85., -1456. )
endfunction

function BuyHeroesLib__BuyHeroesLib_Init takes nothing returns nothing
    local trigger BuyHeroes_Trg = CreateTrigger( )
    local trigger Load
    call TriggerRegisterPlayerUnitEvent( BuyHeroes_Trg, Player( 15 ), EVENT_PLAYER_UNIT_SELL, null )
    call TriggerAddAction( BuyHeroes_Trg, function BuyHeroes_Act )
    set Load = CreateTrigger( )
    call TriggerRegisterTimerEvent( Load, 0.01, FALSE )
    call TriggerAddAction( Load, function BuyHeroesLib__L )
endfunction

function InitGlobals takes nothing returns nothing
    local integer i = 0
    set i = 0
    loop
        exitwhen( i > 1 )
        set udg_all_real[i] = 0
        set i = i + 1
    endloop
    set udg_J_timer = CreateTimer( )
    set udg_all_units_group = CreateGroup( )
endfunction


function InitSounds takes nothing returns nothing
    set gg_snd_click = CreateSound( "Sound\\Interface\\MouseClick1.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_click, "InterfaceClick" )
    call SetSoundDuration( gg_snd_click, 239 )
    set gg_snd_start = CreateSound( "Sound\\Interface\\ArrangedTeamInvitation.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_start, "ArrangedTeamInvitation" )
    call SetSoundDuration( gg_snd_start, 2914 )
    set gg_snd_victory = CreateSound( "Sound\\Music\\mp3Music\\DarkVictory.mp3", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundDuration( gg_snd_victory, 75111 )
    call SetSoundChannel( gg_snd_victory, 0 )
    call SetSoundVolume( gg_snd_victory, 127 )
    call SetSoundPitch( gg_snd_victory, 1.0 )
    set gg_snd_defeat = CreateSound( "Sound\\Music\\mp3Music\\TragicConfrontation.mp3", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundDuration( gg_snd_defeat, 72264 )
    call SetSoundChannel( gg_snd_defeat, 0 )
    call SetSoundVolume( gg_snd_defeat, 127 )
    call SetSoundPitch( gg_snd_defeat, 1.0 )
    set gg_snd_startstart = CreateSound( "Sound\\Interface\\GameFound.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_startstart, "GameFound" )
    call SetSoundDuration( gg_snd_startstart, 7488 )
    set gg_snd_kill = CreateSound( "Sound\\Interface\\SecretFound.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_kill, "SecretFound" )
    call SetSoundDuration( gg_snd_kill, 2525 )
    set gg_snd_LeaveSound = CreateSound( "Sound\\Interface\\UpkeepRing.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_LeaveSound, "UpkeepLevel" )
    call SetSoundDuration( gg_snd_LeaveSound, 1579 )
    set gg_snd_a = CreateSound( "war3mapImported\\a.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_a, 12924 )
    call SetSoundChannel( gg_snd_a, 0 )
    call SetSoundVolume( gg_snd_a, 127 )
    call SetSoundPitch( gg_snd_a, 1.0 )
    set gg_snd_laugh = CreateSound( "Sound\\Ambient\\DoodadEffects\\SargerasLaugh.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_laugh, "SargerasLaugh" )
    call SetSoundDuration( gg_snd_laugh, 3326 )
    set gg_snd_Boss_1_Berserk = CreateSound( "Units\\Undead\\Ghoul\\GhoulYesAttack3.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_Boss_1_Berserk, "GhoulYesAttack" )
    call SetSoundDuration( gg_snd_Boss_1_Berserk, 1521 )
    set gg_snd_Boss_1_Cripple = CreateSound( "Units\\Undead\\Ghoul\\GhoulReady1.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_Boss_1_Cripple, "GhoulReady" )
    call SetSoundDuration( gg_snd_Boss_1_Cripple, 1471 )
    set gg_snd_BossDead = CreateSound( "Sound\\Ambient\\DoodadEffects\\WarlockAppears.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_BossDead, "ArchimondeAppearsSound" )
    call SetSoundDuration( gg_snd_BossDead, 7361 )
    set gg_snd_MentalCry = CreateSound( "Abilities\\Spells\\Undead\\ReviveUndead\\ReviveUndead.wav", false, true, true, 10, 10, "SpellsEAX" )
    call SetSoundParamsFromLabel( gg_snd_MentalCry, "ReviveUndead" )
    call SetSoundDuration( gg_snd_MentalCry, 3623 )
    set gg_snd_Roar = CreateSound( "Sound\\Ambient\\DoodadEffects\\SargerasRoar.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_Roar, "SargerasRoar" )
    call SetSoundDuration( gg_snd_Roar, 4481 )
    set gg_snd_Music2 = "Sound\\Music\\mp3Music\\Credits.mp3"
    set gg_snd_Music1 = "Sound\\Music\\mp3Music\\PH1.mp3"
    set gg_snd_horn = CreateSound( "Sound\\Ambient\\DoodadEffects\\TheHornOfCenarius.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_horn, "HornOfCenariusSound" )
    call SetSoundDuration( gg_snd_horn, 12121 )
    call SetSoundChannel( gg_snd_horn, 8 )
    set gg_snd_Multi_2 = CreateSound( "war3mapImported\\Multi_2.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_Multi_2, 2043 )
    call SetSoundChannel( gg_snd_Multi_2, 0 )
    call SetSoundVolume( gg_snd_Multi_2, 127 )
    call SetSoundPitch( gg_snd_Multi_2, 1.0 )
    set gg_snd_Multi_3 = CreateSound( "war3mapImported\\Multi_3.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_Multi_3, 1625 )
    call SetSoundChannel( gg_snd_Multi_3, 0 )
    call SetSoundVolume( gg_snd_Multi_3, 127 )
    call SetSoundPitch( gg_snd_Multi_3, 1.0 )
    set gg_snd_Multi_4 = CreateSound( "war3mapImported\\MultiKill_4.mp3", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundDuration( gg_snd_Multi_4, 1808 )
    call SetSoundChannel( gg_snd_Multi_4, 0 )
    call SetSoundVolume( gg_snd_Multi_4, 127 )
    call SetSoundPitch( gg_snd_Multi_4, 1.0 )
    set gg_snd_Multi_5 = CreateSound( "war3mapImported\\MultiKill_5.mp3", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundDuration( gg_snd_Multi_5, 2356 )
    call SetSoundChannel( gg_snd_Multi_5, 0 )
    call SetSoundVolume( gg_snd_Multi_5, 127 )
    call SetSoundPitch( gg_snd_Multi_5, 1.0 )
    set gg_snd_Multi_6 = CreateSound( "war3mapImported\\MultiKill_6.mp3", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundDuration( gg_snd_Multi_6, 2017 )
    call SetSoundChannel( gg_snd_Multi_6, 0 )
    call SetSoundVolume( gg_snd_Multi_6, 127 )
    call SetSoundPitch( gg_snd_Multi_6, 1.0 )
    set gg_snd_cd = CreateSound( "Sound\\Interface\\BattleNetTick.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_cd, "ChatroomTimerTick" )
    call SetSoundDuration( gg_snd_cd, 476 )
    set gg_snd_die = CreateSound( "war3mapImported\\die.mp3", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundDuration( gg_snd_die, 3380 )
    call SetSoundChannel( gg_snd_die, 8 )
    call SetSoundVolume( gg_snd_die, 127 )
    call SetSoundPitch( gg_snd_die, 1.0 )
    set gg_snd_Impuls_sound = CreateSound( "Abilities\\Spells\\Orc\\Purge\\PurgeTarget1.wav", false, true, true, 10, 10, "SpellsEAX" )
    call SetSoundParamsFromLabel( gg_snd_Impuls_sound, "Purge" )
    call SetSoundDuration( gg_snd_Impuls_sound, 2096 )
    set gg_snd_GROS3_Sound = CreateSound( "Abilities\\Spells\\Orc\\LightningBolt\\LightningBolt.wav", false, true, true, 10, 10, "SpellsEAX" )
    call SetSoundParamsFromLabel( gg_snd_GROS3_Sound, "LightningBolt" )
    call SetSoundDuration( gg_snd_GROS3_Sound, 2136 )
    set gg_snd_ASS_Acid = CreateSound( "Abilities\\Spells\\Other\\AcidBomb\\AlchemistAcidBurnMissileDeath1.wav", false, true, true, 10, 10, "CombatSoundsEAX" )
    call SetSoundParamsFromLabel( gg_snd_ASS_Acid, "AcidBombImpact" )
    call SetSoundDuration( gg_snd_ASS_Acid, 1625 )
    set gg_snd_DEA_horn = CreateSound( "war3mapImported\\horn.mp3", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundDuration( gg_snd_DEA_horn, 962 )
    call SetSoundChannel( gg_snd_DEA_horn, 0 )
    call SetSoundVolume( gg_snd_DEA_horn, 127 )
    call SetSoundPitch( gg_snd_DEA_horn, 1.0 )
    set gg_snd_REA_S3 = CreateSound( "Sound\\Ambient\\DoodadEffects\\BlueFireBurstLoop.wav", true, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_REA_S3, "BlueFireLoop" )
    call SetSoundDuration( gg_snd_REA_S3, 4000 )
    call SetSoundDistanceCutoff( gg_snd_REA_S3, 900.0 )
    set gg_snd_MR_Say = CreateSound( "Sound\\Dialogue\\NightElfCampaign\\NightElf01\\N01Tyrande27.mp3", false, false, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_MR_Say, "N01Tyrande27" )
    call SetSoundDuration( gg_snd_MR_Say, 5538 )
    call SetSoundVolume( gg_snd_MR_Say, 127 )
endfunction
function CreateBuildingsForPlayer0 takes nothing returns nothing
    local player p = Player( 0 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0008 = CreateUnit( p, 'ncp2', 2880.0, -3008.0, 270.000 )
endfunction
function CreateBuildingsForPlayer1 takes nothing returns nothing
    local player p = Player( 1 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0009 = CreateUnit( p, 'ncp2', 2944.0, -3008.0, 270.000 )
endfunction
function CreateBuildingsForPlayer2 takes nothing returns nothing
    local player p = Player( 2 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0010 = CreateUnit( p, 'ncp2', 3072.0, -3008.0, 270.000 )
endfunction
function CreateBuildingsForPlayer3 takes nothing returns nothing
    local player p = Player( 3 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0011 = CreateUnit( p, 'ncp2', 3136.0, -3008.0, 270.000 )
endfunction

function CreateBuildingsForPlayer4 takes nothing returns nothing
    local player p = Player( 4 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0012 = CreateUnit( p, 'ncp2', 3136.0, -3008.0, 270.000 )
endfunction

function CreateBuildingsForPlayer5 takes nothing returns nothing
    local player p = Player( 5 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0013 = CreateUnit( p, 'ncp2', 2880.0, -3264.0, 270.000 )
endfunction

function CreateBuildingsForPlayer6 takes nothing returns nothing
    local player p = Player( 6 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0014 = CreateUnit( p, 'ncp2', 2944.0, -3264.0, 270.000 )
endfunction
function CreateBuildingsForPlayer7 takes nothing returns nothing
    local player p = Player( 7 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0015 = CreateUnit( p, 'ncp2', 3072.0, -3264.0, 270.000 )
endfunction

function CreateBuildingsForPlayer8 takes nothing returns nothing
    local player p = Player( 8 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0016 = CreateUnit( p, 'ncp2', 3136.0, -3264.0, 270.000 )
endfunction


function CreateBuildingsForPlayer9 takes nothing returns nothing
    local player p = Player( 9 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0017 = CreateUnit( p, 'ncp2', 3136.0, -3264.0, 270.000 )
endfunction


function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p = Player( PLAYER_NEUTRAL_PASSIVE )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u = CreateUnit( p, 'ncop', -1664.0, 1024.0, 270.000 )
    set u = CreateUnit( p, 'ncop', 384.0, -448.0, 270.000 )
    set u = CreateUnit( p, 'nmoo', 1984.0, -1984.0, 270.000 )
    set gg_unit_n000_0005 = CreateUnit( p, 'n000', 2880.0, -3136.0, 270.000 )
    call SetUnitColor( gg_unit_n000_0005, ConvertPlayerColor( 0 ) )
    set gg_unit_n002_0006 = CreateUnit( p, 'n002', 3136.0, -3136.0, 270.000 )
    call SetUnitColor( gg_unit_n002_0006, ConvertPlayerColor( 9 ) )
    set gg_unit_n001_0007 = CreateUnit( p, 'n001', 3008.0, -3136.0, 270.000 )
    call SetUnitColor( gg_unit_n001_0007, ConvertPlayerColor( 6 ) )
    set gg_unit_edos_0053 = CreateUnit( p, 'edos', 832.0, 1344.0, 270.000 )
    call SetUnitColor( gg_unit_edos_0053, ConvertPlayerColor( 10 ) )
endfunction
function CreateNeutralPassive takes nothing returns nothing
    local player p = Player( PLAYER_NEUTRAL_PASSIVE )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u = CreateUnit( p, 'nfro', 1637.5, 2077.7, 231.906 )
    set u = CreateUnit( p, 'nfro', 2163.3, 814.1, 354.067 )
    set u = CreateUnit( p, 'nfro', 1477.1, -625.1, 161.768 )
    set u = CreateUnit( p, 'nfro', 1446.9, -2932.1, 197.936 )
    set u = CreateUnit( p, 'nfro', -1258.3, 2371.6, 275.425 )
    set u = CreateUnit( p, 'nrac', -43.2, -310.4, 257.791 )
    set u = CreateUnit( p, 'nalb', 2839.4, -1136.6, 146.771 )
    set u = CreateUnit( p, 'nalb', -3174.3, 2555.5, 113.338 )
    set u = CreateUnit( p, 'nalb', -3182.9, -1754.1, 197.661 )
    set u = CreateUnit( p, 'nalb', 384.1, -1950.7, 153.692 )
    set u = CreateUnit( p, 'nfro', -2645.5, 712.9, 324.601 )
    set u = CreateUnit( p, 'nfro', 1848.8, 1224.1, 118.634 )
    set u = CreateUnit( p, 'nfro', 2043.3, 1753.8, 191.552 )
    set u = CreateUnit( p, 'nfro', 240.5, -1682.1, 219.151 )
endfunction
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer0()
    call CreateBuildingsForPlayer1()
    call CreateBuildingsForPlayer2()
    call CreateBuildingsForPlayer3()
    call CreateBuildingsForPlayer4()
    call CreateBuildingsForPlayer5()
    call CreateBuildingsForPlayer6()
    call CreateBuildingsForPlayer7()
    call CreateBuildingsForPlayer8()
    call CreateBuildingsForPlayer9()
endfunction

function CreatePlayerUnits takes nothing returns nothing
endfunction
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings( )
    call CreatePlayerBuildings( )
    call CreateNeutralPassive( )
    call CreatePlayerUnits( )
endfunction

function CreateRegions takes nothing returns nothing
    local weathereffect we
    set gg_rct_OBEL = Rect( -2464.0, -2464.0, -2048.0, -2016.0 )
    set gg_rct_MR = Rect( -1760.0, 960.0, -1312.0, 1408.0 )
endfunction

function Trig_PartyFrame_Alliance_Actions takes nothing returns nothing
    set bj_forLoopBIndex = 1
    set bj_forLoopBIndexEnd = 5
    loop
        exitwhen bj_forLoopBIndex > bj_forLoopBIndexEnd
        set bj_forLoopAIndex = 1
        set bj_forLoopAIndexEnd = 5
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            call SetPlayerAllianceStateBJ( ConvertedPlayer( GetForLoopIndexB( ) ), ConvertedPlayer( GetForLoopIndexA( ) ), bj_ALLIANCE_ALLIED_VISION )
            call SetPlayerAllianceStateBJ( ConvertedPlayer( GetForLoopIndexA( ) ), ConvertedPlayer( GetForLoopIndexB( ) ), bj_ALLIANCE_ALLIED_VISION )
            set bj_forLoopAIndex = bj_forLoopAIndex + 1
        endloop
        set bj_forLoopBIndex = bj_forLoopBIndex + 1
    endloop

    set bj_forLoopBIndex = 6
    set bj_forLoopBIndexEnd = 10
    loop
        exitwhen bj_forLoopBIndex > bj_forLoopBIndexEnd
        set bj_forLoopAIndex = 6
        set bj_forLoopAIndexEnd = 10
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            call SetPlayerAllianceStateBJ( ConvertedPlayer( GetForLoopIndexB( ) ), ConvertedPlayer( GetForLoopIndexA( ) ), bj_ALLIANCE_ALLIED_VISION )
            call SetPlayerAllianceStateBJ( ConvertedPlayer( GetForLoopIndexA( ) ), ConvertedPlayer( GetForLoopIndexB( ) ), bj_ALLIANCE_ALLIED_VISION )
            set bj_forLoopAIndex = bj_forLoopAIndex + 1
        endloop
        set bj_forLoopBIndex = bj_forLoopBIndex + 1
    endloop
endfunction

function InitTrig_PartyFrame_Alliance takes nothing returns nothing
    set gg_trg_PartyFrame_Alliance = CreateTrigger( )
    call TriggerRegisterTimerEventSingle( gg_trg_PartyFrame_Share, 0.02 )
    call TriggerAddAction( gg_trg_PartyFrame_Alliance, function Trig_PartyFrame_Alliance_Actions )
endfunction

function Trig_PartyFrame_Share_Actions takes nothing returns nothing
   // call SetReservedLocalHeroButtons( 1 ) //не знаю что это такое

    call SetPlayerAllianceBJ( Player( 0 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 1 ) )
    call SetPlayerAllianceBJ( Player( 0 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 2 ) )
    call SetPlayerAllianceBJ( Player( 0 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 3 ) )

    call SetPlayerAllianceBJ( Player( 1 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 0 ) )
    call SetPlayerAllianceBJ( Player( 1 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 2 ) )
    call SetPlayerAllianceBJ( Player( 1 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 3 ) )

    call SetPlayerAllianceBJ( Player( 2 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 0 ) )
    call SetPlayerAllianceBJ( Player( 2 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 1 ) )
    call SetPlayerAllianceBJ( Player( 2 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 3 ) )

    call SetPlayerAllianceBJ( Player( 3 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 0 ) )
    call SetPlayerAllianceBJ( Player( 3 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 1 ) )
    call SetPlayerAllianceBJ( Player( 3 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 2 ) )

    call SetPlayerAllianceBJ( Player( 4 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 0 ) )
    call SetPlayerAllianceBJ( Player( 4 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 1 ) )
    call SetPlayerAllianceBJ( Player( 4 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 2 ) )
    call SetPlayerAllianceBJ( Player( 4 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 3 ) )


    call SetPlayerAllianceBJ( Player( 5 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 6 ) )
    call SetPlayerAllianceBJ( Player( 5 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 7 ) )
    call SetPlayerAllianceBJ( Player( 5 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 8 ) )

    call SetPlayerAllianceBJ( Player( 6 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 5 ) )
    call SetPlayerAllianceBJ( Player( 6 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 7 ) )
    call SetPlayerAllianceBJ( Player( 6 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 8 ) )

    call SetPlayerAllianceBJ( Player( 7 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 5 ) )
    call SetPlayerAllianceBJ( Player( 7 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 6 ) )
    call SetPlayerAllianceBJ( Player( 7 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 8 ) )

    call SetPlayerAllianceBJ( Player( 8 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 5 ) )
    call SetPlayerAllianceBJ( Player( 8 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 6 ) )
    call SetPlayerAllianceBJ( Player( 8 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 7 ) )

    call SetPlayerAllianceBJ( Player( 9 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 5 ) )
    call SetPlayerAllianceBJ( Player( 9 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 6 ) )
    call SetPlayerAllianceBJ( Player( 9 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 7 ) )
    call SetPlayerAllianceBJ( Player( 9 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 8 ) )
endfunction

function InitTrig_PartyFrame_Share takes nothing returns nothing
    set gg_trg_PartyFrame_Share = CreateTrigger( )
    call TriggerRegisterTimerEventSingle( gg_trg_PartyFrame_Share, 0.01 )
    call TriggerAddAction( gg_trg_PartyFrame_Share, function Trig_PartyFrame_Share_Actions )
endfunction

function Trig_Quests_Actions takes nothing returns nothing
    call CreateQuestBJ( bj_QUESTTYPE_REQ_DISCOVERED, "|cFFFFFF00Команды|r", "Ниже приведен список доступных команд:|n|cFF8080FF-nd|r - Включает/Выключает показ наносимого урона;|n|cFF8080FF-ms|r - Показывает текущую скорость Вашего героя;|n|cFF8080FF-ds|r - Включает/Выключает систему отмену выделения чужих юнитов;|n|cFF8080FF-team #|r - Переименовывает Вашу команду (если Вы - первый в команде).", "ReplaceableTextures\\CommandButtons\\BTNEngineeringUpgrade.blp" )
    //call CreateQuestBJ( bj_QUESTTYPE_OPT_DISCOVERED, "|cFFFFFF00Титры|r", "Создатель карты: |cFF8080FFinadequate_|r,|n|cFF36FF39Daro|r, |cFF36FF39Skype:|r null|n|cFF36FF39vk.com/null|r|n|nТитры:|nxgm.ru, Unforgiven, Матвей Кулешов, Кудров Илья, pLaY:), LuNa_aDa, MegaBlax, Evilgamer, The MARK..., ", "ReplaceableTextures\\CommandButtons\\BTNAuraOfDarkness.blp" )
    call CreateQuestBJ( bj_QUESTTYPE_OPT_DISCOVERED, "|cFFFFFF00Титры|r", "Создатель карты: |n|cfffc4e09Daro|r, |cFF8080FFinadequate_|r, |cFF36FF39Discord:|r discord.gg/M9tURd7 |n|cFF36FF39vk.com/war3lows|r|n|nТитры:|nxgm.guru, ", "ReplaceableTextures\\CommandButtons\\BTNAuraOfDarkness.blp" )
    call CreateQuestBJ( bj_QUESTTYPE_REQ_DISCOVERED, "|cFFFFFF00Полезности|r", "Нажмите |cFF8080FFESC|r для выбора магазина. Магазин работает на ЛЮБОЙ дистанции!", "ReplaceableTextures\\CommandButtons\\BTNRegeneration.blp" )
    call FlashQuestDialogButton( )
endfunction
function InitTrig_Quests takes nothing returns nothing
    set gg_trg_Quests = CreateTrigger( )
    call TriggerAddAction( gg_trg_Quests, function Trig_Quests_Actions )
endfunction

function Trig_Music_Actions takes nothing returns nothing
    call ClearMapMusicBJ( )
    call SetMapMusicRandomBJ( "UFSbGmQVULSzqPCRbdetPuuCorebGmQVULSzqPCRbdetPuuMusicbGmQVULSzqPCRbdetPuuMusic1.mp3" )
    call SetMapMusicRandomBJ( "UFSbGmQVULSzqPCRbdetPuuCorebGmQVULSzqPCRbdetPuuMusicbGmQVULSzqPCRbdetPuuMusic2.mp3" )
    call SetMapMusicRandomBJ( "UFSbGmQVULSzqPCRbdetPuuCorebGmQVULSzqPCRbdetPuuMusicbGmQVULSzqPCRbdetPuuMusic3.mp3" )
endfunction

function InitTrig_Music takes nothing returns nothing
    set gg_trg_Music = CreateTrigger( )
    call TriggerRegisterTimerEventSingle( gg_trg_Music, 0.01 )
    call TriggerAddAction( gg_trg_Music, function Trig_Music_Actions )
endfunction

function InitTrig_ISS takes nothing returns nothing
endfunction

function Trig_createsets_Actions takes nothing returns nothing
    call s__items_add( itemlist, 'gcel', 'I004', TRUE )
    call s__items_add( itemlist, 'ratc', 'I008', TRUE )
    call s__items_add( itemlist, 'rag1', 'I00B', TRUE )
    call s__items_add( itemlist, 'belv', 'I00G', TRUE )
    call s__items_add( itemlist, 'ciri', 'I00F', TRUE )
    call s__items_add( itemlist, 'bgst', 'I00E', TRUE )
    call s__items_add( itemlist, 'I00L', 'I00K', TRUE )
    call s__items_add( itemlist, 'rde2', 'I00N', TRUE )
    call s__items_add( itemlist, 'I00P', 'I00O', TRUE )
    call s__items_add( itemlist, 'cnob', 'I011', TRUE )
    call s__items_add( itemlist, 'I013', 'I012', TRUE )
    call s__items_add( itemlist, 'rhth', 'I014', TRUE )
    call s__items_add( itemlist, 'I016', 'I015', TRUE )
    call s__items_add( itemlist, 'prvt', 'I018', TRUE )
    call s__items_add( itemlist, 'I01A', 'I019', TRUE )

    call s__recepts_add( receptlist, 'ratf', 'gcel', 'ratc', 'bspd', 'I00L', 0, 0, 0 ) //ботинок
    call s__recepts_add( receptlist, 'belv', 'rag1', 'rag1', 'rag1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'ciri', 'rin1', 'rin1', 'rin1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'bgst', 'rst1', 'rst1', 'rst1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'bgst', 'rst1', 'rst1', 'rst1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'rde2', 'rde1', 'rde1', 'rde1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'spsh', 'brac', 'brac', 'rde2', 'elif', 'I00P', 0, 0 ) //оберег
    call s__recepts_add( receptlist, 'tmmt', 'cnob', 'cnob', 'rde1', 'rat6', 'I013', 0, 0 ) //оплот воздаяния
    call s__recepts_add( receptlist, 'brag', 'cnob', 'rlif', 'rhth', 'brac', 'I016', 0, 0 ) //избежание
    call s__recepts_add( receptlist, 'prvt', 'rhth', 'rhth', 'rhth', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'rde4', 'I01A', 'prvt', 'bspd', 0, 0, 0, 0 )

    call s__items_add( itemlist, 'gcel', 'I004', TRUE )
    call s__items_add( itemlist, 'ratc', 'I008', TRUE )
    call s__items_add( itemlist, 'rat6', 'I00A', TRUE )
    call s__items_add( itemlist, 'rde1', 'I006', TRUE )
    call s__items_add( itemlist, 'rlif', 'I005', TRUE )
    call s__items_add( itemlist, 'rin1', 'I00D', TRUE )
    call s__items_add( itemlist, 'rst1', 'I00C', TRUE )
    call s__items_add( itemlist, 'brac', 'I009', TRUE )
    call s__items_add( itemlist, 'bspd', 'I007', TRUE )
    call s__items_add( itemlist, 'rag1', 'I00B', TRUE )
    call s__items_add( itemlist, 'belv', 'I00G', TRUE )
    call s__items_add( itemlist, 'ciri', 'I00F', TRUE )
    call s__items_add( itemlist, 'bgst', 'I00E', TRUE )
    call s__items_add( itemlist, 'I00L', 'I00K', TRUE )
    call s__items_add( itemlist, 'rde2', 'I00N', TRUE )
    call s__items_add( itemlist, 'I00P', 'I00O', TRUE )
    call s__items_add( itemlist, 'cnob', 'I011', TRUE )
    call s__items_add( itemlist, 'I013', 'I012', TRUE )
    call s__items_add( itemlist, 'rhth', 'I014', TRUE )
    call s__items_add( itemlist, 'I016', 'I015', TRUE )
    call s__items_add( itemlist, 'prvt', 'I018', TRUE )
    call s__items_add( itemlist, 'I01A', 'I019', TRUE )
    call s__items_add( itemlist, 'I01A', 'I019', TRUE )

    //call s__items_add( itemlist, 'desc', 'desc', TRUE )

    //создать пустышку для древнего свитка
    call s__recepts_add( receptlist, 'ratf', 'gcel', 'ratc', 'bspd', 'I00L', 0, 0, 0 ) //ботинок
    call s__recepts_add( receptlist, 'belv', 'rag1', 'rag1', 'rag1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'ciri', 'rin1', 'rin1', 'rin1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'bgst', 'rst1', 'rst1', 'rst1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'rde2', 'rde1', 'rde1', 'rde1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'spsh', 'brac', 'brac', 'rde2', 'rlif', 'I00P', 0, 0 ) //оберег
    call s__recepts_add( receptlist, 'tmmt', 'cnob', 'cnob', 'rde1', 'rat6', 'I013', 0, 0 ) //оплот воздаяния
    call s__recepts_add( receptlist, 'brag', 'cnob', 'rlif', 'rhth', 'brac', 'I016', 0, 0 ) //избежание
    call s__recepts_add( receptlist, 'prvt', 'rhth', 'rhth', 'rhth', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'rde4', 'I01A', 'prvt', 'bspd', 0, 0, 0, 0 )

endfunction

function InitTrig_createsets takes nothing returns nothing
    set gg_trg_createsets = CreateTrigger( )
    call TriggerRegisterTimerEvent( gg_trg_createsets, 0.01, false )
    call TriggerAddAction( gg_trg_createsets, function Trig_createsets_Actions )
endfunction

function InitCustomTriggers takes nothing returns nothing
    call InitTrig_PartyFrame_Alliance( )
    call InitTrig_PartyFrame_Share( )
    call InitTrig_Quests( )
    call InitTrig_Music( )
    call InitTrig_ISS( )
    call InitTrig_createsets( )
    call InitTrig_DeleteRune()
    //что работает без либ
    call InitTrig_AddToGroupDamage()
    call InitTrig_DamageCategory0()
endfunction
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute( gg_trg_PartyFrame_Alliance )
    call ConditionalTriggerExecute( gg_trg_Quests )
endfunction

function InitCustomPlayerSlots takes nothing returns nothing
    call SetPlayerStartLocation(Player(0), 0)
    call ForcePlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(0), false)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(1), 1)
    call ForcePlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(1), false)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(2), 2)
    call ForcePlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(2), false)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(3), 3)
    call ForcePlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(3), false)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(4), 4)
    call ForcePlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(4), false)
    call SetPlayerController(Player(4), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(5), 5)
    call ForcePlayerStartLocation(Player(5), 5)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(5), false)
    call SetPlayerController(Player(5), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(6), 6)
    call ForcePlayerStartLocation(Player(6), 6)
    call SetPlayerColor(Player(6), ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(6), false)
    call SetPlayerController(Player(6), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(7), 7)
    call ForcePlayerStartLocation(Player(7), 7)
    call SetPlayerColor(Player(7), ConvertPlayerColor(7))
    call SetPlayerRacePreference(Player(7), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(7), false)
    call SetPlayerController(Player(7), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(8), 8)
    call ForcePlayerStartLocation(Player(8), 8)
    call SetPlayerColor(Player(8), ConvertPlayerColor(8))
    call SetPlayerRacePreference(Player(8), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(8), false)
    call SetPlayerController(Player(8), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(9), 9)
    call ForcePlayerStartLocation(Player(9), 9)
    call SetPlayerColor(Player(9), ConvertPlayerColor(9))
    call SetPlayerRacePreference(Player(9), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(9), false)
    call SetPlayerController(Player(9), MAP_CONTROL_USER)
endfunction

function InitCustomTeams takes nothing returns nothing
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerState(Player(0), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerState(Player(1), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(2), 0)
    call SetPlayerState(Player(2), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(3), 0)
    call SetPlayerState(Player(3), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(4), 0)
    call SetPlayerState(Player(4), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
    call SetPlayerTeam(Player(5), 1)
    call SetPlayerState(Player(5), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(6), 1)
    call SetPlayerState(Player(6), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(7), 1)
    call SetPlayerState(Player(7), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(8), 1)
    call SetPlayerState(Player(8), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(9), 1)
    call SetPlayerState(Player(9), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(8), true)
endfunction

function InitAllyPriorities takes nothing returns nothing
    call SetStartLocPrioCount(0, 9)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(1, 9)
    call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(2, 9)
    call SetStartLocPrio(2, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(3, 9)
    call SetStartLocPrio(3, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(4, 9)
    call SetStartLocPrio(4, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 4, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(5, 9)
    call SetStartLocPrio(5, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(6, 9)
    call SetStartLocPrio(6, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(7, 9)
    call SetStartLocPrio(7, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 6, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(8, 9)
    call SetStartLocPrio(8, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 6, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 7, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 8, 9, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(9, 9)
    call SetStartLocPrio(9, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 2, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 3, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 4, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 5, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 6, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 7, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(9, 8, 8, MAP_LOC_PRIO_HIGH)
endfunction

function main takes nothing returns nothing
    call SetCameraBounds( -3328.0 + GetCameraMargin( CAMERA_MARGIN_LEFT ), -3456.0 + GetCameraMargin( CAMERA_MARGIN_BOTTOM ), 3328.0 - GetCameraMargin( CAMERA_MARGIN_RIGHT ), 2816.0 - GetCameraMargin( CAMERA_MARGIN_TOP ), -3328.0 + GetCameraMargin( CAMERA_MARGIN_LEFT ), 2816.0 - GetCameraMargin( CAMERA_MARGIN_TOP ), 3328.0 - GetCameraMargin( CAMERA_MARGIN_RIGHT ), -3456.0 + GetCameraMargin( CAMERA_MARGIN_BOTTOM ) )
    call SetDayNightModels( "Environment\\DNC\\DNCAshenvale\\DNCAshenvaleTerrain\\DNCAshenvaleTerrain.mdl", "Environment\\DNC\\DNCAshenvale\\DNCAshenvaleUnit\\DNCAshenvaleUnit.mdl" )
    call SetTerrainFogEx( 0, 1300.0, 3000.0, 0.000, 0.502, 0.502, 0.502 )
    call SetWaterBaseColor( 0, 128, 128, 255 )
    call NewSoundEnvironment( "Default" )
    call SetAmbientDaySound( "AshenvaleDay" )
    call SetAmbientNightSound( "AshenvaleNight" )
    call SetMapMusic( "Music", true, 0 )
    call InitSounds( )
    call CreateRegions( )
    call CreateAllUnits( )
    call InitBlizzard( )
    call ExecuteFunc( "jasshelper__initstructs7880468" )
    call ExecuteFunc( "cjCallbacksRegestration__initX" )
    call ExecuteFunc( "cjLibw560nbs9b8nse46703948__init" )
    call ExecuteFunc( "AAK__I" )
    call ExecuteFunc( "AI__I" )
    call ExecuteFunc( "Anims__I" )
    call ExecuteFunc( "Colors__I" )
    call ExecuteFunc( "ComLib__ComLib_Init" )
    call ExecuteFunc( "DMMultiboardLib_Init" )
    call ExecuteFunc( "DPSLib__DPSLib_Init" )
    call ExecuteFunc( "Energy__I" )
    call ExecuteFunc( "EscShops__init" )
    call ExecuteFunc( "GLAS4__I" )
    call ExecuteFunc( "GoldLib__GoldLib_Init" )
    call ExecuteFunc( "InitializationLib__InitializationLib_In" )
    call ExecuteFunc( "ItemsLib__ItemsLib_Init" )
    call ExecuteFunc( "LeaveLib__LeaveLib_Init" )
    call ExecuteFunc( "MRAS6__MRAS6_In" )
    call ExecuteFunc( "MoonRiderQuestLib__Init" )
    call ExecuteFunc( "PALS4__I" )
    call ExecuteFunc( "PALS6__I" )
    call ExecuteFunc( "PALS7__I" )
    call ExecuteFunc( "PingLib__PingLib_Init" )
    call ExecuteFunc( "REAS4___I" )
    call ExecuteFunc( "REAS6___I" ) //скороть татки рипер
    call ExecuteFunc( "RunesLib__RunesLib_Init" )
    call ExecuteFunc( "SHAS3A___I" )
    call ExecuteFunc( "SetUnitMax__I" )
    call ExecuteFunc( "Stun__I" )
    call ExecuteFunc( "TDMMultiboardLib_Init" )
    call ExecuteFunc( "TEHS2___I" )
    call ExecuteFunc( "TimeLib__TimeLib_Init" )
    call ExecuteFunc( "ADSLib_Init" )
    call ExecuteFunc( "ASSS4___I" )
    call ExecuteFunc( "ASSS5___I" )
    call ExecuteFunc( "ASSS6___I" ) //добавлено
    call ExecuteFunc( "DMKillsLib__DMKillsLib_Init" )
    call ExecuteFunc( "DRASp2Lib__DRASp2Lib_Init" )
    call ExecuteFunc( "DRASp6Lib__DRASp6Lib_Init" )
    call ExecuteFunc( "DamageLib__DamageLib_Init" )
    call ExecuteFunc( "Dest__I" )
    call ExecuteFunc( "GLAS5___I" )
    call ExecuteFunc( "GLAS6___I" )
    call ExecuteFunc( "GLAS7___I" )
    call ExecuteFunc( "GROS4___I" )
    call ExecuteFunc( "ISS__init" )
    call ExecuteFunc( "MRAS4Lib__MRAS4Lib_In" )
    call ExecuteFunc( "GROS_Sfera_In" )
    call ExecuteFunc( "PALS5__I" )
    call ExecuteFunc( "REAS2___I" )
    call ExecuteFunc( "REAS3___I" )
    call ExecuteFunc( "SHAS4___I" )
    call ExecuteFunc( "TDMKillsLib__TDMKillsLib_Init" )
    call ExecuteFunc( "TKLS6___I" )
    call ExecuteFunc( "UseItem__I" )
    call ExecuteFunc( "ASSS1___I" )
    call ExecuteFunc( "ASSS2___I" )
    call ExecuteFunc( "ASSS3___I" )
    call ExecuteFunc( "CreepsLib__CreepsLib_Init" )
    call ExecuteFunc( "DRASp1Lib__DRASp1Lib_Init" )
    call ExecuteFunc( "DRASp3Lib__DRASp3Lib_Init" )
    call ExecuteFunc( "DRASp4Lib__DRASp4Lib_Init" )
    call ExecuteFunc( "DRASp5Lib__DRASp5Lib_Init" )
    call ExecuteFunc( "FLOS6__FLOS6_I" )
    call ExecuteFunc( "GLAS1__In" )
    call ExecuteFunc( "GLAS2__I" )
    call ExecuteFunc( "GLAS3__I" )
    call ExecuteFunc( "GROS1___I" )
    call ExecuteFunc( "GROS2___I" )
    call ExecuteFunc( "GROS3___I" )
    call ExecuteFunc( "GROS6___I" )
    call ExecuteFunc( "MRAS5Lib__MRAS5Lib_Init" )
    call ExecuteFunc( "MRASp1Lib__MRASp1Lib_Init" )
    call ExecuteFunc( "MRASp2Lib__MRASp2Lib_Init" )
    call ExecuteFunc( "MRASp3Lib__MRASp3Lib_Init" )
    call ExecuteFunc( "PALS1__I" )
    call ExecuteFunc( "PALS2__I" )
    call ExecuteFunc( "PALS3__I" )
    call ExecuteFunc( "REAS1___I" )
    call ExecuteFunc( "REAS5___I" )
    call ExecuteFunc( "SHAS1___I" )
    call ExecuteFunc( "SHAS2___I" )
    call ExecuteFunc( "SHAS3___I" )
    call ExecuteFunc( "TEHS1___I" )
    call ExecuteFunc( "TEHS3___I" )
    call ExecuteFunc( "TKLS3___I" )
    call ExecuteFunc( "FLOS1__FLOS1_I" )
    call ExecuteFunc( "FLOS3__FLOS3_I" )
    call ExecuteFunc( "FLOS4__FLOS4_I" )
    call ExecuteFunc( "FLOS5__FLOS5_I" )
    call ExecuteFunc( "StartGameLib__StartGameLib_Init" )
    call ExecuteFunc( "TKLS1___I" )
    call ExecuteFunc( "TKLS2___I" )
    call ExecuteFunc( "TKLS4___I" )
    call ExecuteFunc( "TKLS5___I" )
    call ExecuteFunc( "DMRevivingLib__DMRevivingLib_Init" )
    call ExecuteFunc( "FirstMultiboardLib_In" )
    call ExecuteFunc( "TDMRevivingLib__TDMRevivingLib_Init" )
    call ExecuteFunc( "XPLib__XPLib_Init" )
    call ExecuteFunc( "BuyHeroesLib__BuyHeroesLib_Init" )
    call InitGlobals( )
    call InitCustomTriggers( )
    call RunInitializationTriggers( )
endfunction

function config takes nothing returns nothing
    call SetMapName( "|cFF404040UFS Arena v1.4|r" )
    call SetMapDescription( "UFS Arena" )
    call SetPlayers(10)
    call SetTeams(10)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    call DefineStartLocation(0, 3008.0, -3136.0)
    call DefineStartLocation(1, 3008.0, -3136.0)
    call DefineStartLocation(2, 3008.0, -3136.0)
    call DefineStartLocation(3, 3008.0, -3136.0)
    call DefineStartLocation(4, 3008.0, -3136.0)
    call DefineStartLocation(5, 3008.0, -3136.0)
    call DefineStartLocation(6, 3008.0, -3136.0)
    call DefineStartLocation(7, 3008.0, -3136.0)
    call DefineStartLocation(8, 3008.0, -3136.0)
    call DefineStartLocation(9, 3008.0, -3136.0)
    call InitCustomPlayerSlots( )
    call InitCustomTeams( )
    call InitAllyPriorities( )
endfunction

function cjCallbacksRegestration__initX takes nothing returns nothing
    call creepsInit( )
endfunction

function sa__recept_normalize takes nothing returns boolean
    local integer this = f__arg_this
    local integer i = 0
    local integer j
    local integer k
    loop
        exitwhen( i > 5 )or( s___recept_it[s__recept_it[this] + i] == 0 )
        set j = i + 1
        loop
            exitwhen j > 6
            if ( s___recept_it[s__recept_it[this] + i] == s___recept_it[s__recept_it[this] + j] ) then
                set s___recept_kratn[s__recept_kratn[this] + i] = s___recept_kratn[s__recept_kratn[this] + i] + 1
                set k = j + 1
                loop
                    exitwhen k > 6
                    set s___recept_it[s__recept_it[this] + k - 1] = s___recept_it[s__recept_it[this] + k]
                    set k = k + 1
                endloop
                set j = j - 1
                set s___recept_it[s__recept_it[this] + 6] = 0
            endif
            set j = j + 1
        endloop
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen( i > 6 )or( s___recept_it[s__recept_it[this] + i] == 0 )
        set i = i + 1
    endloop
    set s__recept_count[this] = i
    return true
endfunction
function jasshelper__initstructs7880468 takes nothing returns nothing
    set st__recept_normalize = CreateTrigger( )
    call TriggerAddCondition( st__recept_normalize, Condition( function sa__recept_normalize ) )
endfunction
