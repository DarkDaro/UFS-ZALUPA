globals
    boolexpr cj_true_bool_4896bnao87
    unit AI__ch_u = null // 05.09: AI__ch_p удалён — использовался только мёртвыми фильтрами
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
    constant real TKLS5___percent_int = 1.4
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
    constant integer FirstMultiboardLib__Max_DM_Score = 255
    constant integer FirstMultiboardLib__Max_TDM_Score = 255
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





//Изменения , воскрешение героев время увеличено 2 до 3 сек. грозовой щит ульт, исправлен плав текст. Плав текст урона.лечения. крит. доработаны. Текст от ищадья тьмы, при похищении разума показывается если юнит видим
//паладин мощь вернул на 2 ед с 1 ед силы
//исщадье тьмы -2 разума текст фик. и повышение хп от крипов фикс текст

// UNUSED: не вызывается нигде













// UNUSED: не вызывается нигде




// UNUSED: не вызывается нигде




// UNUSED: не вызывается нигде





// UNUSED: не вызывается нигде



//Проверка атрибута героя
// UNUSED: не вызывается нигде

// UNUSED: не вызывается нигде



// UNUSED: не вызывается нигде



// UNUSED: не вызывается нигде



// 05.09: удалены мёртвые фильтры AI__FilterHeroAndEnemy / AI__FilterEnemy (не вызывались, дублировали инлайн-условия AI_A_Do) и глобал AI__ch_p



























// Функция для получения коэффициента на основе текущей энергии

// Функция для уменьшения энергии у игрока

// Функция для создания тексттега, который отображает энергию игрока

// Функция обновления позиций тексттегов и их отображения

// Функция для регенерации энергии всех игроков

// Инициализация таймеров для обновления тексттегов и регенерации энергии






































// UNUSED: не вызывается нигде


























// UNUSED: не вызывается нигде

// UNUSED: не вызывается нигде







// UNUSED: не вызывается нигде









// UNUSED: не вызывается нигде


























// UNUSED: не вызывается нигде





// UNUSED: не вызывается нигде







// UNUSED: не вызывается нигде

// UNUSED: не вызывается нигде

// UNUSED: не вызывается нигде







// UNUSED: не вызывается нигде


// UNUSED: не вызывается нигде















// UNUSED: не вызывается нигде

// UNUSED: не вызывается нигде






// UNUSED: не вызывается нигде






























// UNUSED: не вызывается нигде




// UNUSED: не вызывается нигде










































// UNUSED: не вызывается нигде









// UNUSED: не вызывается нигде







// UNUSED: не вызывается нигде












































//Не вызывается!
// UNUSED: не вызывается нигде


























// UNUSED: не вызывается нигде


// UNUSED: не вызывается нигде









// UNUSED: не вызывается нигде














































































