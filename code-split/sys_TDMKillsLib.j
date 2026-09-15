// ===== TDMKillsLib__RemoveMulti (строки 6487-6494) =====
function TDMKillsLib__RemoveMulti takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    set s__TDMKillsLib__Multies[LoadInteger( HT, GetHandleId( t ), StringHash( "RemoveMulti_1" ) )] = 0
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
endfunction

// ===== TDMKillsLib__WinTeam (строки 6496-6534) =====
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
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
endfunction

// ===== TDMKillsLib__TDMKills_Act (строки 6536-6597) =====
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

// ===== TDMKillsLib__L (строки 6599-6620) =====
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

// ===== TDMKillsLib__TDMKillsLib_Init (строки 6622-6635) =====
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
    // 05.09: anti-leak (obnulenie lokalov)
    set TDMKills_Trg = null
    set Load = null
endfunction
