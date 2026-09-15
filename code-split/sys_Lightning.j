// ===== LightningUnit_Move (строки 883-917) =====
function LightningUnit_Move takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local integer i = GetHandleId( t )
    local unit caster = LoadUnitHandle( HT, i, 0 )
    local unit target = LoadUnitHandle( HT, i, 1 )
    local real Time = LoadReal( HT, i, 2 )
    local real maxdist = LoadReal( HT, i, 4 )
    local real proz = LoadReal(HT, i, 5)
    local real red = LoadReal(HT, i, 6)
    local real green = LoadReal(HT, i, 7)
    local real blue = LoadReal(HT, i, 8)
    local lightning Light = LoadLightningHandle( HT, i, 3 )
    local real x1 = GetUnitX( caster )
    local real y1 = GetUnitY( caster )
    local real z1 = GetUnitFlyHeight( caster ) + 60 //FuncLocationZ( x1, y1 ) // +
    local real x2 = GetUnitX( target )
    local real y2 = GetUnitY( target )
    local real z2 = GetUnitFlyHeight( target ) + 60 //FuncLocationZ( x2, y2 ) //
    if Time <= 0.0 or caster == null or target == null or GetUnitState( caster, UNIT_STATE_LIFE ) <= 0.405 or GetUnitState(target, UNIT_STATE_LIFE ) <= 0.405 or Dist( x1 , y1 , x2 , y2 ) >= maxdist then
        call DestroyLightning( Light )
        call FlushChildHashtable( HT, i )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call MoveLightningEx( Light, true, x1, y1, z1, x2, y2, z2 )
        call SetLightningColor(Light, red, green, blue, proz)
        call SaveReal( HT, i, 2, Time - 0.03 )
        call SaveReal(HT, i, 5, proz)
    endif

    set caster = null
    set target = null
    set t = null
    set Light = null
endfunction

// ===== LightningUnit (строки 919-944) =====
function LightningUnit takes unit caster, unit target, string lightningtype, real red, real green, real blue, real inv, real time, real maxdist returns nothing
    local timer t = CreateTimer( )
    local integer i = GetHandleId( t )
    local real x1 = GetUnitX( caster )
    local real y1 = GetUnitY( caster )
    local real z1 = GetUnitFlyHeight( caster ) + 60 // + FuncLocationZ( x1, y1 )
    local real x2 = GetUnitX( target )
    local real y2 = GetUnitY( target )
    local real z2 = GetUnitFlyHeight( target ) + 60 // + FuncLocationZ( x2, y2 )
    local lightning Light = AddLightningEx( lightningtype, true, x1, y1, z1, x2, y2, z2 )
    call SetLightningColor( Light, red, green, blue, inv )
    call SaveUnitHandle( HT, i, 0, caster )
    call SaveUnitHandle( HT, i, 1, target )
    call SaveReal( HT, i, 2, time )
    call SaveLightningHandle( HT, i, 3, Light )
    call SaveReal( HT, i, 4, maxdist )
    call SaveReal(HT, i , 5, inv) // прозрачность
    call SaveReal(HT, i , 6, red)
    call SaveReal(HT, i , 7, green)
    call SaveReal(HT, i , 8, blue)
    call TimerStart( t, 0.03, true, function LightningUnit_Move )
    set t = null
    set caster = null
    set target = null
    set Light = null
endfunction

// ===== AddTimeLightning (строки 961-967) =====
function AddTimeLightning takes lightning gl, real time returns nothing
    local timer t = CreateTimer()
    call SaveLightningHandle(HT, GetHandleId(t), 0, gl)
    call TimerStart(t, time, false, function LightningRemove)
    set t = null
    set gl = null
endfunction
