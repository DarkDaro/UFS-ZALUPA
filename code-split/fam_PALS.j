// ===== PALS4__Act (строки 3055-3068) =====
function PALS4__Act takes nothing returns nothing
    local integer i = 1
    local unit u = null
    loop
        exitwhen( i > 10 )
        set u = s__Hero[i]
        if u != null and GetUnitAbilityLevel( u, PALS4__ar ) > 0 then
            call UnitRemoveAbility( u, PALS4__ar )
            call UnitAddAbility( u, PALS4__ar )
        endif
        set i = i + 1
    endloop
    set u = null
endfunction

// ===== PALS4__I (строки 3070-3074) =====
function PALS4__I takes nothing returns nothing
    local timer t = CreateTimer( )
    call TimerStart( t, PALS4__period, TRUE, function PALS4__Act )
    set t = null
endfunction

// ===== PALS6__Rem (строки 3076-3093) =====
function PALS6__Rem takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "palados" ) )
    if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then

      // call SetHeroStr( u, GetHeroStr( u, FALSE ) - 1, TRUE )
        call SetStrStatsSave( u, GetHeroStr( u, false ) - 1, true )
      //  call DisplayTextToForce( GetPlayersAll( ), "пал отняли силу" )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 0.1, TRUE, function PALS6__Rem )
        //call DisplayTextToForce( GetPlayersAll( ), "пал рекурсия силы" )
    endif
    set t = null
    set u = null
endfunction

// ===== PALS6__Act_Attack (строки 3095-3133) =====
function PALS6__Act_Attack takes nothing returns nothing
    local unit u = GetEventDamageSource( )
    local unit a = GetTriggerUnit( )
    local timer t
    local real d = SquareRoot( ( GetUnitX( u ) - GetUnitX( a ) ) * ( GetUnitX( u ) - GetUnitX( a ) ) + ( GetUnitY( u ) - GetUnitY( a ) ) * ( GetUnitY( u ) - GetUnitY( a ) ) )

    if GetEventDamage( ) > 0 and GetUnitAbilityLevel( u, 'A043' ) > 0 and d <= 140.and PALS6_m_type[GetConvertedPlayerId( GetOwningPlayer( u ) )] == 2 then

        if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false and u != null then
       // call DisableTrigger( GetTriggeringTrigger( ) )
        //call SetHeroStr( u, GetHeroStr( u, FALSE ) + 1, TRUE )
            call SetStrStatsSave( u, GetHeroStr( u, false ) + 1, true )
      //  call DisplayTextToForce( GetPlayersAll( ), "пал дали силу+1" )
            set t = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "palados" ), u )
            call TimerStart( t, 6., FALSE, function PALS6__Rem )
      //  call EnableTrigger( GetTriggeringTrigger( ) )
            set t = null
        endif

    endif

    if GetEventDamage( ) > 0 and GetUnitAbilityLevel( a, 'A043' ) > 0 and PALS6_m_type[GetConvertedPlayerId( GetOwningPlayer( a ) )] == 1 then
      //  call DisableTrigger( GetTriggeringTrigger( ) )
        if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false and u != null then
       // call SetHeroStr( a, GetHeroStr( a, FALSE ) + 1, TRUE )
            call SetStrStatsSave( a, GetHeroStr( a, false ) + 1, true )
      //  call DisplayTextToForce( GetPlayersAll( ), "пал дали силу хз+1" )
            set t = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "palados" ), a )
            call TimerStart( t, 6., FALSE, function PALS6__Rem )
    //    call EnableTrigger( GetTriggeringTrigger( ) )
            set t = null
        endif
    endif
    set t = null
    set u = null
    set a = null
endfunction

// ===== PALS6__Trg_Ch_A (строки 3135-3144) =====
function PALS6__Trg_Ch_A takes nothing returns nothing
    local unit u = GetTriggerUnit( )
    if GetIssuedOrderId( ) == 852177 then
        set PALS6_m_type[GetConvertedPlayerId( GetOwningPlayer( u ) )] = 2
    endif
    if GetIssuedOrderId( ) == 852178 then
        set PALS6_m_type[GetConvertedPlayerId( GetOwningPlayer( u ) )] = 1
    endif
    set u = null
endfunction

// ===== PALS6__I (строки 3146-3155) =====
function PALS6__I takes nothing returns nothing
    local trigger Trg_Ch
    set PALS6_Trg_Attack = CreateTrigger( )
    call TriggerAddAction( PALS6_Trg_Attack, function PALS6__Act_Attack )
    set Trg_Ch = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg_Ch, EVENT_PLAYER_UNIT_ISSUED_ORDER )
    call TriggerAddAction( Trg_Ch, function PALS6__Trg_Ch_A )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg_Ch = null
endfunction

// ===== PALS7_preload (строки 3158-3159) =====
function PALS7_preload takes nothing returns nothing
endfunction

// ===== PALS7__TT (строки 3161-3175) =====
function PALS7__TT takes unit u, real time returns nothing
    local texttag tt = CreateTextTagUnitBJ( R2SW( time, 1, 1 ) + " сек.", u, -0., 9., 0., 0., 0., 0. )
    local integer id = GetPlayerId( GetOwningPlayer( u ) ) + 1
    if IsPlayerAlly( GetLocalPlayer( ), GetOwningPlayer( u ) ) then
        call SetTextTagVisibility( tt, TRUE )
    else
        call SetTextTagVisibility( tt, FALSE )
    endif
    call SetTextTagColor( tt, s__Color_Dec_1[id], s__Color_Dec_2[id], s__Color_Dec_3[id], 255 )
    call SetTextTagVelocity( tt, 0., 0.03 )
    call SetTextTagFadepoint( tt, 2. / 2 )
    call SetTextTagLifespan( tt, 2. )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

// ===== PALS7__B (строки 3177-3195) =====
function PALS7__B takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local effect e = LoadEffectHandle( HT, GetHandleId( u ), StringHash( "ShieldFX_2" ) )
    if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then
        call DestroyEffect( e )
        call SaveBoolean( HT, GetHandleId( u ), StringHash( "PalShield" ), FALSE )
      //  call DisplayTextToForce( GetPlayersAll( ), "пал щит удоли" )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 0.5, FALSE, function PALS7__B )
     //   call DisplayTextToForce( GetPlayersAll( ), "пал щит рекрс" )
    endif
    set t = null
    set u = null
    set e = null
endfunction

// ===== PALS7__Act_S (строки 3197-3235) =====
function PALS7__Act_S takes nothing returns nothing
    local unit caster
    local effect fx
    local timer t
    local real energy

    if GetSpellAbilityId( ) == 'A008' then
       // call DisplayTextToForce( GetPlayersAll( ), "пал щит акт" )
        set caster = GetTriggerUnit( )

        if LoadBoolean( HT, GetHandleId( caster ), StringHash( "PalShield" ) ) then
          //  call PauseTimer( t )
         //   call DestroyTimer( t ) //под вопросом
         //   call DisplayTextToForce( GetPlayersAll( ), "пал щит обновление" )
            set energy = Energy_Get( caster, PALS7__length )
            call PALS7__TT( caster, energy )
            call Energy_Minus( caster , PALS7__energy )
            set t = LoadTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_PAL" ) )
            call TimerStart( t, TimerGetRemaining( t ) + energy, FALSE, function PALS7__B )
                //добавил хрень с энергией

        else
            set fx = AddSpecialEffectTarget( PALS7__eff, caster, PALS7__attach )
            set t = CreateTimer( )
            set energy = Energy_Get( caster, PALS7__length )
            call PALS7__TT( caster, energy )
            call Energy_Minus( caster , PALS7__energy )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
            call SaveEffectHandle( HT, GetHandleId( caster ), StringHash( "ShieldFX_2" ), fx )
            call SaveTimerHandle( HT, GetHandleId( caster ), StringHash( "H_TIMER_PAL" ), t )
            call SaveBoolean( HT, GetHandleId( caster ), StringHash( "PalShield" ), TRUE )
            call TimerStart( t, energy, FALSE, function PALS7__B )
         //   call DisplayTextToForce( GetPlayersAll( ), "пал щит запись" )
        endif
        set caster = null
        set fx = null
        set t = null
    endif
endfunction

