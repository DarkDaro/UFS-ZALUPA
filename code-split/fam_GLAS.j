// ===== GLAS4_preload (строки 2537-2539) =====
function GLAS4_preload takes nothing returns nothing

endfunction

// ===== GLAS4__BloodDmg_Period (строки 2548-2574) =====
function GLAS4__BloodDmg_Period takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local unit cs = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_0" ) )
    local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local real total_time = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    set total_time = total_time - ( 1.0 )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H _2" ), total_time )

    if total_time >= 0.and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( cs, UNIT_TYPE_DEAD ) == false then
        call UnitDamageTarget( cs, u, dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )

    else
        call DestroyEffect( e )
      //  call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "_кровотечение орк конец" )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )

    endif

    set t = null
    set u = null
    set cs = null
    set e = null
endfunction

// ===== GLAS4_BloodDmg (строки 2576-2585) =====
function GLAS4_BloodDmg takes unit d, unit at, real dmg returns nothing
    local timer t = CreateTimer( )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_0" ), d )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), at )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), 7. )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), ( dmg * 0.25 ) / ( 7. / 1. ) )
    call SaveEffectHandle( HT, GetHandleId( t ), StringHash( "H_4" ), AddSpecialEffectTarget( "Objects\\Spawnmodels\\Other\\HumanBloodCinematicEffect\\HumanBloodCinematicEffect.mdl", at, "chest" ) )
    call TimerStart( t, 1., TRUE, function GLAS4__BloodDmg_Period )
    set t = null
endfunction

// ===== GLAS4__AttackAct (строки 2587-2610) =====
function GLAS4__AttackAct takes nothing returns nothing
    local unit att = GetEventDamageSource( )
    local unit target = GetTriggerUnit( )
    local integer chance = GetRandomInt( 1, 100 )
    local real damage = GetEventDamage( )
    call DisableTrigger( GetTriggeringTrigger( ) )

    if GetEventDamageSource() != null and damage > 1. and IsUnitEnemy(att, GetOwningPlayer(target)) and IsUnitType(target, UNIT_TYPE_MAGIC_IMMUNE) == false then

    //добавлено условие на 200 дистанции ,чтоб не было бесконечный стак
        if GetEventDamage( ) > 0 and GetUnitAbilityLevel( att, 'A029' ) > 0 and SquareRoot( ( GetUnitX( att ) - GetUnitX( target ) ) * ( GetUnitX( att ) - GetUnitX( target ) ) + ( GetUnitY( att ) - GetUnitY( target ) ) * ( GetUnitY( att ) - GetUnitY( target ) ) ) <= 200. then

            if chance <= 10 then
         //   call DisplayTextToForce( GetPlayersAll( ), "кровотечение орк 10 шанс" )
                call GLAS4_BloodDmg( att, target, damage )
            endif

        endif

    endif
    call EnableTrigger( GetTriggeringTrigger( ) )
    set att = null
    set target = null
endfunction

// ===== GLAS4__I (строки 2612-2614) =====
function GLAS4__I takes nothing returns nothing
    call TriggerAddAction( GLAS4_Trg, function GLAS4__AttackAct )
endfunction

// ===== GLAS5_preload (строки 5411-5413) =====
function GLAS5_preload takes nothing returns nothing
    call X_PreloadAbility( 'A02B' )
endfunction

// ===== GLAS5___Act (строки 5415-5442) =====
function GLAS5___Act takes nothing returns nothing
    local unit att = GetEventDamageSource( )
    local unit target = GetTriggerUnit( )
    local integer chance = GetRandomInt( 1, 100 )
    local real dmg = GetEventDamage()
    local unit dummy
    if att != null and dmg > 1. and IsUnitEnemy(att, GetOwningPlayer(target)) and IsUnitType(target, UNIT_TYPE_MAGIC_IMMUNE) == false then

        if GetEventDamage( ) > 0 and GetUnitAbilityLevel( att, 'A02A' ) > 0 and SquareRoot( ( GetUnitX( att ) - GetUnitX( target ) ) * ( GetUnitX( att ) - GetUnitX( target ) ) + ( GetUnitY( att ) - GetUnitY( target ) ) * ( GetUnitY( att ) - GetUnitY( target ) ) ) <= 128.then
       //Сало при атаке

            if chance <= 7 then
                call DisableTrigger( GetTriggeringTrigger( ) )
                set dummy = CreateUnit( GetOwningPlayer( att ), 'hfoo', GetUnitX( target ), GetUnitY( target ), 0. )
                call X_ApplyLife( dummy )
                call UnitAddAbility( dummy, 'A02B' )
                call IssueTargetOrderById( dummy, 852592, target )
                set dummy = null
                call EnableTrigger( GetTriggeringTrigger( ) )
            endif

        endif

    endif
    set att = null
    set target = null
    set dummy = null
