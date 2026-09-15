// ===== FLOS2_preload (строки 7902-7904) =====
function FLOS2_preload takes nothing returns nothing

endfunction

// ===== FLOS2__FireDmg_Period (строки 7906-7927) =====
function FLOS2__FireDmg_Period takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local unit cs = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_0" ) )
    local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local real total_time = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    set total_time = total_time - ( 1. )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), total_time )
    if total_time > 0.and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( cs, UNIT_TYPE_DEAD ) == false then
        call DamageLib_SpellDamage( cs, u, dmg )
    else
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
        call DestroyEffect( e )
    endif
    set t = null
    set u = null
    set cs = null
    set e = null
endfunction

// ===== FLOS2_FireDmg (строки 7929-7938) =====
function FLOS2_FireDmg takes unit d, unit at, real dmg returns nothing
    local timer t = CreateTimer( )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_0" ), d )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), at )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), 5. )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), ( dmg * 0.20 ) / ( 5. / 1. ) )
    call SaveEffectHandle( HT, GetHandleId( t ), StringHash( "H_4" ), AddSpecialEffectTarget( "Environment\\LargeBuildingFire\\LargeBuildingFire0.mdl", at, "chest" ) )
    call TimerStart( t, 1., TRUE, function FLOS2__FireDmg_Period )
    set t = null
endfunction

// ===== FLOS6_preload (строки 7940-7941) =====
function FLOS6_preload takes nothing returns nothing
endfunction

// ===== FLOS6__Cond1 (строки 7943-7948) =====
function FLOS6__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), FLOS6__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== FLOS6__Act (строки 7950-7980) =====
function FLOS6__Act takes nothing returns nothing
    local unit d = GetDyingUnit( )
    local unit k = GetKillingUnit( )
    local real dmg = GetUnitState( d, UNIT_STATE_MAX_LIFE ) * 0.20
    local real x
    local real y
    local group g
    local unit FoG
    if GetUnitAbilityLevel( k, 'A01Y' ) > 0 then
        set x = GetUnitX( d )
        set y = GetUnitY( d )
        set g = CreateGroup( )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\CorpseExplosion.mdl", x, y ) )
        set FLOS6__ch_p = GetOwningPlayer( k )
        call GroupEnumUnitsInRange( g, x, y, 350., Condition( function FLOS6__Cond1 ) )

        loop
            set FoG = FirstOfGroup( g )
            exitwhen( FoG == null )
            call DamageLib_SpellDamage( k, FoG, dmg )
            call GroupRemoveUnit( g, FoG )
        endloop
        call GroupClear( g ) //add clear
        call DestroyGroup( g )
        set g = null
    endif
    set d = null
    set k = null
    // 05.09: anti-leak (obnulenie lokalov)
    set FoG = null
endfunction

// ===== FLOS6__FLOS6_I (строки 7982-7988) =====
function FLOS6__FLOS6_I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( Trg, function FLOS6__Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== FLOS1_preload (строки 10415-10416) =====
function FLOS1_preload takes nothing returns nothing
endfunction

// ===== FLOS1__Cond1 (строки 10418-10423) =====
function FLOS1__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), FLOS1__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== FLOS1__FLOS1_Act (строки 10424-10464) =====
function FLOS1__FLOS1_Act takes nothing returns nothing
    local unit u
    local real tx
    local real ty
    local real caster_x
    local real caster_y
    local group gr
    local unit target
    local real dmg
    if GetSpellAbilityId( ) == 'A01H' then
        set u = GetTriggerUnit( )
        set tx = GetSpellTargetX( )
        set ty = GetSpellTargetY( )
        set caster_x = GetUnitX( u )
        set caster_y = GetUnitY( u )
        set gr = CreateGroup( )
        set dmg = GetHeroInt( u, true ) * 2.5
        call DestroyEffect( AddSpecialEffect( "Units\\Demon\\Infernal\\InfernalBirth.mdl", tx, ty ) )
        call TriggerSleepAction( 0.6 )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\NewGroundEX.mdl", tx, ty ) )
        set FLOS1__ch_p = GetOwningPlayer( u )
        call Dest_KillDestInRange( tx, ty, 300. )
        call GroupEnumUnitsInRange( gr, tx, ty, 300., Condition( function FLOS1__Cond1 ) )
        loop
            set target = FirstOfGroup( gr )
            exitwhen( target == null )
            //call DamageLib_Explode( target ) //Удолить
            call UnitDamageTarget( u, target, dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
            call FLOS2_FireDmg( u, target, dmg )
            //call Stun_Target( u, target, 1.5 )
            call StunUnit(target,1.5)

            call GroupRemoveUnit( gr, target )
        endloop
        set u = null
        set target = null
        call GroupClear( gr )
        call DestroyGroup( gr )
        set gr = null
    endif
endfunction

// ===== FLOS1__FLOS1_I (строки 10466-10472) =====
function FLOS1__FLOS1_I takes nothing returns nothing
    local trigger FLOS1_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( FLOS1_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( FLOS1_Trg, function FLOS1__FLOS1_Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set FLOS1_Trg = null
endfunction

// ===== FLOS3_preload (строки 10474-10475) =====
function FLOS3_preload takes nothing returns nothing
endfunction

// ===== FLOS3__Cond1 (строки 10476-10481) =====
function FLOS3__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), FLOS3__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== FLOS3__RemoveAttacked (строки 10483-10492) =====
function FLOS3__RemoveAttacked takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "FLO_2" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "FLO_1" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== FLOS3__RemEff (строки 10495-10504) =====
function FLOS3__RemEff takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    call DestroyEffect( e )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set e = null
endfunction

// ===== FLOS3__CreatePartOfWave (строки 10506-10562) =====
function FLOS3__CreatePartOfWave takes nothing returns nothing
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
    if dist <= 1200.then
        set FLOS3__ch_p = p
        call Dest_KillDestInRange( x, y, 250. )
        call GroupEnumUnitsInRange( FLOS3__gr, x, y, 250., Condition( function FLOS3__Cond1 ) )
        //set target = FirstOfGroup(FLOS3__gr)
        loop
            set target = FirstOfGroup( FLOS3__gr )
            exitwhen( target == null )
            if not( LoadBoolean( HT, GetHandleId( target ), StringHash( "FLO_1" ) ) ) then
                call DamageLib_SpellDamage( cst, target, dmg )
                call SaveBoolean( HT, GetHandleId( target ), StringHash( "FLO_1" ), TRUE )
                set ti = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( ti ), StringHash( "FLO_2" ), target )
                call TimerStart( ti, 1., false, function FLOS3__RemoveAttacked )
                call FLOS2_FireDmg( cst, target, dmg )
                set ti = null
            endif
            call GroupRemoveUnit( FLOS3__gr, target )

        endloop
        set x = x + 70. * Cos( angle * bj_DEGTORAD )
        set y = y + 70. * Sin( angle * bj_DEGTORAD )
        set dist = dist + ( 70. )
        call SetUnitX( arrow, x )
        call SetUnitY( arrow, y )
        call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", x, y ) )

        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), dist )
    else
        call GroupClear( FLOS3__gr )
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

// ===== FLOS3__Act (строки 10564-10599) =====
function FLOS3__Act takes nothing returns nothing
    local unit u
    local real caster_x
    local real caster_y
    local real angle
    local real end_x
    local real end_y
    local real dmg
    local timer t
    local unit missile
    if GetSpellAbilityId( ) == 'A01R' then
        set u = GetTriggerUnit( )
        set caster_x = GetUnitX( u )
        set caster_y = GetUnitY( u )
        set angle = bj_RADTODEG * Atan2( GetSpellTargetY( ) - caster_y, GetSpellTargetX( ) - caster_x )
        set end_x = caster_x + 1200. * Cos( angle * bj_DEGTORAD )
        set end_y = caster_y + 1200. * Sin( angle * bj_DEGTORAD )
        set dmg = GetHeroInt( u, true ) * 1.8
        set t = CreateTimer( )
        set missile = CreateUnit( GetOwningPlayer( u ), 'hfoo', caster_x, caster_y, angle )
        call TriggerSleepAction( 0.2 )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), caster_x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), caster_y )
        call SavePlayerHandle( HT, GetHandleId( t ), StringHash( "p" ), GetOwningPlayer( u ) )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "333" ), u )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), missile )
        call SaveReal( HT, GetHandleId( t ), StringHash( "22" ), dmg )
        call SaveReal( HT, GetHandleId( t ), StringHash( "1" ), angle )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), 0. )
        call TimerStart( t, 0.04, TRUE, function FLOS3__CreatePartOfWave )
        set t = null
        set u = null
    endif
    // 05.09: anti-leak (obnulenie lokalov)
    set missile = null
endfunction

// ===== FLOS3__FLOS3_I (строки 10601-10607) =====
function FLOS3__FLOS3_I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function FLOS3__Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== FLOS4_preload (строки 10609-10610) =====
function FLOS4_preload takes nothing returns nothing
endfunction

