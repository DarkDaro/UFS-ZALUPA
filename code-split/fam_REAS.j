// ===== REAS4_preload (строки 3339-3341) =====
function REAS4_preload takes nothing returns nothing

endfunction

// ===== REAS4___TT (строки 3343-3357) =====
function REAS4___TT takes unit u, integer bonus returns nothing
    local texttag tt = CreateTextTagUnitBJ( I2S( bonus ) + " STR", u, -0., 9., 0., 0., 0., 0. )
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

// ===== REAS4___RemBon (строки 3359-3414) =====
function REAS4___RemBon takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), REAS4___h_1 )
    local unit tar = LoadUnitHandle( HT, GetHandleId( t ), REAS4___h_2 )
    local integer str = LoadInteger( HT, GetHandleId( t ), REAS4___h_3 )
    local real tim = LoadReal( HT, GetHandleId( t ), REAS4___h_4 )
    local boolean dea_t = LoadBoolean( HT, GetHandleId( t ), REAS4___h_5 )
    local boolean dea_c = LoadBoolean( HT, GetHandleId( t ), REAS4___h_7 )
    local effect e_a = LoadEffectHandle( HT, GetHandleId( t ), REAS4___h_6 )
    local boolean b = FALSE
    if tim == 0.1 then
        call UnitRemoveAbility( cst, 'Avul' )
    endif

    if ( GetWidgetLife( tar ) <= 0.405 and not dea_t ) or ( GetWidgetLife( tar ) > 0.405 and dea_c and not dea_t ) then
       // call SetHeroStr( tar, GetHeroStr( tar, FALSE ) + str, TRUE )
        call SetStrStatsSave( tar, GetHeroStr( tar, false ) + str, true )
        call SaveBoolean( HT, GetHandleId( t ), REAS4___h_5, TRUE )
        call SaveBoolean( HT, GetHandleId( tar ), REAS4___h_a, FALSE )
        set dea_t = TRUE
    endif

    if GetWidgetLife( cst ) <= 0.405 and not dea_c then

        //call SetHeroStr( cst, GetHeroStr( cst, FALSE ) - str, TRUE )
        call SetStrStatsSave( cst, GetHeroStr( cst, false ) - str, true )

        call SetUnitScale( cst, 1., 1., 1. )
        call DestroyEffect( e_a )
        call SaveBoolean( HT, GetHandleId( t ), REAS4___h_7, TRUE )
        set dea_c = TRUE
    endif

    if ( dea_t and tim >= REAS4___time_big ) or ( dea_c and dea_t ) then

        if not dea_c then

           // call SetHeroStr( cst, GetHeroStr( cst, FALSE ) - str, TRUE )
            call SetStrStatsSave( cst, GetHeroStr( cst, false ) - str, true )
            call SetUnitScale( cst, 1., 1., 1. )
            call DestroyEffect( e_a )
        endif
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
        set b = TRUE
    endif

    if not b then
        call SaveReal( HT, GetHandleId( t ), REAS4___h_4, tim + 0.1 )
    endif
    set t = null
    set cst = null
    set tar = null
    set e_a = null
endfunction

// ===== REAS4___Act (строки 3416-3473) =====
function REAS4___Act takes nothing returns nothing
    local unit caster
    local unit target
    local real dmg
    local integer str
    local effect ef
    local timer t
    //ульт риппера
    if GetSpellAbilityId( ) == REAS4___a_r then
        set caster = GetTriggerUnit( )
        set target = GetSpellTargetUnit( )
        set dmg = 0.
        set str = R2I( GetHeroStr( target, FALSE ) * REAS4___percent )
        if not LoadBoolean( HT, GetHandleId( target ), REAS4___h_a ) then

            //call SetHeroStr( caster, GetHeroStr( caster, FALSE ) + str, TRUE )
          //call SetHeroStr( target, GetHeroStr( target, FALSE ) - str, TRUE )

            call SetStrStatsSave( caster, GetHeroStr( caster, false ) + str, true )

            call SetStrStatsSave( target, GetHeroStr( target, false ) - str, true )

            call REAS4___TT( caster, str )
            set dmg = GetHeroStr( caster, FALSE ) * REAS4___p_s
            call UnitAddAbility( caster, 'Avul' )
            call UnitDamageTarget( caster, target, dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
            call SetUnitAnimation( caster, "slam" )
            call IssueTargetOrderById( caster, 851983, target )
            call SetUnitScale( caster, 1.5, 1.5, 1.5 )

            set ef = AddSpecialEffectTarget( REAS4___att, caster, "weapon" )
            call DestroyEffect( AddSpecialEffectTarget( REAS4___e1, target, "chest" ) )
            call DestroyEffect( AddSpecialEffectTarget( REAS4___e2, target, "chest" ) )
            call DestroyEffect( AddSpecialEffectTarget( REAS4___e3, target, "chest" ) )
            call DestroyEffect( AddSpecialEffectTarget( REAS4___e4, target, "chest" ) )
            call DestroyEffect( AddSpecialEffectTarget( REAS4___e5, target, "chest" ) )
            call DestroyEffect( AddSpecialEffectTarget( REAS4___e6, target, "origin" ) )
            set t = CreateTimer( )
            call SaveUnitHandle( HT, GetHandleId( t ), REAS4___h_1, caster )
            call SaveUnitHandle( HT, GetHandleId( t ), REAS4___h_2, target )
            call SaveInteger( HT, GetHandleId( t ), REAS4___h_3, str )
            call SaveReal( HT, GetHandleId( t ), REAS4___h_4, 0. )
            call SaveBoolean( HT, GetHandleId( t ), REAS4___h_5, FALSE )
            call SaveEffectHandle( HT, GetHandleId( t ), REAS4___h_6, ef )
            call TimerStart( t, 0.1, TRUE, function REAS4___RemBon )
            call SaveBoolean( HT, GetHandleId( target ), REAS4___h_a, TRUE )
        else
            call PauseUnit( caster, TRUE )
            call IssueImmediateOrderById( caster, 851972 )
            call PauseUnit( caster, FALSE )
        endif
        set caster = null
        set target = null
    endif
    // 05.09: anti-leak (obnulenie lokalov)
    set ef = null
    set t = null
endfunction

// ===== REAS4___I (строки 3474-3480) =====
function REAS4___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function REAS4___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== REAS6_preload (строки 3482-3483) =====
function REAS6_preload takes nothing returns nothing
endfunction

// ===== REAS6___RemSpeed (строки 3485-3500) =====
function REAS6___RemSpeed takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), REAS6___h_att )
    if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false then
        call UnitRemoveAbility( u, REAS6___s_r )
        //call DisplayTextToForce( GetPlayersAll( ), "удалить скорость рипер" )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 0.5, TRUE, function REAS6___RemSpeed )
      //  call DisplayTextToForce( GetPlayersAll( ), "рекрсия удалить скорость рипер" )
    endif
    set t = null
    set u = null
endfunction

// ===== REAS6___Act (строки 3502-3531) =====
function REAS6___Act takes nothing returns nothing
    local unit attacker = GetEventDamageSource( )
    local unit target = GetTriggerUnit()
    local integer chance = GetRandomInt( 1, 100 )
    local timer t
    local real REAS6___chance = 30
    local real dmg = GetEventDamage()
    if GetEventDamageSource() != null and dmg > 1. and IsUnitEnemy(attacker, GetOwningPlayer(target)) then

        if GetUnitAbilityLevel( attacker, REAS6___a_r ) > 0 and GetEventDamage( ) > 0 then
        //шанс дать скорость атаки
            if chance <= REAS6___chance and GetUnitAbilityLevel( attacker, REAS6___s_r ) == 0 then
                call DisableTrigger( GetTriggeringTrigger( ) )
                call UnitAddAbility( attacker, REAS6___s_r )
           // call DisplayTextToForce( GetPlayersAll( ), "дасть скорость атаки рипер" )
                set t = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( t ), REAS6___h_att, attacker )
                call TimerStart( t, REAS6___time, FALSE, function REAS6___RemSpeed )
                set t = null
                call EnableTrigger( GetTriggeringTrigger( ) )
            endif

        endif

    endif
    set t = null
    set attacker = null
    // 05.09: anti-leak (obnulenie lokalov)
    set target = null
endfunction

// ===== REAS6___I (строки 3533-3535) =====
function REAS6___I takes nothing returns nothing
    call TriggerAddAction( REAS6_Trg, function REAS6___Act )
endfunction

// ===== REAS2_preload (строки 6102-6103) =====
function REAS2_preload takes nothing returns nothing
endfunction

// ===== REAS2___TT (строки 6106-6120) =====
function REAS2___TT takes unit u, real hp returns nothing
    local texttag tt = CreateTextTagUnitBJ( "-" + I2S( R2I( hp ) ), u, -0., 9., 0., 0., 0., 0. )
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

// ===== REAS2___RemBonus (строки 6122-6152) =====
function REAS2___RemBonus takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), REAS2___h_2 )
    local integer bon = LoadInteger( HT, GetHandleId( t ), REAS2___h_1 )
    local integer a = 0
    if GetWidgetLife( u ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false and u != null then

        set a = X_GetMainChar( u )
        if a == 1 then
          //  call SetHeroStr( u, GetHeroStr( u, FALSE ) - bon, FALSE )
            call SetStrStatsSave( u, GetHeroStr( u, false ) - bon, true )
        else
            if a == 2 then
                call SetHeroAgi( u, GetHeroAgi( u, FALSE ) - bon, FALSE )
            else
              //  call SetHeroInt( u, GetHeroInt( u, FALSE ) - bon, FALSE )
                call SetIntStatsSave( u, GetHeroInt( u, false ) - bon, true )
            endif
        endif

        call UnitRemoveAbility( u, REAS2___s_r )
        call DecUnitAbilityLevel( u, REAS2___str_r )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    else
        call TimerStart( t, 0.5, TRUE, function REAS2___RemBonus )
    endif
    set t = null
    set u = null
endfunction

// ===== REAS2___Act (строки 6154-6215) =====
function REAS2___Act takes nothing returns nothing
    local unit caster
    local integer strcst
    local integer j
    local timer t
    local unit FoG
    local integer main_char
    //Рипер 2 спелл

    if GetSpellAbilityId( ) == REAS2___a_r then

        set caster = GetTriggerUnit( )
        set strcst = R2I( GetHeroStr( caster, TRUE ) * REAS2___p_str )
        set j = 1
        set main_char = 0
        call Eff_AddThenRemoveEffectOnUnit( REAS2___e, caster, "origin", REAS2___time )
        call IssuePointOrderById( caster, 851983, GetUnitX( caster ), GetUnitY( caster ) )
        call IncUnitAbilityLevel( caster, REAS2___str_r )

        //call SetWidgetLife( caster, GetWidgetLife( caster ) - GetUnitState( caster, UNIT_STATE_MAX_LIFE ) * REAS2___hp_minus )
        //отнимает хп и может умереть от его потери
      //  call REAS2___TT( caster, GetUnitState( caster, UNIT_STATE_MAX_LIFE ) * REAS2___hp_minus )
        loop
            exitwhen( j > 10 )

            set FoG = s__Hero[j]

            if GetWidgetLife( FoG ) > 0.405 and IsUnitType( FoG, UNIT_TYPE_DEAD ) == false and IsPlayerAlly( GetOwningPlayer( caster ), GetOwningPlayer( FoG ) ) then

                set main_char = X_GetMainChar( FoG )
                if main_char == 1 then
                  //  call SetHeroStr( FoG, GetHeroStr( FoG, FALSE ) + strcst, FALSE )
                    call SetStrStatsSave( FoG, GetHeroStr( FoG, false ) + strcst, true )
                else
                    if main_char == 2 then
                        call SetHeroAgi( FoG, GetHeroAgi( FoG, FALSE ) + strcst, FALSE )

                    else
                    //    call SetHeroInt( FoG, GetHeroInt( FoG, FALSE ) + strcst, FALSE )
                        call SetIntStatsSave( FoG, GetHeroInt( FoG, false ) + strcst, true )
                    endif
                endif

                if GetLocalPlayer( ) == GetOwningPlayer( FoG ) then
                    call StartSound( gg_snd_DEA_horn )
                endif

                call UnitAddAbility( FoG, REAS2___s_r )
                set t = CreateTimer( )
                call SaveInteger( HT, GetHandleId( t ), REAS2___h_1, strcst )
                call SaveUnitHandle( HT, GetHandleId( t ), REAS2___h_2, FoG )
                call TimerStart( t, REAS2___time, FALSE, function REAS2___RemBonus )
            endif
            set j = j + 1
        endloop
        set FoG = null
        set caster = null
        set t = null

    endif

endfunction

// ===== REAS2___I (строки 6217-6223) =====
function REAS2___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function REAS2___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== REAS3_preload (строки 6225-6227) =====
function REAS3_preload takes nothing returns nothing
    call X_PreloadAbility( 'A006' )
endfunction

// ===== REAS3___Cond1 (строки 6229-6234) =====
function REAS3___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), REAS3___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== REAS3___CheckMagRes (строки 6236-6268) =====
function REAS3___CheckMagRes takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), REAS3___h_cst )
    local real x = LoadReal( HT, GetHandleId( t ), REAS3___h_x )
    local real y = LoadReal( HT, GetHandleId( t ), REAS3___h_y )
    local real tim = LoadReal( HT, GetHandleId( t ), REAS3___h_tim )
    call SaveReal( HT, GetHandleId( t ), REAS3___h_tim, tim + 0.2 )

    if tim < REAS3___time then
        if IsUnitInRangeXY( cst, x, y, REAS3___aoe ) then
            if GetUnitAbilityLevel( cst, REAS3___s_a ) == 0 then
                call UnitAddAbility( cst, REAS3___s_a )
         //       call DisplayTextToForce( GetPlayersAll(), "дали резист" + GetUnitName(cst) )
            endif
        else
            if GetUnitAbilityLevel( cst, REAS3___s_a ) > 0 then
                call UnitRemoveAbility( cst, REAS3___s_a )
         //   call DisplayTextToForce( GetPlayersAll(), "удалил резист" + GetUnitName(cst) )
            endif
        endif

    else
        if GetUnitAbilityLevel( cst, REAS3___s_a ) > 0 then
            call UnitRemoveAbility( cst, REAS3___s_a )
         //   call DisplayTextToForce( GetPlayersAll(), "удалил резист конец" + GetUnitName(cst) )
        endif
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set cst = null
    set t = null
endfunction

// ===== REAS3___CheckSlow (строки 6270-6308) =====
function REAS3___CheckSlow takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local player p = LoadPlayerHandle( HT, GetHandleId( t ), REAS3___h_player )
    local real x = LoadReal( HT, GetHandleId( t ), REAS3___h_x )
    local real y = LoadReal( HT, GetHandleId( t ), REAS3___h_y )
    local real tim = LoadReal( HT, GetHandleId( t ), REAS3___h_tim )
    local unit FoG = null
    local unit d = null
    call SaveReal( HT, GetHandleId( t ), REAS3___h_tim, tim + 0.2 )

    if tim < REAS3___time then
        set REAS3___ch_p = p
        call GroupEnumUnitsInRange( REAS3___g, x, y, REAS3___aoe, Condition( function REAS3___Cond1 ) )
        loop
            set FoG = FirstOfGroup( REAS3___g )
            exitwhen( FoG == null )
            if GetUnitAbilityLevel(FoG, 'Bslo') == 0 then
                set d = CreateUnit( p, 'hfoo', x, y, 0. )
                call X_ApplyLife( d )
                call UnitAddAbility( d, 'A006' )
                call IssueTargetOrderById( d, 852075, FoG )
            endif
          //  call DisplayTextToForce( GetPlayersAll(), "каст замедла" + GetUnitName(FoG) )
            set d = null
            call GroupRemoveUnit( REAS3___g, FoG )
        endloop

    else
        call GroupClear( REAS3___g ) //чиста группы добавил
      // call DisplayTextToForce( GetPlayersAll(), "стоп замдело таймер"  )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set t = null
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set FoG = null
endfunction

// ===== REAS3___Act (строки 6310-6341) =====
function REAS3___Act takes nothing returns nothing
    local unit caster
    local unit dummy
    local timer t

    if GetSpellAbilityId( ) == REAS3___a_r then
        set caster = GetTriggerUnit( )
        set dummy = CreateUnit( GetOwningPlayer( caster ), REAS3___dummy, GetSpellTargetX( ), GetSpellTargetY( ), 0. )
        set t = CreateTimer( )
        call AttachSoundToUnit( gg_snd_REA_S3, dummy )
        call StartSound( gg_snd_REA_S3 )
        call SaveUnitHandle( HT, GetHandleId( t ), REAS3___h_cst, caster )
        call SaveReal( HT, GetHandleId( t ), REAS3___h_x, GetSpellTargetX( ) )
        call SaveReal( HT, GetHandleId( t ), REAS3___h_y, GetSpellTargetY( ) )
        call TimerStart( t, 0.2, TRUE, function REAS3___CheckMagRes )

        set t = CreateTimer( )
        call SavePlayerHandle( HT, GetHandleId( t ), REAS3___h_player, GetOwningPlayer( caster ) )
        call SaveReal( HT, GetHandleId( t ), REAS3___h_x, GetSpellTargetX( ) )
        call SaveReal( HT, GetHandleId( t ), REAS3___h_y, GetSpellTargetY( ) )
        call TimerStart( t, 0.2, TRUE, function REAS3___CheckSlow )

        call TriggerSleepAction( REAS3___time )
        call RemoveUnit( dummy )
        call StopSound( gg_snd_REA_S3, false, false )
        call TriggerSleepAction( 0.01 )
        call IssueImmediateOrderById( caster, 851972 ) // стоп каст
        set dummy = null
        set caster = null
        set t = null
    endif
endfunction

// ===== REAS3___I (строки 6343-6349) =====
function REAS3___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function REAS3___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== REAS1_preload (строки 9361-9362) =====
function REAS1_preload takes nothing returns nothing
endfunction

// ===== REAS1___Cond1 (строки 9363-9368) =====
function REAS1___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), REAS1___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== REAS1___RemoveAttacked (строки 9370-9379) =====
function REAS1___RemoveAttacked takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "2" ) )
    call SaveBoolean( HT, GetHandleId( u ), StringHash( "ReasWave" ), FALSE )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== REAS1___CreatePartOfWave (строки 9381-9439) =====
function REAS1___CreatePartOfWave takes nothing returns nothing
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
    if dist <= 800.then
        set REAS1___ch_p = p
        call Dest_KillDestInRange( x, y, 170. )

        call GroupEnumUnitsInRange( REAS1___gr, x, y, 170., Condition( function REAS1___Cond1 ) )
        loop
            set target = FirstOfGroup( REAS1___gr )
            exitwhen( target == null )

            if not( LoadBoolean( HT, GetHandleId( target ), StringHash( "ReasWave" ) ) ) then
                call DamageLib_SpellDamage( cst, target, dmg )
                call X_ThrowUp( target, 100., 0.4 )
             //   call Stun_Target( cst, target, 1.3 )
                call StunUnit(target,1.3)
                call DestroyEffect( AddSpecialEffect( "Abilities\\Spells\\Undead\\Impale\\ImpaleMissTarget.mdl", x, y ) )

                call SaveBoolean( HT, GetHandleId( target ), StringHash( "ReasWave" ), TRUE )
                set ti = CreateTimer( )
                call SaveUnitHandle( HT, GetHandleId( ti ), StringHash( "2" ), target )
                call TimerStart( ti, 1., false, function REAS1___RemoveAttacked )
            endif
            call GroupRemoveUnit( REAS1___gr, target )
        endloop
        set x = x + 80. * Cos( angle * bj_DEGTORAD )
        set y = y + 80. * Sin( angle * bj_DEGTORAD )
        set dist = dist + ( 80. )
        call SetUnitX( arrow, x )
        call SetUnitY( arrow, y )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\BloodEX.mdl", x, y ) )
        call SaveReal( HT, GetHandleId( t ), StringHash( "x" ), x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "y" ), y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "dist" ), dist )
    else
        call GroupClear( REAS1___gr ) //добавил чистку группы
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

// ===== REAS1___Act (строки 9440-9483) =====
function REAS1___Act takes nothing returns nothing
    local unit u
    local real caster_x
    local real caster_y
    local real angle
    local real end_x
    local real end_y
    local real dmg
    local timer t
    local unit missile

    if GetSpellAbilityId( ) == 'A04H' then
        set u = GetTriggerUnit( )
        set caster_x = GetUnitX( u )
        set caster_y = GetUnitY( u )
        set angle = bj_RADTODEG * Atan2( GetSpellTargetY( ) - caster_y, GetSpellTargetX( ) - caster_x )
        set end_x = caster_x + 800. * Cos( angle * bj_DEGTORAD )
        set end_y = caster_y + 800. * Sin( angle * bj_DEGTORAD )
        set dmg = GetHeroInt( u, true ) * 0.0 + GetHeroStr( u, true ) * 1.7
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
        call TimerStart( t, 0.04, TRUE, function REAS1___CreatePartOfWave )
        call PauseUnit( u, FALSE )
        call IssueImmediateOrderById( u, 851972 )
        //call IssueImmediateOrderById( u, 851972 )

        set t = null
        set u = null
    endif
    // 05.09: anti-leak (obnulenie lokalov)
    set missile = null
endfunction

// ===== REAS1___I (строки 9484-9490) =====
function REAS1___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function REAS1___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== REAS5_preload (строки 9491-9492) =====
function REAS5_preload takes nothing returns nothing
endfunction

// ===== REAS5___GetUnitZ (строки 9493-9499) =====
function REAS5___GetUnitZ takes unit u returns real
    local location l = GetUnitLoc( u )
    local real z = GetLocationZ( l )
    call RemoveLocation( l )
    set l = null
    return z
endfunction

// ===== REAS5___Cond1 (строки 9500-9505) =====
function REAS5___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = ( IsPlayerAlly( GetOwningPlayer( u ), REAS5___ch_p ) or REAS5___ch_p == GetOwningPlayer( u ) )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0
    set u = null
    return b
endfunction

// ===== REAS5___Act (строки 9507-9543) =====
function REAS5___Act takes nothing returns nothing
    local unit killer = GetKillingUnit( )
    local unit killed = GetTriggerUnit( )
    local unit target
    local real dmg
    local real killer_x
    local real killer_y
    local real killer_z
    local lightning lt
    if IsUnitType( killed, UNIT_TYPE_HERO )and GetUnitAbilityLevel( killer, REAS5___a_r ) > 0 then
        set dmg = GetHeroStr( killer, TRUE ) * REAS5___per_str
        set killer_x = GetUnitX( killer )
        set killer_y = GetUnitY( killer )
        set killer_z = REAS5___GetUnitZ( killer )
        set lt = null
        set REAS5___ch_p = GetOwningPlayer( killer )
        call GroupEnumUnitsInRange( REAS5___g, GetUnitX( killer ), GetUnitY( killer ), REAS5___aoe, Condition( function REAS5___Cond1 ) )
        //set target = FirstOfGroup(REAS5___g)
        loop
            set target = FirstOfGroup( REAS5___g )
            exitwhen( target == null )
            set lt = AddLightningEx( "AFOD", TRUE, killer_x, killer_y, killer_z, GetUnitX( target ), GetUnitY( target ), REAS5___GetUnitZ( target ) )
          //  call X_KillLightning( lt )
            call AddTimeLightning(lt, 0.5)

            set lt = null
            call DamageLib_SpellHeal( killer, target, -dmg )
            call DestroyEffect( AddSpecialEffectTarget( REAS5___e, target, "chest" ) )
            call GroupRemoveUnit( REAS5___g, target )
        endloop
        call GroupClear( REAS5___g ) //add clear
    endif
    set killer = null
    set killed = null
    // 05.09: anti-leak (obnulenie lokalov)
    set target = null
endfunction

// ===== REAS5___I (строки 9545-9551) =====
function REAS5___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( Trg, function REAS5___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction
