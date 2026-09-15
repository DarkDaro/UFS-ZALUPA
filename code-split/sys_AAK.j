// ===== AAK__Act2 (строки 1040-1051) =====
function AAK__Act2 takes nothing returns nothing
    local unit u = GetTriggerUnit( )
    local unit order_target = GetOrderTargetUnit( )
    if GetIssuedOrderId( ) == 851983 then
        if IsPlayerAlly( GetOwningPlayer( u ), GetOwningPlayer( order_target ) ) then
            call IssueImmediateOrderById( u, 851972 )
          //  call DisplayTextToForce( GetPlayersAll( ), "стоп приказа атаки" )
        endif
    endif
    set u = null
    set order_target = null
endfunction

// ===== AAK__Act (строки 1053-1061) =====
function AAK__Act takes nothing returns nothing
    local unit attacker = GetAttacker( )
    local unit attacked = GetTriggerUnit( )
    if IsUnitAlly( attacker, GetOwningPlayer( attacked ) ) == true and GetUnitTypeId( attacked ) != 'n003' then
        call IssueImmediateOrder( attacker, "stop" )
    endif
    set attacker = null
    set attacked = null
endfunction

// ===== AAK__I (строки 1063-1069) =====
function AAK__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
   // call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddAction( Trg, function AAK__Act )
    set Trg = null
endfunction