endfunction

// ===== GLAS5___I (строки 5444-5447) =====
function GLAS5___I takes nothing returns nothing
    set GLAS5_Trg = CreateTrigger( )
    call TriggerAddAction( GLAS5_Trg, function GLAS5___Act )
endfunction

// ===== GLAS6_preload (строки 5450-5452) =====
function GLAS6_preload takes nothing returns nothing
    call X_PreloadAbility( 'A03T' )
endfunction

// ===== GLAS6___Cond1 (строки 5455-5460) =====
function GLAS6___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GLAS6___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0
    set u = null
    return b
endfunction

// ===== GLAS6___Act_A (строки 5462-5484) =====
function GLAS6___Act_A takes nothing returns nothing
    local unit att = GetEventDamageSource( )
    local unit target = GetTriggerUnit( )
    local real dmg = GetEventDamage( )
    local real heal = 0.

    if GetEventDamageSource() != null and dmg > 1. and IsUnitEnemy(att, GetOwningPlayer(target)) and IsUnitType(target, UNIT_TYPE_MAGIC_IMMUNE) == false then

        if dmg > 0 and LoadBoolean( HT, GetHandleId( att ), StringHash( "i_hate_rewenger" ) ) then

            call DisableTrigger( GetTriggeringTrigger( ) )
            set heal = dmg * 0.10
       //  call DisplayTextToForce( GetPlayersAll( ), "i_hate_rewenger heal+" + R2S( heal ) )
            call SetUnitState( att, UNIT_STATE_LIFE, GetUnitState( att, UNIT_STATE_LIFE ) + heal )
            call GLAS4_BloodDmg( att, target, dmg )

            call EnableTrigger( GetTriggeringTrigger( ) )

        endif
    endif
    set att = null
    set target = null
endfunction

// ===== GLAS6___Off (строки 5486-5500) =====
function GLAS6___Off takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "i_hate_rewenger" ) )
    local effect w_e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_2" ) )
    call DestroyEffect( w_e )
    call SaveBoolean( HT, GetHandleId( cst ), StringHash( "i_hate_rewenger" ), FALSE )
   // call DisplayTextToForce( GetPlayersAll( ), "rewenger false" )
    call DisableTrigger( GLAS6_Trg_A )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set cst = null
    set w_e = null
endfunction

// ===== GLAS6___AddRage (строки 5502-5508) =====
function GLAS6___AddRage takes player owner, unit target returns nothing
    local unit d = CreateUnit( owner, 'hfoo', GetUnitX( target ), GetUnitY( target ), 0. )
    call UnitAddAbility( d, 'A03T' )
    call X_ApplyLife( d )
    call IssueTargetOrderById( d, 852209, target )
    set d = null
endfunction

// ===== GLAS6___Act (строки 5510-5546) =====
function GLAS6___Act takes nothing returns nothing
    local unit u
    local timer t
    local effect fx
    local integer i
    local unit hero

    if GetSpellAbilityId( ) == 'A02D' then

      //  call DisplayTextToForce( GetPlayersAll( ), "i_hate_rewenger start" )
        set u = GetTriggerUnit( )
        call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Human\\MarkOfChaos\\MarkOfChaosTarget.mdl", u, "origin" ) )
        set fx = AddSpecialEffectTarget( "war3mapImported\\BloodElementalMisile.mdl", u, "weapon" )
        call SaveBoolean( HT, GetHandleId( u ), StringHash( "i_hate_rewenger" ), TRUE )
        set t = CreateTimer( )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "i_hate_rewenger" ), u )
        call SaveEffectHandle( HT, GetHandleId( t ), StringHash( "H_2" ), fx )
        call TimerStart( t, 5., FALSE, function GLAS6___Off )
        call EnableTrigger( GLAS6_Trg_A )
        set i = 1
        set hero = null

        loop
            exitwhen( i > 10 )
            set hero = s__Hero[i]
            if IsPlayerAlly( GetOwningPlayer( hero ), GetOwningPlayer( u ) ) then
                call GLAS6___AddRage( GetOwningPlayer( u ), hero )
            endif
            set i = i + 1
        endloop

        set t = null
        set fx = null
        set u = null
        set hero = null
    endif
endfunction

// ===== GLAS6___I (строки 5548-5556) =====
function GLAS6___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GLAS6___Act )
    call TriggerAddAction( GLAS6_Trg_A, function GLAS6___Act_A )
    call DisableTrigger( GLAS6_Trg_A )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== GLAS7_preload (строки 5559-5561) =====
function GLAS7_preload takes nothing returns nothing
    call X_PreloadAbility( 'A02E' )
endfunction

// ===== GLAS7___Rem (строки 5563-5597) =====
function GLAS7___Rem takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit ta = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "defminus" ) )

    if GetUnitState( ta, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( ta, UNIT_TYPE_DEAD ) == false then

        if GetUnitAbilityLevel( ta, 'A02E' ) > 1 then
            call DecUnitAbilityLevel( ta, 'A02E' )
        else
            call UnitRemoveAbility( ta, 'A02E' )
        //    call DisplayTextToForce( GetPlayersAll( ), "разруение брони удолить" + GetUnitName(ta)  )

        endif
       // call DisplayTextToForce( GetPlayersAll( ), "разруение брони стоп1" + GetUnitName(ta) )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else

        if IsUnitType( ta, UNIT_TYPE_HERO ) then
            call TimerStart( t, 1., false, function GLAS7___Rem )
       //     call DisplayTextToForce( GetPlayersAll( ), "разруение брони  рекурсия" + GetUnitName(ta)  )

        else
      //      call DisplayTextToForce( GetPlayersAll( ), "разруение брони  рекурсия стоп не гер"+ GetUnitName(ta) )
            call FlushChildHashtable( HT, GetHandleId( t ) )
            call PauseTimer( t )
            call DestroyTimer( t )
        endif

    endif
    set ta = null
    // 05.09: anti-leak (obnulenie lokalov)
    set t = null
endfunction

// ===== GLAS7___Act (строки 5599-5633) =====
function GLAS7___Act takes nothing returns nothing
    local unit att = GetEventDamageSource( )
    local unit target = GetTriggerUnit( )
    local real damage = GetEventDamage()
    local timer t

    if GetEventDamageSource() != null and damage > 1. and IsUnitEnemy(att, GetOwningPlayer(target)) and IsUnitType(target, UNIT_TYPE_MAGIC_IMMUNE) == false then
    //call DisableTrigger( GetTriggeringTrigger( ) )

    //and GetUnitTypeId(target) != 'E000' and GetUnitTypeId(target) != 'Hgam' Ткач и Мрак

        if GetEventDamage( ) > 0 and GetUnitAbilityLevel( att, 'A02C' ) > 0 and SquareRoot( ( GetUnitX( att ) - GetUnitX( target ) ) * ( GetUnitX( att ) - GetUnitX( target ) ) + ( GetUnitY( att ) - GetUnitY( target ) ) * ( GetUnitY( att ) - GetUnitY( target ) ) ) <= 128. then

            if GetUnitAbilityLevel( target, 'A02E' ) > 0 then
                if GetUnitAbilityLevel( target, 'A02E' ) < 29 then
                    call IncUnitAbilityLevel( target, 'A02E' )
                endif
            else
                call UnitAddAbility( target, 'A02E' )
            endif

     //   call DisplayTextToForce( GetPlayersAll( ), "разруение брони стаки-30 рекурсия" + GetUnitName(target) )
            set t = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "defminus" ), target )
            call TimerStart( t, 2., FALSE, function GLAS7___Rem )

        endif

    endif
   // call EnableTrigger( GetTriggeringTrigger( ) )
    set att = null
    set target = null
    // 05.09: anti-leak (obnulenie lokalov)
    set t = null
endfunction

// ===== GLAS7___I (строки 5635-5638) =====
function GLAS7___I takes nothing returns nothing
    set GLAS7_Trg = CreateTrigger( )
    call TriggerAddAction( GLAS7_Trg, function GLAS7___Act )
endfunction

// ===== GLAS1_preload (строки 7990-7992) =====
function GLAS1_preload takes nothing returns nothing
    call X_PreloadAbility( 'A006' )
endfunction

// ===== GLAS1__Cond1 (строки 7994-7999) =====
function GLAS1__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GLAS1__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== GLAS1__Att (строки 8001-8010) =====
function GLAS1__Att takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_FOG" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_ATT_GLA" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== GLAS1__proj (строки 8011-8080) =====
function GLAS1__proj takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real cX = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local real cY = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real tX = LoadReal( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local real tY = LoadReal( HT, GetHandleId( t ), StringHash( "H_5" ) )
    local real dm = LoadReal( HT, GetHandleId( t ), StringHash( "H_6" ) )
    local real an = LoadReal( HT, GetHandleId( t ), StringHash( "H_8" ) )
    local real nd = LoadReal( HT, GetHandleId( t ), StringHash( "H_9" ) )
    local real di = LoadReal( HT, GetHandleId( t ), StringHash( "H_7" ) )
    local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_10" ) )
    local unit target
    // 09.09: было local timer t — дубль объявления (склейка переименования 05.09),
    // второе объявление обнуляло таймер рывка -> PauseTimer/DestroyTimer получали null,
    // периодический таймер жил вечно (спам эффектов). Переименовано в t2.
    local timer t2
    local unit missile
    set nd = nd + ( 70. )
    set cX = cX + 70. * Cos( an * bj_DEGTORAD )
    set cY = cY + 70. * Sin( an * bj_DEGTORAD )

    if ( nd < di ) and not( IsTerrainPathable( cX, cY, PATHING_TYPE_WALKABILITY ) ) then

        call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl", cX, cY ) )
        call SetUnitX( u, cX )
        call SetUnitY( u, cY )
        set GLAS1__ch_p = GetOwningPlayer( u )
        call Dest_KillDestInRange( cX, cY, 150. )
        call GroupEnumUnitsInRange( GLAS1__gr, cX, cY, 150., Condition( function GLAS1__Cond1 ) )
        loop
            set target = FirstOfGroup( GLAS1__gr )
            exitwhen( target == null )
            if not( LoadBoolean( HT, GetHandleId( target ), StringHash( "H_ATT_GLA" ) ) ) then

                call UnitDamageTarget( u, target, dm, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
                call GLAS4_BloodDmg( u, target, dm )
                call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl", target, "origin" ) )
                set missile = CreateUnit( GetOwningPlayer( u ), 'hfoo', cX, cY, 0. )
                call X_ApplyLife( missile )
                call UnitAddAbility( missile, 'A006' )
                call IssueTargetOrderById( missile, 852075, target )
                set missile = null
                call SaveBoolean( HT, GetHandleId( target ), StringHash( "H_ATT_GLA" ), TRUE )
                set t2 = CreateTimer( ) // 09.09: t -> t2 (дубль объявления)
                call SaveUnitHandle( HT, GetHandleId( t2 ), StringHash( "H_FOG" ), target )
                call TimerStart( t2, 1., false, function GLAS1__Att )
                set t2 = null

            endif
            call GroupRemoveUnit( GLAS1__gr, target )
        endloop
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), cX )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), cY )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_9" ), nd )
    else
        call GroupClear( GLAS1__gr ) //add clear
        call SetUnitPathing( u, TRUE )
        call DestroyEffect( e )
        call SetUnitAnimation( u, "stand" )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set e = null
    set t = null
    set u = null
    // 05.09: anti-leak (obnulenie lokalov)
    set target = null
endfunction

// ===== GLAS1__Act (строки 8081-8122) =====
function GLAS1__Act takes nothing returns nothing
    local unit caster
    local real tx
    local real ty
    local real caster_x
    local real caster_y
    local real dmg
    local timer t
    local real dist
    local real angle

    if GetSpellAbilityId( ) == 'A026' then
        set caster = GetTriggerUnit( )
        set tx = GetSpellTargetX( )
        set ty = GetSpellTargetY( )
        set caster_x = GetUnitX( caster )
        set caster_y = GetUnitY( caster )
        set dmg = GetHeroAgi( caster, true ) * 1.8
        set t = CreateTimer( )
        set dist = SquareRoot( ( tx - caster_x ) * ( tx - caster_x ) + ( ty - caster_y ) * ( ty - caster_y ) )
        if dist > 1000.then
            set dist = 1000.
        endif

        set angle = bj_RADTODEG * Atan2( ty - caster_y, tx - caster_x )
        call SetUnitPathing( caster, FALSE )
        call SetUnitAnimationByIndex( caster, 9 )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), caster_x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), caster_y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_4" ), tx )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), ty )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_6" ), dmg )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_7" ), dist )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_8" ), angle )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_9" ), 0. )
        call SaveEffectHandle( HT, GetHandleId( t ), StringHash( "H_10" ), AddSpecialEffectTarget( "Abilities\\Spells\\Orc\\Shockwave\\ShockwaveMissile.mdl", caster, "chest" ) )
        call TimerStart( t, 0.04, true, function GLAS1__proj )
        set t = null
        set caster = null
    endif
endfunction

// ===== GLAS1__In (строки 8123-8129) =====
function GLAS1__In takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GLAS1__Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== GLAS2_preload (строки 8130-8132) =====
function GLAS2_preload takes nothing returns nothing
    call X_PreloadAbility( 'Arav' )
endfunction

// ===== GLAS2__Cond1 (строки 8133-8138) =====
function GLAS2__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GLAS2__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== GLAS2__proj (строки 8139-8171) =====
function GLAS2__proj takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real cstX = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real cstY = LoadReal( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local real tX = LoadReal( HT, GetHandleId( t ), StringHash( "H_5" ) )
    local real tY = LoadReal( HT, GetHandleId( t ), StringHash( "H_6" ) )
    local real dist = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local real height = LoadReal( HT, GetHandleId( t ), StringHash( "H_7" ) )
    local real angle = Atan2( tY - cstY, tX - cstX )
    set cstX = cstX + 75. * Cos( angle )
    set cstY = cstY + 75. * Sin( angle )
    set dist = dist - ( 75. )
    //добавил исловия что кастер жив
    if dist > 0. and GetUnitState( cst, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( cst, UNIT_TYPE_DEAD ) == false then

        if not( IsTerrainPathable( cstX, cstY, PATHING_TYPE_WALKABILITY ) ) then
            call SetUnitX( cst, cstX )
            call SetUnitY( cst, cstY )
        endif

        call SetUnitFlyHeight( cst, GetUnitFlyHeight( cst ) - height, 0. )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), cstX )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_4" ), cstY )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), dist )
    else
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set t = null
    set cst = null
endfunction

// ===== GLAS2__Down_End (строки 8173-8208) =====
function GLAS2__Down_End takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real tX = LoadReal( HT, GetHandleId( t ), StringHash( "H_5" ) )
    local real tY = LoadReal( HT, GetHandleId( t ), StringHash( "H_6" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local unit FoG
    local unit dummy
    call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl", tX, tY ) )
    set GLAS2__ch_p = GetOwningPlayer( cst )
    call Dest_KillDestInRange( tX, tY, 300. )
    call GroupEnumUnitsInRange( GLAS2__gr, tX, tY, 300., Condition( function GLAS2__Cond1 ) )
    loop
        set FoG = FirstOfGroup( GLAS2__gr )
        exitwhen( FoG == null )
        //call Stun_Target( cst, FoG, 0.8 )
        call StunUnit(FoG,0.8)
      //  call DamageLib_Explode( FoG ) //Удолить
        call DamageLib_SpellDamage( cst, FoG, dmg )
        call GroupRemoveUnit( GLAS2__gr, FoG )
    endloop
    call SetUnitFlyHeight( cst, 0., 0. )
    call UnitRemoveAbility( cst, 'Arav' )
    call SetUnitPathing( cst, TRUE )
    call PauseUnit( cst, FALSE )
    call IssueImmediateOrderById( cst, 851972 )
    call GroupClear( GLAS2__gr ) //add clear
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set cst = null
    // 05.09: anti-leak (obnulenie lokalov)
    set FoG = null
    set dummy = null
endfunction

// ===== GLAS2__Up_End (строки 8210-8247) =====
function GLAS2__Up_End takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real cstX = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real cstY = LoadReal( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local real tX = LoadReal( HT, GetHandleId( t ), StringHash( "H_5" ) )
    local real tY = LoadReal( HT, GetHandleId( t ), StringHash( "H_6" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )

    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    call SetUnitTimeScale( cst, 1. )

    set t = CreateTimer( )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), cst )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), cstX )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_4" ), cstY )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), tX )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_6" ), tY )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), SquareRoot( ( tX - cstX ) * ( tX - cstX ) + ( tY - cstY ) * ( tY - cstY ) ) )
    if not( SquareRoot( ( tX - cstX ) * ( tX - cstX ) + ( tY - cstY ) * ( tY - cstY ) ) < 100. ) then
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_7" ), 200. / ( ( SquareRoot( ( tX - cstX ) * ( tX - cstX ) + ( tY - cstY ) * ( tY - cstY ) ) / 75. ) * 0.04 ) )
    else
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_7" ), 200. )
    endif

    call TimerStart( t, 0.04, TRUE, function GLAS2__proj )

    set t = CreateTimer( )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), cst )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), tX )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_6" ), tY )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), dmg )
    call TimerStart( t, 200. / 500., FALSE, function GLAS2__Down_End )
    set t = null
    set cst = null
endfunction

// ===== GLAS2__Act (строки 8249-8284) =====
function GLAS2__Act takes nothing returns nothing
    local unit caster
    local real tx
    local real ty
    local real caster_x
    local real caster_y
    local real dmg
    local timer t

    if GetSpellAbilityId( ) == 'A027' then
        set caster = GetTriggerUnit( )
        set tx = GetSpellTargetX( )
        set ty = GetSpellTargetY( )
        set caster_x = GetUnitX( caster )
        set caster_y = GetUnitY( caster )
        set dmg = GetHeroAgi( caster, true ) * 2.
        if not( IsTerrainPathable( tx, ty, PATHING_TYPE_WALKABILITY ) ) then
            call PauseUnit( caster, TRUE )
            call UnitAddAbility( caster, 'Arav' )
            call SetUnitFlyHeight( caster, 200., 300. )
            call SetUnitTimeScale( caster, 0.45 )
            call SetUnitAnimationByIndex( caster, 3 )
            call SetUnitPathing( caster, FALSE )
            set t = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), dmg )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), caster_x )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_4" ), caster_y )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), tx )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_6" ), ty )
            call TimerStart( t, 200. / 300., FALSE, function GLAS2__Up_End )
            set t = null
        endif
        set caster = null
    endif
endfunction

// ===== GLAS2__I (строки 8286-8292) =====
function GLAS2__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GLAS2__Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== GLAS3_preload (строки 8294-8295) =====
function GLAS3_preload takes nothing returns nothing
endfunction

// ===== GLAS3__Cond1 (строки 8296-8301) =====
function GLAS3__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GLAS3__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== GLAS3__Att (строки 8303-8339) =====
function GLAS3__Att takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local integer count = LoadInteger( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local unit FoG

    if count > 0 then
        set GLAS3__ch_p = GetOwningPlayer( cst )
        call Dest_KillDestInRange( GetUnitX( cst ), GetUnitY( cst ), 300. )

        call GroupEnumUnitsInRange( GLAS3__g, GetUnitX( cst ), GetUnitY( cst ), 300., Condition( function GLAS3__Cond1 ) )
        loop
            set FoG = FirstOfGroup( GLAS3__g )
            exitwhen( FoG == null )
            call UnitDamageTarget( cst, FoG, dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
            call GLAS4_BloodDmg( cst, FoG, dmg )
           // call Stun_Target( cst, FoG, 0.3 )
            call StunUnit(FoG,0.3)

            call GroupRemoveUnit( GLAS3__g, FoG )
        endloop
        call SaveInteger( HT, GetHandleId( t ), StringHash( "H_3" ), count - 1 )
    else
        call SetUnitAnimation( cst, "stand" )
        call GroupClear( GLAS3__g ) //add clear
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )

    endif

    set cst = null
    set t = null
    // 05.09: anti-leak (obnulenie lokalov)
    set FoG = null
endfunction

// ===== GLAS3__Act (строки 8340-8360) =====
function GLAS3__Act takes nothing returns nothing
    local unit caster
//   local group gr не используется
    local real dmg
    local timer t

    if GetSpellAbilityId( ) == 'A028' then
        set caster = GetTriggerUnit( )
        // 09.09: убрано set gr = CreateGroup() — группа нигде не использовалась
        // (утечка). Локал gr закомментирован ранее как неиспользуемый — теперь правда.
        set dmg = GetHeroAgi( caster, true ) * 1.
        set t = CreateTimer( )
        call SetUnitAnimationByIndex( caster, 13 )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), dmg )
        call SaveInteger( HT, GetHandleId( t ), StringHash( "H_3" ), 1 )
        call TimerStart( t, 0.266, TRUE, function GLAS3__Att )
        set t = null
        set caster = null
    endif
endfunction

// ===== GLAS3__I (строки 8361-8367) =====
function GLAS3__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GLAS3__Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction
