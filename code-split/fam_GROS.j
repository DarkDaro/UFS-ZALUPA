// ===== GROS5_FilterWater (строки 2541-2546) =====
function GROS5_FilterWater takes real x, real y, real dmg returns real
    if not( IsTerrainPathable( x, y, PATHING_TYPE_FLOATABILITY ) ) then
        return dmg * 1.7
    endif
    return dmg
endfunction

// ===== GROS5_preload (строки 2616-2617) =====
function GROS5_preload takes nothing returns nothing
endfunction

// ===== GROS4_preload (строки 5041-5042) =====
function GROS4_preload takes nothing returns nothing
endfunction

// ===== GROS4___DamageTextTagOPT (строки 5044-5099) =====
function GROS4___DamageTextTagOPT takes unit u, real dmg, integer dmgOwnPlayerId returns nothing
    local real size = 8.
    local real time = 0.6
    local texttag tt
    local integer i = 0
    local player dmgOwnerPlayer = Player(dmgOwnPlayerId)
    local player unitOwner = GetOwningPlayer(u)

    // Проверка на валидность игрока
    if dmgOwnPlayerId < 0 or dmgOwnPlayerId > 11 then
        return
    endif

    // Проверка на минимальный урон
    if dmg < 1. then
        return
    endif

    // Создание текстового тега с уроном
    set tt = CreateTextTagUnitBJ(I2S(R2I(dmg)), u, 0., size, 255, 255, 255, 255)

    // Проверка на щит паладина
    if LoadBoolean(HT, GetHandleId(u), StringHash("PalShield")) then
        call SetTextTagText(tt, "", size * 2)
    endif

    // Проверка на видимость урона для игроков
    loop
        exitwhen i > 9  // Теперь i от 0 до 9 (избегаем -1)
        if s__ComLib_Show_Dmg[i + 1] then
            if Player(i) == unitOwner or Player(i) == dmgOwnerPlayer then
                if GetLocalPlayer() == Player(i) then
                    call SetTextTagVisibility(tt, true)
                endif
            else
                if GetLocalPlayer() == Player(i) then
                    call SetTextTagVisibility(tt, false)
                endif
            endif
        endif
        set i = i + 1
    endloop

    // Настройки анимации тексттега
    call SetTextTagVelocity(tt, 0.03, 0.03)
    call SetTextTagColor(tt, s__Color_Dec_1[5], s__Color_Dec_2[5], s__Color_Dec_3[5], 255)
    call SetTextTagFadepoint(tt, time / 2)
    call SetTextTagLifespan(tt, time)
    call SetTextTagPermanent(tt, false)

    // Очистка ссылки
    set tt = null
    // 05.09: anti-leak (obnulenie lokalov)
    set dmgOwnerPlayer = null
    set unitOwner = null
endfunction

// ===== GROS4___DamageTextTag (строки 5102-5139) =====
function GROS4___DamageTextTag takes unit u, real dmg, integer dmgOwnPlayerId returns nothing
    local real size = 0.
    local real time = 0.6
    local texttag tt
    local integer i = 1
    set size = 8.
    set tt = CreateTextTagUnitBJ( I2S( R2I( dmg ) ), u, 0., size, 0., 0., 0., 0. )
    if dmg < 1.then
        call SetTextTagText( tt, "", size * 2 )
    endif

    // фатал в плавающем тексте
    if LoadBoolean( HT, GetHandleId( u ), StringHash( "PalShield" ) ) then //удар обз щит паладина
        call SetTextTagText( tt, "", size * 2 )
    endif

    loop
        exitwhen( i > 10 )

        if s__ComLib_Show_Dmg[i]and( Player( i - 1 ) == GetOwningPlayer( u )or Player( i - 1 ) == Player( dmgOwnPlayerId - 1 ) )and dmg != 0.then
            if GetLocalPlayer( ) == Player( i - 1 ) then
                call SetTextTagVisibility( tt, TRUE )
            endif
        else
            if GetLocalPlayer( ) == Player( i - 1 ) then
                call SetTextTagVisibility( tt, FALSE )
            endif
        endif
        set i = i + 1
    endloop

    call SetTextTagVelocity( tt, 0.03, 0.03 )
    call SetTextTagColor( tt, s__Color_Dec_1[5], s__Color_Dec_2[5], s__Color_Dec_3[5], 255 )
    call SetTextTagFadepoint( tt, time / 2 )
    call SetTextTagLifespan( tt, time )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

// ===== GROS4spell (строки 5141-5198) =====
function GROS4spell takes unit damageSource, unit target , real eventDamage returns nothing
    local unit u = target
    local unit a = damageSource
    local real damage = eventDamage
    local real uX = GetUnitX( u )
    local real uY = GetUnitY( u )
    local real aX = GetUnitX( a )
    local real aY = GetUnitY( a )
    local real d = SquareRoot( ( uX - aX ) * ( uX - aX ) + ( uY - aY ) * ( uY - aY ) )
    local real dmg = 0.
    local real hp_before = 0. //Потрошитель условия
    // call DisableTrigger(GetTriggeringTrigger())
    // and not( GetUnitTypeId( a ) == 'H00M' )  потрошитель
    // call DisableTrigger(GROS4_Trg_A)

    if damage > 0 and damage > GROS4___min_dmg and d <= GROS4___max_dist and LoadBoolean( HT, GetHandleId( u ), StringHash( "H_IS_SHIELD_GRO" ) ) then

        if X_GetMainChar( u ) == 1 then
            set dmg = GetHeroStr( u, TRUE ) * 1.5
        endif
        if X_GetMainChar( u ) == 2 then
            set dmg = GetHeroAgi( u, TRUE ) * 1.5
        endif
        if X_GetMainChar( u ) == 3 then
            set dmg = GetHeroInt( u, TRUE ) * 1.5
        endif

        set hp_before = GetWidgetLife( a )

        if GetUnitTypeId( a ) == TEHS4_TYPE_1 or GetUnitTypeId( a ) == TEHS4_TYPE_2 then
            set dmg = dmg * TEHS4_REDUCE //0.75 снижен урона молний
        endif

          //  call DisplayTextToForce( GetPlayersAll( ), "щит молний урон фатал_" +R2S(dmg) )
           // call DisableTrigger(GROS4_Trg_A)
          //  call DisableTrigger(GetTriggeringTrigger())
           // call DisableTrigger(DamageLib__Damage_Trg_Var)
           // call DisableTrigger(DPSLib_DPS_Trg)
        call DamageLib_SpellDamage( u, a, GROS5_FilterWater( GetUnitX(a), GetUnitY(a ), dmg ) )
          //call DisplayTextToForce( GetPlayersAll( ), "щит молний урон нанес" +R2S (GROS5_FilterWater( GetUnitX(a), GetUnitY(a ), dmg )) )

          //call UnitDamageTarget( u, a, dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_DIVINE, WEAPON_TYPE_WHOKNOWS )
          //call UnitDamageTarget(a, a, GROS5_FilterWater( GetUnitX( a ), GetUnitY( a ), dmg ), true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_DIVINE, WEAPON_TYPE_WHOKNOWS )

        //  call EnableTrigger(DamageLib__Damage_Trg_Var)
        //   EnableTrigger(DPSLib_DPS_Trg)

        call GROS4___DamageTextTagOPT( u, hp_before - GetWidgetLife( a ), GetPlayerId( GetOwningPlayer( u ) ) )
        call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Orc\\LightningShield\\LightningShieldBuff.mdl", a, "origin" ) )
           // call EnableTrigger(GetTriggeringTrigger())

    endif

   // call EnableTrigger(GROS4_Trg_A)
   // call EnableTrigger(GetTriggeringTrigger())
    set a = null
    set u = null
endfunction

// ===== GROS_Sfera__Act (строки 5296-5309) =====
function GROS_Sfera__Act takes nothing returns nothing
    local unit caster = GetAttacker( )
    local unit target = GetTriggerUnit()
    local integer Random = GetRandomInt(0, 100)
    local real dist = Dist( GetUnitX(caster), GetUnitY(caster), GetUnitX(target), GetUnitY(target) )
    local real damage = 0

    if ( GetUnitAbilityLevel(caster, 'A02U') > 0 and dist <= 500 ) and Random <= 50 then
        set damage = GetHeroInt(caster, true) * 0.50
    //    call ForkedLightning_Act(caster,target,damage ,3)
    endif
    set caster = null
    set target = null
endfunction

// ===== GROS_Sfera_In (строки 5311-5317) =====
function GROS_Sfera_In takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddAction( Trg, function GROS_Sfera__Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== GROS4___RemoveShield (строки 5640-5658) =====
function GROS4___RemoveShield takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ) )
    if GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then
        call DestroyEffect( LoadEffectHandle( HT, GetHandleId( u ), StringHash( "H_1FX" ) ) )
        call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_IS_SHIELD_GRO" ), FALSE )
      //  call DisplayTextToForce( GetPlayersAll( ), "щит молний стоп" )
      //  call DisableTrigger( GROS4_Trg_A)
       // call DisableTrigger(GROS4_Trg_A)
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 0.5, FALSE, function GROS4___RemoveShield )
    //    call DisplayTextToForce( GetPlayersAll( ), "щит молний рекрсия длительность" )
    endif
    set t = null
    set u = null
endfunction

// ===== GROS4___Act_S (строки 5660-5685) =====
function GROS4___Act_S takes nothing returns nothing
    local unit caster = GetTriggerUnit( )
    local timer t
    local effect fx

    if GetSpellAbilityId( ) == 'A02S' then
        if LoadBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_GRO" ) ) then
           // call DisplayTextToForce( GetPlayersAll( ), "щит молний обновление" )
            set t = LoadTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_GRO" ) )
            call TimerStart( t, TimerGetRemaining( t ) + 6., FALSE, function GROS4___RemoveShield )
        else
         //   call DisplayTextToForce( GetPlayersAll( ), "щит молний старт" )
            set t = CreateTimer( )
            set fx = AddSpecialEffectTarget( "Abilities\\Spells\\Orc\\LightningShield\\LightningShieldTarget.mdl", caster, "origin" )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ), caster )
            call SaveTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_GRO" ), t )
            call SaveBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_GRO" ), TRUE )
            call SaveEffectHandle( HT, GetHandleId( caster ), StringHash( "H_1FX" ), fx )
            call TimerStart( t, 6., FALSE, function GROS4___RemoveShield )

        endif
        set t = null
        set fx = null
        set caster = null
    endif
endfunction

// ===== GROS4___Act_T (строки 5687-5710) =====
function GROS4___Act_T takes nothing returns nothing
    local unit caster = GetSpellTargetUnit( )
    local timer t
    local effect e
    if GetSpellAbilityId( ) == 'A03U' then

        if LoadBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_GRO" ) ) then
            set t = LoadTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_GRO" ) )
            call TimerStart( t, TimerGetRemaining( t ) + 6., FALSE, function GROS4___RemoveShield )
        else
            set t = CreateTimer( )
            set e = AddSpecialEffectTarget( "Abilities\\Spells\\Orc\\LightningShield\\LightningShieldTarget.mdl", caster, "origin" )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ), caster )
            call SaveTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_GRO" ), t )
            call SaveBoolean( HT, GetHandleId( caster ), StringHash( "H_IS_SHIELD_GRO" ), TRUE )
            call SaveEffectHandle( HT, GetHandleId( caster ), StringHash( "H_1FX" ), e )
            call TimerStart( t, 6., FALSE, function GROS4___RemoveShield )
            call EnableTrigger(GROS4_Trg_A)
        endif
        set e = null
        set t = null
        set caster = null
    endif
endfunction

// ===== GROS4___I (строки 5712-5721) =====
function GROS4___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GROS4___Act_S )

    call TriggerAddAction( Trg, function GROS4___Act_T )
    //call TriggerAddAction(GROS4_Trg_A, function GROS4___Attacked)
   // call DisableTrigger(GROS4_Trg_A)
    set Trg = null
endfunction

// ===== GROS1_preload (строки 8368-8369) =====
function GROS1_preload takes nothing returns nothing
endfunction

