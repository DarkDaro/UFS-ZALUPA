// ===== ItemDestroyUpdateNew (строки 711-746) =====
function ItemDestroyUpdateNew takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local integer id = GetHandleId(t)
    local item it = LoadItemHandle(HT, id, 0)
    local real time = LoadReal(HT, id, 1)

    if it == null then
        call FlushChildHashtable(HT, id)
        call PauseTimer(t)
        call DestroyTimer(t)
        set t = null
        return
    endif

    if GetWidgetLife(it) > 0 and not IsItemOwned(it) then
        if time > 0.0 then
            call SaveReal(HT, id, 1, time - 1.0)
        else
            // Удаляем предмет, если его никто не поднял в течение заданного времени
           // call DisplayTextToForce(GetPlayersAll(), "|cffff0000Предмет удален:|r " + GetItemName(it))
            call SetWidgetLife(it, 1.0) // защита от багов на разрушение
            call RemoveItem(it)
            call FlushChildHashtable(HT, id)
            call PauseTimer(t)
            call DestroyTimer(t)
        endif
    elseif IsItemOwned(it) then
        // Предмет был подобран, очищаем таймер и данные
        call FlushChildHashtable(HT, id)
        call PauseTimer(t)
        call DestroyTimer(t)
    endif

    set t = null
    set it = null
endfunction

// ===== ItemDestroyNew (строки 749-763) =====
function ItemDestroyNew takes item it, real time returns nothing
    local timer t = CreateTimer()
    local integer id = GetHandleId(t)

    if it == null or time <= 0.0 then
        return
    endif

    call SaveItemHandle(HT, id, 0, it)
    call SaveReal(HT, id, 1, time)
    call TimerStart(t, 1.0, true, function ItemDestroyUpdateNew)

    set t = null
    set it = null
endfunction

// ===== ItemDestroyUpdate (строки 765-804) =====
function ItemDestroyUpdate takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local integer id = GetHandleId( t )
    local item it = LoadItemHandle( HT, id, 0 )
    local real time = LoadReal( HT, id, 1 )

    if time > 0.0 and IsItemOwned( it ) == false and GetWidgetLife( it ) > 0 then

    //поменял сохрание внутрь условия
    call SaveReal( HT, id, 1, time - 1.0 )
    // call DisplayTextToForce( GetPlayersAll( ), GetItemName(it) + " время жизни_"  + R2S(time) )

    else
        if GetWidgetLife( it ) > 0 and IsItemOwned( it ) == false then
         //   call PingMinimapLocForForceEx( GetPlayersAll(), GetItemLoc(it), 0.50, bj_MINIMAPPINGSTYLE_ATTACK, 100, 100, 100 )
         //   call DisplayTextToForce( GetPlayersAll( ), "|cffff0000предмет удален:|r "+ GetItemName(it))
            call SetWidgetLife(it, 1.)
            call RemoveItem( it )
            call FlushChildHashtable( HT, id )
            call PauseTimer( t )
            call DestroyTimer( t )
        endif
    endif

    if IsItemOwned( it ) == true then
      //  call DisplayTextToForce( GetPlayersAll( ), GetItemName(it) + " подобран" )
        call FlushChildHashtable( HT, id )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif

    if GetWidgetLife( it ) <= 0. and IsItemOwned( it ) == false then // 07.09: anti-leak - predmet udalen vneshne
        call FlushChildHashtable( HT, id )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif

    set t = null
    set it = null
endfunction

// ===== ItemDestroy (строки 806-815) =====
function ItemDestroy takes item it, real time returns nothing
    local timer t = CreateTimer( )
    local integer id = GetHandleId( t )
    call SaveItemHandle( HT, id, 0, it )
    call SaveReal( HT, id, 1, time )
    call TimerStart( t, 1, true, function ItemDestroyUpdate )
    set it = null
    // 05.09: anti-leak (obnulenie lokalov)
    set t = null
endfunction
