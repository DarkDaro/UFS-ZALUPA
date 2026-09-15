// ===== MRASp1Lib_preload (строки 8894-8896) =====
function MRASp1Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'A01F' )
endfunction

// ===== MRASp1Lib__Cond1 (строки 8898-8903) =====
function MRASp1Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), MRASp1Lib__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== MRASp1Lib__RemoveAttacked (строки 8904-8913) =====
function MRASp1Lib__RemoveAttacked takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "TMA_2" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "TMA_1" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== MRASp1Lib__CreatePartOfWave (строки 8914-8972) =====
function MRASp1Lib__CreatePartOfWave takes nothing returns nothing
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
    local unit FoG
    local unit missile
    if dist <= 1000.then
        set MRASp1Lib__ch_p = p
        call GroupEnumUnitsInRange( MRASp1Lib__gr, x, y, 150., Condition( function MRASp1Lib__Cond1 ) )
        loop
            set FoG = FirstOfGroup( MRASp1Lib__gr )
            exitwhen( FoG == null )
            if not( LoadBoolean( HT, GetHandleId( FoG ), StringHash( "TMA_1" ) ) ) then
                call DamageLib_SpellDamage( cst, FoG, dmg )
                call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Other\\BlackArrow\\BlackArrowMissile.mdl", FoG, "chest" ) )
                call SaveBoolean( HT, GetHandleId( FoG ), StringHash( "TMA_1" ), TRUE )
                set ti = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( ti ), StringHash( "TMA_2" ), FoG )
                call TimerStart( ti, 1., false, function MRASp1Lib__RemoveAttacked )

                set missile = CreateUnit( p, 'hfoo', x, y, 0. )
                call UnitApplyTimedLife( missile, 'BTLF', 0.5 )
                call UnitAddAbility( missile, 'A01F' )
                call IssueTargetOrderById( missile, 852149, FoG )

            endif
            call GroupRemoveUnit( MRASp1Lib__gr, FoG )
        endloop
        set missile = null
        set x = x + 45. * Cos( angle * bj_DEGTORAD )
        set y = y + 45. * Sin( angle * bj_DEGTORAD )
        set dist = dist + ( 45. )
        call SetUnitX( arrow, x )
        call SetUnitY( arrow, y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), dist )
    else
        call GroupClear( MRASp1Lib__gr ) //add clear
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
    set FoG = null
endfunction

// ===== MRASp1Lib__MRAS1_Act (строки 8973-9013) =====
function MRASp1Lib__MRAS1_Act takes nothing returns nothing
    local unit u
    local real caster_x
    local real caster_y
    local real angle
    local real end_x
    local real end_y
    local real dmg
    local timer t
    local unit missile

    if GetSpellAbilityId( ) == 'A01C' then
        set u = GetTriggerUnit( )
        set caster_x = GetUnitX( u )
        set caster_y = GetUnitY( u )
        set angle = bj_RADTODEG * Atan2( GetSpellTargetY( ) - caster_y, GetSpellTargetX( ) - caster_x )
        set end_x = caster_x + 1000. * Cos( angle * bj_DEGTORAD )
        set end_y = caster_y + 1000. * Sin( angle * bj_DEGTORAD )
        set dmg = GetHeroAgi( u, true ) * 1.8
        set t = CreateTimer( )
        set missile = CreateUnit( GetOwningPlayer( u ), 'h003', caster_x, caster_y, angle )
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
        call TimerStart( t, 0.04, TRUE, function MRASp1Lib__CreatePartOfWave )
        call PauseUnit( u, FALSE )
        call IssueImmediateOrderById( u, 851972 )
        set t = null
        set u = null
    endif
    // 05.09: anti-leak (obnulenie lokalov)
    set missile = null
endfunction

// ===== MRASp1Lib__MRASp1Lib_Init (строки 9014-9020) =====
function MRASp1Lib__MRASp1Lib_Init takes nothing returns nothing
    local trigger MRAS1_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( MRAS1_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( MRAS1_Trg, function MRASp1Lib__MRAS1_Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set MRAS1_Trg = null
endfunction

// ===== MRASp2Lib__Cond1 (строки 9021-9026) =====
function MRASp2Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), MRASp2Lib__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== MRASp2Lib__RemovePause (строки 9029-9039) =====
function MRASp2Lib__RemovePause takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    call PauseUnit( u, FALSE )
    call IssueImmediateOrderById( u, 851972 )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== MRASp2Lib__MRAS2_Act (строки 9041-9079) =====
function MRASp2Lib__MRAS2_Act takes nothing returns nothing
    local unit u
    local real caster_x
    local real caster_y
    local group gr
    local unit target
    local real dmg
    //local timer t_old
    if GetSpellAbilityId( ) == 'A01I' then
        set u = GetTriggerUnit( )
        set caster_x = GetUnitX( u )
        set caster_y = GetUnitY( u )
        set gr = CreateGroup( )
        set dmg = GetHeroAgi( u, true ) * 1.5
        call AttachSoundToUnit( gg_snd_MentalCry, u )
        call StartSound( gg_snd_MentalCry )
        set MRASp2Lib__ch_p = GetOwningPlayer( u )
        call GroupEnumUnitsInRange( gr, caster_x, caster_y, 400., Condition( function MRASp2Lib__Cond1 ) )
        loop
            set target = FirstOfGroup( gr )
            exitwhen( target == null )
            call UnitDamageTarget( u, target, dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
            if GetUnitAbilityLevel( target, 'Avul' ) == 0 then
                call StunUnit(target,2.2)
               // set t_old = CreateTimer( )
              //  call SaveUnitHandle( HT, GetHandleId( t_old ), StringHash( "H_1" ), target )
             //   call TimerStart( t_old, 2.2, FALSE, function MRASp2Lib__RemovePause )
              //  call PauseUnit( target, TRUE )
            endif
            call GroupRemoveUnit( gr, target )
        endloop
  //      set t_old = null
        set u = null
        set target = null
        call GroupClear( gr )
        call DestroyGroup( gr )
        set gr = null
    endif
endfunction

// ===== MRASp2Lib__MRASp2Lib_Init (строки 9080-9085) =====
function MRASp2Lib__MRASp2Lib_Init takes nothing returns nothing
    local trigger MRAS2_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( MRAS2_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( MRAS2_Trg, function MRASp2Lib__MRAS2_Act )
    set MRAS2_Trg = null
endfunction

// ===== MRASp3Lib_preload (строки 9086-9089) =====
function MRASp3Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'A01L' )
    call X_PreloadAbility( 'A03S' )
endfunction

// ===== MRASp3Lib__Remove (строки 9091-9105) =====
function MRASp3Lib__Remove takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    if GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then
        call UnitRemoveAbility( u, 'A01L' )
        call SetUnitPathing( u, TRUE )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 1., false, function MRASp3Lib__Remove )
    endif
    set t = null
    set u = null
endfunction

// ===== MRASp3Lib__MRAS3_Act (строки 9106-9130) =====
function MRASp3Lib__MRAS3_Act takes nothing returns nothing
    local unit cst = null
    local timer t = null
    if GetSpellAbilityId( ) == 'A01J' then
        set cst = GetTriggerUnit( )
        set t = CreateTimer( )
        call SetUnitPathing( cst, FALSE )
        call UnitAddAbility( cst, 'A01L' )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), cst )
        call TimerStart( t, 2.5, FALSE, function MRASp3Lib__Remove )
        set t = null
        set cst = null
    else
        if GetSpellAbilityId( ) == 'A03S' then
            set cst = GetSpellTargetUnit( )
            set t = CreateTimer( )
            call SetUnitPathing( cst, FALSE )
            call UnitAddAbility( cst, 'A01L' )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), cst )
            call TimerStart( t, 2.5, FALSE, function MRASp3Lib__Remove )
            set t = null
            set cst = null
        endif
    endif
endfunction

// ===== MRASp3Lib__MRASp3Lib_Init (строки 9131-9137) =====
function MRASp3Lib__MRASp3Lib_Init takes nothing returns nothing
    local trigger MRAS3_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( MRAS3_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( MRAS3_Trg, function MRASp3Lib__MRAS3_Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set MRAS3_Trg = null
endfunction
