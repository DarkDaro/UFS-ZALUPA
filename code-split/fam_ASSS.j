// ===== ASSS4_preload (строки 4150-4152) =====
function ASSS4_preload takes nothing returns nothing
    call X_PreloadAbility( ASSS4___invis_ab )
endfunction

// ===== ASSS4___MakeInvisisble (строки 4154-4160) =====
function ASSS4___MakeInvisisble takes unit u returns nothing
    local unit d = CreateUnit( GetOwningPlayer( u ), 'hfoo', GetUnitX( u ), GetUnitY( u ), 0. )
    call X_ApplyLife( d )
    call UnitAddAbility( d, ASSS4___invis_ab )
    call IssueTargetOrderById( d, 852069, u )
    set d = null
endfunction

// ===== ASSS4___Move (строки 4162-4172) =====
function ASSS4___Move takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), ASSS4___h_u )
    call SetUnitPosition( u, LoadReal( HT, GetHandleId( t ), ASSS4___h_x ), LoadReal( HT, GetHandleId( t ), ASSS4___h_y ) )
    call IssueImmediateOrderById( u, 851993 )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== ASSS4___MoveInWalkable (строки 4174-4188) =====
function ASSS4___MoveInWalkable takes real angle, real x, real y, unit u returns nothing
    local real tX = x
    local real tY = y
    local timer t = CreateTimer( )
    loop
        exitwhen not IsTerrainPathable( tX, tY, PATHING_TYPE_WALKABILITY )
        set tX = tX - 10. * Cos( angle )
        set tY = tY - 10. * Sin( angle )
    endloop
    call SaveUnitHandle( HT, GetHandleId( t ), ASSS4___h_u, u )
    call SaveReal( HT, GetHandleId( t ), ASSS4___h_x, tX )
    call SaveReal( HT, GetHandleId( t ), ASSS4___h_y, tY )
    call TimerStart( t, 0.01, FALSE, function ASSS4___Move )
    set t = null
endfunction

// ===== ASSS4___IsIllusion (строки 4190-4200) =====
function ASSS4___IsIllusion takes nothing returns boolean
    local unit u = GetFilterUnit( )
    //нихуя не работает
    if IsUnitIllusion( u )and GetOwningPlayer( u ) == ASSS4___the_p then
        set u = null
        return TRUE
    else
        set u = null
        return FALSE
    endif
endfunction

// ===== ASSS4___IssueOrderToIllusion (строки 4202-4225) =====
function ASSS4___IssueOrderToIllusion takes unit u returns nothing
    local unit FoG = null
    local widget w = null
    set ASSS4___the_p = GetOwningPlayer( u )
    call GroupEnumUnitsInRange( ASSS4___the_g, GetUnitX( u ), GetUnitY( u ), 100., Condition( function ASSS4___IsIllusion ) )
    ///нету цикла самого перебора кого оно перебирает
 //вопрос
    if not IsGroupEmpty( ASSS4___the_g ) then
        set w = LoadWidgetHandle( HT, GetHandleId( u ), ASSS4___h_target )

        if w != null then
            call IssueTargetOrderById( FoG, LoadInteger( HT, GetHandleId( u ), ASSS4___h_order ), w )

        //    call DisplayTextToForce( GetPlayersAll( ), "приказ иллюзий 1" )
        else
         //   call DisplayTextToForce( GetPlayersAll( ), "приказ иллюзий 2" )
            call IssuePointOrderById( FoG, LoadInteger( HT, GetHandleId( u ), ASSS4___h_order ), LoadReal( HT, GetHandleId( u ), ASSS4___h_x ), LoadReal( HT, GetHandleId( u ), ASSS4___h_y ) )
        endif
    endif

    call GroupClear( ASSS4___the_g )
    set FoG = null
    set w = null
endfunction

// ===== ASSS4___Act_Cast (строки 4227-4254) =====
function ASSS4___Act_Cast takes nothing returns nothing
    local unit caster
    local string fx_path
    local real tx
    local real ty
    local real angle
    local item illus_it
    if GetSpellAbilityId( ) == 'A040' then
        set caster = GetTriggerUnit( )
        set fx_path = ""
        set tx = GetSpellTargetX( )
        set ty = GetSpellTargetY( )
        set angle = Atan2( GetUnitY( caster ) - ty, GetUnitX( caster ) - tx )
        set illus_it = null
        call SetUnitPathing( caster, FALSE )
        call SetUnitVertexColor( caster, 0, 0, 0, 0 )
        set illus_it = UnitAddItemById( caster, ASSS4___illus_it )
        call ASSS4___IssueOrderToIllusion( caster )
        call ASSS4___MakeInvisisble( caster )
        call DestroyEffect( AddSpecialEffect( fx_path, GetUnitX( caster ), GetUnitY( caster ) ) )
        call ASSS4___MoveInWalkable( angle, tx, ty, caster )
        call SetUnitPathing( caster, TRUE )
        call SetUnitVertexColor( caster, 100, 200, 100, 255 )
        set caster = null
        set fx_path = null
        set illus_it = null
    endif
endfunction

// ===== ASSS4___OnOrder (строки 4256-4277) =====
function ASSS4___OnOrder takes nothing returns nothing
    local unit caster
    local widget order_target
    if GetIssuedOrderId( ) == 851983 or GetIssuedOrderId( ) == 851986 or GetIssuedOrderId( ) == 851971 then
        set caster = GetTriggerUnit( )
        set order_target = null
        if GetUnitAbilityLevel( caster, 'A040' ) > 0 and not IsUnitIllusion( caster ) then
            set order_target = GetOrderTarget( )
            if order_target != null then
                call SaveWidgetHandle( HT, GetHandleId( caster ), ASSS4___h_target, order_target )
                call SaveInteger( HT, GetHandleId( caster ), ASSS4___h_order, GetIssuedOrderId( ) )
            else
                call SaveWidgetHandle( HT, GetHandleId( caster ), ASSS4___h_target, null )
                call SaveReal( HT, GetHandleId( caster ), ASSS4___h_x, GetOrderPointX( ) )
                call SaveReal( HT, GetHandleId( caster ), ASSS4___h_y, GetOrderPointY( ) )
                call SaveInteger( HT, GetHandleId( caster ), ASSS4___h_order, GetIssuedOrderId( ) )
            endif
        endif
        set caster = null
        set order_target = null
    endif
endfunction

// ===== ASSS4___I (строки 4279-4290) =====
function ASSS4___I takes nothing returns nothing
    local integer i = 1
    loop
        exitwhen( i > 11 )
        call TriggerRegisterPlayerUnitEvent( ASSS4___Trg, Player( i - 1 ), EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER, null )
        call TriggerRegisterPlayerUnitEvent( ASSS4___Trg, Player( i - 1 ), EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER, null )
        call TriggerRegisterPlayerUnitEvent( ASSS4___Trg_Cast, Player( i - 1 ), EVENT_PLAYER_UNIT_SPELL_EFFECT, null )
        set i = i + 1
    endloop
    call TriggerAddAction( ASSS4___Trg, function ASSS4___OnOrder )
    call TriggerAddAction( ASSS4___Trg_Cast, function ASSS4___Act_Cast )
endfunction

// ===== ASSS5___ForDest (строки 4292-4298) =====
function ASSS5___ForDest takes nothing returns nothing
    local destructable dt = GetEnumDestructable( )
    if GetDestructableTypeId( dt ) == 'ATtr' and GetWidgetLife( dt ) > 0.405 then
        set ASSS5___the_bool = TRUE
    endif
    set dt = null
endfunction

// ===== ASSS5___Check (строки 4300-4339) =====
function ASSS5___Check takes nothing returns nothing
    local integer i = 1
    local unit u = null
    local rect r = null
    local real x = 0.
    local real y = 0.
    loop
        exitwhen( i > 10 )
        set u = s__Hero[i]
        set x = GetUnitX( u )
        set y = GetUnitY( u )
        if u != null and GetUnitAbilityLevel( u, ASSS5___dummy_ab ) > 0 then

            if GetUnitAbilityLevel( u, ASSS5___inv_ab ) > 0 then
                set r = Rect( x - ASSS5___radius, y - ASSS5___radius, x + ASSS5___radius, y + ASSS5___radius )
                call EnumDestructablesInRect( r, null, function ASSS5___ForDest )
                if not ASSS5___the_bool and( x != ASSS5___t_x[i] or y != ASSS5___t_y[i] ) then
                    call UnitRemoveAbility( u, ASSS5___inv_ab )
                endif
                call RemoveRect( r )
            else
                set r = Rect( x - ASSS5___radius, y - ASSS5___radius, x + ASSS5___radius, y + ASSS5___radius )
                call EnumDestructablesInRect( r, null, function ASSS5___ForDest )

                if ASSS5___the_bool or( x == ASSS5___t_x[i]and y == ASSS5___t_y[i] ) then
                    call UnitAddAbility( u, ASSS5___inv_ab )
                endif

                call RemoveRect( r )
            endif
            set ASSS5___the_bool = FALSE
            set ASSS5___t_x[i] = x
            set ASSS5___t_y[i] = y
        endif
        set i = i + 1
    endloop
    set u = null
    // 05.09: anti-leak (obnulenie lokalov)
    set r = null
endfunction

// ===== ASSS5___I (строки 4340-4344) =====
function ASSS5___I takes nothing returns nothing
    local timer t = CreateTimer( )
    call TimerStart( t, ASSS5___check_period, TRUE, function ASSS5___Check )
    set t = null
endfunction

// ===== ASSS6___onTimer (строки 4346-4356) =====
function ASSS6___onTimer takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "agi_u" ) )
    call SetHeroAgi( u, GetHeroAgi( u, false ) - 1, TRUE )
   // call DisplayTextToForce( GetPlayersAll( ), "аги -" )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== ASSS6___Act (строки 4358-4375) =====
function ASSS6___Act takes nothing returns nothing
    local unit u = GetEventDamageSource( )
    local timer t

    if GetEventDamage( ) > 0 and GetUnitAbilityLevel( u, 'A032' ) > 0 and not IsUnitIllusion( u ) then

        if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false and u != null then
            set t = CreateTimer( )
            call SetHeroAgi( u, GetHeroAgi( u, false ) + 1, TRUE )
       // call DisplayTextToForce( GetPlayersAll( ), "аги +" )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "agi_u" ), u )
            call TimerStart( t, 4., FALSE, function ASSS6___onTimer )
        endif

    endif
    set u = null
    set t = null
endfunction

// ===== ASSS6___I (строки 4377-4379) =====
function ASSS6___I takes nothing returns nothing
    call TriggerAddAction( ASSS6_Trg, function ASSS6___Act )
endfunction

// ===== ASSS1_preload (строки 6776-6778) =====
function ASSS1_preload takes nothing returns nothing
    call X_PreloadAbility( 'A02Z' )
endfunction

// ===== ASSS1___Cond1 (строки 6780-6785) =====
function ASSS1___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), ASSS1___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== ASSS1___RemoveAttacked (строки 6787-6796) =====
function ASSS1___RemoveAttacked takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "ASSS1_2" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "ASSS1_1" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== ASSS1___CreatePartOfWave (строки 6798-6857) =====
function ASSS1___CreatePartOfWave takes nothing returns nothing
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
    local unit missile
    if dist <= 800.then

        set ASSS1___ch_p = p
        call GroupEnumUnitsInRange( ASSS1___gr, x, y, 100., Condition( function ASSS1___Cond1 ) )
        loop
            set target = FirstOfGroup( ASSS1___gr )
            exitwhen( target == null )
            if not( LoadBoolean( HT, GetHandleId( target ), StringHash( "ASSS1_1" ) ) ) then
                call DamageLib_SpellDamage( cst, target, dmg )
                call SaveBoolean( HT, GetHandleId( target ), StringHash( "ASSS1_1" ), TRUE )
                set ti = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( ti ), StringHash( "ASSS1_2" ), target )
                call TimerStart( ti, 1., false, function ASSS1___RemoveAttacked )

                set missile = CreateUnit( p, 'hfoo', x, y, 0. )
                call UnitApplyTimedLife( missile, 'BTLF', 0.5 )
                call UnitAddAbility( missile, 'A02Z' )
                call IssueTargetOrderById( missile, 852171, target )
                set missile = null

            endif
            call GroupRemoveUnit( ASSS1___gr, target )
        endloop

        set x = x + 50. * Cos( angle * bj_DEGTORAD )
        set y = y + 50. * Sin( angle * bj_DEGTORAD )
        set dist = dist + ( 50. )
        call SetUnitX( arrow, x )
        call SetUnitY( arrow, y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), dist )
    else
        call GroupClear( ASSS1___gr ) //add clear
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

// ===== ASSS1___Act (строки 6859-6902) =====
function ASSS1___Act takes nothing returns nothing
    local unit caster
    local location target_loc
    local real caster_x
    local real caster_y
    local real angle
    local real end_x
    local real end_y
    local real dmg
    local timer t
    local unit missile
    if GetSpellAbilityId( ) == 'A02Y' then
        set caster = GetTriggerUnit( )
        set target_loc = GetSpellTargetLoc( )
        set caster_x = GetUnitX( caster )
        set caster_y = GetUnitY( caster )
        set angle = bj_RADTODEG * Atan2( GetLocationY( target_loc ) - caster_y, GetLocationX( target_loc ) - caster_x )
        set end_x = caster_x + 800. * Cos( angle * bj_DEGTORAD )
        set end_y = caster_y + 800. * Sin( angle * bj_DEGTORAD )
        set dmg = GetHeroAgi( caster, true ) * 0.
        set t = CreateTimer( )
        set missile = CreateUnit( GetOwningPlayer( caster ), 'h008', caster_x, caster_y, angle )
        call PauseUnit( caster, TRUE )
        call SetUnitFacing( caster, angle )
        call SetUnitAnimation( caster, "attack" )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), caster_x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), caster_y )
        call SavePlayerHandle( HT, GetHandleId( t ), StringHash( "p" ), GetOwningPlayer( caster ) )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "333" ), caster )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), missile )
        call SaveReal( HT, GetHandleId( t ), StringHash( "22" ), dmg )
        call SaveReal( HT, GetHandleId( t ), StringHash( "1" ), angle )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), 0. )
        call TimerStart( t, 0.04, TRUE, function ASSS1___CreatePartOfWave )
        call PauseUnit( caster, FALSE )
        call IssueImmediateOrderById( caster, 851972 )
        set t = null
        set caster = null
        call RemoveLocation( target_loc )
        set target_loc = null
    endif
    // 05.09: anti-leak (obnulenie lokalov)
    set missile = null
endfunction

// ===== ASSS1___I (строки 6904-6910) =====
function ASSS1___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function ASSS1___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== ASSS2_preload (строки 6912-6914) =====
function ASSS2_preload takes nothing returns nothing
    call X_PreloadAbility( 'A037' )
endfunction

// ===== ASSS2___Remove (строки 6916-6935) =====
function ASSS2___Remove takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_2" ) )

    if GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType(u, UNIT_TYPE_DEAD ) == false then
        call UnitRemoveAbility( u, 'A037' )
        call DestroyEffect( e )
        call SetUnitVertexColor( u, 100, 200, 100, 255 )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 1., false, function ASSS2___Remove )
    endif
    set t = null
    set u = null
    // 05.09: anti-leak (obnulenie lokalov)
    set e = null
endfunction

// ===== ASSS2___Act (строки 6937-6956) =====
function ASSS2___Act takes nothing returns nothing
    local unit caster
    local timer t
    local effect e
    if GetSpellAbilityId( ) == 'A035' then
        set caster = GetTriggerUnit( )
        set t = CreateTimer( )
        set e = AddSpecialEffectTarget( "war3mapImported\\BlackCloudOfFog.mdx", caster, "origin" )
        call AttachSoundToUnit( gg_snd_ASS_Acid, caster )
        call StartSound( gg_snd_ASS_Acid )
        call SetUnitVertexColor( caster, 50, 50, 50, 255 )
        call UnitAddAbility( caster, 'A037' )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
        call SaveEffectHandle( HT, GetHandleId( t ), StringHash( "H_2" ), e )
        call TimerStart( t, 4., FALSE, function ASSS2___Remove )
        set e = null
        set t = null
        set caster = null
    endif
endfunction

// ===== ASSS2___I (строки 6958-6964) =====
function ASSS2___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function ASSS2___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== ASSS3_preload (строки 6966-6968) =====
function ASSS3_preload takes nothing returns nothing

endfunction

// ===== ASSS3___Cond1 (строки 6969-6974) =====
function ASSS3___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), ASSS3___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== ASSS3___PDmg (строки 6976-6996) =====
function ASSS3___PDmg takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local real tim = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real damage = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local unit caster = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_4" ) )
    set tim = tim + ( 1. )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), tim )
    if tim < 5.and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 then
        call UnitDamageTarget( caster, u, damage, true, false, null, null, null )
        //call SaveReal(HT, GetHandleId(t), StringHash("H_3"), tim) // поменял сохранение
    else
        call DestroyEffect( LoadEffectHandle( HT, GetHandleId( t ), StringHash( "H_5" ) ) ) //поменял
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set caster = null
    set u = null
    set t = null
endfunction

// ===== ASSS3___Act (строки 6998-7052) =====
function ASSS3___Act takes nothing returns nothing
    local unit caster
    local real caster_x
    local real caster_y
    local group gr
    local unit target
    local real dmg
    local real dot_dmg
    local timer t
    local effect fx
    local unit missile
    if GetSpellAbilityId( ) == 'A036' then
        set caster = GetTriggerUnit( )
        set caster_x = GetUnitX( caster )
        set caster_y = GetUnitY( caster )
        set gr = CreateGroup( )
        set dmg = GetHeroAgi( caster, true ) * 1.2
        set dot_dmg = GetHeroAgi( caster, TRUE ) * 0.5
        call X_AddTimedEff( "Abilities\\Spells\\NightElf\\FanOfKnives\\FanOfKnivesCaster.mdl", caster_x, caster_y, 1.6 )
        set ASSS3___ch_p = GetOwningPlayer( caster )
        //800 аое снизил до
        call GroupEnumUnitsInRange( gr, caster_x, caster_y, 500., Condition( function ASSS3___Cond1 ) )

        loop
            set target = FirstOfGroup( gr )
            exitwhen( target == null )
            call UnitDamageTarget( caster, target, dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )

            set missile = CreateUnit( GetOwningPlayer( caster ), 'hfoo', caster_x, caster_y, 0. )
            call X_ApplyLife( missile )
            call UnitAddAbility( missile, 'A006' )
            call IssueTargetOrderById( missile, 852075, target )
            set missile = null

            set fx = AddSpecialEffectTarget( "Abilities\\Weapons\\PoisonSting\\PoisonStingTarget.mdl", target, "chest" )
            set t = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), target )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), dot_dmg )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), 0. )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_4" ), caster )
            call SaveEffectHandle( HT, GetHandleId( t ), StringHash( "H_5" ), fx )
            call TimerStart( t, 1., TRUE, function ASSS3___PDmg )

            call GroupRemoveUnit( gr, target )
        endloop
        call GroupClear( gr )
        call DestroyGroup( gr )
        set fx = null
        set t = null
        set caster = null
        set target = null
        set gr = null
    endif

endfunction

// ===== ASSS3___I (строки 7053-7059) =====
function ASSS3___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function ASSS3___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction
