// ===== TKLS6_preload (строки 6637-6640) =====
function TKLS6_preload takes nothing returns nothing
    set TKLS6___we = AddWeatherEffect( TKLS6___r, TKLS6___weather_eff )
    call EnableWeatherEffect( TKLS6___we, FALSE )
endfunction

// ===== TKLS6___onTimerOnlyRemoveAbils (строки 6642-6658) =====
function TKLS6___onTimerOnlyRemoveAbils takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), TKLS6___h_cst )
    if GetWidgetLife( cst ) > 0.405 and IsUnitType( cst, UNIT_TYPE_DEAD ) == false then
        call UnitRemoveAbility( cst, TKLS6___armor_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___aura_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___q_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___w_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___e_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___p_abil_id )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set t = null
    set cst = null
endfunction

// ===== TKLS6___onTimer (строки 6660-6697) =====
function TKLS6___onTimer takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), TKLS6___h_cst )
    local unit temp = null // какой нахуй темп юнит
    local integer count = 0
    local integer i = 1

    loop
        exitwhen( i > 10 )
        set temp = s__Hero[i]
        if temp != null and GetUnitAbilityLevel( temp, TKLS6___aura_abil_id ) == 2 then
            set count = count + 1
        endif
        set i = i + 1
    endloop

    if count == 1 or count == 0 then
        call EnableWeatherEffect( TKLS6___we, FALSE )
        set TKLS6_metel = FALSE
    endif

    if GetWidgetLife( cst ) > 0.405 and IsUnitType( cst, UNIT_TYPE_DEAD ) == false then
        call UnitRemoveAbility( cst, TKLS6___armor_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___aura_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___q_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___w_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___e_abil_id )
        call DecUnitAbilityLevel( cst, TKLS6___p_abil_id )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 0.5, TRUE, function TKLS6___onTimerOnlyRemoveAbils )
    endif
    set t = null
    set cst = null
    set temp = null
endfunction

// ===== TKLS6___Act (строки 6699-6721) =====
function TKLS6___Act takes nothing returns nothing
    local unit caster
    local unit u
    local timer t
    if GetSpellAbilityId( ) == TKLS6___abil_id then
        set caster = GetTriggerUnit( )
        set u = null
        set t = CreateTimer( )
        call EnableWeatherEffect( TKLS6___we, TRUE )
        set TKLS6_metel = TRUE
        call UnitAddAbility( caster, TKLS6___armor_abil_id )
        call IncUnitAbilityLevel( caster, TKLS6___aura_abil_id )
        call IncUnitAbilityLevel( caster, TKLS6___q_abil_id )
        call IncUnitAbilityLevel( caster, TKLS6___w_abil_id )
        call IncUnitAbilityLevel( caster, TKLS6___e_abil_id )
        call IncUnitAbilityLevel( caster, TKLS6___p_abil_id )

        call SaveUnitHandle( HT, GetHandleId( t ), TKLS6___h_cst, caster )
        call TimerStart( t, TKLS6___time, FALSE, function TKLS6___onTimer )
        set caster = null
        set t = null
    endif
endfunction

// ===== TKLS6___I (строки 6723-6729) =====
function TKLS6___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function TKLS6___Act )
    set Trg = null
    set TKLS6___r = bj_mapInitialPlayableArea
endfunction

// ===== TKLS3_preload (строки 10253-10258) =====
function TKLS3_preload takes nothing returns nothing
    call X_PreloadAbility( 'A04E' )
    set TKLS3___d = CreateUnit( Player( PLAYER_NEUTRAL_PASSIVE ), 'hfoo', 0., 0., 0. )
    call UnitAddAbility( TKLS3___d, 'A04E' )
    call X_ApplyLife( TKLS3___d )
endfunction