// ===== PALS7__Act_T (строки 3237-3281) =====
function PALS7__Act_T takes nothing returns nothing
    local unit caster
    local unit target
    local effect fx
    local timer t
    local real energy
    if GetSpellAbilityId( ) == 'A03Q' then
        set caster = GetTriggerUnit( )
        set target = GetSpellTargetUnit( )
        //set fx = AddSpecialEffectTarget( PALS7__eff, target, PALS7__attach )
      //  set t = CreateTimer( )
      //  set energy = Energy_Get( caster, PALS7__length )
       // call PALS7__TT( target, energy )
       // call Energy_Minus( caster, PALS7__energy )

        if LoadBoolean( HT, GetHandleId( target ), StringHash( "PalShield" ) ) then
          //  call PauseTimer( t )
          //  call DestroyTimer( t )
         //   call DisplayTextToForce( GetPlayersAll( ), "пал щит обновление" )
            set energy = Energy_Get( caster, PALS7__length )
            call PALS7__TT( target, energy )
            call Energy_Minus( caster, PALS7__energy )
            set t = LoadTimerHandle( HT, GetHandleId( target ), StringHash( "H_TIMER_PAL" ) )
            call TimerStart( t, TimerGetRemaining( t ) + energy, FALSE, function PALS7__B )
            //добавил хрень с энергией

        else
            set fx = AddSpecialEffectTarget( PALS7__eff, target, PALS7__attach )
            set t = CreateTimer( )
            set energy = Energy_Get( caster, PALS7__length )
            call PALS7__TT( target, energy )
            call Energy_Minus( caster, PALS7__energy )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), target )
            call SaveEffectHandle( HT, GetHandleId( target ), StringHash( "ShieldFX_2" ), fx )
            call SaveTimerHandle( HT, GetHandleId( target ), StringHash( "H_TIMER_PAL" ), t )
            call SaveBoolean( HT, GetHandleId( target ), StringHash( "PalShield" ), TRUE )
            call TimerStart( t, energy , FALSE, function PALS7__B )
          //  call DisplayTextToForce( GetPlayersAll( ), "пал щит запись" )
        endif
        set caster = null
        set fx = null
        set t = null
        set target = null
    endif
endfunction

// ===== PALS7__D (строки 3283-3292) =====
function PALS7__D takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "PalUnit" ) )
    call UnitRemoveAbility( u, 'Avul' ) //avul
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== PALS7__C (строки 3294-3305) =====
function PALS7__C takes nothing returns nothing
    local unit u = GetTriggerUnit( )
    local timer t
    if LoadBoolean( HT, GetHandleId( u ), StringHash( "PalShield" ) ) then
        call UnitAddAbility( u, 'Avul' ) //avul
        set t = CreateTimer( )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "PalUnit" ), u )
        call TimerStart( t, 0.1, FALSE, function PALS7__D )
        set t = null
    endif
    set u = null
endfunction

// ===== PALS7__I (строки 3307-3313) =====
function PALS7__I takes nothing returns nothing
    call TriggerAddAction( PALS7_Trg, function PALS7__C )
    call TriggerRegisterAnyUnitEventBJ( PALS7__Trg_Cast, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    //на триггер 2 события вешает
    call TriggerAddAction( PALS7__Trg_Cast, function PALS7__Act_S )
    call TriggerAddAction( PALS7__Trg_Cast, function PALS7__Act_T )
endfunction

// ===== PALS5_preload (строки 6048-6050) =====
function PALS5_preload takes nothing returns nothing
    call X_PreloadAbility( 'A005' )
endfunction

// ===== PALS5__Act2 (строки 6053-6055) =====
function PALS5__Act2 takes nothing returns nothing

endfunction

// ===== PALS5__Act (строки 6057-6092) =====
function PALS5__Act takes nothing returns nothing
    local unit cst = GetTriggerUnit( )
    local effect fx
    local timer t
    //Пассивка паладоса
    if GetUnitAbilityLevel( cst, 'A000' ) > 0 then
        if GetRandomInt( 1, 100 ) <= 7 then

            set fx = AddSpecialEffectTarget( "Abilities\\Spells\\Human\\InnerFire\\InnerFireTarget.mdl", cst, "overhead" )
            call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Human\\Resurrect\\ResurrectCaster.mdl", cst, "origin" ) )

            if GetLocalPlayer( ) == GetOwningPlayer( cst ) then
                call StartSound( gg_snd_a )
            endif
            // 07.09: anti-leak - udalen mertvyj CreateTimer (ne ispolzovalsya)
            call UnitAddAbility( cst, 'A005' )
            call Energy_Minus( cst, -15 )
            call IncUnitAbilityLevel( cst, 'A003' )
            call TriggerSleepAction( 0.01 )
            call UnitResetCooldown( cst )
            call TriggerSleepAction( 5. )
            //как это понимать в цикле вейт 0.05 сек ждем пока юнит будет живой, лучше поменять на таймер
            loop
                exitwhen( GetWidgetLife( cst ) > 0.405 )
                call TriggerSleepAction( 0.5 )
            endloop
            call UnitRemoveAbility( cst, 'A005' )
            call DecUnitAbilityLevel( cst, 'A003' )
            call DestroyEffect( fx )
            set fx = null
        endif

    endif
    set t = null
    set cst = null
endfunction

// ===== PALS5__I (строки 6094-6100) =====
function PALS5__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function PALS5__Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== PALS1_preload (строки 9138-9139) =====
function PALS1_preload takes nothing returns nothing
endfunction

// ===== PALS1__Cond1 (строки 9140-9145) =====
function PALS1__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), PALS1__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== PALS1__Act (строки 9146-9204) =====
function PALS1__Act takes nothing returns nothing
    local unit u
    local real caster_x
    local real caster_y
    local real angle
    local real fx_x
    local real fx_y
    local group gr
    local unit target
    local real dmg
    local effect fx
    local unit u0
    local timer t

    if GetSpellAbilityId( ) == 'A002' then
        set u = GetTriggerUnit( )
        set caster_x = GetUnitX( u )
        set caster_y = GetUnitY( u )
        set angle = bj_RADTODEG * Atan2( GetSpellTargetY( ) - caster_y, GetSpellTargetX( ) - caster_x )
        set fx_x = caster_x + 100. * Cos( angle * bj_DEGTORAD )
        set fx_y = caster_y + 100. * Sin( angle * bj_DEGTORAD )
        set gr = CreateGroup( )
        set dmg = GetHeroStr( u, true ) * 2.3
        call SetUnitFacing( u, angle )
        call PauseUnit( u, TRUE )
        call SetUnitAnimationByIndex( u, 5 )
        set fx = AddSpecialEffectTarget( "Abilities\\Spells\\Items\\ScrollOfRegeneration\\Scroll_Regen_Target", u, "weapon" )
        call TriggerSleepAction( 0.35 )
        call PauseUnit( u, FALSE )
        call IssueImmediateOrderById( u, 851972 )
        call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Undead\\ReplenishHealth\\ReplenishHealthCaster.mdl", fx_x, fx_y ) )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\HolyStomp.mdx", fx_x, fx_y ) )
        call DestroyEffect( fx )
        call SetUnitAnimation( u, "stand" )
        set PALS1__ch_p = GetOwningPlayer( u )
        call Dest_KillDestInRange( fx_x, fx_y, 200. )
        call GroupEnumUnitsInRange( gr, fx_x, fx_y, 200., Condition( function PALS1__Cond1 ) )
        loop
            set target = FirstOfGroup( gr )
            exitwhen( target == null )
          //  call DamageLib_Explode( target ) // Удолить
            call UnitDamageTarget( u, target, dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
          //  call Stun_Target( u, target, 1.5 )
            call StunUnit(target,1.5)

            call GroupRemoveUnit( gr, target )
        endloop
        set u0 = null
        set u = null
        set target = null
        set fx = null
        call GroupClear( gr )
        call DestroyGroup( gr )
        set gr = null
    endif

    // 05.09: anti-leak (obnulenie lokalov)
    set t = null
endfunction

// ===== PALS1__I (строки 9205-9211) =====
function PALS1__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function PALS1__Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== PALS2__Cond1 (строки 9213-9218) =====
function PALS2__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), PALS2__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== PALS2__Cond2 (строки 9220-9225) =====
function PALS2__Cond2 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerAlly( GetOwningPlayer( u ), PALS2__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== PALS2__Act (строки 9226-9284) =====
function PALS2__Act takes nothing returns nothing
    local unit u
    local real caster_x
    local real caster_y
    local group gr
    local unit target
    local real energy
    local integer rnd
    if GetSpellAbilityId( ) == 'A001' then
        set u = GetTriggerUnit( )
        set caster_x = GetUnitX( u )
        set caster_y = GetUnitY( u )
        set gr = CreateGroup( )
        set energy = Energy_Get( u, GetHeroInt( u, true ) * 2.8 )
        set rnd = 0
        call Energy_Minus( u, PALS2__energy )
        set PALS2__ch_p = GetOwningPlayer( u )
        call GroupEnumUnitsInRange( gr, caster_x, caster_y, 600., Condition( function PALS2__Cond1 ) )
        loop
            set target = FirstOfGroup( gr )
            exitwhen( target == null )
            call DamageLib_SpellDamage( u, target, energy * 0.5 )
            set rnd = GetRandomInt( 1, 100 )
            if rnd < 15 then
                call UnitRemoveBuffs( target, true, false )
            endif
            call GroupRemoveUnit( gr, target )
        endloop
        call GroupClear( gr )
        call GroupEnumUnitsInRange( gr, caster_x, caster_y, 600., Condition( function PALS2__Cond2 ) )
        loop
            set target = FirstOfGroup( gr )
            exitwhen( target == null )
            if not( target == u ) then
                call DamageLib_SpellHeal( u, target, -energy * 1. )
                set rnd = GetRandomInt( 1, 100 )
                if rnd < 15 then
                    call UnitRemoveBuffs( target, false, true )
                endif
            endif
            call GroupRemoveUnit( gr, target )
        endloop

        if energy > GetUnitState( u, UNIT_STATE_MAX_LIFE ) * 0.05 then
            call DamageLib_SpellHeal( u, u, -energy )
        else
            call DamageLib_SpellHeal( u, target, -GetUnitState( u, UNIT_STATE_MAX_LIFE ) * 0.05 )
        endif
        set rnd = GetRandomInt( 1, 100 )
        if rnd < 15 then
            call UnitRemoveBuffs( u, true, false )
        endif
        set u = null
        set target = null
        call GroupClear( gr )
        call DestroyGroup( gr )
        set gr = null
    endif
endfunction

// ===== PALS2__I (строки 9285-9291) =====
function PALS2__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function PALS2__Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== PALS3_preload (строки 9292-9293) =====
function PALS3_preload takes nothing returns nothing
endfunction

// ===== PALS3__Cond1 (строки 9294-9299) =====
function PALS3__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), PALS3__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== PALS3__Act (строки 9300-9352) =====
function PALS3__Act takes nothing returns nothing
    local unit u
    local real tx
    local real ty
    local real caster_x
    local real caster_y
    local group gr
    local unit target
    local real dist
    local real dmg
    local unit dummy

    if GetSpellAbilityId( ) == 'A004' then
        set u = GetTriggerUnit( )
        set tx = GetSpellTargetX( )
        set ty = GetSpellTargetY( )
        set caster_x = GetUnitX( u )
        set caster_y = GetUnitY( u )
        set gr = CreateGroup( )
        set dist = SquareRoot( ( tx - caster_x ) * ( tx - caster_x ) + ( ty - caster_y ) * ( ty - caster_y ) )
        set dmg = ( GetHeroStr( u, true ) + GetHeroInt( u, true ) ) * 0.7
        call TriggerSleepAction( dist / 1000. ) //летит анимация
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\s_HolymagicProjectile.mdl", tx, ty ) )
        set PALS3__ch_p = GetOwningPlayer( u )
        call GroupEnumUnitsInRange( gr, tx, ty, 300., Condition( function PALS3__Cond1 ) )
        loop
            set target = FirstOfGroup( gr )
            exitwhen( target == null )
            call DamageLib_SpellDamage( u, target, dmg )
            call GroupRemoveUnit( gr, target )
        endloop
        call GroupClear( gr )
        call GroupEnumUnitsInRange( gr, tx, ty, 300., Condition( function PALS3__Cond1 ) )

        loop
            set target = FirstOfGroup( gr )
            exitwhen( target == null )
            set dummy = CreateUnit( GetOwningPlayer( u ), 'hfoo', tx, ty, 0. )
            call UnitAddAbility( dummy, 'A006' ) //замедление дааммик
            call X_ApplyLife( dummy )
            call IssueTargetOrderById( dummy, 852075, target )
            call GroupRemoveUnit( gr, target )
        endloop
        call TriggerSleepAction( 0.1 )
        call RemoveUnit( dummy )
        call GroupClear( gr )
        call DestroyGroup( gr )
        set dummy = null
        set u = null
        set target = null
        set gr = null
    endif
endfunction

// ===== PALS3__I (строки 9353-9359) =====
function PALS3__I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function PALS3__Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction
