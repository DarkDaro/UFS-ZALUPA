// ===== StartGameLib__ReallyStart (строки 10811-10832) =====
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

// ===== StartGameLib__Act (строки 10834-10867) =====
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
    // 05.09: anti-leak (obnulenie lokalov)
    set FoG = null
endfunction

// ===== StartGameLib_AddHeroesToTaverns (строки 10882-10994) =====
function StartGameLib_AddHeroesToTaverns takes nothing returns nothing
    local integer i = 1
    local integer c = 0
    local integer hero_id
    local boolean found
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
        set hero_id = 0
        set found = FALSE
        loop

            exitwhen( i > Online_Players )

            if GetPlayerSlotState( s__Online_Player[i] ) != PLAYER_SLOT_STATE_LEFT then
                set found = FALSE
                loop
                    exitwhen found
                    set hero_id = GetRandomInt( 1, 11 )
                    if not s__Is_Hero_Bought[hero_id] or Choosed_Pick == 4 then
                        set found = TRUE
                    endif
                endloop
                set found = FALSE
                loop
                    exitwhen found
                    if not found then
                        set found = OrderBuyUnit( s__Circle[GetConvertedPlayerId( s__Online_Player[i] )], gg_unit_n000_0005, s__Hero_Raw[hero_id] )
                    endif
                    if not found then
                        set found = OrderBuyUnit( s__Circle[GetConvertedPlayerId( s__Online_Player[i] )], gg_unit_n001_0007, s__Hero_Raw[hero_id] )
                    endif
                    if not found then
                        set found = OrderBuyUnit( s__Circle[GetConvertedPlayerId( s__Online_Player[i] )], gg_unit_n002_0006, s__Hero_Raw[hero_id] )
                    endif
                    if Choosed_Pick == 2 then
                        if found then
                            set s__Is_Hero_Bought[hero_id] = TRUE
                        endif
                    endif
                endloop
            endif
            set i = i + 1

            call TriggerSleepAction( 1.0 )
        endloop
    else
        call TriggerSleepAction( 10. )
        set hero_id = 0
        set found = FALSE
        loop
            exitwhen( i > Online_Players )
            if GetPlayerSlotState( s__Online_Player[i] ) != PLAYER_SLOT_STATE_LEFT and GetPlayerController( s__Online_Player[i] ) == MAP_CONTROL_COMPUTER then
                set found = FALSE
                loop
                    exitwhen found
                    set hero_id = GetRandomInt( 1, 11 )
                    if not s__Is_Hero_Bought[hero_id]or Choosed_Pick == 3 then
                        set found = TRUE
                    endif
                endloop
                set found = FALSE
                loop
                    exitwhen found
                    if not found then
                        set found = OrderBuyUnit( s__Circle[GetConvertedPlayerId( s__Online_Player[i] )], gg_unit_n000_0005, s__Hero_Raw[hero_id] )
                    endif
                    if not found then
                        set found = OrderBuyUnit( s__Circle[GetConvertedPlayerId( s__Online_Player[i] )], gg_unit_n001_0007, s__Hero_Raw[hero_id] )
                    endif
                    if not found then
                        set found = OrderBuyUnit( s__Circle[GetConvertedPlayerId( s__Online_Player[i] )], gg_unit_n002_0006, s__Hero_Raw[hero_id] )
                    endif
                    if Choosed_Pick == 3 then
                        if found then
                            set s__Is_Hero_Bought[hero_id] = TRUE
                        endif
                    endif
                endloop
            endif
            set i = i + 1

            call TriggerSleepAction( 1.0 )

        endloop
    endif
endfunction

// ===== StartGameLib__StartGameLib_Init (строки 10995-11046) =====
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
