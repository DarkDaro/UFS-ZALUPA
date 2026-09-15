// ===== TDMMultiboardLib_Init (строки 4012-4017) =====
function TDMMultiboardLib_Init takes nothing returns nothing
    set TDMMultiboardLib_Set_TDM_MB_Trg_Var = CreateTrigger( )
    call TriggerRegisterTimerEvent( TDMMultiboardLib_Set_TDM_MB_Trg_Var, 1., true )
    call TriggerAddAction( TDMMultiboardLib_Set_TDM_MB_Trg_Var, function Set_TDM_MB_Act )
    call DisableTrigger( TDMMultiboardLib_Set_TDM_MB_Trg_Var )
endfunction
