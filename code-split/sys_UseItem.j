// ===== UseItem__Act (строки 6731-6761) =====
function UseItem__Act takes nothing returns nothing
    local item it = GetOrderTargetItem( )
    local integer j
    local unit caster = GetOrderedUnit( )
    local unit dummy
    if it != null then
        set j = 1
        loop
            exitwhen( j > UseItem__max_used )
            if GetItemTypeId( it ) == s__UseItem__id[j]then
                if GetIssuedOrderId( ) == 852008 or GetIssuedOrderId( ) == 852009 or GetIssuedOrderId( ) == 852010 or GetIssuedOrderId( ) == 852011 or GetIssuedOrderId( ) == 852012 or GetIssuedOrderId( ) == 852013 then
                    set dummy = CreateUnit( GetOwningPlayer( caster ), 'hfoo', GetUnitX( caster ), GetUnitY( caster ), 0. )
                    call UnitAddAbility( dummy, s__UseItem__abil_id[j] )
                    call X_ApplyLife( dummy )

                    if s__UseItem__point[j]then
                        call IssuePointOrderById( dummy, s__UseItem__it_order[j], GetUnitX( caster ), GetUnitY( caster ) )
                    else
                        call IssueTargetOrderById( dummy, s__UseItem__it_order[j], caster )
                    endif

                endif
            endif
            set j = j + 1
        endloop

    endif
    set caster = null
    set dummy = null
    set it = null
endfunction

// ===== UseItem__I (строки 6763-6774) =====
function UseItem__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_ISSUED_ORDER )
    call TriggerAddAction( Trg, function UseItem__Act )
    set s__UseItem__id[1] = 'I01B'
    set s__UseItem__it_order[1] = 852225 //frostarmor
    set s__UseItem__abil_id[1] = 'A02N'
    set s__UseItem__point[1] = FALSE
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction
