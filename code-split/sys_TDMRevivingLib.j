// ===== TDMRevive_Act (строки 12171-12209) =====
function TDMRevive_Act takes nothing returns nothing
    local integer qxA = 0
    local unit u = GetDyingUnit( )
    local unit killer = GetKillingUnit( )
    local integer loc_i = 0
    set qxA = GetConvertedPlayerId( GetOwningPlayer( u ) )

    if IsUnitType( u, UNIT_TYPE_HERO )and ( u != killer ) and not TDMKillsLib_Game_Ended and not( GetPlayerSlotState( GetOwningPlayer( u ) ) == PLAYER_SLOT_STATE_LEFT ) then
        set s__Deaths[qxA] = s__Deaths[qxA] + 1
        if qxA < 6 then
            set s__Deaths_Team[1] = s__Deaths_Team[1] + 1
        else
            set s__Deaths_Team[2] = s__Deaths_Team[2] + 1
        endif
        call TriggerSleepAction( 3. ) //2 воскрешение героя
        set loc_i = GetRandomInt( 1, 5 )
        if qxA < 6 then
            call ReviveHeroLoc( u, s__TDMRevivingLib__Team_1_Loc[loc_i], FALSE )
        else
            call ReviveHeroLoc( u, s__TDMRevivingLib__Team_2_Loc[loc_i], FALSE )
        endif

        call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", u, "origin" ) )
        call AlphaLib_AddAlphing( u )
        call SetUnitInvulTimer(u,2.)
        call SetUnitFlyHeight( u, 0., 0. )
        call IssueImmediateOrder( u, "stop" )

        if GetLocalPlayer( ) == GetOwningPlayer( u ) then
            call ClearSelection( )
            call SelectUnit( u, TRUE )
            call SetCameraPosition( GetUnitX( u ), GetUnitY( u ) )
        endif

    endif
    set u = null
    // 05.09: anti-leak (obnulenie lokalov)
    set killer = null
endfunction
