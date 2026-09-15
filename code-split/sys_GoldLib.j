// ===== GoldLib__Gold_Act (строки 2619-2630) =====
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

// ===== GoldLib__GoldLib_Init (строки 2632-2646) =====
function GoldLib__GoldLib_Init takes nothing returns nothing
    local trigger Gold_Trg = CreateTrigger( )
    local integer i = 0
    call TriggerRegisterTimerEvent( Gold_Trg, 1, true )
    call TriggerAddAction( Gold_Trg, function GoldLib__Gold_Act )
  //  call TriggerSleepAction( 0.01 )
    loop
        exitwhen i > 10
        call SetPlayerState( Player( i ), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState( Player( i ), PLAYER_STATE_RESOURCE_GOLD ) + R2I( 500. ) )
        set i = i + 1
    endloop

    // 05.09: anti-leak (obnulenie lokalov)
    set Gold_Trg = null
endfunction