// ===== TKLS3___ReduceSlowness (строки 10261-10270) =====
function TKLS3___ReduceSlowness takes nothing returns nothing
    local integer i = TKLS3___count_units
    loop
        exitwhen( i == 0 )
        if TKLS3___slowness[i] > 0 then
            set TKLS3___slowness[i] = TKLS3___slowness[i] - 1
        endif
        set i = i - 1
    endloop
endfunction

// ===== TKLS3___onTimer (строки 10272-10326) =====
function TKLS3___onTimer takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), TKLS3___h_u )
    local integer id = LoadInteger( HT, GetHandleId( t ), TKLS3___h_id )

    if TKLS3___slowness[id] <= 0 then

        if TKLS3___count_units > 0 then
            set TKLS3___count_units = TKLS3___count_units - 1

        endif

        set TKLS3___slowed[id] = null

        if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false and IsUnitType( u, UNIT_TYPE_HERO) == true then
            call UnitRemoveAbility( u, 'A04E' )
            call UnitRemoveAbility( u, TKLS3___buff_id )
            call GroupRemoveUnit( TKLS3___slowed_units, u )
            call FlushChildHashtable( HT, GetHandleId( t ) )
            call PauseTimer( t )
            call DestroyTimer( t )

        endif

        if IsUnitType( u, UNIT_TYPE_HERO) == false and ( GetWidgetLife( u ) <= 0.405 or IsUnitType( u, UNIT_TYPE_DEAD ) == false ) then
            //call UnitRemoveAbility( u, 'A04E' )
            call GroupRemoveUnit( TKLS3___slowed_units, u )
            call FlushChildHashtable( HT, GetHandleId( t ) )
            call PauseTimer( t )
            call DestroyTimer( t )
        endif

    else

        if TKLS3___slowness[id] > 0 then
            set TKLS3___slowness[id] = TKLS3___slowness[id] - 1
        endif

        if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then
            if GetUnitAbilityLevel( u, 'A04E' ) == 0 then
                call UnitAddAbility( u, 'A04E' )
            endif
            call SetUnitAbilityLevel( u, 'A04E', TKLS3___slowness[id] )
            call SetUnitAbilityLevel( u, TKLS3___buff_id, TKLS3___slowness[id] )
            //меняет уровень бафа может быть фатал
        else
            set TKLS3___slowness[id] = 0

        endif

    endif

    set t = null
    set u = null
endfunction

// ===== TKLS3_Act (строки 10328-10394) =====
function TKLS3_Act takes unit u, integer modifer returns nothing
    local timer t = CreateTimer( )
    local unit temp
    local integer i = 0
    local integer a = 0

    if TKLS6_metel then
        set modifer = modifer * 2
    endif

    if IsUnitInGroup( u, TKLS3___slowed_units ) then

        set i = TKLS3___count_units
        loop
            exitwhen( i <= 0 )
            set temp = TKLS3___slowed[i]
            if temp == u then
                set a = i
                set i = 0
            endif
            set i = i - 1
        endloop

        if temp == u then
            if TKLS3___slowness[a] + modifer > TKLS3___max_slowness then
                set TKLS3___slowness[a] = TKLS3___max_slowness
            else
                if ( TKLS3___slowness[a] - modifer ) < TKLS3___min_slowness then
                    set TKLS3___slowness[a] = TKLS3___min_slowness
                endif

            endif

        endif
    else

        call GroupAddUnit( TKLS3___slowed_units, u )
        set i = 1

        loop
            exitwhen( i > TKLS3___count_units )
            set temp = TKLS3___slowed[i]
            if temp == null then
                set a = i
                set i = 9999
            endif
            set i = i + 1
        endloop
        if i == 9999 then
            set TKLS3___slowed[a] = u
            set TKLS3___slowness[a] = modifer

        else
            set TKLS3___count_units = TKLS3___count_units + 1
            set TKLS3___slowed[TKLS3___count_units] = u
            set TKLS3___slowness[TKLS3___count_units] = modifer
            set a = TKLS3___count_units
        endif

        call SaveUnitHandle( HT, GetHandleId( t ), TKLS3___h_u, u )
        call SaveInteger( HT, GetHandleId( t ), TKLS3___h_id, a )
        call TimerStart( t, TKLS3___period, TRUE, function TKLS3___onTimer )

    endif
    set temp = null
    set t = null
endfunction

// ===== TKLS3___I (строки 10396-10400) =====
function TKLS3___I takes nothing returns nothing
    local timer t = CreateTimer( )
  //   call TimerStart( t, TKLS3___slow_time, TRUE, function TKLS3___ReduceSlowness )
    set t = null
endfunction

// ===== TKLS1_preload (строки 11053-11054) =====
function TKLS1_preload takes nothing returns nothing
endfunction

// ===== TKLS1___Cond1 (строки 11056-11061) =====
function TKLS1___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), TKLS1___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== TKLS1___RemoveAttacked (строки 11062-11071) =====
function TKLS1___RemoveAttacked takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_FOG" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "TKL_LOL" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== TKLS1___CreatePartOfWave (строки 11072-11123) =====
function TKLS1___CreatePartOfWave takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local real x = LoadReal( HT, GetHandleId( t ), StringHash( "x" ) )
    local real y = LoadReal( HT, GetHandleId( t ), StringHash( "y" ) )
    local player p = LoadPlayerHandle( HT, GetHandleId( t ), StringHash( "p" ) )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "333" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "22" ) )
    local real angle = LoadReal( HT, GetHandleId( t ), StringHash( "1" ) )
    local real dist = LoadReal( HT, GetHandleId( t ), StringHash( "dist" ) )
    local unit arrow = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local timer ti
    local unit target

    if dist <= 1000.then
        set TKLS1___ch_p = p
        call GroupEnumUnitsInRange( TKLS1___gr, x, y, 160., Condition( function TKLS1___Cond1 ) )
        loop
            set target = FirstOfGroup( TKLS1___gr )
            exitwhen( target == null )
            if not( LoadBoolean( HT, GetHandleId( target ), StringHash( "TKL_LOL" ) ) ) then
                call DamageLib_SpellDamage( cst, target, dmg )
                call SaveBoolean( HT, GetHandleId( target ), StringHash( "TKL_LOL" ), TRUE )
                set ti = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( ti ), StringHash( "H_FOG" ), target )
                call TimerStart( ti, 1., false, function TKLS1___RemoveAttacked )
                call TKLS3_Act( target, 23 )
            endif
            call GroupRemoveUnit( TKLS1___gr, target )
        endloop
        set x = x + 45. * Cos( angle * bj_DEGTORAD )
        set y = y + 45. * Sin( angle * bj_DEGTORAD )
        set dist = dist + ( 45. )
        call SetUnitX( arrow, x )
        call SetUnitY( arrow, y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), dist )
    else
        call GroupClear( TKLS1___gr )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
        call RemoveUnit( arrow )
    endif
    set ti = null
    set t = null
    set cst = null
    set arrow = null
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set target = null
endfunction

// ===== TKLS1___Act (строки 11124-11167) =====
function TKLS1___Act takes nothing returns nothing
    local unit u
    local location target_loc
    local real caster_x
    local real caster_y
    local real angle
    local real end_x
    local real end_y
    local real dmg
    local timer t
    local unit missile
    if GetSpellAbilityId( ) == 'A03K' then
        set u = GetTriggerUnit( )
        set target_loc = GetSpellTargetLoc( )
        set caster_x = GetUnitX( u )
        set caster_y = GetUnitY( u )
        set angle = bj_RADTODEG * Atan2( GetLocationY( target_loc ) - caster_y, GetLocationX( target_loc ) - caster_x )
        set end_x = caster_x + 1000. * Cos( angle * bj_DEGTORAD )
        set end_y = caster_y + 1000. * Sin( angle * bj_DEGTORAD )
        set dmg = GetHeroInt( u, true ) * 1.8
        set t = CreateTimer( )
        set missile = CreateUnit( GetOwningPlayer( u ), 'h00B', caster_x, caster_y, angle )
        call PauseUnit( u, TRUE )
        call SetUnitFacing( u, angle )
        call SetUnitAnimation( u, "attack" )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), caster_x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), caster_y )
        call SavePlayerHandle( HT, GetHandleId( t ), StringHash( "p" ), GetOwningPlayer( u ) )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "333" ), u )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), missile )
        call SaveReal( HT, GetHandleId( t ), StringHash( "22" ), dmg )
        call SaveReal( HT, GetHandleId( t ), StringHash( "1" ), angle )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), 0. )
        call TimerStart( t, 0.04, TRUE, function TKLS1___CreatePartOfWave )
        call PauseUnit( u, FALSE )
        call IssueImmediateOrderById( u, 851972 )
        set t = null
        set u = null
        call RemoveLocation( target_loc )
        set target_loc = null
    endif
    // 05.09: anti-leak (obnulenie lokalov)
    set missile = null
endfunction

// ===== TKLS1___I (строки 11168-11174) =====
function TKLS1___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function TKLS1___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== TKLS2_preload (строки 11175-11176) =====
function TKLS2_preload takes nothing returns nothing
endfunction

