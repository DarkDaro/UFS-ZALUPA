// ===== XPLib__XPTextTag (строки 12245-12258) =====
function XPLib__XPTextTag takes unit u, integer XP returns nothing
    local texttag tt = CreateTextTagUnitBJ( "+" + I2S( XP ) + " XP", u, -3., 7., 0., 0., 0., 0. )
    if GetLocalPlayer( ) == GetOwningPlayer( u ) then
        call SetTextTagVisibility( tt, TRUE )
    else
        call SetTextTagVisibility( tt, FALSE )
    endif
    call SetTextTagColor( tt, s__Color_Dec_1[6], s__Color_Dec_2[6], s__Color_Dec_3[6], 255 )
    call SetTextTagVelocity( tt, -0.03, -0.03 )
    call SetTextTagFadepoint( tt, 0.8 / 2 )
    call SetTextTagLifespan( tt, 0.8 )
    call SetTextTagPermanent( tt, false )
    set tt = null
endfunction

// ===== XPLib__Is_Owner_Enemy (строки 12260-12265) =====
function XPLib__Is_Owner_Enemy takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = ( IsPlayerEnemy( XPLib__XP_Player, GetOwningPlayer( u ) )and IsUnitType( u, UNIT_TYPE_HERO )and u != XPLib__Non_XP_Unit )
    set u = null
    return b
endfunction

// ===== XPLib__Is_Owner_Ally (строки 12267-12272) =====
function XPLib__Is_Owner_Ally takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = ( IsPlayerAlly( XPLib__XP_Player, GetOwningPlayer( u ) )and IsUnitType( u, UNIT_TYPE_HERO )and u != XPLib__Non_XP_Unit )
    set u = null
    return b
endfunction

// ===== XPLib__XP_Act (строки 12274-12317) =====
function XPLib__XP_Act takes nothing returns nothing
    local unit u = GetDyingUnit( )
    local unit killer = GetKillingUnit( )
    local integer lvl = GetUnitLevel( u )
    local integer xp = lvl * 80
    local unit FoG
    //система опыта
    if IsPlayerEnemy( GetOwningPlayer( u ), GetOwningPlayer( killer ) ) then
        call AddHeroXP( killer, xp, false )
        call XPLib__XPTextTag( killer, xp )
        set XPLib__XP_Player = GetOwningPlayer( u )
        set XPLib__Non_XP_Unit = killer
        call GroupEnumUnitsInRange( XPLib__XP_Group, GetUnitX( u ), GetUnitY( u ), 800., Condition( function XPLib__Is_Owner_Enemy ) )
      //  set FoG = FirstOfGroup(XPLib__XP_Group)
        loop
            set FoG = FirstOfGroup( XPLib__XP_Group )
            exitwhen( FoG == null )
            if GetUnitAbilityLevel( u, TKLS7_buff_id ) > 0 then
                call AddHeroXP( FoG, R2I( xp / 4 * TKLS7_modifer ), false )
                call XPLib__XPTextTag( FoG, R2I( xp / 4 * TKLS7_modifer ) )
            else
                call AddHeroXP( FoG, xp / 4, false )
                call XPLib__XPTextTag( FoG, xp / 4 )
            endif
            call GroupRemoveUnit( XPLib__XP_Group, FoG )
        endloop

        call GroupClear( XPLib__XP_Group )
        call GroupEnumUnitsInRange( XPLib__XP_Group, GetUnitX( u ), GetUnitY( u ), 800., Condition( function XPLib__Is_Owner_Ally ) )
      //  set FoG = FirstOfGroup(XPLib__XP_Group)
        loop
            set FoG = FirstOfGroup( XPLib__XP_Group )
            exitwhen( FoG == null )
            call AddHeroXP( FoG, xp / 8, false )
            call XPLib__XPTextTag( FoG, xp / 8 )
            call GroupRemoveUnit( XPLib__XP_Group, FoG )
        endloop
        call GroupClear( XPLib__XP_Group )
    endif

    set u = null
    set killer = null
    set FoG = null
endfunction

// ===== XPLib__Lvl_Act (строки 12319-12334) =====
function XPLib__Lvl_Act takes nothing returns nothing
    local integer qxA = 0
    local unit h = GetLevelingUnit( )
    call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Other\\Levelup\\LevelupCaster.mdl", h, "origin" ) )
    set qxA = GetConvertedPlayerId( GetOwningPlayer( h ) )
    set s__Level[qxA] = s__Level[qxA] + 1
    if qxA < 6 then
        set s__Lvl_Team[1] = s__Lvl_Team[1] + 1
    else
        set s__Lvl_Team[2] = s__Lvl_Team[2] + 1
    endif
    call SetUnitState( h, UNIT_STATE_LIFE, GetUnitState( h, UNIT_STATE_LIFE ) + GetUnitState( h, UNIT_STATE_MAX_LIFE ) * 0.10 )
    //при повышении уровня востанавливается 25 процент здоровья дисбаланс
    //поменял востановление здоровья с 25% на 10%
    set h = null
endfunction

// ===== XPLib__XPLib_Init (строки 12336-12347) =====
function XPLib__XPLib_Init takes nothing returns nothing
    local trigger XP_Trg = CreateTrigger( )
    local trigger Lvl_Trg
    call TriggerRegisterAnyUnitEventBJ( XP_Trg, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( XP_Trg, function XPLib__XP_Act )
    set Lvl_Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Lvl_Trg, EVENT_PLAYER_HERO_LEVEL )
    call TriggerAddAction( Lvl_Trg, function XPLib__Lvl_Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set XP_Trg = null
    set Lvl_Trg = null
endfunction
