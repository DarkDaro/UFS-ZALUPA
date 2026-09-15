// ===== DRASp2Lib_preload (строки 4506-4508) =====
function DRASp2Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'A00I' )
endfunction

// ===== DRASp2Lib__Time_Act (строки 4510-4543) =====
function DRASp2Lib__Time_Act takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit att = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "darkpass" ) )

    if GetUnitState( att, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( att, UNIT_TYPE_DEAD ) == false then

        if GetUnitAbilityLevel( att, 'A00I' ) > 1 then
            call DecUnitAbilityLevel( att, 'A00I' )
        else
            call UnitRemoveAbility( att, 'A00I' )
        endif

       // call DisplayTextToForce( GetPlayersAll( ), "минус атака стаки стоп_" + GetUnitName(att) )

        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else

        if IsUnitType( att, UNIT_TYPE_HERO ) then
            call TimerStart( t, 1., false, function DRASp2Lib__Time_Act )
        //    call DisplayTextToForce( GetPlayersAll( ), "минус атака рекурсия" )

        else
         //   call DisplayTextToForce( GetPlayersAll( ), "минус атака рекурсия стоп чистка_" + GetUnitName(att) )
            call FlushChildHashtable( HT, GetHandleId( t ) )
            call PauseTimer( t )
            call DestroyTimer( t )
        endif

    endif
    set att = null
    set t = null
endfunction

// ===== DRASp2Lib__Act (строки 4545-4578) =====
function DRASp2Lib__Act takes nothing returns nothing
    local unit dmgd = GetTriggerUnit( )
    local unit damager = GetEventDamageSource( )
    local timer t

    // call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger( GetTriggeringTrigger( ) )
    if GetUnitAbilityLevel( dmgd, 'A00G' ) > 0 and GetEventDamage( ) > 0 then

        if SquareRoot( ( GetUnitX( dmgd ) - GetUnitX( damager ) ) * ( GetUnitX( dmgd ) - GetUnitX( damager ) ) + ( GetUnitY( dmgd ) - GetUnitY( damager ) ) * ( GetUnitY( dmgd ) - GetUnitY( damager ) ) ) <= 150.then

            if GetWidgetLife( damager ) > 0.405 and IsUnitType( damager, UNIT_TYPE_DEAD ) == false and damager != null then
                if GetUnitAbilityLevel( damager, 'A00I' ) > 0 then

                    call IncUnitAbilityLevel( damager, 'A00I' )
                else
                    call UnitAddAbility( damager, 'A00I' )
                endif

              //  call DisplayTextToForce( GetPlayersAll( ), "минус атака стаки_" + GetUnitName( damager ) )
                set t = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "darkpass" ), damager )
                call TimerStart( t, 5., FALSE, function DRASp2Lib__Time_Act )
                set t = null
                set damager = null
            endif

        endif

    endif
    call EnableTrigger( GetTriggeringTrigger( ) )
    set t = null
    set dmgd = null
endfunction

// ===== DRASp2Lib__DRASp2Lib_Init (строки 4580-4583) =====
function DRASp2Lib__DRASp2Lib_Init takes nothing returns nothing
    set DRASp2Lib_Trg = CreateTrigger( )
    call TriggerAddAction( DRASp2Lib_Trg, function DRASp2Lib__Act )
endfunction

// ===== DRASp6Lib_preload (строки 4585-4586) =====
function DRASp6Lib_preload takes nothing returns nothing
endfunction

// ===== DRASp6Lib__Cond1 (строки 4588-4593) =====
function DRASp6Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( u, UNIT_TYPE_HERO ) and GetUnitAbilityLevel( u, 'Aloc' ) == 0
    set u = null
    return b
endfunction

// ===== DRASp6Lib__TT (строки 4595-4616) =====
function DRASp6Lib__TT takes unit u, string t, boolean plus returns nothing
    local texttag tt = CreateTextTagUnitBJ(t, u, -3., 6., 0., 0., 0., 0.)

    if plus then
        call SetTextTagColor(tt, 128, 255, 128, 200)
    else
        call SetTextTagColor(tt, 255, 128, 128, 200)
    endif

    if IsUnitVisible(u, GetLocalPlayer()) then
        call SetTextTagVisibility(tt, true)
    else
        call SetTextTagVisibility(tt, false)
    endif

    call SetTextTagVelocity(tt, 0.00, 0.03)
    call SetTextTagFadepoint(tt, 0.5)
    call SetTextTagLifespan(tt, 1.)
    call SetTextTagPermanent(tt, false)

    set tt = null