// ===== TKLS2___Cond1 (строки 11177-11182) =====
function TKLS2___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), TKLS2___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== TKLS2___Act_2 (строки 11184-11212) =====
function TKLS2___Act_2 takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real x = LoadReal( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real y = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local group g = CreateGroup( )
    local real dmg = GetHeroInt( cst, TRUE ) * 0.8
    local unit FoG
    set TKLS2___ch_p = GetOwningPlayer( cst )
    call Dest_KillDestInRange( x, y, 100. )

    call GroupEnumUnitsInRange( g, x, y, 400., Condition( function TKLS2___Cond1 ) )
    loop
        set FoG = FirstOfGroup( g )
        exitwhen( FoG == null )
        call DamageLib_SpellDamage( cst, FoG, dmg )
        call TKLS3_Act( FoG, 12 )
        call GroupRemoveUnit( g, FoG )
    endloop
    call GroupClear( g )
    call DestroyGroup( g )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set g = null
    set FoG = null
    set cst = null
    set t = null
endfunction

// ===== TKLS2___Act (строки 11214-11259) =====
function TKLS2___Act takes nothing returns nothing
    local unit u
    local timer t
    local timer t2
    local real tx
    local real ty
    local real fx_x
    local real fx_y
    local integer i

    if GetSpellAbilityId( ) == 'A03N' then
        set u = GetTriggerUnit( )
        set tx = GetSpellTargetX( )
        set ty = GetSpellTargetY( )
        set t = CreateTimer( )
        call TimerStart( t, 0.10, FALSE, null )
        set i = 12
        loop
            exitwhen( i == 0 )
            loop
                exitwhen( TimerGetRemaining( t ) == 0. )
                call TriggerSleepAction( 0.01 )
            endloop
            if GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 then

                set fx_x = tx + GetRandomReal( 0., 400. ) * Cos( GetRandomReal( 0., 359.99 ) * bj_DEGTORAD )
                set fx_y = ty + GetRandomReal( 0., 400. ) * Sin( GetRandomReal( 0., 359.99 ) * bj_DEGTORAD )
                call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Human\\Blizzard\\BlizzardTarget.mdl", fx_x, fx_y ) )
                set t2 = CreateTimer( )
                call SaveReal( HT, GetHandleId( t2 ), StringHash( "H_1" ), fx_x )
                call SaveReal( HT, GetHandleId( t2 ), StringHash( "H_2" ), fx_y )
                call SaveUnitHandle( HT, GetHandleId( t2 ), StringHash( "H_3" ), u )
                call TimerStart( t2, 0.60, FALSE, function TKLS2___Act_2 )
                call TimerStart( t, 0.10, FALSE, null )

            else
                set i = 0
            endif
            set i = i - 1
        endloop
        call DestroyTimer( t )
        set t = null
        set t2 = null
        set u = null
    endif
endfunction

// ===== TKLS2___I (строки 11261-11267) =====
function TKLS2___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function TKLS2___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== TKLS4_preload (строки 11268-11269) =====
function TKLS4_preload takes nothing returns nothing
endfunction

// ===== TKLS4___Act (строки 11271-11287) =====
function TKLS4___Act takes nothing returns nothing
    local unit u = GetEventDamageSource( )
    local unit a = GetTriggerUnit( )
    local real damage = GetEventDamage()
    if GetEventDamageSource() != null and damage > 1. and IsUnitEnemy(u, GetOwningPlayer(a)) and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false then

        if GetEventDamage( ) > 0 and SquareRoot( ( GetUnitX( u ) - GetUnitX( a ) ) * ( GetUnitX( u ) - GetUnitX( a ) ) + ( GetUnitY( u ) - GetUnitY( a ) ) * ( GetUnitY( u ) - GetUnitY( a ) ) ) <= 200 then
            call DisableTrigger( GetTriggeringTrigger( ) )
            call TKLS3_Act( u, TKLS4___slow )
      //  call DisplayTextToForce( GetPlayersAll( ), "ткач1" )
            call EnableTrigger( GetTriggeringTrigger( ) )
        endif

    endif
    set u = null
    set a = null
endfunction

// ===== TKLS4___I (строки 11289-11291) =====
function TKLS4___I takes nothing returns nothing
    call TriggerAddAction( TKLS4_Trg, function TKLS4___Act )
endfunction

// ===== TKLS5_preload (строки 11293-11294) =====
function TKLS5_preload takes nothing returns nothing
endfunction

// ===== TKLS5___Filter_Enemy (строки 11296-11301) =====
function TKLS5___Filter_Enemy takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), TKLS5___p ) and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== TKLS5___Act (строки 11302-11331) =====
function TKLS5___Act takes nothing returns nothing
    local unit caster
    local real dmg
    local unit FoG
    if GetSpellAbilityId( ) == TKLS5___ab_id then
        set caster = GetTriggerUnit( )
        set dmg = GetHeroInt( caster, TRUE ) * TKLS5___percent_int
        set FoG = null
        set TKLS5___p = GetOwningPlayer( caster )
        call DestroyEffect( AddSpecialEffect( TKLS5___eff_caster, GetUnitX( caster ), GetUnitY( caster ) ) )
        call GroupEnumUnitsInRange( TKLS5___g, GetUnitX( caster ), GetUnitY( caster ), TKLS5___radius, Condition( function TKLS5___Filter_Enemy ) )
        loop
            set FoG = FirstOfGroup( TKLS5___g )
            exitwhen( FoG == null )
            call DestroyEffect( AddSpecialEffect( TKLS5___eff_target, GetUnitX( FoG ), GetUnitY( FoG ) ) )
            call DestroyEffect( AddSpecialEffect( TKLS5___eff_target_2, GetUnitX( FoG ), GetUnitY( FoG ) ) )
         //   call DamageLib_Explode( FoG ) // Удолить
            call UnitDamageTarget( caster, FoG, dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
            call TKLS3_Act( FoG, TKLS5___slowing )
        //    call Stun_Target( caster, FoG, TKLS5___stun_time )
            call StunUnit(FoG, TKLS5___stun_time)
            call X_ThrowUp( FoG, 150., 0.5 )
            call GroupRemoveUnit( TKLS5___g, FoG )
        endloop
        set FoG = null
        set caster = null
        call GroupClear( TKLS5___g ) //добавил чистку группы
    endif

endfunction

// ===== TKLS5___I (строки 11332-11338) =====
function TKLS5___I takes nothing returns nothing
    local trigger Trg
    set Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function TKLS5___Act )
    set Trg = null
endfunction
