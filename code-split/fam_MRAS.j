// ===== MRAS6__Act_Night (строки 5983-5985) =====
function MRAS6__Act_Night takes nothing returns nothing
    call DecUnitAbilityLevel( MRAS6_Unit, 'A01Q' )
endfunction

// ===== MRAS6__Act_Day (строки 5986-5988) =====
function MRAS6__Act_Day takes nothing returns nothing
    call IncUnitAbilityLevel( MRAS6_Unit, 'A01Q' )
endfunction

// ===== MRAS6__MRAS6_In (строки 5990-6000) =====
function MRAS6__MRAS6_In takes nothing returns nothing
    local trigger Trg_1 = CreateTrigger( )
    local trigger Trg_2 = CreateTrigger( )
    call TriggerRegisterGameStateEvent( Trg_1, GAME_STATE_TIME_OF_DAY, EQUAL, 18 )
    call TriggerAddAction( Trg_1, function MRAS6__Act_Night )
    call TriggerRegisterGameStateEvent( Trg_2, GAME_STATE_TIME_OF_DAY, EQUAL, 6 )
    call TriggerAddAction( Trg_2, function MRAS6__Act_Day )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg_1 = null
    set Trg_2 = null
endfunction

// ===== MRAS4Lib_preload (строки 6002-6004) =====
function MRAS4Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'A01M' )
endfunction

// ===== MRAS4Lib__Rem (строки 6006-6017) =====
function MRAS4Lib__Rem takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit a = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local integer MrasLvl = LoadInteger(HT, GetHandleId(a), StringHash( "MrasLvl" ) )
    call SaveInteger(HT, GetHandleId(a), StringHash( "MrasLvl" ), MrasLvl - 1)
    call SetUnitAbilityLevel( a, 'A01M', MrasLvl )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set a = null
endfunction

// ===== MRAS4Lib__Act (строки 6019-6038) =====
function MRAS4Lib__Act takes nothing returns nothing
    local unit a = GetAttacker( )
    local timer t
    local integer MrasLvl = 0

    if GetUnitAbilityLevel( a, 'A01N' ) > 0 then
        set MrasLvl = LoadInteger(HT, GetHandleId(a), StringHash( "MrasLvl" ) )
        if MrasLvl < 99 then
            set MrasLvl = MrasLvl + 1
            call SaveInteger(HT, GetHandleId(a), StringHash( "MrasLvl" ), MrasLvl)
        endif
        call SetUnitAbilityLevel( a, 'A01M', MrasLvl )
        set t = CreateTimer( )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), a )
        call TimerStart( t, 4., FALSE, function MRAS4Lib__Rem )
        set t = null
    endif
    set a = null
    set t = null
endfunction

// ===== MRAS4Lib__MRAS4Lib_In (строки 6040-6046) =====
function MRAS4Lib__MRAS4Lib_In takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddAction( Trg, function MRAS4Lib__Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== MRAS5Lib_preload (строки 8799-8801) =====
function MRAS5Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'A01P' )
endfunction

// ===== MRAS5Lib__Cond1 (строки 8803-8808) =====
function MRAS5Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), MRAS5Lib__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== MRAS5Lib__MRAS5_Act (строки 8810-8884) =====
function MRAS5Lib__MRAS5_Act takes nothing returns nothing
    local unit caster
    local real tx
    local real ty
    local real caster_x
    local real caster_y
    local group gr
    local unit nearest
    local unit array unit_arr
    local integer i
    local real array dist_arr
    local real best_dist
    local integer best_i
    local location nearest_loc
    local unit dummy
    local integer j
    if GetSpellAbilityId( ) == 'A01O' then
        set caster = GetTriggerUnit( )
        set tx = GetSpellTargetX( )
        set ty = GetSpellTargetY( )
        set caster_x = GetUnitX( caster )
        set caster_y = GetUnitY( caster )
        set gr = CreateGroup( )
        set i = 0
        set best_dist = 400.
        set best_i = 0
        call TriggerSleepAction( 0.01 )

        if not IsTerrainPathable( tx, ty, PATHING_TYPE_WALKABILITY ) then
            call SetUnitPosition( caster, tx, ty )
            set MRAS5Lib__ch_p = GetOwningPlayer( caster )
            call GroupEnumUnitsInRange( gr, tx, ty, 400., Condition( function MRAS5Lib__Cond1 ) )
            loop
                set nearest = FirstOfGroup( gr )
                exitwhen( nearest == null )
                set i = i + 1
                set unit_arr[i] = nearest
                set dist_arr[i] = SquareRoot( ( tx - GetUnitX( nearest ) ) * ( tx - GetUnitX( nearest ) ) + ( ty - GetUnitY( nearest ) ) * ( ty - GetUnitY( nearest ) ) )
                if dist_arr[i] < best_dist then
                    set best_dist = dist_arr[i]
                    set best_i = i
                endif
                call GroupRemoveUnit( gr, nearest )
            endloop

            if best_dist < 400.then
                set nearest = unit_arr[best_i]
                set nearest_loc = GetUnitLoc( nearest )
                call SetUnitPositionLoc( caster, nearest_loc )
                call RemoveLocation( nearest_loc )
                set nearest_loc = null
                call IssueTargetOrderById( caster, 851983, nearest )
                set dummy = CreateUnit( GetOwningPlayer( caster ), 'hfoo', tx, ty, 0. )
                call UnitAddAbility( dummy, 'A01P' )
                call IssueTargetOrderById( dummy, 852190, nearest )
                call TriggerSleepAction( 0.01 )
                call RemoveUnit( dummy )
                set dummy = null
            endif
            set j = i

            loop
                exitwhen( j == 0 )
                set unit_arr[j] = null
                set j = j - 1
            endloop
        endif

        set caster = null
        set nearest = null
        call GroupClear( gr )
        call DestroyGroup( gr )
        set gr = null
    endif
endfunction

// ===== MRAS5Lib__MRAS5Lib_Init (строки 8886-8892) =====
function MRAS5Lib__MRAS5Lib_Init takes nothing returns nothing
    local trigger MRAS5_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( MRAS5_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( MRAS5_Trg, function MRAS5Lib__MRAS5_Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set MRAS5_Trg = null
endfunction
