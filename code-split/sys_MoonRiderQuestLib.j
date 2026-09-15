// ===== MoonRiderQuestLib__Death_Act (строки 2981-2983) =====
function MoonRiderQuestLib__Death_Act takes nothing returns nothing
    set MoonRiderQuestLib__Unit_Marked = FALSE
endfunction

// ===== MoonRiderQuestLib__Deer_Death_Act (строки 2985-2989) =====
function MoonRiderQuestLib__Deer_Death_Act takes nothing returns nothing
    set MoonRiderQuestLib__Quest_Finished_P1 = TRUE
    call CreateItem( 'I01G', GetUnitX( MoonRiderQuestLib__Deer ), GetUnitY( MoonRiderQuestLib__Deer ) )
    set MoonRiderQuestLib__Quest_Started_P2 = TRUE
endfunction

// ===== MoonRiderQuestLib__MR_Act (строки 2991-3010) =====
function MoonRiderQuestLib__MR_Act takes nothing returns nothing
    local real time = GetFloatGameState( GAME_STATE_TIME_OF_DAY )
    local unit entering_hero = GetEnteringUnit( )
    if time >= MoonRiderQuestLib__Start_Time and time <= MoonRiderQuestLib__End_Time and MoonRiderQuestLib__Quest_Started_P2 and not MoonRiderQuestLib__Quest_Finished_P2 then

        if IsUnitType( entering_hero, UNIT_TYPE_HERO )and UnitHasItemOfTypeBJ( entering_hero, 'I01G' ) then
            call RemoveItem( GetItemOfTypeFromUnitBJ(entering_hero, 'I01G' ) )

            set MoonRiderQuestLib__MoonRider = CreateUnit( Player( PLAYER_NEUTRAL_AGGRESSIVE ), 'e001', MoonRiderQuestLib__MR_X, MoonRiderQuestLib__MR_Y, 270. )
            //Олень
            call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Items\\AItb\\AItbTarget.mdl", MoonRiderQuestLib__MoonRider, "origin" ) )

            call UnitAddItemById( MoonRiderQuestLib__MoonRider, 'desc' )
            call IssueTargetOrderById( MoonRiderQuestLib__MoonRider, 851983, entering_hero )
            call StartSound( gg_snd_MR_Say )
            set MoonRiderQuestLib__Quest_Finished_P2 = TRUE
        endif
    endif
    set entering_hero = null
endfunction

// ===== MoonRiderQuestLib__Act (строки 3012-3031) =====
function MoonRiderQuestLib__Act takes nothing returns nothing
    local real time = GetFloatGameState( GAME_STATE_TIME_OF_DAY )
    local unit u = GetEnteringUnit( )
    if time >= MoonRiderQuestLib__Start_Time and time <= MoonRiderQuestLib__End_Time and not MoonRiderQuestLib__Unit_Marked and not MoonRiderQuestLib__Quest_Finished_P1 then

        if IsUnitType( u, UNIT_TYPE_HERO ) then
            call Eff_AddThenRemoveEffectOnUnit( "Abilities\\Spells\\NightElf\\TargetArtLumber\\TargetArtLumber.mdl", u, "origin", 5. )
            call UnitAddAbility( u, 'A00E' )
            call TriggerRegisterUnitEvent( MoonRiderQuestLib__Death_Trg, u, EVENT_UNIT_DEATH )
            //Ебаный ОЛЕНЬ
           // call DisplayTextToForce( GetPlayersAll(), "олень создался" )
            set MoonRiderQuestLib__Deer = CreateUnit( Player( PLAYER_NEUTRAL_PASSIVE ), 'n003', MoonRiderQuestLib__Deer_X, MoonRiderQuestLib__Deer_Y, 0. )
            call AlphaLib_AddAlphing( MoonRiderQuestLib__Deer )
            call TriggerRegisterUnitEvent( MoonRiderQuestLib__Deer_Death_Trg, MoonRiderQuestLib__Deer, EVENT_UNIT_DEATH )
            set MoonRiderQuestLib__Unit_Marked = TRUE
        endif

    endif
    set u = null
endfunction

// ===== MoonRiderQuestLib__Init (строки 3033-3053) =====
function MoonRiderQuestLib__Init takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    local integer i = 0
    call TriggerRegisterEnterRectSimple( Trg, gg_rct_OBEL )
    call TriggerAddAction( Trg, function MoonRiderQuestLib__Act )
    loop
        exitwhen( i > ( 10  ) )
        call SetPlayerAbilityAvailable( Player( i ), 'A00E', FALSE )
        set i = i + 1
    endloop

    set MoonRiderQuestLib__Death_Trg = CreateTrigger( )
    call TriggerAddAction( MoonRiderQuestLib__Death_Trg, function MoonRiderQuestLib__Death_Act )
    set MoonRiderQuestLib__Deer_Death_Trg = CreateTrigger( )
    call TriggerAddAction( MoonRiderQuestLib__Deer_Death_Trg, function MoonRiderQuestLib__Deer_Death_Act )
    set MoonRiderQuestLib__MR_Trg = CreateTrigger( )
    call TriggerRegisterEnterRectSimple( MoonRiderQuestLib__MR_Trg, gg_rct_MR )
    call TriggerAddAction( MoonRiderQuestLib__MR_Trg, function MoonRiderQuestLib__MR_Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction
