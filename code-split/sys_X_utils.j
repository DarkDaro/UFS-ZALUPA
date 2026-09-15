// ===== X_GetMainChar (строки 2499-2535) =====
function X_GetMainChar takes unit u returns integer
    local integer id = GetUnitTypeId( u )
    if id == 'Hpal' then
        return 1
    endif
    if id == 'H000' then
        return 3
    endif
    if id == 'E000' then
        return 2
    endif
    if id == 'Nfir' then
        return 3
    endif
    if id == 'Obla' then
        return 2
    endif
    if id == 'Otch' then
        return 1
    endif
    if id == 'N005' then
        return 3
    endif
    if id == 'N006' then
        return 2
    endif
    if id == 'Ntin' then
        return 1
    endif
    if id == 'Hgam' then
        return 3
    endif
    if id == 'H00M' then
        return 1
    endif
    return 0
endfunction

// ===== X_ApplyLife (строки 4049-4051) =====
function X_ApplyLife takes unit d returns nothing
    call UnitApplyTimedLife( d, 'BTLF', 1. )
endfunction

// ===== X_ApplyLifeSmall (строки 4052-4054) =====
function X_ApplyLifeSmall takes unit d returns nothing
    call UnitApplyTimedLife( d, 'BTLF', 0.5 )
endfunction

// ===== X_KillLightning (строки 4057-4059) =====
function X_KillLightning takes lightning lt returns nothing
    call DestroyLightning( lt )
endfunction

// ===== X__RemoveEffect (строки 4061-4070) =====
function X__RemoveEffect takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "EF" ) )
    call DestroyEffect( e )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set e = null
endfunction

// ===== X_AddTimedEff (строки 4072-4079) =====
function X_AddTimedEff takes string sfx, real x, real y, real time returns nothing
    local effect e = AddSpecialEffect( sfx, x, y )
    local timer t = CreateTimer( )
    call SaveEffectHandle( HT, GetHandleId( t ), StringHash( "EF" ), e )
    call TimerStart( t, time, false, function X__RemoveEffect )
    set e = null
    set t = null
endfunction

// ===== X_PreloadAbility (строки 4081-4086) =====
function X_PreloadAbility takes integer aid returns nothing
    local unit d = CreateUnit( Player( 13 ), 'hfoo', 0., 0., 0. )
    call UnitAddAbility( d, aid )
    call RemoveUnit( d )
    set d = null
endfunction

// ===== X__ThrowUpTwo (строки 4088-4099) =====
function X__ThrowUpTwo takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), X__h_2 )
   // call UnitRemoveAbility( u, 'Arav' )
    call PauseUnit( u, FALSE )
    call IssueImmediateOrderById( u, 851972 )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== X__ThrowUpOne (строки 4101-4109) =====
function X__ThrowUpOne takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), X__h_2 )
    local real ti = LoadReal( HT, GetHandleId( t ), X__h_1 )
    call TimerStart( t, GetUnitFlyHeight( u ) / ti, FALSE, function X__ThrowUpTwo )
    call SetUnitFlyHeight( u, 0., ti )
    set t = null
    set u = null
endfunction

// ===== X_ThrowUp (строки 4111-4123) =====
function X_ThrowUp takes unit u, real height, real time returns nothing
    local timer t = CreateTimer( )
    local real ti = ( 1. / time ) * height * 2.
    call PauseUnit( u, TRUE )
    call UnitAddAbility( u, 'Arav' )
    call UnitRemoveAbility( u, 'Arav' )
    //МОЖНО СРАЗУ ДОБАВИТЬ И УДАЛИТЬ ВОРОНА
    call SetUnitFlyHeight( u, height, ti )
    call SaveReal( HT, GetHandleId( t ), X__h_1, ti )
    call SaveUnitHandle( HT, GetHandleId( t ), X__h_2, u )
    call TimerStart( t, height / ti, FALSE, function X__ThrowUpOne )
    set t = null
endfunction
