// ===== DamageLib__ExplodeAct (строки 4671-4678) =====
function DamageLib__ExplodeAct takes nothing returns nothing
    local unit u = GetDyingUnit( )
    if LoadBoolean( HT, GetHandleId( u ), StringHash( "H_explodeB" ) ) and u != null then
   //     call DisplayTextToForce( GetPlayersAll( ), GetUnitName( u ) + "_explode ddd" )
        call DestroyEffect( AddSpecialEffect( "war3mapImported\\BloodEX.mdl", GetUnitX( u ), GetUnitY( u ) ) )
    endif
    set u = null
endfunction

// ===== DamageLib__NoExplode (строки 4680-4695) =====
function DamageLib__NoExplode takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_explodeUnit" ) )
    if u != null then
        call SetUnitExploded( u, FALSE )
        call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_explodeB" ), FALSE )
      //  call DisplayTextToForce( GetPlayersAll( ), GetUnitName( u ) + "_explode_false" )
    else
        //call DisplayTextToForce( GetPlayersAll( ), GetUnitName( u ) + "_explode_Null" )
    endif
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== DamageLib_Explode (строки 4698-4726) =====
function DamageLib_Explode takes unit u returns nothing
    local integer j
    local boolean b
    local timer t

    if not LoadBoolean( HT, GetHandleId( u ), StringHash( "H_explodeB" ) ) then
        set j = 1
        set b = FALSE
        loop
            exitwhen( j > DamageLib__Cond_Type_Num )
            if GetUnitTypeId( u ) == DamageLib__Cond_Type[j] then
                set b = TRUE
            endif
            set j = j + 1
        endloop

        if not b then
            set t = CreateTimer( )
            call SetUnitExploded( u, TRUE )
            call TriggerRegisterUnitEvent( DamageLib__ExplodeTrg, u, EVENT_UNIT_DEATH )
            call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_explodeB" ), TRUE )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_explodeUnit" ), u )
            call TimerStart( t, 1.0, FALSE, function DamageLib__NoExplode )
           // call TimerStart( t, 0.5, FALSE, function DamageLib__NoExplode ) закоментил

            set t = null
        endif
    endif
endfunction

// ===== DamageLib_AddToDamageGroup (строки 4728-4750) =====
function DamageLib_AddToDamageGroup takes unit u returns nothing
    if IsUnitInGroup(u, DamageLib__All_Units_Group) == false then
        //добавил проверку что юнит в группе
        //вызывается функция при пике героя с таверы
        call GroupAddUnit( DamageLib__All_Units_Group, u )
        call TriggerRegisterUnitEvent( DamageLib__Damage_Trg_Var, u, EVENT_UNIT_DAMAGED ) //плавающий тексты
        call TriggerRegisterUnitEvent( DPSLib_DPS_Trg, u, EVENT_UNIT_DAMAGED ) //дпс либа
        // оставля. в дпс либе

        call TriggerRegisterUnitEvent( PALS7_Trg, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( PALS6_Trg_Attack, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( GLAS4_Trg, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( GLAS5_Trg, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( GLAS6_Trg_A, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( GLAS7_Trg, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( SHAS3A_Trg, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( SHAS4_Trg_A, u, EVENT_UNIT_DAMAGED )
       // call TriggerRegisterUnitEvent( GROS4_Trg_A, u, EVENT_UNIT_DAMAGED ) //фаталит
        call TriggerRegisterUnitEvent( ASSS6_Trg, u, EVENT_UNIT_DAMAGED )
        call TriggerRegisterUnitEvent( REAS6_Trg, u, EVENT_UNIT_DAMAGED )
    endif
    set u = null
endfunction

// ===== DamageLib_DamageTextTag2 (строки 4802-4804) =====
function DamageLib_DamageTextTag2 takes unit u, real dmg, integer dmgOwnPlayerId, boolean crit returns nothing
    call Damage_CreateTextTagNew(u, dmg, dmgOwnPlayerId, crit, false)
endfunction

// ===== DamageLib_HealTextTag2 (строки 4806-4808) =====
function DamageLib_HealTextTag2 takes unit u, real heal, integer dmgOwnPlayerId, boolean crit returns nothing
    call Damage_CreateTextTagNew(u, heal, dmgOwnPlayerId, crit, true)
endfunction

// ===== DamageLib__UsualDamageTextTagOPT (строки 4810-4853) =====
function DamageLib__UsualDamageTextTagOPT takes unit u, real dmg, integer dmgOwnPlayerId returns nothing
    local texttag tt
    local integer i = 1
    local integer handleId = GetHandleId(u)

    // Проверка на пустой урон
    if dmg < 1. then
        return
    endif

    // Создание тексттега с уроном
    set tt = CreateTextTagUnitBJ(I2S(R2I(dmg)), u, DamageLib__Usual_Damage_Height, DamageLib__Normal_Size, 255, 255, 255, 0)

    // Проверка на щит
    if LoadBoolean(HT, handleId, StringHash("PalShield")) then
        call SetTextTagText(tt, "", DamageLib__Normal_Size * 2)
    endif

    // Определяем видимость для игроков
    loop
        exitwhen i > 10
        if s__ComLib_Show_Dmg[i] then
            if Player(i - 1) == GetOwningPlayer(u) or Player(i - 1) == Player(dmgOwnPlayerId - 1) then
                if GetLocalPlayer() == Player(i - 1) then
                    call SetTextTagVisibility(tt, true)
                endif
            else
                if GetLocalPlayer() == Player(i - 1) then
                    call SetTextTagVisibility(tt, false)
                endif
            endif
        endif
        set i = i + 1
    endloop

    // Настройки анимации тексттега
    call SetTextTagVelocity(tt, 0.03, 0.03)
    call SetTextTagFadepoint(tt, 0.3)
    call SetTextTagLifespan(tt, 0.6)
    call SetTextTagPermanent(tt, false)

    // Освобождаем тексттег
    set tt = null
endfunction

// ===== DamageLib__DamagePerSecondNulling (строки 4855-4856) =====
function DamageLib__DamagePerSecondNulling takes nothing returns nothing
endfunction

// ===== DamageLib__UsualDamageTextTag (строки 4859-4887) =====
function DamageLib__UsualDamageTextTag takes unit u, real dmg, integer dmgOwnPlayerId returns nothing
    local texttag tt = CreateTextTagUnitBJ( I2S( R2I( dmg ) ), u, DamageLib__Usual_Damage_Height, DamageLib__Normal_Size, 0., 0., 0., 0. )
    local integer i = 1
    if LoadBoolean( HT, GetHandleId( u ), StringHash( "PalShield" ) ) then
        call SetTextTagText( tt, "", DamageLib__Normal_Size * 2 )
    endif
    if dmg < 1.then
        call SetTextTagText( tt, "", DamageLib__Normal_Size * 2 )
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
    call SetTextTagColor( tt, 255, 255, 255, 255 )
    call SetTextTagFadepoint( tt, 0.6 / 2 )
    call SetTextTagLifespan( tt, 0.6 )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

// ===== DamageLib_DamageTextTag (строки 4890-4931) =====
function DamageLib_DamageTextTag takes unit u, real dmg, integer dmgOwnPlayerId, boolean crit returns nothing
    local real size = 0.
    local real time = 0.6
    local texttag tt
    local integer i = 1
    if not crit then
        set size = DamageLib__Normal_Size
    else
        set size = DamageLib__Crit_Size
        set time = time * 2
    endif

    set tt = CreateTextTagUnitBJ( I2S( R2I( dmg ) ), u, DamageLib__Spell_Damage_Height, size, 0., 0., 0., 0. )
    if dmg < 1.then
        call SetTextTagText( tt, "", size * 2 )
    endif

    if LoadBoolean( HT, GetHandleId( u ), StringHash( "PalShield" ) ) then
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

// ===== DamageLib_HealTextTag (строки 4934-4967) =====
function DamageLib_HealTextTag takes unit u, real heal, integer dmgOwnPlayerId, boolean crit returns nothing
    local real size = 0.
    local real time = 0.6
    local texttag tt
    local integer i = 1
    if not crit then
        set size = DamageLib__Normal_Size
    else
        set size = DamageLib__Crit_Size
        set time = time * 2
    endif

    set tt = CreateTextTagUnitBJ( "+" + I2S( R2I( -heal ) ), u, DamageLib__Spell_Heal_Height, size, 0., 0., 0., 0. )

    loop
        exitwhen( i > 10 )
        if s__ComLib_Show_Dmg[i]and( Player( i - 1 ) == GetOwningPlayer( u )or Player( i - 1 ) == Player( dmgOwnPlayerId - 1 ) )and heal != 0.then
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
    call SetTextTagColor( tt, 0, 255, 0, 255 )
    call SetTextTagFadepoint( tt, time / 2 )
    call SetTextTagLifespan( tt, time )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

// ===== DamageLib_SpellDamage (строки 4969-4984) =====
function DamageLib_SpellDamage takes unit cst, unit target, real dmg returns nothing
    local real r_dmg = 0.
    local boolean crit = FALSE
    local real life = 0.
    set crit = Crit_IsCrit( cst )
    set r_dmg = Crit_GetDamage( dmg, crit ) - GetHeroInt( target, TRUE ) * 0.1 //тут резист 0.5 ед?поменял на 0.1

    // set r_dmg = Crit_GetDamage( dmg, crit ) - GetHeroInt( target, TRUE ) * 0.5
    //call DisplayTextToForce( GetPlayersAll( ), GetUnitName(cst)+ "_spell crit_ " + R2S(Crit_GetDamage( dmg, crit ) ) )
    set life = GetUnitState( target, UNIT_STATE_LIFE )
    call DisableTrigger( DamageLib__Damage_Trg_Var )
    //система спелл урона
    call UnitDamageTarget( cst, target, r_dmg, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_DIVINE, WEAPON_TYPE_WHOKNOWS )
    call EnableTrigger( DamageLib__Damage_Trg_Var )
    call DamageLib_DamageTextTag2( target, life - GetUnitState( target, UNIT_STATE_LIFE ), GetConvertedPlayerId( GetOwningPlayer( cst ) ), crit )
endfunction

// ===== DamageLib_SpellHeal (строки 4986-5000) =====
function DamageLib_SpellHeal takes unit cst, unit target, real heal returns nothing
    local real r_heal = 0.
    local boolean crit = FALSE
    local real life = 0.
    set crit = Crit_IsCrit( cst )
    set r_heal = Crit_GetDamage( heal, crit )
    set life = GetUnitState( target, UNIT_STATE_LIFE )
    //call DisplayTextToForce( GetPlayersAll( ), GetUnitName(target)+ "_spell heal - " + R2S(r_heal) )
    //Не понял тут что кого хилит или дамажит отниманием хп
    if GetWidgetLife( target ) > 0.405 and IsUnitType( target, UNIT_TYPE_DEAD ) == false then //добавил проверки чтоб не хилить мертвого
        call SetWidgetLife( target, GetWidgetLife( target ) - r_heal )
        call DamageLib_HealTextTag2( target, life - GetUnitState( target, UNIT_STATE_LIFE ), GetConvertedPlayerId( GetOwningPlayer( cst ) ), crit )
    endif

endfunction

// ===== DamageLib__Damage_Act (строки 5002-5014) =====
function DamageLib__Damage_Act takes nothing returns nothing
    local unit u = GetTriggerUnit( )
    local unit a = GetEventDamageSource( )
    local real d = GetEventDamage( )
    if d > 0 then
        call DisableTrigger( GetTriggeringTrigger( ) )
        call DamageLib__UsualDamageTextTagOPT( u, d, GetConvertedPlayerId( GetOwningPlayer( a ) ) )

        call EnableTrigger( GetTriggeringTrigger( ) )
    endif
    set a = null
    set u = null
endfunction

// ===== DamageLib__DamageLib_Init (строки 5016-5039) =====
function DamageLib__DamageLib_Init takes nothing returns nothing
    local trigger Damage_Trg = CreateTrigger( )
    local trigger DamagePerSecondNulling_Trg
    call TriggerAddAction( Damage_Trg, function DamageLib__Damage_Act )
    set DamageLib__Damage_Trg_Var = Damage_Trg
    set DamagePerSecondNulling_Trg = CreateTrigger( )
    call TriggerRegisterTimerEvent( DamagePerSecondNulling_Trg, 1., true )
    call TriggerAddAction( DamagePerSecondNulling_Trg, function DamageLib__DamagePerSecondNulling )
    call TriggerAddAction( DamageLib__ExplodeTrg, function DamageLib__ExplodeAct )

    set DamageLib__Cond_Type_Num = 8
    set DamageLib__Cond_Type[1] = 'u000'
    set DamageLib__Cond_Type[2] = 'Nfir'
    set DamageLib__Cond_Type[3] = 'H000'
    set DamageLib__Cond_Type[4] = 'E000'
    set DamageLib__Cond_Type[5] = 'ntrv'
    set DamageLib__Cond_Type[6] = 'nsrv'
    set DamageLib__Cond_Type[7] = 'ndrv'
    set DamageLib__Cond_Type[8] = 'nlrv'

    // 05.09: anti-leak (obnulenie lokalov)
    set Damage_Trg = null
    set DamagePerSecondNulling_Trg = null
endfunction