endfunction

// ===== DRASp6Lib__TTOld (строки 4619-4631) =====
function DRASp6Lib__TTOld takes unit u, string t, boolean plus returns nothing
    local texttag tt = CreateTextTagUnitBJ( t, u, -3., 6., 0., 0., 0., 0. )
    if plus then
        call SetTextTagColor( tt, 128, 255, 128, 200 )
    else
        call SetTextTagColor( tt, 255, 128, 128, 200 )
    endif
    call SetTextTagVelocity( tt, 0.00, 0.03 )
    call SetTextTagFadepoint( tt, 1. / 2 )
    call SetTextTagLifespan( tt, 1. )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

// ===== DRASp6Lib__Act (строки 4633-4662) =====
function DRASp6Lib__Act takes nothing returns nothing
    local unit d = GetDyingUnit( )
    local unit FoG = null
    local group g
    if not IsUnitType( d, UNIT_TYPE_HERO )and GetConvertedPlayerId( GetOwningPlayer( d ) ) == 13 then

        set g = CreateGroup( )
        call GroupEnumUnitsInRange( g, GetUnitX( d ), GetUnitY( d ), 500., Condition( function DRASp6Lib__Cond1 ) )

        loop
            set FoG = FirstOfGroup( g )
            exitwhen ( FoG == null )

            if ( GetUnitAbilityLevel( FoG, 'A00O' ) > 0 ) then //кража хп
                call SetUnitMax_Life( FoG, R2I( GetUnitState(FoG, UNIT_STATE_MAX_LIFE ) + GetUnitState( d, UNIT_STATE_MAX_LIFE ) * 0.005 ) )
                call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Undead\\DeathCoil\\DeathCoilSpecialArt.mdl", FoG, "origin" ) )
                call DRASp6Lib__TT( FoG, "+" + I2S( R2I( GetUnitState( d, UNIT_STATE_MAX_LIFE ) * 0.005 ) ) + " hp", true )
                //добавить просто хилл хп
            endif

            call GroupRemoveUnit( g, FoG )
        endloop
        set FoG = null
        call GroupClear( g )
        call DestroyGroup( g )
    endif

    set g = null
    set d = null
endfunction

// ===== DRASp6Lib__DRASp6Lib_Init (строки 4664-4669) =====
function DRASp6Lib__DRASp6Lib_Init takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction(Trg, function DRASp6Lib__Act) //трубил
    set Trg = null
endfunction

// ===== DRASp1Lib_preload (строки 7342-7344) =====
function DRASp1Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'A00H' )
endfunction

// ===== DRASp1Lib__TT (строки 7346-7369) =====
function DRASp1Lib__TT takes unit u, string t, boolean plus returns nothing
    local texttag tt = CreateTextTagUnitBJ(t, u, -3., 8., 0., 0., 0., 0.)
    local player p = GetLocalPlayer()

    if plus then
        call SetTextTagColor(tt, 128, 255, 128, 200)
    else
        call SetTextTagColor(tt, 255, 128, 128, 200)
    endif

    call SetTextTagVelocity(tt, 0.00, 0.03)
    call SetTextTagFadepoint(tt, 0.5)
    call SetTextTagLifespan(tt, 1.0)
    call SetTextTagPermanent(tt, false)

    // Устанавливаем видимость тексттага только локально
    if p != null then
        call SetTextTagVisibility(tt, IsUnitVisible(u, p))
    endif

    set tt = null
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
endfunction

// ===== DRASp1Lib__TTOLD (строки 7372-7384) =====
function DRASp1Lib__TTOLD takes unit u, string t, boolean plus returns nothing
    local texttag tt = CreateTextTagUnitBJ( t, u, -3., 8., 0., 0., 0., 0. )
    if plus then
        call SetTextTagColor( tt, 128, 255, 128, 200 )
    else
        call SetTextTagColor( tt, 255, 128, 128, 200 )
    endif
    call SetTextTagVelocity( tt, 0.00, 0.03 )
    call SetTextTagFadepoint( tt, 1. / 2 )
    call SetTextTagLifespan( tt, 1. )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

// ===== DRASp1Lib__Cond1 (строки 7386-7391) =====
function DRASp1Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), DRASp1Lib__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== DRASp1Lib__DRASp1_Death_A (строки 7393-7423) =====
function DRASp1Lib__DRASp1_Death_A takes nothing returns nothing
    local unit u = GetDyingUnit( )
    local integer j = 0
    local unit FoG = null
    if GetUnitAbilityLevel( u, 'A00F' ) > 0 then

        set j = LoadInteger( HT, GetHandleId( u ), StringHash( "H_DRAS1_lol" ) )
     //  call DisplayTextToForce( GetPlayersAll( ), GetUnitName( u ) + " _H_DRAS1_lol" +I2S(j) )

        loop
            exitwhen( j == 0 )
            set FoG = LoadUnitHandle( HT, GetHandleId( u ), StringHash( "AbsorbedUnit_" + I2S( j ) ) )
           // call DisplayTextToForce( GetPlayersAll( ), GetUnitName( FoG ) + "AbsorbedUnit_" +I2S(j) )
            call SetHeroInt( FoG, GetHeroInt( FoG, FALSE ) + 2, TRUE )

         //  call SetIntStatsSave(FoG, GetHeroInt(FoG, false) + 2, true)

            call DRASp1Lib__TT( FoG, "+" + I2S( 2 ) + " ИНТ", TRUE )
            call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Undead\\CarrionSwarm\\CarrionSwarmDamage.mdl", FoG, "chest" ) )
            call SetHeroInt( u, GetHeroInt( u, FALSE ) - 2, TRUE )
            // call SetIntStatsSave(u, GetHeroInt(u, false) - 2, true)
            call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "AbsorbedUnit_" + I2S( j ) ), null )
            set j = j - 1
        endloop

        call SaveInteger( HT, GetHandleId( u ), StringHash( "H_DRAS1_lol" ), 0 )
        set FoG = null
    endif

    set u = null
endfunction

// ===== DRASp1Lib__DRASp1_Act (строки 7425-7488) =====
function DRASp1Lib__DRASp1_Act takes nothing returns nothing
    local unit caster
    local real x
    local real y
    local unit FoG
    local integer i
    local real r0
    local real damage
    local integer j
    local group g

    if GetSpellAbilityId( ) == 'A00F' then

        set caster = GetTriggerUnit( )
        set x = GetUnitX( caster )
        set y = GetUnitY( caster )
        set i = 0
        set r0 = 0.
        set damage = GetHeroInt( caster, TRUE ) * 1.8
        set j = LoadInteger( HT, GetHandleId( caster ), StringHash( "H_DRAS1_lol" ) )
        set DRASp1Lib__ch_p = GetOwningPlayer( caster )
        call SetUnitAnimation( caster, "throw" )
        set g = CreateGroup()
        call GroupEnumUnitsInRange( g, x, y, 700., Condition( function DRASp1Lib__Cond1 ) )
       // set FoG = FirstOfGroup( g ) Не работает

        //
        loop
            set FoG = FirstOfGroup( g )
            exitwhen( FoG == null )
                // and ( GetUnitAbilityLevel( FoG, 'Avul' ) == 0 )
            call DamageLib_SpellDamage( caster, FoG, damage )
            if IsUnitType( FoG, UNIT_TYPE_HERO ) and GetHeroInt( FoG, FALSE ) >= 2 then
                set j = j + 1
                call SaveInteger( HT, GetHandleId( caster ), StringHash( "H_DRAS1_lol" ), j )

                    //and GetHeroInt( FoG, false ) >=0
                call SetHeroInt( FoG, GetHeroInt( FoG, FALSE ) - 2, TRUE )

                    //call SetIntStatsSave(FoG, GetHeroInt(FoG, false) - 2, true)
                call DRASp1Lib__TT( FoG, "-" + I2S( 2 ) + " ИНТ", FALSE )

                call SetHeroInt( caster, GetHeroInt( caster, FALSE ) + 2, TRUE )
                 //   call SetIntStatsSave(caster, GetHeroInt( caster, FALSE ) + 2, true)

                call DRASp1Lib__TT( caster, "+" + I2S( 2 ) + " ИНТ", TRUE )
                call SaveUnitHandle( HT, GetHandleId( caster ), StringHash( "AbsorbedUnit_" + I2S(j ) ), FoG )
               //     call DisplayTextToForce( GetPlayersAll( ), GetUnitName( FoG ) + "AbsorbedUnit_" + I2S( j ) )
                call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Undead\\CarrionSwarm\\CarrionSwarmDamage.mdl", FoG, "chest" ) )

            endif

            call GroupRemoveUnit( g, FoG )

        endloop

        call GroupClear( g )
        call DestroyGroup(g)
        set caster = null
        set FoG = null
    endif
    // 05.09: anti-leak (obnulenie lokalov)
    set g = null
endfunction

// ===== DRASp1Lib__DRASp1Lib_Init (строки 7490-7499) =====
function DRASp1Lib__DRASp1Lib_Init takes nothing returns nothing
    local trigger DRASp1_Trg = CreateTrigger( )
    local trigger DRASp1_Death = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( DRASp1_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( DRASp1_Trg, function DRASp1Lib__DRASp1_Act )
    call TriggerRegisterAnyUnitEventBJ( DRASp1_Death, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( DRASp1_Death, function DRASp1Lib__DRASp1_Death_A )
    set DRASp1_Trg = null
    set DRASp1_Death = null
endfunction

// ===== DRASp3Lib_preload (строки 7501-7504) =====
function DRASp3Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'A00M' )
    call X_PreloadAbility( 'A00L' )
endfunction

// ===== DRASp3Lib__Cond1 (строки 7506-7511) =====
function DRASp3Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), DRASp3Lib__ch_p ) and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== DRASp3Lib__Cond2 (строки 7514-7519) =====
function DRASp3Lib__Cond2 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== DRASp3Lib__ReleazeMissile (строки 7521-7546) =====
function DRASp3Lib__ReleazeMissile takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local player o = LoadPlayerHandle( HT, GetHandleId( t ), StringHash( "owner" ) )
    local unit c = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "c" ) )
    local real X = LoadReal( HT, GetHandleId( t ), StringHash( "X" ) )
    local real Y = LoadReal( HT, GetHandleId( t ), StringHash( "Y" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "dmg" ) )
    local unit FoG
    set DRASp3Lib__ch_p = o
    call GroupEnumUnitsInRange( DRASp3Lib__gr, X, Y, 150., Condition( function DRASp3Lib__Cond1 ) )
    loop
        set FoG = FirstOfGroup( DRASp3Lib__gr )
        exitwhen( FoG == null )
        call DamageLib_SpellDamage( c, FoG, dmg )
        call GroupRemoveUnit( DRASp3Lib__gr, FoG )
    endloop
    call GroupClear( DRASp3Lib__gr )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set c = null
    set t = null
    // 05.09: anti-leak (obnulenie lokalov)
    set o = null
    set FoG = null
endfunction

// ===== DRASp3Lib__CreateMissile (строки 7548-7569) =====
function DRASp3Lib__CreateMissile takes real cX, real cY, real tX, real tY, player owner, real dmg, unit c returns nothing
    local timer t = CreateTimer( )
    local real rX = GetRandomReal( 0., 400. / 2 )
    local real rY = GetRandomReal( 0., 400. / 2 )
    local real rA = GetRandomReal( 0., 359.99 )
    local real X = tX + rX * Cos( rA * bj_DEGTORAD )
    local real Y = tY + rY * Sin( rA * bj_DEGTORAD )
    local real dist = SquareRoot( ( cX - X ) * ( cX - X ) + ( cY - Y ) * ( cY - Y ) )
    local unit dummy = CreateUnit( owner, 'hfoo', cX, cY, 0. )
    call UnitAddAbility( dummy, 'A00L' )
    call IssuePointOrderById( dummy, 852652, X, Y )
    call TriggerSleepAction( 0.05 )
    call RemoveUnit( dummy )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "c" ), c )
    call SavePlayerHandle( HT, GetHandleId( t ), StringHash( "owner" ), owner )
    call SaveReal( HT, GetHandleId( t ), StringHash( "X" ), X )
    call SaveReal( HT, GetHandleId( t ), StringHash( "Y" ), Y )
    call SaveReal( HT, GetHandleId( t ), StringHash( "dmg" ), dmg )
    call TimerStart( t, dist / 5000., FALSE, function DRASp3Lib__ReleazeMissile )
    set dummy = null
    set t = null
endfunction

// ===== DRASp3Lib__DRAS3_Act (строки 7571-7595) =====
function DRASp3Lib__DRAS3_Act takes nothing returns nothing
    local unit caster
    local real tx
    local real ty
    local real dmg
    local integer count
    local integer i
    if GetSpellAbilityId( ) == 'A00K' then
        set caster = GetTriggerUnit( )
        set tx = GetSpellTargetX( )
        set ty = GetSpellTargetY( )
        set dmg = GetHeroInt( caster, true ) * 0.45
        set count = GetRandomInt( 10, 20 )
        set i = 1
        loop
            exitwhen( i > count )
            if GetUnitState( caster, UNIT_STATE_LIFE ) > 0.405 then
                call DRASp3Lib__CreateMissile( GetUnitX( caster ), GetUnitY( caster ), tx, ty, GetOwningPlayer( caster ), dmg, caster )
            endif
            set i = i + 1
        endloop
        set caster = null

    endif
endfunction

// ===== DRASp3Lib__DRASp3Lib_Init (строки 7596-7602) =====
function DRASp3Lib__DRASp3Lib_Init takes nothing returns nothing
    local trigger DRAS3_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( DRAS3_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( DRAS3_Trg, function DRASp3Lib__DRAS3_Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set DRAS3_Trg = null
endfunction

// ===== DRASp4Lib_preload (строки 7604-7605) =====
function DRASp4Lib_preload takes nothing returns nothing
endfunction

// ===== DRASp4Lib__Cond1 (строки 7607-7612) =====
function DRASp4Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), DRASp4Lib__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== DRASp4Lib__RemoveAttacked (строки 7614-7623) =====
function DRASp4Lib__RemoveAttacked takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "2" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "darkwave" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== DRASp4Lib__CreatePartOfWave (строки 7625-7678) =====
function DRASp4Lib__CreatePartOfWave takes nothing returns nothing
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
    if dist <= 1000.then
        set DRASp4Lib__ch_p = p
        call GroupEnumUnitsInRange( DRASp4Lib__gr, x, y, 100., Condition( function DRASp4Lib__Cond1 ) )

        loop
            set FoG = FirstOfGroup( DRASp4Lib__gr )
            exitwhen( FoG == null )
            if not( LoadBoolean( HT, GetHandleId( FoG ), StringHash( "darkwave" ) ) ) then
                call DamageLib_SpellDamage( cst, FoG, dmg )
                call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Other\\BlackArrow\\BlackArrowMissile.mdl", FoG, "chest" ) )
                call SaveBoolean( HT, GetHandleId( FoG ), StringHash( "darkwave" ), TRUE )
                set ti = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( ti ), StringHash( "2" ), FoG )
                call TimerStart( ti, 1., false, function DRASp4Lib__RemoveAttacked )
            endif
            call GroupRemoveUnit( DRASp4Lib__gr, FoG )
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
        call GroupClear( DRASp4Lib__gr ) //add clear
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

// ===== DRASp4Lib__DRAS4_Act (строки 7679-7720) =====
function DRASp4Lib__DRAS4_Act takes nothing returns nothing
    local unit caster
    local real caster_x
    local real caster_y
    local real angle
    local real end_x
    local real end_y
    local real dmg
    local timer t
    local unit missile

    if GetSpellAbilityId( ) == 'A00N' then
        set caster = GetTriggerUnit( )
        set caster_x = GetUnitX( caster )
        set caster_y = GetUnitY( caster )
        set angle = bj_RADTODEG * Atan2( GetSpellTargetY( ) - caster_y, GetSpellTargetX( ) - caster_x )
        set end_x = caster_x + 1000. * Cos( angle * bj_DEGTORAD )
        set end_y = caster_y + 1000. * Sin( angle * bj_DEGTORAD )
        set dmg = GetHeroInt( caster, true ) * 2.3
        set t = CreateTimer( )
        set missile = CreateUnit( GetOwningPlayer( caster ), 'h001', caster_x, caster_y, angle )
        call PauseUnit( caster, TRUE )
        call SetUnitFacing( caster, angle )
        call SetUnitAnimationByIndex( caster, 16 )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), caster_x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), caster_y )
        call SavePlayerHandle( HT, GetHandleId( t ), StringHash( "p" ), GetOwningPlayer( caster ) )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "333" ), caster )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), missile )
        call SaveReal( HT, GetHandleId( t ), StringHash( "22" ), dmg )
        call SaveReal( HT, GetHandleId( t ), StringHash( "1" ), angle )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), 0. )
        call TimerStart( t, 0.04, TRUE, function DRASp4Lib__CreatePartOfWave )
        call PauseUnit( caster, FALSE )
        call IssueImmediateOrderById( caster, 851972 )
        set t = null
        set caster = null
    endif

    // 05.09: anti-leak (obnulenie lokalov)
    set missile = null
