// ===== ComLib__Act (строки 2025-2119) =====
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
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
endfunction

// ===== ComLib__ComLib_Init (строки 2121-2132) =====
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
