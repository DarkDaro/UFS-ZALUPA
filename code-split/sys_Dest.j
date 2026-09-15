// ===== Dest__Kill (строки 5353-5364) =====
function Dest__Kill takes nothing returns nothing
    local destructable dt = GetEnumDestructable( )
    if GetDestructableTypeId( dt ) == 'ATtr' or GetDestructableTypeId( dt ) == 'LTcr' then
        if GetDestructableLife( dt ) > 0 then
            call KillDestructable( dt )
            //call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl",GetDestructableX(dt),GetDestructableY(dt)))
            //call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\FragmentationShards\\FragBoomSpawn.mdl",GetDestructableX(dt),GetDestructableY(dt)))
        endif
    else
    endif
    set dt = null
endfunction

// ===== Dest_KillDestInRange (строки 5366-5371) =====
function Dest_KillDestInRange takes real x, real y, real radius returns nothing
    local rect r = Rect( x - radius, y - radius, x + radius, y + radius )
    call EnumDestructablesInRect( r, null, function Dest__Kill )
    call RemoveRect( r )
    set r = null
endfunction

// ===== Dest__Rev (строки 5373-5383) =====
function Dest__Rev takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local destructable dt = LoadDestructableHandle( HT, GetHandleId( t ), StringHash( "decor" ) )
    call DestructableRestoreLife( dt, GetDestructableMaxLife( dt ), true )
    call SaveBoolean( HT, GetHandleId( dt ), StringHash( "decorBoll" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set dt = null
endfunction

// ===== Dest__Check (строки 5385-5397) =====
function Dest__Check takes nothing returns nothing
    local destructable dt = GetEnumDestructable( )
    local timer t
    if GetDestructableLife( dt ) == 0.and not LoadBoolean( HT, GetHandleId( dt ), StringHash( "decorBoll" ) ) then
        set t = CreateTimer( )
        call SaveDestructableHandle( HT, GetHandleId( t ), StringHash( "decor" ), dt )
        call SaveBoolean( HT, GetHandleId( dt ), StringHash( "decorBoll" ), TRUE )
        call TimerStart( t, GetRandomReal( 10., 40. ), FALSE, function Dest__Rev )
        set t = null
    endif
    set dt = null
    set t = null
endfunction

// ===== Dest__Action (строки 5399-5404) =====
function Dest__Action takes nothing returns nothing
    local rect r = GetWorldBounds( )
    call EnumDestructablesInRect( r, null, function Dest__Check )
    call RemoveRect( r )
    set r = null
endfunction

// ===== Dest__I (строки 5406-5409) =====
function Dest__I takes nothing returns nothing
    call TriggerRegisterTimerEvent( Dest__Trg, 1., TRUE )
    call TriggerAddAction( Dest__Trg, function Dest__Action )
endfunction
