// ===== SHAS3A___Act (строки 3621-3640) =====
function SHAS3A___Act takes nothing returns nothing
    local unit attacked = GetTriggerUnit( )
    local unit attacker = GetEventDamageSource( )
    local real dist = SquareRoot( ( GetUnitX( attacker ) - GetUnitX( attacked ) ) * ( GetUnitX( attacker ) - GetUnitX( attacked ) ) + ( GetUnitY( attacker ) - GetUnitY( attacked ) ) * ( GetUnitY( attacker ) - GetUnitY( attacked ) ) )
    // 09.09: убран дубль local real dmg = 0. — второе объявление перетирало его
    local real dmg = GetEventDamage()
    if attacker != null and dmg > 1. and IsUnitEnemy(attacker, GetOwningPlayer(attacked)) and IsUnitType(attacked, UNIT_TYPE_MAGIC_IMMUNE) == false then

        if GetEventDamage( ) > 0 and GetUnitAbilityLevel( attacker, 'A02J' ) > 0 and GetUnitAbilityLevel( attacked, 'B004' ) > 0 and dist <= 128.then
            call DisableTrigger( GetTriggeringTrigger( ) )
            set dmg = GetHeroStr( attacker, TRUE ) * 0.2
            call UnitDamageTarget( attacker, attacked, dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
            //call DisplayTextToForce( GetPlayersAll( ), "shas 02" )
            call EnableTrigger( GetTriggeringTrigger( ) )
        endif

    endif
    set attacker = null
    set attacked = null
endfunction

// ===== SHAS3A___I (строки 3641-3644) =====
function SHAS3A___I takes nothing returns nothing
    set SHAS3A_Trg = CreateTrigger( )
    call TriggerAddAction( SHAS3A_Trg, function SHAS3A___Act )
endfunction

// ===== SHAS4_preload (строки 6351-6352) =====
function SHAS4_preload takes nothing returns nothing
endfunction

// ===== SHAS4___Attacked (строки 6354-6395) =====
function SHAS4___Attacked takes nothing returns nothing
    local unit u = GetTriggerUnit( )
    local unit damager = GetEventDamageSource()
    local real damage = GetEventDamage()
    local integer main_char = 0
    local real heal = 0.
    if damager != null and damage > 1. and IsUnitEnemy(u, GetOwningPlayer(damager)) then

        if LoadBoolean( HT, GetHandleId( u ), StringHash( "H_IS_SHIELD_SHA" ) ) then

            if LoadInteger( HT, GetHandleId( u ), StringHash( "H_SHIELD_LEFT_SHA" ) ) > 0 then

                set main_char = X_GetMainChar( u )

                if main_char == 1 then
                    set heal = GetHeroStr( u, TRUE ) * 1.0
                endif
                if main_char == 2 then
                    set heal = GetHeroAgi( u, TRUE ) * 1.0
                endif
                if main_char == 3 then
                    set heal = GetHeroInt( u, TRUE ) * 1.0
                endif

                call SetWidgetLife( u, GetWidgetLife( u ) + heal )
           // call DisplayTextToForce( GetPlayersAll( ), "каменный щит хилл -1" )
                call SaveInteger( HT, GetHandleId( u ), StringHash( "H_SHIELD_LEFT_SHA" ), LoadInteger( HT, GetHandleId( u ), StringHash( "H_SHIELD_LEFT_SHA" ) ) - 1 )
            else
                call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_IS_SHIELD_SHA" ), FALSE )
                call DestroyEffect( LoadEffectHandle( HT, GetHandleId( u ), StringHash( "H_FX" ) ) ) //добавил удаление эффекта
       //     call DisplayTextToForce( GetPlayersAll( ), "каменный щит фалсе" )
//
            endif

        endif

    endif

    set u = null
    // 05.09: anti-leak (obnulenie lokalov)
    set damager = null
endfunction

// ===== SHAS4___RemoveShield (строки 6397-6417) =====
function SHAS4___RemoveShield takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local effect e = LoadEffectHandle( HT, GetHandleId( u ), StringHash( "H_FX" ) )
   //  local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_FX" ) )

    if GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then
        call DestroyEffect( e )
        call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_IS_SHIELD_SHA" ), FALSE )
      //  call DisplayTextToForce( GetPlayersAll( ), "каменный щит стоп" )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 0.5, TRUE, function SHAS4___RemoveShield )
    //    call DisplayTextToForce( GetPlayersAll( ), "каменный щит рекрсия" )
    endif
    set e = null
    set t = null
    set u = null
endfunction

// ===== SHAS4___Act_S (строки 6419-6449) =====
function SHAS4___Act_S takes nothing returns nothing
    local unit caster
    local effect e
    local timer t
    if GetSpellAbilityId( ) == 'A02M' then

        set caster = GetTriggerUnit( )

        if LoadBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_SHA" ) ) then
        //call PauseTimer(t_old)
        //call DestroyTimer(t_old)
            set t = LoadTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_SHA" ) )
            call TimerStart( t, TimerGetRemaining( t ) + 10., FALSE, function SHAS4___RemoveShield )
            call SaveInteger( HT, GetHandleId( caster ), StringHash( "H_SHIELD_LEFT_SHA" ), LoadInteger( HT, GetHandleId( caster ), StringHash( "H_SHIELD_LEFT_SHA" ) ) + 10 )
        else
            set e = AddSpecialEffectTarget( "war3mapImported\\Stone Shield.mdx", caster, "origin" )
            set t = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ), caster )
            call SaveTimerHandle( HT, GetHandleId( t ), StringHash( "H_TIMER_SHA" ), t )
            call SaveBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_SHA" ), TRUE )
            call SaveInteger( HT, GetHandleId( caster ), StringHash( "H_SHIELD_LEFT_SHA" ), 10 )
            call SaveEffectHandle( HT, GetHandleId( caster ), StringHash( "H_FX" ), e )
            //call SaveEffectHandle( HT, GetHandleId( t), StringHash( "H_FX" ), e )

            call TimerStart( t, 10., FALSE, function SHAS4___RemoveShield )
        endif
        set t = null
        set e = null
        set caster = null
    endif
endfunction

// ===== SHAS4___Act_T (строки 6451-6478) =====
function SHAS4___Act_T takes nothing returns nothing
    local unit caster
    local effect fx
    local timer t
    if GetSpellAbilityId( ) == 'A02I' then

        set caster = GetSpellTargetUnit( )

        if LoadBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_SHA" ) ) then
          //  call DestroyTimer(t_old)
            set t = LoadTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_SHA" ) )
            call TimerStart( t, TimerGetRemaining( t ) + 10., FALSE, function SHAS4___RemoveShield )
            call SaveInteger( HT, GetHandleId( caster ), StringHash( "H_SHIELD_LEFT_SHA" ), LoadInteger( HT, GetHandleId( caster ), StringHash( "H_SHIELD_LEFT_SHA" ) ) + 10 )
        else
            set fx = AddSpecialEffectTarget( "war3mapImported\\Stone Shield.mdx", caster, "origin" )
            set t = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ), caster )
            call SaveTimerHandle( HT, GetHandleId( t ), StringHash( "H_TIMER_SHA" ), t )
            call SaveBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_SHA" ), TRUE )
            call SaveInteger( HT, GetHandleId( caster ), StringHash( "H_SHIELD_LEFT_SHA" ), 10 )
            call SaveEffectHandle( HT, GetHandleId( caster ), StringHash( "H_FX" ), fx )
            call TimerStart( t, 10., FALSE, function SHAS4___RemoveShield )
        endif
        set t = null
        set fx = null
        set caster = null
    endif
endfunction

// ===== SHAS4___I (строки 6480-6485) =====
function SHAS4___I takes nothing returns nothing
    call TriggerAddAction( SHAS4_Trg_A, function SHAS4___Attacked )
    call TriggerRegisterAnyUnitEventBJ( SHAS4___Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( SHAS4___Trg, function SHAS4___Act_S )
    call TriggerAddAction( SHAS4___Trg, function SHAS4___Act_T )
endfunction

// ===== SHAS1_preload (строки 9552-9554) =====
function SHAS1_preload takes nothing returns nothing

endfunction

// ===== SHAS1___Cond1 (строки 9555-9560) =====
function SHAS1___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), SHAS1___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== SHAS1___RemoveAttacked (строки 9561-9570) =====
function SHAS1___RemoveAttacked takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "2" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "dirtwave" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== SHAS1___CreatePartOfWave (строки 9571-9623) =====
function SHAS1___CreatePartOfWave takes nothing returns nothing
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
        set SHAS1___ch_p = p
        call Dest_KillDestInRange( x, y, 300. )
        call GroupEnumUnitsInRange( SHAS1___gr, x, y, 300., Condition( function SHAS1___Cond1 ) )
       // set target = FirstOfGroup(SHAS1___gr)
        loop
            set target = FirstOfGroup( SHAS1___gr )
            exitwhen( target == null )
            if not( LoadBoolean( HT, GetHandleId( target ), StringHash( "dirtwave" ) ) ) then
                call DamageLib_SpellDamage( cst, target, dmg )
                call SaveBoolean( HT, GetHandleId( target ), StringHash( "dirtwave" ), TRUE )
                set ti = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( ti ), StringHash( "2" ), target )
                call TimerStart( ti, 1., false, function SHAS1___RemoveAttacked )
            endif
            call GroupRemoveUnit( SHAS1___gr, target )
        endloop
        set x = x + 90. * Cos( angle * bj_DEGTORAD )
        set y = y + 90. * Sin( angle * bj_DEGTORAD )
        set dist = dist + ( 90. )
        call SetUnitX( arrow, x )
        call SetUnitY( arrow, y )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\NewDirtEXNofire.mdx", x, y ) )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), dist )
    else
        call GroupClear( SHAS1___gr ) //add clear
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

// ===== SHAS1___Act (строки 9625-9665) =====
function SHAS1___Act takes nothing returns nothing
    local unit u
    local real caster_x
    local real caster_y
    local real angle
    local real end_x
    local real end_y
    local real dmg
    local timer t
    local unit missile
    if GetSpellAbilityId( ) == 'A025' then
        set u = GetTriggerUnit( )
        set caster_x = GetUnitX( u )
        set caster_y = GetUnitY( u )
        set angle = bj_RADTODEG * Atan2( GetSpellTargetY( ) - caster_y, GetSpellTargetX( ) - caster_x )
        set end_x = caster_x + 1000. * Cos( angle * bj_DEGTORAD )
        set end_y = caster_y + 1000. * Sin( angle * bj_DEGTORAD )
        set dmg = GetHeroInt( u, true ) * 0.0 + GetHeroStr( u, true ) * 1.8
        set t = CreateTimer( )
        set missile = CreateUnit( GetOwningPlayer( u ), 'hfoo', caster_x, caster_y, angle )
        call PauseUnit( u, TRUE )
        call SetUnitFacing( u, angle )
        call SetUnitAnimation( u, "attack slam" )
        call TriggerSleepAction( 0.2 )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), caster_x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), caster_y )
        call SavePlayerHandle( HT, GetHandleId( t ), StringHash( "p" ), GetOwningPlayer( u ) )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "333" ), u )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), missile )
        call SaveReal( HT, GetHandleId( t ), StringHash( "22" ), dmg )
        call SaveReal( HT, GetHandleId( t ), StringHash( "1" ), angle )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), 0. )
        call TimerStart( t, 0.04, TRUE, function SHAS1___CreatePartOfWave )
        call PauseUnit( u, FALSE )
        call IssueImmediateOrderById( u, 851972 )
        set t = null
        set u = null
    endif
    // 05.09: anti-leak (obnulenie lokalov)
    set missile = null
endfunction

// ===== SHAS1___I (строки 9666-9672) =====
function SHAS1___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function SHAS1___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== SHAS2_preload (строки 9673-9674) =====
function SHAS2_preload takes nothing returns nothing
endfunction

// ===== SHAS2___Cond1 (строки 9675-9680) =====
function SHAS2___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), SHAS2___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== SHAS2___Act (строки 9682-9726) =====
function SHAS2___Act takes nothing returns nothing
    local unit u
    local real caster_x
    local real caster_y
    local group gr
    local unit target
    local real dmg
    local unit dummy
    if GetSpellAbilityId( ) == 'A02F' then
        set u = GetTriggerUnit( )
        set caster_x = GetUnitX( u )
        set caster_y = GetUnitY( u )
        set gr = CreateGroup( )
        set dmg = GetHeroStr( u, true ) * 2.0
        call PauseUnit( u, TRUE )
        call SetUnitAnimationByIndex( u, 10 )
        call TriggerSleepAction( 0.35 )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\EarthNova.mdx", caster_x, caster_y ) )
        call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl", caster_x, caster_y ) )
        call PauseUnit( u, FALSE )
        call SetUnitAnimation( u, "stand" )
        call IssueImmediateOrderById( u, 851972 )
        set SHAS2___ch_p = GetOwningPlayer( u )
        call Dest_KillDestInRange( caster_x, caster_y, 500. )
        call GroupEnumUnitsInRange( gr, caster_x, caster_y, 500., Condition( function SHAS2___Cond1 ) )
        //set target = FirstOfGroup(gr)
        loop
            set target = FirstOfGroup( gr )
            exitwhen( target == null )
            call UnitDamageTarget( u, target, dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
            set dummy = CreateUnit( GetOwningPlayer( u ), 'hfoo', caster_x, caster_y, 0. )
            call UnitAddAbility( dummy, 'A006' )
            call X_ApplyLife( dummy )
            call IssueTargetOrderById( dummy, 852075, target )

            call GroupRemoveUnit( gr, target )
        endloop
        call GroupClear( gr )
        call DestroyGroup( gr )
        set dummy = null
        set u = null
        set target = null
        set gr = null
    endif
endfunction

// ===== SHAS2___I (строки 9728-9734) =====
function SHAS2___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function SHAS2___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== SHAS3_preload (строки 9736-9739) =====
function SHAS3_preload takes nothing returns nothing
    call X_PreloadAbility( 'A02K' )
    call X_PreloadAbility( 'A02L' )
endfunction

// ===== SHAS3___Cond1 (строки 9741-9746) =====
function SHAS3___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), SHAS3___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== SHAS3___Act (строки 9747-9799) =====
function SHAS3___Act takes nothing returns nothing
    local unit u
    local real tx
    local real ty
    local real caster_x
    local real caster_y
    local unit target
    local real dist
    local real dmg
    local unit missile
    if GetSpellAbilityId( ) == 'A02J' then
        set u = GetTriggerUnit( )
        set tx = GetSpellTargetX( )
        set ty = GetSpellTargetY( )
        set caster_x = GetUnitX( u )
        set caster_y = GetUnitY( u )
        set dist = SquareRoot( ( tx - caster_x ) * ( tx - caster_x ) + ( ty - caster_y ) * ( ty - caster_y ) )
        set dmg = GetHeroStr( u, true ) * 1.7 + GetHeroInt( u, true ) * 0.6
        set missile = CreateUnit( GetOwningPlayer( u ), 'hfoo', caster_x, caster_y, 0. )
        call UnitAddAbility( missile, 'A02L' )
        call SetUnitScale( missile, 2., 2., 2. )
        call IssuePointOrderById( missile, 852652, tx, ty )
        call X_ApplyLife( missile )

        call TriggerSleepAction( 0.01 )
        call IssueImmediateOrderById( u, 851972 )
        call TriggerSleepAction( dist / 1400. )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\NewDirtEXNofire.mdx", tx, ty ) )
        set SHAS3___ch_p = GetOwningPlayer( u )
        call Dest_KillDestInRange( tx, ty, 300. )

        call GroupEnumUnitsInRange( SHAS3___g, tx, ty, 300., Condition( function SHAS3___Cond1 ) )
       // set target = FirstOfGroup(SHAS3___g)
        loop
            set target = FirstOfGroup( SHAS3___g )
            exitwhen( target == null )
            call DamageLib_SpellDamage( u, target, dmg )
            set missile = CreateUnit( GetOwningPlayer( u ), 'hfoo', tx, ty, 0. )
            call UnitAddAbility( missile, 'A02K' )
            call X_ApplyLife( missile )
            call IssueTargetOrderById( missile, 852149, target )

         //   call Stun_Target( u, target, 1. )
            call StunUnit(target,1.0)

            call GroupRemoveUnit( SHAS3___g, target )
        endloop
        call GroupClear( SHAS3___g ) //add clear
        set missile = null
        set u = null
        set target = null
    endif
endfunction

// ===== SHAS3___I (строки 9800-9806) =====
function SHAS3___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function SHAS3___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction
