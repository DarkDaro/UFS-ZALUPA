// ===== DMMultiboardLib_Init (строки 2251-2256) =====
function DMMultiboardLib_Init takes nothing returns nothing
    set DMMultiboardLib_Set_DM_MB_Trg_Var = CreateTrigger( )
    call TriggerRegisterTimerEvent( DMMultiboardLib_Set_DM_MB_Trg_Var, 1., true )
    call TriggerAddAction( DMMultiboardLib_Set_DM_MB_Trg_Var, function Set_DM_MB_Act )
    call DisableTrigger( DMMultiboardLib_Set_DM_MB_Trg_Var )
endfunction
