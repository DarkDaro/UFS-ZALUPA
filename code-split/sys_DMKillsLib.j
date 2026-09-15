// ===== DMKillsLib__RemoveMulti (строки 4381-4388) =====
function DMKillsLib__RemoveMulti takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    set s__DMKillsLib__Multies[LoadInteger( HT, GetHandleId( t ), StringHash( "RemoveMulti_1" ) )] = 0
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
endfunction

// ===== DMKillsLib__WinPlayer (строки 4390-4417) =====
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
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
endfunction

// ===== DMKillsLib__DMKills_Act (строки 4419-4468) =====
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

// ===== DMKillsLib__L (строки 4470-4491) =====
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

// ===== DMKillsLib__DMKillsLib_Init (строки 4493-4504) =====
function DMKillsLib__DMKillsLib_Init takes nothing returns nothing
    local trigger Load
    set DMKillsLib_DMKills_Trg_Var = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( DMKillsLib_DMKills_Trg_Var, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( DMKillsLib_DMKills_Trg_Var, function DMKillsLib__DMKills_Act )
    call DisableTrigger( DMKillsLib_DMKills_Trg_Var )
    set Load = CreateTrigger( )
    call TriggerRegisterTimerEvent( Load, 0.01, FALSE )
    call TriggerAddAction( Load, function DMKillsLib__L )
    // 05.09: anti-leak (obnulenie lokalov)
    set Load = null
endfunction
