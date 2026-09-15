// ===== BuyHeroes_Act (строки 12385-12511) =====
function BuyHeroes_Act takes nothing returns nothing
    local unit Seller = GetSellingUnit( )
    local unit hero
    local real r0
    local real r1
    local boolean loc_free
    local integer loc_i
    local integer i
    if Seller == gg_unit_n002_0006 or Seller == gg_unit_n000_0005 or Seller == gg_unit_n001_0007 then
        set hero = GetSoldUnit( )
        set r0 = 0.
        set r1 = 0.
        set loc_free = FALSE
        set loc_i = 0

        if Choosed_Mode == 1 then
            loop
                exitwhen loc_free
                set loc_i = GetRandomInt( 1, 10 )
                //1 -10
                set loc_free = not( s__BuyHeroesLib__Is_Loc_Occ[loc_i] )
            endloop
            call SetUnitPositionLoc( hero, s__BuyHeroesLib__Create_Loc[loc_i] )
            //10 областей
            set s__BuyHeroesLib__Is_Loc_Occ[loc_i] = TRUE
        else

            if GetConvertedPlayerId( GetOwningPlayer( hero ) ) < 6 then
                set loc_i = GetRandomInt( 1, 5 )
                call SetUnitPositionLoc( hero, s__BuyHeroesLib__Team_1_Loc[loc_i] )
            else
                set loc_i = GetRandomInt( 1, 5 )
                call SetUnitPositionLoc( hero, s__BuyHeroesLib__Team_2_Loc[loc_i] )
            endif

        endif

        call DamageLib_AddToDamageGroup( hero )

        if Choosed_Pick == 1 or Choosed_Pick == 2 then
            call RemoveUnitFromStock( Seller, GetUnitTypeId( hero ) )
            //не удаляет рипппера!
        endif

        if GetLocalPlayer( ) == GetOwningPlayer( hero ) then
            call SetCameraPosition( GetUnitX( hero ), GetUnitY( hero ) )
            call ClearSelection( )
            call SelectUnit( hero, true )
        endif

        call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, "Игрок " + s__Color_Hex[GetConvertedPlayerId( GetOwningPlayer( hero ) )] + GetPlayerName( GetOwningPlayer( hero ) ) + "|r получил героя: " + GetUnitName( hero ) )
        set s__Hero[GetConvertedPlayerId( GetOwningPlayer( hero ) )] = hero
        set s__Level[GetConvertedPlayerId( GetOwningPlayer( hero ) )] = 1
        call SetPlayerTechMaxAllowed( GetOwningPlayer( hero ) , 'HERO', 0 ) // добавил лимит героев игроку

        if Choosed_Mode == 3 then
            call SetHeroLevel( hero, 100, true )
            set s__Level[GetConvertedPlayerId( GetOwningPlayer( hero ) )] = 100
        endif
        if GetConvertedPlayerId( GetOwningPlayer( hero ) ) < 6 then
            set s__Lvl_Team[1] = s__Lvl_Team[1] + 1
        else
            set s__Lvl_Team[2] = s__Lvl_Team[2] + 1
        endif

        set s__ADSLib_ADS_Enabled[GetConvertedPlayerId( GetOwningPlayer( hero ) )] = FALSE //TRUE было

        call GoPreload( GetUnitTypeId( hero ) )

        if GetUnitTypeId( hero ) == 'Hpal' then //Паладин
            set PALS6_m_type[GetConvertedPlayerId( GetOwningPlayer( hero ) )] = 1
            call Energy_AcceptEB( hero )
            if Choosed_Mode == 2 or Choosed_Mode == 3 then
                call UnitRemoveAbility( hero, 'A008' )
                call UnitAddAbility( hero, 'A03Q' )
            endif
        endif
        if GetUnitTypeId( hero ) == 'H000' then // Исщадье тьмы
            call TriggerRegisterUnitEvent( DRASp2Lib_Trg, hero, EVENT_UNIT_DAMAGED )
        endif

        if GetUnitTypeId( hero ) == 'E000' then //Мрак
            set MRAS6_Unit = hero //
            if Choosed_Mode == 2 or Choosed_Mode == 3 then
                call UnitRemoveAbility( hero, 'A01J' )
                call UnitAddAbility( hero, 'A03S' )
            endif
        endif

        if GetUnitTypeId( hero ) == 'Obla' then //Гладиатор
        endif
        if GetUnitTypeId( hero ) == 'Otch' then // Шаман земли
            if Choosed_Mode == 2 or Choosed_Mode == 3 then
                call UnitRemoveAbility( hero, 'A02M' )
                call UnitAddAbility( hero, 'A02I' )
            endif
        endif
        if GetUnitTypeId( hero ) == 'N005' then // Громовержец
            if Choosed_Mode == 2 or Choosed_Mode == 3 then
                call UnitRemoveAbility( hero, 'A02S' )
                call UnitAddAbility( hero, 'A03U' )
            endif
        endif
        if GetUnitTypeId( hero ) == 'N006' then //Убийца
            call SetUnitVertexColor( hero, 100, 200, 100, 255 )
        endif
        if GetUnitTypeId( hero ) == 'Hgam' then //Ткач льда
            call TriggerRegisterUnitEvent( TKLS4_Trg, hero, EVENT_UNIT_DAMAGED )
        endif
        //задать иконки героев 11 героев
        set i = 1
        loop
            exitwhen( i > 11 )
            if GetUnitTypeId( hero ) == s__Hero_Raw[i]then
                set s__Is_Hero_Bought[i] = TRUE
                set s__Hero_Icon_A[GetConvertedPlayerId( GetOwningPlayer( hero ) )] = s__Hero_Ic_A[i]
                set s__Hero_Icon_D[GetConvertedPlayerId( GetOwningPlayer( hero ) )] = s__Hero_Ic_D[i]
            endif
            set i = i + 1
        endloop
        call RemoveUnit( s__Circle[GetConvertedPlayerId( GetOwningPlayer( hero ) )] )

        set hero = null
    endif
    // 05.09: anti-leak (obnulenie lokalov)
    set Seller = null
endfunction

// ===== BuyHeroesLib__L (строки 12513-12534) =====
function BuyHeroesLib__L takes nothing returns nothing
    set s__BuyHeroesLib__Create_Loc[1] = Location( 1971., 1774. )
    set s__BuyHeroesLib__Create_Loc[2] = Location( -389., 1881. )
    set s__BuyHeroesLib__Create_Loc[3] = Location( -1543., 1168. )
    set s__BuyHeroesLib__Create_Loc[4] = Location( -1906., -146. )
    set s__BuyHeroesLib__Create_Loc[5] = Location( -2321., -987. )
    set s__BuyHeroesLib__Create_Loc[6] = Location( 1412., -1385. )
    set s__BuyHeroesLib__Create_Loc[7] = Location( 1084., 223. )
    set s__BuyHeroesLib__Create_Loc[8] = Location( 1084., -313. )
    set s__BuyHeroesLib__Create_Loc[9] = Location( 105., -1162. )
    set s__BuyHeroesLib__Create_Loc[10] = Location( -562., 733. )
    set s__BuyHeroesLib__Team_1_Loc[1] = Location( -1673., 1033. )
    set s__BuyHeroesLib__Team_1_Loc[2] = Location( -443., 1768. )
    set s__BuyHeroesLib__Team_1_Loc[3] = Location( -1552., -753. )
    set s__BuyHeroesLib__Team_1_Loc[4] = Location( -2135., -1679. )
    set s__BuyHeroesLib__Team_1_Loc[5] = Location( -2714., 1412. )
    set s__BuyHeroesLib__Team_2_Loc[1] = Location( 378., -441. )
    set s__BuyHeroesLib__Team_2_Loc[2] = Location( 1956., -155. )
    set s__BuyHeroesLib__Team_2_Loc[3] = Location( 2018., 1803. )
    set s__BuyHeroesLib__Team_2_Loc[4] = Location( 1594., -2029. )
    set s__BuyHeroesLib__Team_2_Loc[5] = Location( 85., -1456. )
endfunction

// ===== BuyHeroesLib__BuyHeroesLib_Init (строки 12536-12547) =====
function BuyHeroesLib__BuyHeroesLib_Init takes nothing returns nothing
    local trigger BuyHeroes_Trg = CreateTrigger( )
    local trigger Load
    call TriggerRegisterPlayerUnitEvent( BuyHeroes_Trg, Player( 15 ), EVENT_PLAYER_UNIT_SELL, null )
    call TriggerAddAction( BuyHeroes_Trg, function BuyHeroes_Act )
    set Load = CreateTrigger( )
    call TriggerRegisterTimerEvent( Load, 0.01, FALSE )
    call TriggerAddAction( Load, function BuyHeroesLib__L )
    // 05.09: anti-leak (obnulenie lokalov)
    set BuyHeroes_Trg = null
    set Load = null
endfunction
