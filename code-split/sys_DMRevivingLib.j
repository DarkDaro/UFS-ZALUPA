// ===== DMRevive_Act (строки 11340-11373) =====
function DMRevive_Act takes nothing returns nothing
    local integer qxA
    local unit u = GetDyingUnit( )
    local unit killer = GetKillingUnit( )
    local integer loc_i = 0
    if IsUnitType( u, UNIT_TYPE_HERO )and ( u != killer ) and not DMKillsLib_Game_Ended and not( GetPlayerSlotState( GetOwningPlayer( u ) ) == PLAYER_SLOT_STATE_LEFT ) then
        set qxA = GetConvertedPlayerId( GetOwningPlayer( u ) )
        set s__Deaths[qxA] = s__Deaths[qxA] + 1
        call TriggerSleepAction( 3. ) //респ героев другой мод
        set loc_i = GetRandomInt( 1, 10 )
        loop
            exitwhen not s__DMRevivingLib__Is_Loc_Occupied[loc_i]
            set loc_i = GetRandomInt( 1, 10 )
        endloop
        set s__DMRevivingLib__Is_Loc_Occupied[loc_i] = TRUE
        call ReviveHeroLoc( u, s__DMRevivingLib__Revive_Loc[loc_i], FALSE )
        call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", u, "origin" ) )
        call AlphaLib_AddAlphing( u )
        call SetUnitInvulTimer(u,2.)
        call SetUnitFlyHeight( u, 0., 0. )
        call IssueImmediateOrder( u, "stop" )

        if GetLocalPlayer( ) == GetOwningPlayer( u ) then
            call ClearSelection( )
            call SelectUnit( u, TRUE )
            call SetCameraPosition( GetLocationX( s__DMRevivingLib__Revive_Loc[loc_i] ), GetLocationY( s__DMRevivingLib__Revive_Loc[loc_i] ) )
        endif
        call TriggerSleepAction( 3. )
        set s__DMRevivingLib__Is_Loc_Occupied[loc_i] = FALSE
    endif
    set u = null
    // 05.09: anti-leak (obnulenie lokalov)
    set killer = null
endfunction