// ===== FLOS4__Cond1 (строки 10611-10616) =====
function FLOS4__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), FLOS4__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== FLOS4__Act (строки 10618-10664) =====
function FLOS4__Act takes nothing returns nothing
    local unit u
    local group gr
    local unit target
    local real dmg
    local timer t
    local integer i
    if GetSpellAbilityId( ) == 'A01T' then

        set u = GetTriggerUnit( )
        set gr = CreateGroup( )
        set dmg = GetHeroInt( u, true ) * 0.7
        set t = CreateTimer( )
        set i = 5

        loop
            exitwhen( i == 0 )
            call TimerStart( t, 0.2, FALSE, null )
            loop
                exitwhen( TimerGetRemaining( t ) == 0. )
                call TriggerSleepAction( 0.01 )
            endloop

            call DestroyEffect( AddSpecialEffectTarget( "war3mapImported\\FireNova.mdl", u, "origin" ) )
            set FLOS4__ch_p = GetOwningPlayer( u )
            call GroupEnumUnitsInRange( gr, GetUnitX( u ), GetUnitY( u ), 400., Condition( function FLOS4__Cond1 ) )
           // set target = FirstOfGroup(gr)
            loop
                set target = FirstOfGroup( gr )
                exitwhen( target == null )
                call DamageLib_SpellDamage( u, target, dmg )
                call FLOS2_FireDmg( u, target, dmg )
                call GroupRemoveUnit( gr, target )
            endloop
            call GroupClear( gr )
            set i = i - 1
        endloop
        call PauseTimer( t )
        call DestroyTimer( t )
        call GroupClear( gr )
        call DestroyGroup( gr )
        set t = null
        set u = null
        set target = null
        set gr = null
    endif
endfunction

// ===== FLOS4__FLOS4_I (строки 10665-10671) =====
function FLOS4__FLOS4_I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function FLOS4__Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== FLOS5_preload (строки 10673-10674) =====
function FLOS5_preload takes nothing returns nothing
endfunction

// ===== FLOS5__Cond1 (строки 10676-10681) =====
function FLOS5__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), FLOS5__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== FLOS5__Act_2 (строки 10683-10715) =====
function FLOS5__Act_2 takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real x = LoadReal( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real y = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local group g = CreateGroup( )
    local real dmg = GetHeroInt( cst, TRUE ) * 1.7
    local unit FoG
    call DestroyEffect( AddSpecialEffect( "war3mapImported\\NewGroundEX.mdl", x, y ) )
    set FLOS5__ch_p = GetOwningPlayer( cst )
    call Dest_KillDestInRange( x, y, 300. )

    call GroupEnumUnitsInRange( g, x, y, 300., Condition( function FLOS5__Cond1 ) )
    loop
        set FoG = FirstOfGroup( g )
        exitwhen( FoG == null )
       // call DamageLib_Explode( FoG ) //Удолить
        call UnitDamageTarget( cst, FoG, dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
        call FLOS2_FireDmg( cst, FoG, dmg )
        //call Stun_Target( cst, FoG, 0.7 )
        call StunUnit(FoG,0.7)
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

// ===== FLOS5__Act (строки 10717-10756) =====
function FLOS5__Act takes nothing returns nothing
    local unit u
    local timer t
    local timer t2
    local real fx_x
    local real fx_y
    local integer i
    if GetSpellAbilityId( ) == 'A01U' then
        set u = GetTriggerUnit( )
        set t = CreateTimer( )
        call TimerStart( t, 0.3, FALSE, null )
        set i = 15
        loop
            exitwhen( i == 0 )
            loop
                exitwhen( TimerGetRemaining( t ) == 0. )
                call TriggerSleepAction( 0.01 )
            endloop

            if GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 then
                set fx_x = GetUnitX( u ) + GetRandomReal( 0., 500. ) * Cos( GetRandomReal( 0., 359.99 ) * bj_DEGTORAD )
                set fx_y = GetUnitY( u ) + GetRandomReal( 0., 500. ) * Sin( GetRandomReal( 0., 359.99 ) * bj_DEGTORAD )
                call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Demon\\RainOfFire\\RainOfFireTarget.mdl", fx_x, fx_y ) )
                set t2 = CreateTimer( )
                call SaveReal( HT, GetHandleId( t2 ), StringHash( "H_1" ), fx_x )
                call SaveReal( HT, GetHandleId( t2 ), StringHash( "H_2" ), fx_y )
                call SaveUnitHandle( HT, GetHandleId( t2 ), StringHash( "H_3" ), u )
                call TimerStart( t2, 0.55, FALSE, function FLOS5__Act_2 )
                call TimerStart( t, 0.3, FALSE, null )
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

// ===== FLOS5__FLOS5_I (строки 10758-10764) =====
function FLOS5__FLOS5_I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function FLOS5__Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction
