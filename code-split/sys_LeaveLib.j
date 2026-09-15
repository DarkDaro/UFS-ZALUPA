// ===== LeaveLib__Act (строки 2917-2966) =====
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

   // call ClearTextMessages( )
    call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, "|cFFFF0000Игрок|r " + s__Color_Hex[i] + GetPlayerName( p ) + "|r |cFFFF0000покинул игру!!!|r" )
    call StartSound( gg_snd_LeaveSound )

     if s__Hero[GetConvertedPlayerId( p )] != null then

        call DropItemLiver(s__Hero[GetConvertedPlayerId( p )])
        call RemoveUnit(s__Hero[GetConvertedPlayerId( p )])
        set s__Hero[GetConvertedPlayerId( p )] = null
    endif

    //добавил удаление героя
    // когда игрок ливает число игроков не  пересчитывается, а только меняются лидеры команды
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set p2 = null
endfunction

// ===== LeaveLib__LeaveLib_Init (строки 2968-2979) =====
function LeaveLib__LeaveLib_Init takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    local integer i = 0
    loop
        exitwhen( i > ( 10 ) )
        call TriggerRegisterPlayerEvent( Trg, Player( i ), EVENT_PLAYER_LEAVE )
        set i = i + 1
    endloop
    call TriggerAddAction( Trg, function LeaveLib__Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction
