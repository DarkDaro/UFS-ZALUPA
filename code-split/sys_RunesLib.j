// ===== Trig_DeleteRune_Conditions (строки 1007-1009) =====
function Trig_DeleteRune_Conditions takes nothing returns boolean
    return GetItemType(GetManipulatedItem()) == ITEM_TYPE_POWERUP
endfunction

// ===== Trig_DeleteRune_Actions (строки 1011-1029) =====
function Trig_DeleteRune_Actions takes nothing returns nothing
    local item it = GetManipulatedItem( )
    local unit u = GetManipulatingUnit( )
    local integer r_r = GetItemTypeId( it )
   // call DisplayTextToForce( GetPlayersAll( ), GetItemName(it) +"-id_"+ I2S(r_r) )

      //вейт тут нужен НЕДОДЕЛАЛ НЕТ РАЗДЕЛЕНИЯ НА РУНЫ
    if (r_r == 'tdex') or (r_r == 'tint') or (r_r == 'tstr') or (r_r == 'tkno') then
        //удалить руну
        call TriggerSleepAction(1.)
        call SetWidgetLife(it, 1.)
      //  call DisplayTextToForce( GetPlayersAll( ), GetItemName(it) + " _предмет удален_" )

        call RemoveItem(it)
    endif
    set it = null
    // 05.09: anti-leak (obnulenie lokalov)
    set u = null
endfunction

// ===== RunesLib__Act_2 (строки 3537-3586) =====
function RunesLib__Act_2 takes nothing returns nothing
    local item it = GetManipulatedItem( )
    local integer it_id = GetItemTypeId( it )
    local integer i = 1
    local unit u = GetManipulatingUnit( )
    local player p = GetLocalPlayer( )
    local unit dummy
    local integer a = 1
    local item t_it

    loop
        exitwhen( i > Max_Runes )
        if it_id == s__RunesLib__Rune_Id[i] then
            set RunesLib__Rune_Exists = FALSE

            if IsPlayerAlly( GetOwningPlayer( u ), p ) then
                call DisplayTextToPlayer( p, 0., 0., s__Color_Hex[GetConvertedPlayerId( GetOwningPlayer( u ) )] + GetUnitName( u ) + "|r " + Text_1 + GetItemName( it ) )
            endif
            if (it_id == 'rman') then
                //heyf ldjqyjuj ehjyf rfcnetn d uthjz edtxmt
                set dummy = CreateUnit( GetOwningPlayer( u ), 'hfoo', GetItemX( it ), GetItemY( it ), 0. )
                call UnitAddAbility( dummy, 'A009' )
                call IssueTargetOrderById( dummy, 852189, u )
                call TriggerSleepAction( 0.1 )
                call RemoveUnit( dummy )
                set dummy = null

            endif

            if (it_id == 'rreb' ) then
                //bludlast
                set dummy = CreateUnit( GetOwningPlayer( u ), 'hfoo', GetItemX( it ), GetItemY( it ), 0. )
                call UnitAddAbility( dummy, 'A00A' )
                call IssueTargetOrderById( dummy, 852101, u )
                call TriggerSleepAction( 0.1 )
                call RemoveUnit( dummy )
                set dummy = null
            endif

        endif
        set i = i + 1
    endloop

    set t_it = null
    set dummy = null
    set it = null
    set u = null
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
endfunction

// ===== RunesLib__Act (строки 3588-3597) =====
function RunesLib__Act takes nothing returns nothing
    local integer loc_i = 0
    if StartGameLib_Is_Game_Started and RunesLib_RunesOn then
        if not RunesLib__Rune_Exists then
            set loc_i = GetRandomInt( 1, Max_Locs )
            call CreateItem( s__RunesLib__Rune_Id[GetRandomInt( 1, Max_Runes )], s__RunesLib__x[loc_i], s__RunesLib__y[loc_i] )
            set RunesLib__Rune_Exists = TRUE
        endif
    endif
endfunction

// ===== RunesLib__RunesLib_Init (строки 3598-3619) =====
function RunesLib__RunesLib_Init takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    local trigger Trg_2
    call TriggerRegisterTimerEvent( Trg, Spawn_Period, true )
    call TriggerAddAction( Trg, function RunesLib__Act )
    set Trg_2 = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg_2, EVENT_PLAYER_UNIT_PICKUP_ITEM )
    call TriggerAddAction( Trg_2, function RunesLib__Act_2 )
    set RunesLib__Pick_Up_Trg = Trg_2
    set s__RunesLib__x[1] = 379.
    set s__RunesLib__y[1] = -444.
    set s__RunesLib__x[2] = -1666.
    set s__RunesLib__y[2] = 1025.
    set s__RunesLib__Rune_Id[1] = 'rspd'
    set s__RunesLib__Rune_Id[2] = 'rman'
    set s__RunesLib__Rune_Id[3] = 'rreb'
    set s__RunesLib__Rune_Id[4] = 'rdis'
    set s__RunesLib__Rune_Id[5] = 'rwat'
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
    set Trg_2 = null
endfunction
