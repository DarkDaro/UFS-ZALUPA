// ===== PingLib__Ping_Act (строки 3315-3329) =====
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
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
endfunction

// ===== PingLib__PingLib_Init (строки 3331-3337) =====
function PingLib__PingLib_Init takes nothing returns nothing
    local trigger Ping_Trg = CreateTrigger( )
    call TriggerRegisterTimerEvent( Ping_Trg, 10., true )
    call TriggerAddAction( Ping_Trg, function PingLib__Ping_Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Ping_Trg = null
endfunction
