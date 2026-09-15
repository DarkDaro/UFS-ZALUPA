// ===== ADSLib_Init (строки 4143-4147) =====
function ADSLib_Init takes nothing returns nothing
    set ADSLib_Trg = CreateTrigger( )
    call TriggerRegisterTimerEvent( ADSLib_Trg, 0.01, TRUE )
    call TriggerAddAction( ADSLib_Trg, function Act )
endfunction
