// ===== InitializationLib__L (строки 2681-2705) =====
function InitializationLib__L takes nothing returns nothing
    local unit d
    call StartSound( gg_snd_startstart )
    call StopMusic( FALSE )
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

    set d = CreateUnit( Player( 13 ), 'hfoo', 0., 0., 0. ) //пехотинец без москитов
    call UnitAddAbility( d, 'A006' )
    call UnitAddAbility( d, 'Arav' )
    call UnitAddAbility( d, 'A04S' )
    call SetUnitAbilityLevel(d,'A04S',10)
    call RemoveUnit( d )
    set d = null
endfunction

// ===== InitializationLib__InitializationLib_In (строки 2707-2761) =====
function InitializationLib__InitializationLib_In takes nothing returns nothing
    local integer i = 0
    local player p = null
    local trigger Load
    loop
        exitwhen i > 10
        set p = Player( i )
        if GetPlayerSlotState( p ) == PLAYER_SLOT_STATE_PLAYING then
            //Добавил блок условие на хоста!!!
            set Online_Players = Online_Players + 1
            set s__Online_Player[Online_Players] = p
            //ПОДНЯЛ ПОД УСЛОВИЕ
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
    call SetPlayerState( Player( 10 ), PLAYER_STATE_GIVES_BOUNTY, 1 ) //что за игрок?

    set Load = CreateTrigger( )
    call TriggerRegisterTimerEvent( Load, 0.01, FALSE )
    call TriggerAddAction( Load, function InitializationLib__L )
    call SetMapFlag( MAP_CHEATS, false )
    call SetCreepCampFilterState( false )
    call EnableMinimapFilterButtons( true, false )
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set Load = null
endfunction