endfunction

// ===== DRASp4Lib__DRASp4Lib_Init (строки 7721-7727) =====
function DRASp4Lib__DRASp4Lib_Init takes nothing returns nothing
    local trigger DRAS4_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( DRAS4_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( DRAS4_Trg, function DRASp4Lib__DRAS4_Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set DRAS4_Trg = null
endfunction

// ===== DRASp5Lib_preload (строки 7729-7731) =====
function DRASp5Lib_preload takes nothing returns nothing
    call X_PreloadAbility( 'Arav' )
endfunction

// ===== DRASp5Lib__Cond1 (строки 7733-7738) =====
function DRASp5Lib__Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), DRASp5Lib__ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== DRASp5Lib__TimerExp (строки 7739-7775) =====
function DRASp5Lib__TimerExp takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local real tX = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real tY = LoadReal( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local integer i = 0
    local unit u
    call SetUnitAnimation( cst, "attack" )
    call DestroyEffect( AddSpecialEffect( "war3mapImported\\DarkLightning.mdl", tX, tY ) )
    call DestroyEffect( AddSpecialEffect( "war3mapImported\\DarkLightningNova.mdl", tX, tY ) )
    call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", tX, tY ) )
    call UnitRemoveAbility( cst, 'Avul' )
    call PauseUnit( cst, FALSE )
    call IssuePointOrderById( cst, 851986, tX, tY )
    call SetUnitFlyHeight( cst, 0., 200. / 1.3 )
    call SetUnitAnimation( cst, "channel" )
    call Dest_KillDestInRange( tX, tY, 350. )
    set DRASp5Lib__ch_p = GetOwningPlayer( cst )
    call GroupEnumUnitsInRange( DRASp5Lib__gr, tX, tY, 350., Condition( function DRASp5Lib__Cond1 ) )
    loop
        set u = FirstOfGroup( DRASp5Lib__gr )
        exitwhen( u == null )
        //call DamageLib_Explode( u ) // УДОЛИТЬ
        call DamageLib_SpellDamage( cst, u, dmg )
        call GroupRemoveUnit( DRASp5Lib__gr, u )
    endloop
    call GroupClear( DRASp5Lib__gr ) //добавил чистку группы
    call SetUnitPathing( cst, true )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    // 05.09: anti-leak (obnulenie lokalov)
    set cst = null
    set u = null
endfunction

// ===== DRASp5Lib__PauseCstAnimation (строки 7777-7786) =====
function DRASp5Lib__PauseCstAnimation takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    call PauseUnit( u, TRUE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== DRASp5Lib__Proj (строки 7788-7808) =====
function DRASp5Lib__Proj takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit FoG = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real tX = LoadReal( HT, GetHandleId( t ), StringHash( "H_3" ) )
    local real tY = LoadReal( HT, GetHandleId( t ), StringHash( "H_4" ) )
    local real ti = LoadReal( HT, GetHandleId( t ), StringHash( "H_5" ) )

    if ti <= 1.3 then

        call SetUnitX( FoG, GetUnitX( FoG ) + 18. * Cos( Atan2( tY - GetUnitY( FoG ), tX - GetUnitX( FoG ) ) ) )
        call SetUnitY( FoG, GetUnitY( FoG ) + 18. * Sin( Atan2( tY - GetUnitY( FoG ), tX - GetUnitX( FoG ) ) ) )
        call IssueImmediateOrderById( FoG, 851972 )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), ti + 0.04 )
    else
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set t = null
    set FoG = null
endfunction

// ===== DRASp5Lib__RemProj (строки 7810-7821) =====
function DRASp5Lib__RemProj takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit FoG = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    call RemoveSavedBoolean( HT, GetHandleId( FoG ), StringHash( "DRASH_6" ) ) //чистка булеан по юниту
  // call FlushChildHashtable( HT, GetHandleId( FoG ) ) чистка хеша по юниту
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    // 05.09: anti-leak (obnulenie lokalov)
    set FoG = null
endfunction

// ===== DRASp5Lib__DRAS5_Act (строки 7823-7893) =====
function DRASp5Lib__DRAS5_Act takes nothing returns nothing
    local unit caster
    local real caster_x
    local real caster_y
    local real dmg
    local timer t
    local unit FoG
    local real anim_time
    if GetSpellAbilityId( ) == 'A00P' then //ульт ищадья тьмы
        set caster = GetTriggerUnit( )
        set caster_x = GetUnitX( caster )
        set caster_y = GetUnitY( caster )
        set dmg = ( GetHeroInt( caster, TRUE ) + GetHeroAgi( caster, TRUE ) + GetHeroStr( caster, TRUE ) ) * 3.0
        call UnitAddAbility( caster, 'Arav' )
        call UnitRemoveAbility( caster, 'Arav' )
        call SetUnitPathing( caster, false )
        call UnitAddAbility( caster, 'Avul' )
        call PauseUnit( caster, TRUE )
        call SetUnitAnimation( caster, "spell" )
        call SetUnitFlyHeight( caster, 200., 200. / 1.3 )
        set t = CreateTimer( )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
        call TimerStart( t, 1.1, FALSE, function DRASp5Lib__PauseCstAnimation )
        set t = null
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\Desecrate.mdl", caster_x, caster_y ) )
        call SetSoundPosition( gg_snd_laugh, caster_x, caster_y, 0. )
        call StartSound( gg_snd_laugh )
        set t = CreateTimer( )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), caster )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), dmg )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), caster_x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_4" ), caster_y )
        call TimerStart( t, 1.3, FALSE, function DRASp5Lib__TimerExp )
        set t = null
        set anim_time = 0.
        loop
            exitwhen( anim_time > 1.3 )
            set DRASp5Lib__ch_p = GetOwningPlayer( caster )
            call GroupEnumUnitsInRange( DRASp5Lib__gr, caster_x, caster_y, 600., Condition( function DRASp5Lib__Cond1 ) )

            loop
                set FoG = FirstOfGroup( DRASp5Lib__gr )
                exitwhen ( FoG == null )
                if not LoadBoolean( HT, GetHandleId( FoG ), StringHash( "DRASH_6" ) ) then

                    set t = CreateTimer( )
                    call SaveBoolean( HT, GetHandleId( FoG ), StringHash( "DRASH_6" ), TRUE )
                    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), FoG )
                    call TimerStart( t, 2., FALSE, function DRASp5Lib__RemProj )
                    set t = CreateTimer( )
                    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), FoG )
                    call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), caster_x )
                    call SaveReal( HT, GetHandleId( t ), StringHash( "H_4" ), caster_y )
                    call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), anim_time )
                    call TimerStart( t, 0.04, TRUE, function DRASp5Lib__Proj )
                endif
                call GroupRemoveUnit( DRASp5Lib__gr, FoG )

            endloop
           // call TriggerSleepAction( 0.01 ) // закоментил вейт
            set anim_time = anim_time + ( 0.1 )
        endloop

        call GroupClear( DRASp5Lib__gr ) //add clear
        set t = null
        set caster = null
    endif

    // 05.09: anti-leak (obnulenie lokalov)
    set FoG = null
endfunction

// ===== DRASp5Lib__DRASp5Lib_Init (строки 7894-7900) =====
function DRASp5Lib__DRASp5Lib_Init takes nothing returns nothing
    local trigger DRAS5_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( DRAS5_Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( DRAS5_Trg, function DRASp5Lib__DRAS5_Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set DRAS5_Trg = null
endfunction
