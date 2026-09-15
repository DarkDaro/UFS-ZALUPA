// ===== ItemsLib__GetItems (строки 2763-2797) =====
function ItemsLib__GetItems takes nothing returns nothing
    local item it = GetManipulatedItem( )
    local unit u = GetManipulatingUnit( )
    local integer r_r = GetItemTypeId( it )
    local item it2 = null
    local integer i = 1
    local player p = GetOwningPlayer( u )
    local integer pi = GetConvertedPlayerId( p )
    call DisableTrigger( GetTriggeringTrigger( ) )

    loop
        exitwhen( i > ItemsLib__max_stacks )
        if r_r == s__ItemsLib__stack_r_r[i]then
            if UnitHasItemOfTypeBJ( u, s__ItemsLib__stack_i_r[i] ) then
                set it2 = GetItemOfTypeFromUnitBJ( u, s__ItemsLib__stack_i_r[i] )
                call SetItemCharges( it2, GetItemCharges( it2 ) + GetItemCharges( it ) )
           //     call DisplayTextToForce( GetPlayersAll( ),  GetItemName(it2) +"_складываем заряды+ " + I2S(GetItemCharges( it )))

            else
                set it2 = UnitAddItemById( u, s__ItemsLib__stack_i_r[i] ) //вот тут не может отдать предмет герою
                call SetItemCharges( it2, GetItemCharges( it ) ) //если забит инвентарь зарядов будет 1
           //     call DisplayTextToForce( GetPlayersAll( ),  GetItemName(it2)+ "устанавливаем заряды" + I2S(GetItemCharges( it )))

            endif
        endif
        set i = i + 1
    endloop

    call EnableTrigger( GetTriggeringTrigger( ) )
    set it = null
    set u = null
    set it2 = null
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
endfunction

// ===== ItemsLib__DropItems (строки 2799-2839) =====
function ItemsLib__DropItems takes nothing returns nothing
    local unit u = GetTriggerUnit( )
    local item it
    local item new_it
    local integer it_id =0
    local integer i=0
    local integer charges=0
    local real u_x=0.
    local real u_y=0.
    local player owner
    local integer pid=0
    if IsUnitIllusion( u ) == FALSE then
        set it = GetManipulatedItem( )
        set new_it = null
        set it_id = GetItemTypeId( it )
        set i = 1
        set charges = GetItemCharges( it )
        set u_x = GetUnitX( u )
        set u_y = GetUnitY( u )
        set owner = GetOwningPlayer( u )
        set pid = GetConvertedPlayerId( owner )
        call DisableTrigger( GetTriggeringTrigger( ) )
        loop
            exitwhen( i > ItemsLib__max_stacks )
            if it_id == s__ItemsLib__stack_i_r[i]then
                call RemoveItem( it )
                set new_it = CreateItem( s__ItemsLib__stack_r_r[i], u_x, u_y )
                call SetItemCharges( new_it, charges )
              //   call DisplayTextToForce( GetPlayersAll( ), GetItemName(new_it)+ "дроп итем устанавливаем заряды" + I2S(charges))

            endif
            set i = i + 1
        endloop
        call EnableTrigger( GetTriggeringTrigger( ) )
        set it = null
        set new_it = null
    endif
    set u = null
    // 05.09: anti-leak (obnulenie lokalov)
    set owner = null
endfunction

// ===== ItemsLib__SellItems (строки 2841-2845) =====
function ItemsLib__SellItems takes nothing returns nothing
    call DisableTrigger( ItemsLib__DropItems_Trg_Var )
    call TriggerSleepAction( 0.01 )
    call EnableTrigger( ItemsLib__DropItems_Trg_Var )
endfunction

// ===== ItemsLib__UseItems (строки 2847-2851) =====
function ItemsLib__UseItems takes nothing returns nothing
    call DisableTrigger( ItemsLib__DropItems_Trg_Var )
    call TriggerSleepAction( 0.01 )
    call EnableTrigger( ItemsLib__DropItems_Trg_Var )
endfunction

// ===== ItemsLib__ItemsLib_Init (строки 2853-2915) =====
function ItemsLib__ItemsLib_Init takes nothing returns nothing
    local integer i = 0
    local player p = null
    local trigger GetItems_Trg = CreateTrigger( )
    local trigger DropItems_Trg
    local trigger SellItems_Trg
    local trigger UseItems_Trg
    loop
        exitwhen( i > 10 )
        set p = Player( i )
        call TriggerRegisterPlayerUnitEvent( GetItems_Trg, p, EVENT_PLAYER_UNIT_PICKUP_ITEM, null )
        set i = i + 1
    endloop
    set i = 0
    call TriggerAddAction( GetItems_Trg, function ItemsLib__GetItems )
    set DropItems_Trg = CreateTrigger( )
    loop
        exitwhen( i > 10 )
        set p = Player( i )
        call TriggerRegisterPlayerUnitEvent( DropItems_Trg, p, EVENT_PLAYER_UNIT_DROP_ITEM, null )
        set i = i + 1
    endloop
    set i = 0
    call TriggerAddAction( DropItems_Trg, function ItemsLib__DropItems )
    set ItemsLib__DropItems_Trg_Var = DropItems_Trg
    set SellItems_Trg = CreateTrigger( )
    loop
        exitwhen( i > 10  )
        set p = Player( i )
        call TriggerRegisterPlayerUnitEvent( SellItems_Trg, p, EVENT_PLAYER_UNIT_PAWN_ITEM, null )
        set i = i + 1
    endloop
    set i = 0
    call TriggerAddAction( SellItems_Trg, function ItemsLib__SellItems )
    set UseItems_Trg = CreateTrigger( )
    loop
        exitwhen( i > 10 )
        set p = Player( i )
        call TriggerRegisterPlayerUnitEvent( UseItems_Trg, p, EVENT_PLAYER_UNIT_USE_ITEM, null )
        set i = i + 1
    endloop
    set i = 0
    call TriggerAddAction( UseItems_Trg, function ItemsLib__UseItems )
    set p = null

    set s__ItemsLib__stack_r_r[1] = 'I00U' //Крест пустышка
    set s__ItemsLib__stack_i_r[1] = 'ankh' //Крест оригинал
    set s__ItemsLib__stack_r_r[2] = 'I00R' //Зелье прозрения всей карты
    set s__ItemsLib__stack_i_r[2] = 'pomn' //Зелье прозрения оригинал
    set s__ItemsLib__stack_r_r[3] = 'I00V' //Невидимый страж пустышка
    set s__ItemsLib__stack_i_r[3] = 'wswd' //Невидимый страж оригинал
    set s__ItemsLib__stack_r_r[4] = 'I00W' //Проницательный страж пустышка
    set s__ItemsLib__stack_i_r[4] = 'fgfh' //Проницательный страж оригинал
    set s__ItemsLib__stack_r_r[5] = 'I00X' //Свиток телепортации в магазин
    set s__ItemsLib__stack_i_r[5] = 'stwp' //Свиток телепортации в магазин оригинал
    set s__ItemsLib__stack_r_r[6] = 'I00Q' //Тотем исцеления
    set s__ItemsLib__stack_i_r[6] = 'whwd'//Тотем исцеления оригинал
    // 05.09: anti-leak (obnulenie lokalov)
    set GetItems_Trg = null
    set DropItems_Trg = null
    set SellItems_Trg = null
    set UseItems_Trg = null
endfunction
