// ===== ISS__replace (строки 5853-5870) =====
function ISS__replace takes nothing returns nothing
    local item it = GetEnumItem( )
    local integer id = GetItemTypeId( it )
    local integer pl_id
    local real x
    local real y
    local integer k = s__items_getitemindex( itemlist, id )
    if ( k != -1 ) then
        set x = GetItemX( it )
        set y = GetItemY( it )
        set pl_id = GetItemUserData( it )
        call RemoveItem( it )
        set it = CreateItem( s__items_getdummy( itemlist, k ), x, y )
       // call DisplayTextToForce( GetPlayersAll( ), GetItemName(it)+ "-замена предмета")
       // call SetItemUserData( it, pl_id )
    endif
    set it = null
endfunction

// ===== ISS__replacestart (строки 5872-5875) =====
function ISS__replacestart takes nothing returns nothing
    call EnumItemsInRect( bj_mapInitialPlayableArea, null, function ISS__replace )
    call DestroyTimer( GetExpiredTimer( ) )
endfunction

// ===== ISS__Trig_GetItem_Actions (строки 5877-5920) =====
function ISS__Trig_GetItem_Actions takes nothing returns nothing
    local real x
    local real y
    local item it = GetManipulatedItem( )
    local integer id = GetItemTypeId( it )
    local integer k = s__items_getdummyindex( itemlist, id )
    local unit u = GetTriggerUnit( )
    if ( k != -1 ) then
        if ( not s__items_getbuy( itemlist, k ) )and( GetItemUserData( it ) == null ) then
            call RemoveItem( it )
            call SimError( GetOwningPlayer( u ), "Вы не можете купить эту вещь." )
        else
            set x = GetItemX( it )
            set y = GetItemY( it )
            call RemoveItem( it )
            set it = CreateItem( s__items_getitem( itemlist, k ), x, y )
            if ( not s__recepts_try( receptlist, it, u ) ) then
                if ( UnitInventoryCount( u ) == 6 ) then
                    call SetItemPosition( it, x, y )
                   // call SetItemUserData( it, GetPlayerId( GetOwningPlayer( u ) ) + 1 )
                    call TimerStart( CreateTimer( ), 0.0, false, function ISS__replacestart )
                else
                    call UnitAddItem( u, it )
                endif
            endif
        endif
    else
        if OWNERS then //Нельзя подобрать секртный итем телепорта
            if GetItemUserData( it ) == null then
              //  call SetItemUserData( GetManipulatedItem( ), GetPlayerId( GetOwningPlayer( u ) ) + 1 )
            endif
            if GetItemUserData( it ) != GetPlayerId( GetOwningPlayer( u ) ) + 1 then
               // call SetItemPosition( it, GetUnitX( u ), GetUnitY( u ) )
              //  call SimError( GetOwningPlayer( u ), GetItemName( it ) + " этот предмет вам не принадлежит." )
            else
                call s__recepts_try( receptlist, it, u )
            endif
        else
            call s__recepts_try( receptlist, it, u )
        endif
    endif
    set it = null
    set u = null
endfunction

// ===== ISS__Trig_LostItem_Actions (строки 5922-5927) =====
function ISS__Trig_LostItem_Actions takes nothing returns nothing
    if GetItemUserData( GetManipulatedItem( ) ) == null then
      //  call SetItemUserData( GetManipulatedItem( ), GetPlayerId( GetOwningPlayer( GetTriggerUnit( ) ) ) + 1 )
    endif
    call TimerStart( CreateTimer( ), 0.0, false, function ISS__replacestart )
endfunction

// ===== ISS__Trig_OrderToItem_Actions (строки 5929-5952) =====
function ISS__Trig_OrderToItem_Actions takes nothing returns nothing
    local unit u = GetTriggerUnit( )
    local item it = GetOrderTargetItem( )
    local integer j
    local boolean b

    if it != null then
        if ( GetPlayerId( GetOwningPlayer( u ) ) + 1 ) != GetItemUserData( it )and GetItemUserData( it ) != null then
            set j = Count_Spec_Items
            set b = FALSE
            loop
                exitwhen( j == 0 )
                if GetItemTypeId( it ) == s__Spec_Item[ j ]then
                    set b = TRUE
                endif
                set j = j - 1
            endloop
            if not b then
            endif
        endif
    endif
    set u = null
    set it = null
endfunction

// ===== ISS__init (строки 5954-5981) =====
function ISS__init takes nothing returns nothing
    set receptlist = s__recepts_create( )
    set itemlist = s__items_create( )
    set ISS__ISS_trig_GetItem = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( ISS__ISS_trig_GetItem, EVENT_PLAYER_UNIT_PICKUP_ITEM )
    call TriggerAddAction( ISS__ISS_trig_GetItem, function ISS__Trig_GetItem_Actions )
    set ISS__ISS_trig_LostItem = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( ISS__ISS_trig_LostItem, EVENT_PLAYER_UNIT_DROP_ITEM )
    call TriggerAddAction( ISS__ISS_trig_LostItem, function ISS__Trig_LostItem_Actions )
    //нужно перевести тут равкоды
    set s__Spec_Item[1] = 'I005' //кольцо регенерации
    set s__Spec_Item[2] = 'I000' //лапа гнула
    set s__Spec_Item[3] = 'I001' //разьеденый посох
    set s__Spec_Item[4] = 'I002' //утерянный медальон
    set s__Spec_Item[5] = 'I00Q' //Тотем исцеления
    set s__Spec_Item[6] = 'I00V' //Невидимый страж
    set s__Spec_Item[7] = 'I00W' //Проницательный страж
    set s__Spec_Item[8] = 'I00R' //Зелье прозрения НЕт такого
    set s__Spec_Item[9] = 'I00Y' //Лечебное зелье 800
    set s__Spec_Item[10] = 'I00T' //Лечебное зелье 400
    set s__Spec_Item[11] = 'I00Z' //Лечебное зелье 1600
    set s__Spec_Item[12] = 'I00S' //Лечебное зелье 200
    if OWNERS then //ЧТО за хуйня просиходит
        set ISS__ISS_trig_OrderToItem = CreateTrigger( )
        call TriggerRegisterAnyUnitEventBJ( ISS__ISS_trig_OrderToItem, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER )
        call TriggerAddAction( ISS__ISS_trig_OrderToItem, function ISS__Trig_OrderToItem_Actions )
    endif
endfunction