// ===== GROS1___Cond1 (строки 8370-8375) =====
function GROS1___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GROS1___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== GROS1___Att (строки 8376-8385) =====
function GROS1___Att takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_FOG" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_ATT_GRO" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== GROS1___proj (строки 8387-8455) =====
function GROS1___proj takes nothing returns nothing
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
    local unit arrow = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_10" ) )
    local unit FoG
    // 09.09: было local timer t — дубль объявления (склейка переименования 05.09),
    // обнуляло таймер импульса -> PauseTimer/DestroyTimer получали null, таймер жил вечно. Переименовано в t2.
    local timer t2
    local unit unused_u
    set nd = nd + ( 90. )
    set cX = cX + 90. * Cos( an * bj_DEGTORAD )
    set cY = cY + 90. * Sin( an * bj_DEGTORAD )
    if ( nd < di )and not( IsTerrainPathable( cX, cY, PATHING_TYPE_WALKABILITY ) ) then
        call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", cX, cY ) )
        call SetUnitX( u, cX )
        call SetUnitY( u, cY )
        call SetUnitX( arrow, cX )
        call SetUnitY( arrow, cY )
        set GROS1___ch_p = GetOwningPlayer( u )
        call Dest_KillDestInRange( cX, cY, 150. )
        call GroupEnumUnitsInRange( GROS1___gr, cX, cY, 150., Condition( function GROS1___Cond1 ) )

        loop
            set FoG = FirstOfGroup( GROS1___gr )
            exitwhen( FoG == null )
            if not( LoadBoolean( HT, GetHandleId( FoG ), StringHash( "H_ATT_GRO" ) ) ) then

                if GetUnitTypeId( FoG ) == TEHS4_TYPE_1 or GetUnitTypeId( FoG ) == TEHS4_TYPE_2 then
                    set dm = dm * TEHS4_REDUCE
                endif

                //call DamageLib_Explode( FoG ) //Удолить
                call DamageLib_SpellDamage( u, FoG, GROS5_FilterWater( GetUnitX( FoG ), GetUnitY( FoG ), dm ) )
                call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Weapons\\Bolt\\BoltImpact.mdl", FoG, "origin" ) )
                call SaveBoolean( HT, GetHandleId( FoG ), StringHash( "H_ATT_GRO" ), TRUE )
                set t2 = CreateTimer( ) // 09.09: t -> t2 (дубль объявления)
                call SaveUnitHandle( HT, GetHandleId( t2 ), StringHash( "H_FOG" ), FoG )
                call TimerStart( t2, 1., false, function GROS1___Att )
                set t2 = null
            endif
            call GroupRemoveUnit( GROS1___gr, FoG )
        endloop
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), cX )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), cY )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_9" ), nd )
    else
        call GroupClear( GROS1___gr ) //add clear
        call SetUnitPathing( u, TRUE )
        call SetUnitAnimation( u, "stand" )
        call X_ApplyLifeSmall( arrow )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set arrow = null
    set t = null
    set u = null
    // 05.09: anti-leak (obnulenie lokalov)
    set FoG = null
    set unused_u = null
endfunction

// ===== GROS1___Act (строки 8456-8506) =====
function GROS1___Act takes nothing returns nothing
    local unit caster
    local location target_loc
    local real tx
    local real ty
    local real caster_x
    local real caster_y
    local real dmg
    local timer t
    local real dist
    local real angle
    local unit missile

    if GetSpellAbilityId( ) == 'A02O' then
        set caster = GetTriggerUnit( )
        set target_loc = GetSpellTargetLoc( )
        set tx = GetLocationX( target_loc )
        set ty = GetLocationY( target_loc )
        set caster_x = GetUnitX( caster )
        set caster_y = GetUnitY( caster )
        set dmg = GetHeroInt( caster, true ) * 2.0
        set t = CreateTimer( )
        set dist = SquareRoot( ( tx - caster_x ) * ( tx - caster_x ) + ( ty - caster_y ) * ( ty - caster_y ) )
        if dist > 800.then
            set dist = 800.
        endif
        set angle = bj_RADTODEG * Atan2( ty - caster_y, tx - caster_x )
        set missile = CreateUnit( Player( 13 ), 'h006', caster_x, caster_y, angle )
        call SetUnitScale( missile, 2., 2., 2. )
        call AttachSoundToUnit( gg_snd_Impuls_sound, caster )
        call StartSound( gg_snd_Impuls_sound )
        call SetUnitPathing( caster, FALSE )
        call SetUnitAnimationByIndex( caster, 7 )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), caster_x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), caster_y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_4" ), tx )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), ty )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_6" ), dmg )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_7" ), dist )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_8" ), angle )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_9" ), 0. )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_10" ), missile )
        call TimerStart( t, 0.04, true, function GROS1___proj )
        set t = null
        set caster = null
        set missile = null
        call RemoveLocation( target_loc )
        set target_loc = null
    endif
endfunction

// ===== GROS1___I (строки 8507-8513) =====
function GROS1___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GROS1___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== GROS2_preload (строки 8514-8520) =====
function GROS2_preload takes nothing returns nothing
    local unit d
    set d = CreateUnit( Player( 13 ), 'h007', 0., 0., 0. )
    call RemoveUnit( d )
    set d = null
    call X_PreloadAbility( 'A02Q' )
endfunction

// ===== GROS2___Cond1 (строки 8522-8527) =====
function GROS2___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GROS2___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== GROS2___TimerEnd (строки 8529-8561) =====
function GROS2___TimerEnd takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real x = GetUnitX( u )
    local real y = GetUnitY( u )
    local real r = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local unit e = CreateUnit( GetOwningPlayer( u ), 'h007', x, y, 0. )
    local unit FoG

    set GROS2___ch_p = GetOwningPlayer( u )
    call GroupClear( GROS2___gr )
    call Dest_KillDestInRange( x, y, 600. )
    call GroupEnumUnitsInRange( GROS2___gr, x, y, 600., Condition( function GROS2___Cond1 ) )
    loop
        set FoG = FirstOfGroup( GROS2___gr )
        exitwhen( FoG == null )
        if GetUnitTypeId( FoG ) == TEHS4_TYPE_1 or GetUnitTypeId( FoG ) == TEHS4_TYPE_2 then
            set r = r * TEHS4_REDUCE
        endif
        call DamageLib_SpellDamage( u, FoG, GROS5_FilterWater( GetUnitX( FoG ), GetUnitY( FoG ), r ) )
        call GroupRemoveUnit( GROS2___gr, FoG )
    endloop
    call GroupClear( GROS2___gr ) //add clear
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    call X_ApplyLifeSmall( e )
    set e = null
    set t = null
    set u = null
    // 05.09: anti-leak (obnulenie lokalov)
    set FoG = null
endfunction

// ===== GROS2___RemAbil (строки 8563-8576) =====
function GROS2___RemAbil takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    if GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then
        call UnitRemoveAbility( u, 'A02Q' )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 1., false, function GROS2___RemAbil )
    endif
    set t = null
    set u = null
endfunction

// ===== GROS2___Act (строки 8577-8601) =====
function GROS2___Act takes nothing returns nothing
    local unit caster
    local real x
    local real y
    local real damage
    local timer t

    if GetSpellAbilityId( ) == 'A02P' then
        set caster = GetTriggerUnit( )
        set x = GetUnitX( caster )
        set y = GetUnitY( caster )
        set damage = GetHeroInt( caster, TRUE ) * 2.0
        set t = CreateTimer( )
        call DestroyEffect( AddSpecialEffectTarget( "war3mapImported\\RollingStormSFX.mdl", caster, "origin" ) )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), damage )
        call TimerStart( t, 1., FALSE, function GROS2___TimerEnd )
        call UnitAddAbility( caster, 'A02Q' )
        set t = CreateTimer( )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
        call TimerStart( t, 1.0, false, function GROS2___RemAbil )
        set t = null
        set caster = null
    endif
endfunction

// ===== GROS2___I (строки 8602-8608) =====
function GROS2___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GROS2___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== GROS3_preload (строки 8609-8610) =====
function GROS3_preload takes nothing returns nothing
endfunction

// ===== GROS3___Cond1 (строки 8611-8616) =====
function GROS3___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GROS3___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== GROS3___CreateLightning (строки 8617-8676) =====
function GROS3___CreateLightning takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real tX = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local real tY = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local real dist = LoadReal( HT, GetHandleId( t ), StringHash( "H_5" ) )
    local real angle_mod = 360. / 8
    local real angle = 0.
    local real x = 0.
    local real y = 0.
    local unit FoG
    local unit d
    loop
        exitwhen( angle > 359. )
        set x = tX + dist * Cos( ( angle + ( ( 400. - dist ) * 3 ) ) * bj_DEGTORAD )
        set y = tY + dist * Sin( ( angle + ( ( 400. - dist ) * 3 ) ) * bj_DEGTORAD )
        call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl", x, y ) )
        set GROS3___ch_p = GetOwningPlayer( cst )
        call GroupEnumUnitsInRange( GROS3___gr, x, y, 175., Condition( function GROS3___Cond1 ) )
        loop
            set FoG = FirstOfGroup( GROS3___gr )
            exitwhen( FoG == null )

            if GetUnitTypeId( FoG ) == TEHS4_TYPE_1 or GetUnitTypeId( FoG ) == TEHS4_TYPE_2 then
                set dmg = dmg * TEHS4_REDUCE
            endif

            call DamageLib_SpellDamage( cst, FoG, GROS5_FilterWater( GetUnitX( FoG ), GetUnitY( FoG ), dmg ) )

            if dist <= 250.then
                set d = CreateUnit( GetOwningPlayer( cst ), 'hfoo', x, y, 0. )
                call X_ApplyLife( d )
                call UnitAddAbility( d, 'A006' )
                call IssueTargetOrderById( d, 852075, FoG )

                set d = null
            endif

            call GroupRemoveUnit( GROS3___gr, FoG )
        endloop
        set angle = angle + ( angle_mod )
    endloop

    set dist = dist - ( 100. )
    call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), dist )

    if dist <= 0.then
        call GroupClear( GROS3___gr ) //add clear
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
      //  call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), dist )
    endif
    set t = null
    set cst = null
    // 05.09: anti-leak (obnulenie lokalov)
    set FoG = null
endfunction

// ===== GROS3___Act (строки 8678-8706) =====
function GROS3___Act takes nothing returns nothing
    local unit caster
    local real x
    local real y
    local real damage
    local timer t

    if GetSpellAbilityId( ) == 'A02R' then
        set caster = GetTriggerUnit( )
        //set x = GetUnitX( caster )
       // set y = GetUnitY( caster )
        set x = GetSpellTargetX( )
        set y = GetSpellTargetY( )
        set damage = GetHeroInt( caster, true ) * 0.5
        set t = CreateTimer( )
        call SetSoundPosition( gg_snd_GROS3_Sound, x, y, 0. )
        call StartSound( gg_snd_GROS3_Sound )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_4" ), damage )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), 400. )
        call TimerStart( t, 0.1, TRUE, function GROS3___CreateLightning )
        call TriggerSleepAction( 0.01 )
        call IssueImmediateOrderById( caster, 851972 ) // грозовой закоментил
        set t = null
        set caster = null
    endif
endfunction

// ===== GROS3___I (строки 8707-8713) =====
function GROS3___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GROS3___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== GROS6_preload (строки 8715-8716) =====
function GROS6_preload takes nothing returns nothing
endfunction

// ===== GROS6___Cond1 (строки 8718-8724) =====
function GROS6___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), GROS6___ch_p )and GetUnitTypeId( u ) == 'N005' and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    // 05.09: anti-leak (obnulenie lokalov)
    set u = null
    return b
endfunction

// ===== GROS6___Act (строки 8726-8790) =====
function GROS6___Act takes nothing returns nothing
    local unit caster = GetTriggerUnit( )
    local real caster_x
    local real caster_y
    local unit target
    local real dmg
    local location caster_loc
    local location target_loc
    local real caster_z
    local real target_z
    local lightning lt
    local real target_x
    local real target_y
    local integer rnd
   // if GetUnitTypeId( caster ) != 'hfoo' then //даммикастер без москитов высер говна

    if IsUnitType( caster, UNIT_TYPE_HERO ) == true then //даммикастер без москитов

        set caster_x = GetUnitX( caster )
        set caster_y = GetUnitY( caster )
        set target = null
        set dmg = 0.
        set caster_loc = GetUnitLoc( caster )
        set target_loc = null
        set caster_z = GetLocationZ( caster_loc )
        set target_z = 0.
        set lt = null
        set target_x = 0.
        set target_y = 0.
        set rnd = 0

        set GROS6___ch_p = GetOwningPlayer( caster )
        call GroupEnumUnitsInRange( GROS6___gr, caster_x, caster_y, 600., Condition( function GROS6___Cond1 ) )
        loop
            set target = FirstOfGroup( GROS6___gr )
            exitwhen( target == null )
            set rnd = GetRandomInt( 1, 100 )
            if rnd <= 15 then
                set target_loc = GetUnitLoc( target )
                set target_z = GetLocationZ( target_loc )
                set target_x = GetUnitX( target )
                set target_y = GetUnitY( target )
                //set lt = AddLightningEx( "CLPB", true, caster_x, caster_y, caster_z, target_x, target_y, target_z )
               // call X_KillLightning( lt )
                //call AddTimeLightning(lt,0.5)
                call RemoveLocation( target_loc )
              //  call LightningUnit(caster, target, "CLPB", 1, 1, 1, 1, 0.5,2000)
                //молния при касте скиллов
                set dmg = GetHeroInt( target, TRUE ) * 0.6
                call GROS5_FilterWater( target_x, target_y, dmg )
                call DamageLib_SpellDamage( target, caster, dmg )
               // call DisplayTextToForce( GetPlayersAll( ), GetUnitName(target) + "ударил молнией 15%_" + GetUnitName(caster) )
                call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl", caster, "chest" ) )
                set target_loc = null
                set lt = null
            endif
            call GroupRemoveUnit( GROS6___gr, target )
        endloop
        call GroupClear( GROS6___gr ) //add clear
        call RemoveLocation( caster_loc )
        set caster_loc = null
    endif

    set caster = null
endfunction

// ===== GROS6___I (строки 8792-8797) =====
function GROS6___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function GROS6___Act )
    set Trg = null
endfunction
