// ===== sc__recept_normalize (строки 507-510) =====
function sc__recept_normalize takes integer this returns nothing
    set f__arg_this = this
    call TriggerEvaluate( st__recept_normalize )
endfunction

// ===== s__recept__allocate (строки 512-528) =====
function s__recept__allocate takes nothing returns integer
    local integer this = si__recept_F
    if ( this != 0 ) then
        set si__recept_F = si__recept_V[this]
    else
        set si__recept_I = si__recept_I + 1
        set this = si__recept_I
    endif
    if ( this > 1169 ) then
        call DisplayTimedTextToPlayer( GetLocalPlayer( ), 0, 0, 1000., "Unable to allocate id for an object of type: recept" )
        return 0
    endif
    set s__recept_it[this] = ( this - 1 ) * 7
    set s__recept_kratn[this] = ( this - 1 ) * 7
    set si__recept_V[this] = -1
    return this
endfunction

// ===== s__items__allocate (строки 529-544) =====
function s__items__allocate takes nothing returns integer
    local integer this = si__items_F
    if ( this != 0 ) then
        set si__items_F = si__items_V[this]
    else
        set si__items_I = si__items_I + 1
        set this = si__items_I
    endif
    if ( this > 39 ) then
        call DisplayTimedTextToPlayer( GetLocalPlayer( ), 0, 0, 1000., "Unable to allocate id for an object of type: items" )
        return 0
    endif
    set s__items_list[this] = ( this - 1 ) * 200
    set si__items_V[this] = -1
    return this
endfunction

// ===== s__itemdummy__allocate (строки 545-559) =====
function s__itemdummy__allocate takes nothing returns integer
    local integer this = si__itemdummy_F
    if ( this != 0 ) then
        set si__itemdummy_F = si__itemdummy_V[this]
    else
        set si__itemdummy_I = si__itemdummy_I + 1
        set this = si__itemdummy_I
    endif
    if ( this > 8190 ) then
        call DisplayTimedTextToPlayer( GetLocalPlayer( ), 0, 0, 1000., "Unable to allocate id for an object of type: itemdummy" )
        return 0
    endif
    set si__itemdummy_V[this] = -1
    return this
endfunction

// ===== s__recepts__allocate (строки 560-575) =====
function s__recepts__allocate takes nothing returns integer
    local integer this = si__recepts_F
    if ( this != 0 ) then
        set si__recepts_F = si__recepts_V[this]
    else
        set si__recepts_I = si__recepts_I + 1
        set this = si__recepts_I
    endif
    if ( this > 80 ) then
        call DisplayTimedTextToPlayer( GetLocalPlayer( ), 0, 0, 1000., "Unable to allocate id for an object of type: recepts" )
        return 0
    endif
    set s__recepts_list[this] = ( this - 1 ) * 100
    set si__recepts_V[this] = -1
    return this
endfunction

// ===== IsUnitInvul (строки 590-592) =====
function IsUnitInvul takes unit u returns boolean
    return LoadBoolean( HT, GetHandleId( u ), StringHash( "Has_Invul" ) ) or GetUnitAbilityLevel( u, 'Avul' ) > 0
endfunction

// ===== SetUnitInvul (строки 594-597) =====
function SetUnitInvul takes unit Target, boolean Flag returns nothing
    call SetUnitInvulnerable( Target, Flag )
    call SaveBoolean( HT, GetHandleId( Target ), StringHash( "Has_Invul" ), Flag )
endfunction

// ===== RemoveUnitUnitInvulEx (строки 599-609) =====
function RemoveUnitUnitInvulEx takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local integer i = GetHandleId( t )
    local unit u = LoadUnitHandle( HT, i, 0 )
    call SetUnitInvul(u, false)
    call FlushChildHashtable( HT, i )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== SetUnitInvulTimer (строки 611-619) =====
function SetUnitInvulTimer takes unit u, real time returns nothing
    local timer t = CreateTimer( )
    local integer i = GetHandleId( t )
    call SetUnitInvul(u, true)
    call SaveUnitHandle( HT, i, 0, u )
    call TimerStart( t, time, false, function RemoveUnitUnitInvulEx )
    set t = null
    set u = null
endfunction

// ===== AddUnitGroupDamage (строки 621-632) =====
function AddUnitGroupDamage takes nothing returns nothing
    local unit caster
    if GetEnumUnit() != null then
        set caster = GetEnumUnit()
    else
        set caster = GetTriggerUnit()
    endif
    call GroupAddUnit(LoadGroupHandle(udg_SystemHash, 412, StringHash("damageGroup")), caster)
    call TriggerRegisterUnitEvent(gg_trg_DamageCategory0, caster, EVENT_UNIT_DAMAGED)
    set caster = null

endfunction

// ===== AddUnitGroupDamage_Cond (строки 634-641) =====
function AddUnitGroupDamage_Cond takes nothing returns boolean
    if not IsUnitInGroup(GetEnteringUnit(), LoadGroupHandle(udg_SystemHash, 412, StringHash("damageGroup"))) then
        if IsUnitType(GetEnteringUnit(), UNIT_TYPE_HERO)or GetOwningPlayer(GetEnteringUnit()) == Player(PLAYER_NEUTRAL_AGGRESSIVE) then
            return true
        endif
    endif
    return false
endfunction

// ===== RemoveUnitGroupDamage (строки 643-645) =====
function RemoveUnitGroupDamage takes nothing returns nothing
    call GroupRemoveUnit(LoadGroupHandle(udg_SystemHash, 412, StringHash("damageGroup")), GetDyingUnit())
endfunction

// ===== RemoveUnitGroupDamage_Cond (строки 647-654) =====
function RemoveUnitGroupDamage_Cond takes nothing returns boolean
    if IsUnitInGroup(GetDyingUnit(), LoadGroupHandle(udg_SystemHash, 412, StringHash("damageGroup"))) then
        if not IsUnitType(GetDyingUnit(), UNIT_TYPE_HERO)or IsUnitIllusion(GetDyingUnit()) then
            return true
        endif
    endif
    return false
endfunction

// ===== AddToGroupDamage_Start (строки 656-674) =====
function AddToGroupDamage_Start takes nothing returns nothing
    local trigger t = CreateTrigger()
    local region reg = CreateRegion()
    local group g
    call RegionAddRect(reg, bj_mapInitialPlayableArea)
    set g = GetUnitsInRectAll(bj_mapInitialPlayableArea)
    call ForGroup(g, function AddUnitGroupDamage)
    call DestroyGroup(g)
    call TriggerRegisterEnterRegion(t, reg, null)
    call TriggerAddCondition(t, Condition(function AddUnitGroupDamage_Cond))
    call TriggerAddAction(t, function AddUnitGroupDamage)
    set t = CreateTrigger()
    call TriggerAddCondition(t, Condition(function RemoveUnitGroupDamage_Cond))
    call TriggerAddAction(t, function RemoveUnitGroupDamage)
    call DestroyTimer(GetExpiredTimer())
    set reg = null
    set t = null
    set g = null
endfunction

// ===== InitTrig_AddToGroupDamage (строки 676-678) =====
function InitTrig_AddToGroupDamage takes nothing returns nothing
    call TimerStart(CreateTimer(), 1, false, function AddToGroupDamage_Start)
endfunction

// ===== SimError (строки 680-686) =====
function SimError takes player ForPlayer, string msg returns nothing
    if ( GetLocalPlayer( ) == ForPlayer ) then
        call ClearTextMessages( )
        call DisplayTimedTextToPlayer( ForPlayer, 0.52, -1.00, 2.00, "|cffffcc00" + msg + "|r" )
        call StartSound( snd_Error )
    endif
endfunction

// ===== DropItemLiver (строки 688-709) =====
function DropItemLiver takes unit a returns nothing
    local integer i = 0
    local item it = null
    local player p = GetOwningPlayer(a)
    local real x =GetUnitX(a)
    local real y = GetUnitY(a)
    loop
        exitwhen i > 5
        set it = UnitItemInSlot(a, i)
        if it != null then
            call UnitRemoveItem(a, it)
            call SetItemDroppable(it, true)
            call SetItemPosition(it, x, y)
        endif

        set i = i + 1
    endloop
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl", x, y))
    set it = null
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
endfunction

// ===== ItemDropBossUpdate (строки 817-835) =====
function ItemDropBossUpdate takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local integer id = GetHandleId( t )
    local real r = LoadReal( HT, id, 1 )
    local item it = LoadItemHandle( HT, id, 0 )
    if r > 0.0 and GetWidgetLife( it ) > 0.405 then
        call SaveReal( HT, id, 1, r - 0.1 )
    else
        if GetWidgetLife( it ) > 0 then
            call SetWidgetLife(it, 1.)
            call RemoveItem( it )
        endif
        call FlushChildHashtable( HT, id )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set t = null
    set it = null
endfunction

// ===== ItemDropBoss (строки 838-847) =====
function ItemDropBoss takes integer itdrop, real time , real x , real y returns nothing
    local timer t = CreateTimer( )
    local integer id = GetHandleId( t )
    local item it = CreateItem( itdrop, x, y )
    call SaveItemHandle( HT, id, 0, it )
    call SaveReal( HT, id, 1, time )
    call TimerStart( t, 0.1, true, function ItemDropBossUpdate )
    set t = null
    set it = null
endfunction

// ===== Dist (строки 874-876) =====
function Dist takes real x, real y, real x1, real y1 returns real
    return SquareRoot( ( x - x1 ) * ( x - x1 ) + ( y - y1 ) * ( y - y1 ) )
endfunction

// ===== AngleXY (строки 879-881) =====
function AngleXY takes real x, real y, real x1, real y1 returns real
    return 180.0 / 3.14159 * Atan2( y1 - y, x1 - x )
endfunction

// ===== LightningRemove (строки 946-959) =====
function LightningRemove takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local integer i = GetHandleId(t)
    local lightning gl = LoadLightningHandle(HT, i, 0)
    if gl != null then
        call DestroyLightning(gl)
    endif
    call DestroyLightning(gl)
    call PauseTimer(t)
    call DestroyTimer(t)
    call FlushChildHashtable(HT, i)
    set gl = null
    set t = null
endfunction

// ===== TriggerRegister (строки 970-977) =====
function TriggerRegister takes trigger t, playerunitevent e returns nothing
    local integer i = 0
    loop
        call TriggerRegisterPlayerUnitEvent( t, Player( i ), e, null )
        set i = i + 1
        exitwhen i > 15
    endloop
endfunction

// ===== SetStrStatsSave (строки 979-984) =====
function SetStrStatsSave takes unit caster, integer newStr, boolean permanent returns nothing
    local real stats = GetUnitState( caster, UNIT_STATE_LIFE ) / GetUnitState( caster, UNIT_STATE_MAX_LIFE )
    call SetHeroStr( caster, newStr, permanent )
    call SetUnitState( caster, UNIT_STATE_LIFE, stats * GetUnitState( caster, UNIT_STATE_MAX_LIFE ) )
    set caster = null
endfunction

// ===== SetIntStatsSave (строки 986-991) =====
function SetIntStatsSave takes unit caster, integer newInt, boolean permanent returns nothing
    local real stats = GetUnitState( caster, UNIT_STATE_MANA ) / GetUnitState( caster, UNIT_STATE_MAX_MANA )
    call SetHeroInt( caster, newInt, permanent )
    call SetUnitState( caster, UNIT_STATE_MANA, stats * GetUnitState( caster, UNIT_STATE_MAX_MANA ) )
    set caster = null
endfunction

// ===== CheckStatsHero (строки 995-1004) =====
function CheckStatsHero takes unit a returns integer
    if GetHeroStr( a, true ) > GetHeroAgi( a, true ) and GetHeroStr( a, true ) > GetHeroInt( a, true ) then
        return GetHeroStr( a, true )
    elseif GetHeroAgi( a, true ) > GetHeroStr( a, true ) and GetHeroAgi( a, true ) > GetHeroInt( a, true ) then
        return GetHeroAgi( a, true )
    else
        return GetHeroInt( a, true )
    endif
    return 0
endfunction

// ===== InitTrig_DeleteRune (строки 1031-1037) =====
function InitTrig_DeleteRune takes nothing returns nothing
    local trigger trg = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(trg, EVENT_PLAYER_UNIT_PICKUP_ITEM )
//  call TriggerAddCondition(trg, Condition( function Trig_DeleteRune_Conditions ) )
    call TriggerAddAction(trg, function Trig_DeleteRune_Actions )
    set trg = null
endfunction

// ===== IsGroupEmpty (строки 1125-1127) =====
function IsGroupEmpty takes group g returns boolean
    return FirstOfGroup(g) == null
endfunction

// ===== UnitOccupiedSlotsNumber (строки 1129-1145) =====
function UnitOccupiedSlotsNumber takes unit target returns integer
    local integer i = -1
    local item itemID
    local integer index = 0
    loop
        set i = i + 1
        exitwhen i > 5
        set itemID = UnitItemInSlot( target, i )
        if itemID != null then
            set index = index + 1
        endif
        set itemID = null
    endloop
    set target = null
    set itemID = null
    return index
endfunction

// ===== AI__OrderBuyItem (строки 1149-1152) =====
function AI__OrderBuyItem takes unit u, unit shop, integer id returns boolean
    call IssueNeutralTargetOrder( GetOwningPlayer( u ), shop, "smart", u )
    return IssueNeutralImmediateOrderById( GetOwningPlayer( u ), shop, id )
endfunction

// ===== AI__A_Buy (строки 1154-1214) =====
function AI__A_Buy takes nothing returns nothing
    // 05.09: удалены мёртвые локалы i, b
    local player p
    local integer id = 0
    local unit u
    local integer ch = 0
    local integer state = 0
    local integer j = 1
    loop
        exitwhen( j > 10 )
        set ch = 0
        set state = 0
        set p = Player(j - 1) //s__Online_Player[i]
        set id = GetPlayerId( p ) + 1

        //call DisplayTextToForce( GetPlayersAll( ),GetPlayerName(p) + "_игрок_ "+ I2S(Online_Players ) +"_онлайн число" )
        if GetPlayerController( p ) == MAP_CONTROL_COMPUTER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING and GetPlayerState( p, PLAYER_STATE_RESOURCE_GOLD ) >= 290 then

          //  call DisplayTextToForce( GetPlayersAll( ),GetPlayerName(p) + "_комп_ "+ I2S(Online_Players ) +"_онлайн число2" )
            set u = s__Hero[id]
            //call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "_герой должен покупать " )

            set ch = GetHeroStr( u, TRUE )
            set state = 1
            if GetHeroAgi( u, TRUE ) > ch then
                set ch = GetHeroAgi( u, TRUE )
                set state = 2
            endif
            if GetHeroInt( u, TRUE ) > ch then
                set ch = GetHeroInt( u, TRUE )
                set state = 3
            endif

            if state == 1 then
                if AI__OrderBuyItem( u, AI__Shop, 'tstr' ) then
                 //   call BJDebugMsg( "buyed" )
                  //  call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "купил силу_" )

                endif
            endif
            if state == 2 then
                if AI__OrderBuyItem( u, AI__Shop, 'tdex' ) then
                  //  call BJDebugMsg( "buyed" )
                  //  call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "купил ловкость_" )
                endif
            endif
            if state == 3 then
                if AI__OrderBuyItem( u, AI__Shop, 'tint' ) then
                  //  call BJDebugMsg( "buyed" )
                   // call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "купил разум_" )

                endif
            endif
        endif
      //  set i = i - 1
        set j = j + 1
    endloop
    set u = null
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
endfunction

// ===== AI__A_Death (строки 1216-1229) =====
function AI__A_Death takes nothing returns nothing
    local unit u = GetTriggerUnit( )
    local player p = GetOwningPlayer( u )
    // 05.09: удалён мёртвый local id (использовался только в закомментированном дебаге)
    if GetPlayerController( p ) == MAP_CONTROL_COMPUTER and IsUnitType( u, UNIT_TYPE_HERO ) then

        call SaveBoolean( HT, GetHandleId( u ), StringHash( "H_IS_CREEPING" ), FALSE )
        call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ), null ) //вернул
      //call RemoveSavedHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ) ) // добавил
   //   call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "_цель потерял ИИ мертв" + I2S(id)  )
    endif
    set u = null
    set p = null
endfunction

// ===== AI__Spam_Abils (строки 1231-1521) =====
function AI__Spam_Abils takes unit u, unit t returns nothing
    local integer u_id = GetUnitTypeId( u )
    local real u_x = GetUnitX( u )
    local real u_y = GetUnitY( u )
    local real t_x = GetUnitX( t )
    local real t_y = GetUnitY( t )
    //local real dist = SquareRoot( ( u_x - t_x ) * ( u_x - t_x ) + ( u_y - t_y ) * ( u_y - t_y ) )
    local real dist = Dist(u_x, u_y, t_x, t_y)

    local boolean b = FALSE

    if u_id == 'Hpal' then //Паладин
        if GetUnitStatePercent( u, UNIT_STATE_LIFE, UNIT_STATE_MAX_LIFE ) <= 0.1 then
            set b = IssueImmediateOrderById( u, 852127 )
            if not b then
                set b = IssueTargetOrderById( u, 852209, u )
                if not b then
                    set b = IssueImmediateOrderById( u, 852096 )
                endif
            endif
        endif
        if dist > 250.then
            set b = IssueImmediateOrderById( u, 852096 )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
            endif
        endif
        if dist <= 250.then
            set b = IssuePointOrderById( u, 852218, t_x, t_y )
            if not b then
                set b = IssueImmediateOrderById( u, 852096 )
                if not b then
                    set b = IssuePointOrderById( u, 852652, t_x, t_y )
                endif
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
    endif

    if u_id == 'Nfir' then //Повелитель огня
        if dist <= 350.then
            set b = IssueImmediateOrderById( u, 852096 )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
                if not b then
                    set b = IssuePointOrderById( u, 852218, t_x, t_y )
                    if not b then
                        set b = IssueImmediateOrderById( u, 852127 )
                    endif
                endif
            endif
        endif
        if dist > 350.then
            set b = IssuePointOrderById( u, 852218, t_x, t_y )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
                if not b then
                    set b = IssueImmediateOrderById( u, 852127 )
                endif
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'H000' then //Исщадье тьмы
        if dist <= 400.then
            set b = IssueImmediateOrderById( u, 852127 )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
                if not b then
                    set b = IssueImmediateOrderById( u, 852096 )
                    if not b then
                        set b = IssuePointOrderById( u, 852218, t_x, t_y )
                    endif
                endif
            endif
        endif
        if dist > 400.then
            set b = IssueImmediateOrderById( u, 852096 )
            if not b then
                set b = IssuePointOrderById( u, 852218, t_x, t_y )
                if not b then
                    set b = IssuePointOrderById( u, 852652, t_x, t_y )
                endif
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'E000' then //Мрак
        if dist <= 350.then
            set b = IssueImmediateOrderById( u, 852096 )
            if not b then
                set b = IssueTargetOrderById( u, 852209, u )
                if not b then
                    set b = IssuePointOrderById( u, 852218, t_x, t_y )
                    if not b then
                        set b = IssuePointOrderById( u, 852652, t_x, t_y )
                        if not b then
                            set b = IssueImmediateOrderById( u, 852127 )
                        endif
                    endif
                endif
            endif
        endif
        if dist > 350.then
            set b = IssuePointOrderById( u, 852652, t_x, t_y )
            if not b then
                set b = IssuePointOrderById( u, 852218, t_x, t_y )
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'Obla' then //Гладиатор
        if dist <= 250.then
            set b = IssueImmediateOrderById( u, 852100 )
            if not b then
                set b = IssueImmediateOrderById( u, 852096 )
                if not b then
                    set b = IssuePointOrderById( u, 852218, t_x, t_y )
                    if not b then
                        set b = IssuePointOrderById( u, 852652, t_x, t_y )
                    endif
                endif
            endif
        endif
        if dist > 250.then
            set b = IssuePointOrderById( u, 852652, t_x, t_y )
            if not b then
                set b = IssuePointOrderById( u, 852218, t_x, t_y )
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'Otch' then //Шаман Земли
        if dist <= 450.then
            set b = IssueImmediateOrderById( u, 852127 )
            if not b then
                set b = IssueTargetOrderById( u, 852209, u )
                if not b then
                    set b = IssueImmediateOrderById( u, 852096 )
                    if not b then
                        set b = IssuePointOrderById( u, 852652, t_x, t_y )
                        if not b then
                            set b = IssuePointOrderById( u, 852218, t_x, t_y )
                        endif
                    endif
                endif
            endif
        endif
        if dist > 450.then
            set b = IssuePointOrderById( u, 852218, t_x, t_y )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
                if not b then
                    set b = IssueImmediateOrderById( u, 852127 )
                endif
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'N005' then //Громовержец
        if dist <= 500.then
            set b = IssueImmediateOrderById( u, 852127 )
            if not b then
                set b = IssueTargetOrderById( u, 852209, u )
                if not b then
                    set b = IssueImmediateOrderById( u, 852096 )
                    if not b then
                        set b = IssuePointOrderById( u, 852652, t_x, t_y )
                    endif
                endif
            endif
        endif
        if dist > 500.then
            set b = IssuePointOrderById( u, 852652, t_x, t_y )
            if not b then
                set b = IssueImmediateOrderById( u, 852127 )
                if not b then
                    set b = IssuePointOrderById( u, 852218, t_x, t_y )
                endif
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'N006' then //Убийца
        if dist <= 250.then
            set b = IssueImmediateOrderById( u, 852096 )
            if not b then
                // 05.09: фикс бага — было call вместо set b, из-за чего издавались два приказа подряд и каскад ломался
                set b = IssuePointOrderById( u, 852218, t_x, t_y )
                if not b then
                    call IssueImmediateOrderById( u, 852127 )
                endif
            endif
        endif
        if dist > 250.then
            set b = IssuePointOrderById( u, 852555, t_x, t_y )
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'Ntin' or u_id == 'N004' then //Техник
        call IssueImmediateOrderById( u, 852096 )
        if dist <= 300.then
            set b = IssueImmediateOrderById( u, 852656 )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
                if not b then
                    set b = IssuePointOrderById( u, 852218, t_x, t_y )
                endif
            endif
        endif
        if dist > 300.then
            set b = IssuePointOrderById( u, 852218, t_x, t_y )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
            endif
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'Hgam' then //Ткач
        if dist > 250.then
            set b = IssuePointOrderById( u, 852218, t_x, t_y )
            if not b then
                set b = IssuePointOrderById( u, 852652, t_x, t_y )
                if not b then
                    set b = IssueImmediateOrderById( u, 852127 )
                endif
            endif
        endif
        if dist <= 250.then
            set b = IssueImmediateOrderById( u, 852096 )
        endif
        if not b then
            call IssueTargetOrderById( u, 851983, t )
        endif
        return
    endif

    if u_id == 'H00M' then //Рипер
        if GetUnitStatePercent( u, UNIT_STATE_LIFE, UNIT_STATE_MAX_LIFE ) > 0.3 then
            set b = IssueImmediateOrderById( u, 852096 )
        endif
        if not b then
            if dist <= 250.then
                set b = IssueTargetOrderById( u, 852095, t )
            endif
            if not b then
                set b = IssuePointOrderById( u, 852218, t_x, t_y )
                if not b then
                    set b = IssuePointOrderById( u, 852652, t_x, t_y )
                endif
            endif
            if not b then
                call IssueTargetOrderById( u, 851983, t )
            endif
        endif
    endif
endfunction

// ===== AI_A_Spam (строки 1523-1585) =====
function AI_A_Spam takes nothing returns nothing
    local integer i = Online_Players
    local player p
    local integer id = 0
    local unit u
    local unit target
    local real t_t = 0.
    local integer j = 1
    loop
        exitwhen( j > 10 )
       // set p = s__Online_Player[i]
        set p = Player(j - 1)
        set id = GetPlayerId(p) + 1

       // call DisplayTextToForce( GetPlayersAll( ),GetPlayerName( p) +  "_игрок в цикле_spam" + I2S(j) )

        if GetPlayerController( p ) == MAP_CONTROL_COMPUTER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then
            set u = s__Hero[id]

           //  call DisplayTextToForce( GetPlayersAll( ),GetPlayerName( p) +  "_игрок айди_spam" + I2S(id)+ "__.юнит  " + GetUnitName(u ))

            if not IsUnitPaused( u ) and GetUnitAbilityLevel( u, 'Arav' ) == 0 then

                if TimerGetRemaining( s__AI__Spam_Timer[id] ) == 0.then

                 //   call DisplayTextToForce( GetPlayersAll( ),"s__AI__Spam_Timer" + I2S(id ))

                    set target = LoadUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ) )

                    if target != null then // and target != u not( LoadBoolean( HT, GetHandleId( target ), StringHash( "H_IS_SHIELD" ) ) ) щит паладина
                        if GetUnitAbilityLevel( target, 'Avul' ) == 0 and GetUnitState( target, UNIT_STATE_LIFE ) > 0.405 and IsUnitVisible( target, p ) and GetUnitAbilityLevel( target, 'Aloc' ) == 0 then
                            call AI__Spam_Abils( u, target )
                        //call IssueTargetOrder( u, "attack", target)
                      //      call DisplayTextToForce( GetPlayersAll( ), GetUnitName( u ) + "_id_" + I2S(id) + "_кастует в _" + GetUnitName( target ) )
                        else
                            call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ), null )
                         //  call DisplayTextToForce( GetPlayersAll( ),GetUnitName( u ) + "_id_"+ I2S(id) +  "цель потеряна кастует ИИ SPAM" )
                        endif
                    endif

                    if GetAIDifficulty( p ) == AI_DIFFICULTY_NEWBIE then
                        set t_t = 2.
                    endif
                    if GetAIDifficulty( p ) == AI_DIFFICULTY_NORMAL then
                        set t_t = 1.5
                    endif
                    if GetAIDifficulty( p ) == AI_DIFFICULTY_INSANE then
                        set t_t = 1.
                    endif
                    call TimerStart( s__AI__Spam_Timer[id ], t_t, FALSE, null )
                endif
            endif

        endif

        set j = j + 1

    endloop
    set target = null
    set u = null
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
endfunction

// ===== AI__GetItems (строки 1587-1597) =====
function AI__GetItems takes nothing returns nothing
    local item it = GetEnumItem( )
    local unit u = AI__ch_u
    // 05.09: фикс — в JASS нет короткого замыкания, проверка u != null должна идти первой
    if u != null and UnitOccupiedSlotsNumber( u ) < 6 and GetWidgetLife( u ) > 0 and IsUnitPaused( u ) == false then
    call IssueTargetOrderById( u, 851971, it )
//подобрать предмет с земли
    endif
    set u = null
    set it = null
endfunction

// ===== AI_A_Do (строки 1599-1848) =====
function AI_A_Do takes nothing returns nothing
    // 05.09: удалены мёртвые локалы i, camp_id, c_x, c_y, a, t
    local player p
    local integer id = 0
    local unit u
    local unit FoG
    local unit t_unit
    local real min_hp = 999999.0
    local rect r = null
    local real x = 0.
    local real y = 0.
    local real t_t = 0.
    local integer j = 1
    local unit f
    local group g
    local group gRR = null // 05.09: фикс — группа создаётся на каждую итерацию игрока, раньше создавалась один раз и уничтожалась внутри веток с последующим использованием

    loop
        exitwhen ( j > 10 )
       // set p = s__Online_Player[i]

        set p = Player(j - 1)
        set id = GetPlayerId(p) + 1

        if GetPlayerController( p ) == MAP_CONTROL_COMPUTER and GetPlayerSlotState( p ) == PLAYER_SLOT_STATE_PLAYING then
       // call DisplayTextToForce( GetPlayersAll( ),GetPlayerName( p) +  "_игрок в цикле_do" + I2S(i) + I2S(GetPlayerId( p )) )

            set u = s__Hero[id]
            if not IsUnitPaused( u ) and GetUnitAbilityLevel( u, 'Arav' ) == 0 then

           //call DisplayTextToForce( GetPlayersAll( ),GetPlayerName( p) +  "_игрок айди_do" + I2S(id)+ "__" + GetUnitName(u ))

                if TimerGetRemaining( s__AI__Check_Timer[id] ) == 0.then
                //создается рект для подбора прдеметов рядом, тупость полня
               // call DisplayTextToForce( GetPlayersAll( ),"_s__AI__Check_Timer" + I2S(id ))

              //  set id = GetPlayerId( p ) + 1
             //   set u = s__Hero[id]
                //добавил

                    // 05.09: фикс — сброс цели и min_hp на каждого игрока, раньше перетекали от предыдущего бота
                    set t_unit = null
                    set min_hp = 999999.0

                    set r = Rect( GetUnitX( u ) - 300., GetUnitY( u ) - 300., GetUnitX( u ) + 300., GetUnitY( u ) + 300. )
                    set AI__ch_u = u
                    // 05.09: удалён set AI__ch_p — глобал больше не существует

                    call EnumItemsInRect( r, null, function AI__GetItems )
                    call RemoveRect( r )
                    set r = null

                    set gRR = CreateGroup() // 05.09: создаём группу здесь, уничтожаем в конце блока — раньше уничтожалась в середине и использовалась дальше
                    set g = CreateGroup()
                    call GroupEnumUnitsInRange(g, GetUnitX( u ), GetUnitY( u ), 800., null)
                    loop
                        set f = FirstOfGroup(g)
                        exitwhen f == null
                        // 05.09: убран бессмысленный IsUnitInGroup(f, gRR) — gRR пуст на момент перебора
                        if IsUnitType( f, UNIT_TYPE_HERO ) and IsPlayerEnemy( GetOwningPlayer( f ) , GetOwningPlayer( u ) ) and GetUnitState(f, UNIT_STATE_LIFE ) > 0.405 and not( GetUnitAbilityLevel( f, 'Avul' ) > 0 ) and IsUnitVisible( f, GetOwningPlayer( u ) ) and IsUnitType(f, UNIT_TYPE_MAGIC_IMMUNE) == false then
                            call GroupAddUnit(gRR, f)
                        endif
                        call GroupRemoveUnit(g, f)
                    endloop

                    call DestroyGroup(g)

                    if not IsGroupEmpty(gRR) then

                        loop
                            set FoG = FirstOfGroup( gRR )
                            exitwhen ( FoG == null )

                            if GetUnitState( FoG, UNIT_STATE_LIFE ) < min_hp then
                                set t_unit = FoG
                                set min_hp = GetUnitState( FoG, UNIT_STATE_LIFE )

                            //поменял местами
                        //     call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + " ищем 1" + GetUnitName(FoG) + "мин хп_" + R2S(min_hp) )

                            endif
                            call GroupRemoveUnit( gRR, FoG )

                        endloop
                    // 05.09: DestroyGroup(gRR) убран отсюда — группа уничтожается один раз в конце блока
                    //set t_unit = Get_Target_Unit(u, GetUnitX( u ), GetUnitY( u ))
                   // set t_unit = Get_Target_Unit(u, GetUnitX( u ), GetUnitY( u )) вызвает поиск цели из ловса

                        if t_unit != null then

                            call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ), t_unit )
                          //  call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "нашел супер цель ИИ1_" + GetUnitName(t_unit) )
                            //герой или крип
                        else
                            set g = CreateGroup()
                            call GroupEnumUnitsInRange(g, GetUnitX( u ), GetUnitY( u ), 800., null)
                            loop
                                set f = FirstOfGroup(g)
                                exitwhen f == null
                                if IsPlayerEnemy( GetOwningPlayer( f ) , GetOwningPlayer( u ) ) and GetUnitState(f, UNIT_STATE_LIFE ) > 0.405 and not( GetUnitAbilityLevel( f, 'Avul' ) > 0 ) and IsUnitVisible( f, GetOwningPlayer( u ) ) then
                                    call GroupAddUnit(gRR, f)
                                endif
                                call GroupRemoveUnit(g, f)
                            endloop
                            call DestroyGroup(g)

                            if not IsGroupEmpty(gRR) then

                           //     call DisplayTextToForce( GetPlayersAll( ), "цель доп переборки ИИ2_" )

                                loop
                                    set FoG = FirstOfGroup( gRR )
                                    exitwhen( FoG == null )
                                    if GetUnitState( FoG, UNIT_STATE_LIFE ) < min_hp then

                                        set t_unit = FoG
                                        set min_hp = GetUnitState( FoG, UNIT_STATE_LIFE )
                                   //     call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + " ищем 2" + GetUnitName(FoG) + "мин хп_" + R2S(min_hp) )

                                    endif
                                    call GroupRemoveUnit( gRR, FoG )

                                endloop
                                // 05.09: DestroyGroup(gRR) убран — группа ещё используется в конце блока

                                call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ), t_unit )
                            //    call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "нашел цель ИИ2_" + GetUnitName(t_unit) )
                            // цели 2 никогда нет

                            else

                                if TimerGetRemaining( s__AI__Move_Timer[id] ) == 0.then
                                 //   call DisplayTextToForce( GetPlayersAll( ), "Бродить 0_" + GetUnitName(u) )

                                    set x = GetRandomReal( GetRectMinX( bj_mapInitialPlayableArea ), GetRectMaxX( bj_mapInitialPlayableArea ) )
                                    set y = GetRandomReal( GetRectMinY( bj_mapInitialPlayableArea ), GetRectMaxY( bj_mapInitialPlayableArea ) )
                                    if IssuePointOrderById( u, 851983, x, y ) then
                                        call TimerStart( s__AI__Move_Timer[id], GetRandomReal( 3., 10. ), false, null )
                                    endif
                                endif

                            endif

                        endif
                    else

                        set g = CreateGroup()
                        call GroupEnumUnitsInRange(g, GetUnitX( u ), GetUnitY( u ), 800., null)
                        loop
                            set f = FirstOfGroup(g)
                            exitwhen f == null
                            if IsPlayerEnemy( GetOwningPlayer( f ) , GetOwningPlayer( u ) ) and GetUnitState(f, UNIT_STATE_LIFE ) > 0.405 and not( GetUnitAbilityLevel( f, 'Avul' ) > 0 ) and IsUnitVisible( f, GetOwningPlayer( u ) ) and IsUnitType(f, UNIT_TYPE_MAGIC_IMMUNE) == false then
                                call GroupAddUnit(gRR, f)
                            endif
                            call GroupRemoveUnit(g, f)
                        endloop
                        call DestroyGroup(g)

                        if not IsGroupEmpty(gRR) then
                        //call DisplayTextToForce( GetPlayersAll( ), "цель доп переборки ИИ3_" )
                            loop
                                set FoG = FirstOfGroup( gRR )
                                exitwhen( FoG == null )
                                if GetUnitState( FoG, UNIT_STATE_LIFE ) < min_hp then

                                    set t_unit = FoG
                                    set min_hp = GetUnitState( FoG, UNIT_STATE_LIFE )
                               //     call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + " ищем 3 " + GetUnitName(FoG) + "мин хп врага крип3_" + R2S(min_hp) )

                                endif

                                call GroupRemoveUnit( gRR, FoG )

                            endloop

                            // 05.09: DestroyGroup(gRR) убран — группа ещё используется в конце блока
                            // работает

                            if t_unit != null then
                                call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ), t_unit )
                               // call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "нашел цель ИИ3_" + GetUnitName(t_unit) )

                            else

                                if TimerGetRemaining( s__AI__Move_Timer[id] ) == 0.then
                                  //  call DisplayTextToForce( GetPlayersAll( ), "Бродить 1_" + GetUnitName(u) )
                              //  call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ), null ) //добавил нулл

                                    set x = GetRandomReal( GetRectMinX( bj_mapInitialPlayableArea ), GetRectMaxX( bj_mapInitialPlayableArea ) )
                                    set y = GetRandomReal( GetRectMinY( bj_mapInitialPlayableArea ), GetRectMaxY( bj_mapInitialPlayableArea ) )
                                    if IssuePointOrderById( u, 851983, x, y ) then
                                   //     call DisplayTextToForce( GetPlayersAll( ), "Бродить 1 таймер_" + GetUnitName(u) )
                                        call TimerStart( s__AI__Move_Timer[id], GetRandomReal( 3., 10. ), false, null )
                                    endif
                                endif

                            endif
                        else

                            if TimerGetRemaining( s__AI__Move_Timer[id] ) == 0.then
                         //     call SaveUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" ), null ) //добавил нулл ОНО тут было???

                        //call  DisplayTextToForce( GetPlayersAll( ), "Бродить 2_" + GetUnitName(u) )
                         //     call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "мы помним цель хеш" + GetUnitName(LoadUnitHandle( HT, GetHandleId( u ), StringHash( "H_TARGET" )) ) )
                           //   call DisplayTextToForce( GetPlayersAll( ), GetUnitName(u) + "мы помним цель2" + GetUnitName(t_unit ) )

                                set x = GetRandomReal( GetRectMinX( bj_mapInitialPlayableArea ), GetRectMaxX( bj_mapInitialPlayableArea ) )
                                set y = GetRandomReal( GetRectMinY( bj_mapInitialPlayableArea ), GetRectMaxY( bj_mapInitialPlayableArea ) )
                                if IssuePointOrderById( u, 851983, x, y ) then
                          //   call DisplayTextToForce( GetPlayersAll( ), "Бродить 2 таймер_" + GetUnitName(u) )

                                    call TimerStart( s__AI__Move_Timer[id], GetRandomReal( 3., 10. ), false, null )
                                endif

                            endif

                        endif
                    endif

                    // 05.09: фикс — группа уничтожается ровно один раз в конце блока, раньше могла уничтожаться в ветках и использоваться дальше / утекать
                    call DestroyGroup(gRR)
                    set gRR = null

                    if GetAIDifficulty( p ) == AI_DIFFICULTY_NEWBIE then
                        set t_t = 3.
                    endif
                    if GetAIDifficulty( p ) == AI_DIFFICULTY_NORMAL then
                        set t_t = 2.
                    endif
                    if GetAIDifficulty( p ) == AI_DIFFICULTY_INSANE then
                        set t_t = 1.
                    endif
                    call TimerStart( s__AI__Check_Timer[id], t_t, FALSE, null )
                endif

            endif
        endif

        set j = j + 1

    endloop
    set g = null
    set gRR = null
    set u = null
    set t_unit = null
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set FoG = null
    set f = null
endfunction

// ===== Ai_wait (строки 1850-1855) =====
function Ai_wait takes nothing returns nothing
    local timer old = GetExpiredTimer( ) // 07.09: anti-leak - tajmer iz AI__I
    call TimerStart(CreateTimer(), 5., TRUE, function AI__A_Buy )
    call DestroyTimer( old )
    set old = null
endfunction

// ===== AI__I (строки 1857-1878) =====
function AI__I takes nothing returns nothing
    local timer t = CreateTimer( )
    local trigger T_Death
    local integer i = 0 //хз на 0
    call TimerStart( t, 30., false, function Ai_wait)
    set t = null //перекопировал триггорв
    set T_Death = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( T_Death, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( T_Death, function AI__A_Death )
    set AI__Shop = gg_unit_edos_0053 //Магазин
    loop
        exitwhen( i > 11 )

        set s__AI__Check_Timer[i] = CreateTimer( )
        set s__AI__Spam_Timer[i] = CreateTimer( )
        set s__AI__Move_Timer[i] = CreateTimer( )

        set i = i + 1
    endloop
    // 05.09: anti-leak (obnulenie lokalov)
    set T_Death = null
endfunction

// ===== MakingAlpha (строки 1880-1896) =====
function MakingAlpha takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "u" ) )
    local real max = LoadReal( HT, GetHandleId( t ), StringHash( "max" ) )
    local real alpha = LoadReal( HT, GetHandleId( t ), StringHash( "alpha" ) )
    if max > 0.then
        call SetUnitVertexColorBJ( u, 100., 100., 100., alpha - ( 2. / 0.04 / 100. ) * 4 )
        call SaveReal( HT, GetHandleId( t ), StringHash( "max" ), max - 1. )
        call SaveReal( HT, GetHandleId( t ), StringHash( "alpha" ), alpha - ( 2. / 0.04 / 100. ) * 4 )
    else
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
    endif
    set t = null
    set u = null
endfunction

// ===== AlphaLib_AddAlphing (строки 1898-1908) =====
function AlphaLib_AddAlphing takes unit u returns nothing
    local timer t = CreateTimer( )
    if ( GetUnitTypeId( u ) != 'N006' ) then
        call SetUnitVertexColorBJ( u, 100, 100, 100, 100 )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "u" ), u )
        call SaveReal( HT, GetHandleId( t ), StringHash( "max" ), 2. / 0.04 )
        call SaveReal( HT, GetHandleId( t ), StringHash( "alpha" ), 100. )
        call TimerStart( t, 0.04, true, function MakingAlpha )
    endif
    set t = null
endfunction

// ===== AntiBJ_MultiboardSetItemWidthBJN (строки 1946-1969) =====
function AntiBJ_MultiboardSetItemWidthBJN takes multiboard mb, integer col, integer row, real width returns nothing
    local integer curRow = 0
    local integer curCol = 0
    local integer numRows = MultiboardGetRowCount( mb )
    local integer numCols = MultiboardGetColumnCount( mb )
    local multiboarditem mbitem = null
    loop
        set curRow = curRow + 1
        exitwhen curRow > numRows
        if ( row == 0 or row == curRow ) then
            set curCol = 0
            loop
                set curCol = curCol + 1
                exitwhen curCol > numCols
                if ( col == 0 or col == curCol ) then
                    set mbitem = MultiboardGetItem( mb, curRow - 1, curCol - 1 )
                    call MultiboardSetItemWidth( mbitem, width / 100.0 )
                    call MultiboardReleaseItem( mbitem )
                endif
            endloop
        endif
    endloop
    set mbitem = null
endfunction

// ===== Colors__I (строки 1970-2023) =====
function Colors__I takes nothing returns nothing
    call TriggerSleepAction( 0.01 )
    set s__Color_Hex[1] = "|c00ff0303"
    set s__Color_Hex[2] = "|c000042ff"
    set s__Color_Hex[3] = "|c001ce6b9"
    set s__Color_Hex[4] = "|c00540079"
    set s__Color_Hex[5] = "|c00fffc01"
    set s__Color_Hex[6] = "|c00fe8a0e"
    set s__Color_Hex[7] = "|c0020c000"
    set s__Color_Hex[8] = "|c00e55bb0"
    set s__Color_Hex[9] = "|c00959697"
    set s__Color_Hex[10] = "|c007ebff1"
    set s__Color_Hex[11] = "|c00106246"
    set s__Color_Hex[12] = "|c004e2a04"
    set s__Color_Dec_1[1] = 255
    set s__Color_Dec_2[1] = 3
    set s__Color_Dec_3[1] = 3
    set s__Color_Dec_1[2] = 0
    set s__Color_Dec_2[2] = 66
    set s__Color_Dec_3[2] = 255
    set s__Color_Dec_1[3] = 28
    set s__Color_Dec_2[3] = 230
    set s__Color_Dec_3[3] = 185
    set s__Color_Dec_1[4] = 84
    set s__Color_Dec_2[4] = 0
    set s__Color_Dec_3[4] = 121
    set s__Color_Dec_1[5] = 255
    set s__Color_Dec_2[5] = 252
    set s__Color_Dec_3[5] = 1
    set s__Color_Dec_1[6] = 254
    set s__Color_Dec_2[6] = 138
    set s__Color_Dec_3[6] = 14
    set s__Color_Dec_1[7] = 32
    set s__Color_Dec_2[7] = 192
    set s__Color_Dec_3[7] = 0
    set s__Color_Dec_1[8] = 229
    set s__Color_Dec_2[8] = 91
    set s__Color_Dec_3[8] = 176
    set s__Color_Dec_1[9] = 149
    set s__Color_Dec_2[9] = 150
    set s__Color_Dec_3[9] = 151
    set s__Color_Dec_1[10] = 126
    set s__Color_Dec_2[10] = 191
    set s__Color_Dec_3[10] = 241
    set s__Color_Dec_1[11] = 16
    set s__Color_Dec_2[11] = 98
    set s__Color_Dec_3[11] = 70
    set s__Color_Dec_1[12] = 78
    set s__Color_Dec_2[12] = 42
    set s__Color_Dec_3[12] = 4
    set s__Color_Dec_1[13] = 128
    set s__Color_Dec_2[13] = 128
    set s__Color_Dec_3[13] = 128
endfunction

// ===== Set_DM_MB_Act (строки 2154-2250) =====
function Set_DM_MB_Act takes nothing returns nothing
    local boolean array is_min
    local integer i = 1
    local multiboarditem mbi = null
    loop
        exitwhen( i > 10 )
        if GetLocalPlayer( ) == Player( i - 1 ) then
            set is_min[i] = IsMultiboardMinimized( DMMultiboardLib_DM_MB )
        endif
        set i = i + 1
    endloop
    call MultiboardDisplay( DMMultiboardLib_DM_MB, FALSE )
    call DestroyMultiboard( DMMultiboardLib_DM_MB )
    set DMMultiboardLib_DM_MB = null
    set DMMultiboardLib_DM_MB = CreateMultiboard( )
    call MultiboardSetColumnCount( DMMultiboardLib_DM_MB, 5 )
    if Choosed_Creeps then
        call MultiboardSetColumnCount( DMMultiboardLib_DM_MB, 5 + 1 )
    endif
    call MultiboardSetRowCount( DMMultiboardLib_DM_MB, Online_Players + 1 )
    call MultiboardSetItemsStyle( DMMultiboardLib_DM_MB, true, false )
    call MultiboardSetTitleText( DMMultiboardLib_DM_MB, "Арена || Лимит: " + I2S( Choosed_WP ) )
    set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, 0, 0 )
    call AntiBJ_MultiboardSetItemWidthBJN( DMMultiboardLib_DM_MB, 1, 0, 12. ) //8 10
    set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, 0, 1 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "K" )
    call AntiBJ_MultiboardSetItemWidthBJN( DMMultiboardLib_DM_MB, 2, 0, 1.8 ) //1.5 1.6
    set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, 0, 2 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "D" )
    call AntiBJ_MultiboardSetItemWidthBJN( DMMultiboardLib_DM_MB, 3, 0, 1.8 ) //1.5
    set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, 0, 3 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "L" )
    call AntiBJ_MultiboardSetItemWidthBJN( DMMultiboardLib_DM_MB, 4, 0, 1.8 ) //1.5
    set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, 0, 4 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "DPS" )
    call AntiBJ_MultiboardSetItemWidthBJN( DMMultiboardLib_DM_MB, 5, 0, 3.4 ) //2.8 3.1
    set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, 0, 5 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "CR" )
    call AntiBJ_MultiboardSetItemWidthBJN( DMMultiboardLib_DM_MB, 6, 0, 2.5 ) //1.9 2.2
    set i = 1
    loop
        exitwhen( i > Online_Players )
        set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, i, 0 )
        call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + GetPlayerName( s__Online_Player[i] ) + "|r" )
        call MultiboardSetItemStyle( mbi, true, true )
        if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
            call MultiboardSetItemValue( mbi, s__Color_Hex[9] + "[-]|r" + s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + GetPlayerName( s__Online_Player[i] ) + "|r" )
        endif
        if GetUnitState( s__Hero[GetConvertedPlayerId( s__Online_Player[i] )], UNIT_STATE_LIFE ) > 0.405 then
            call MultiboardSetItemIcon( mbi, s__Hero_Icon_A[GetConvertedPlayerId( s__Online_Player[i] )] )
        else
            call MultiboardSetItemIcon( mbi, s__Hero_Icon_D[GetConvertedPlayerId( s__Online_Player[i] )] )
        endif
        set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, i, 1 )
        call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Kills[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
        if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
            call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
        endif
        set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, i, 2 )
        call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Deaths[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
        if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
            call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
        endif
        set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, i, 3 )
        call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Level[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
        if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
            call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
        endif
        set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, i, 4 )
        call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( R2I( s__DPSLib_DPS[GetConvertedPlayerId( s__Online_Player[i] )] ) ) + "|r" )
        if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
            call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
        endif
        if Choosed_Creeps then
            set mbi = MultiboardGetItem( DMMultiboardLib_DM_MB, i, 5 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Creeps[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
        endif
        set i = i + 1
    endloop
    call MultiboardDisplay( DMMultiboardLib_DM_MB, true )
    set i = 1
    loop
        exitwhen( i > 10 )
        if GetLocalPlayer( ) == Player( i - 1 ) then
            if is_min[i]then
                call MultiboardMinimize( DMMultiboardLib_DM_MB, true )
            else
                call MultiboardMinimize( DMMultiboardLib_DM_MB, FALSE )
            endif
        endif
        set i = i + 1
    endloop
    set mbi = null
endfunction

// ===== EscShops__Act (строки 2450-2455) =====
function EscShops__Act takes nothing returns nothing
    if GetLocalPlayer( ) == GetTriggerPlayer( ) then
        call ClearSelection( )
        call SelectUnit( EscShops__Shop, TRUE )
    endif
endfunction

// ===== EscShops__init (строки 2457-2471) =====
function EscShops__init takes nothing returns nothing
    local integer i = 0
    local player p = null
    loop
        exitwhen( i > 12 )
        set p = Player( i )
        call TriggerRegisterPlayerEvent( EscShops_Trg, p, EVENT_PLAYER_END_CINEMATIC )
        set i = i + 1
    endloop
    call TriggerAddAction( EscShops_Trg, function EscShops__Act )
    //call DisableTrigger( EscShops_Trg )
    set EscShops__Shop = gg_unit_edos_0053
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
endfunction

// ===== IF_CountItemInInventory (строки 2648-2659) =====
function IF_CountItemInInventory takes unit u, integer it returns integer
    local integer i = 0
    local integer count = 0
    loop
        exitwhen i > 5
        if ( GetItemTypeId( UnitItemInSlot( u, i ) ) == it ) then
            set count = count + 1
        endif
        set i = i + 1
    endloop
    return count
endfunction

// ===== IF_RemoveItemFromInventory (строки 2661-2670) =====
function IF_RemoveItemFromInventory takes unit u, integer it returns nothing
    local integer i = 0
    loop
        exitwhen i > 5 or GetItemTypeId( UnitItemInSlot( u, i ) ) == it
        set i = i + 1
    endloop
    if ( i < 6 ) then
        call RemoveItem( UnitItemInSlot( u, i ) )
    endif
endfunction

// ===== IF_IsItemInInventory (строки 2672-2679) =====
function IF_IsItemInInventory takes unit u, item it returns boolean
    local integer i = 0
    loop
        exitwhen i > 5 or UnitItemInSlot( u, i ) == it
        set i = i + 1
    endloop
    return i < 6
endfunction

// ===== SetUnitMax_Life (строки 3646-3686) =====
function SetUnitMax_Life takes unit u, integer val returns nothing
    local integer i = 'A00J'
    local integer c = val - R2I( GetUnitState( u, UNIT_STATE_MAX_LIFE ) )
    if i == 0 then
        return
    endif
    if c > 0 then
        loop
            exitwhen c == 0
            call UnitAddAbility( u, i )
            if c >= 100 then
                set c = c - 100
                call SetUnitAbilityLevel( u, i, 4 )
            elseif c >= 10 then
                set c = c - 10
                call SetUnitAbilityLevel( u, i, 3 )
            else
                set c = c - 1
                call SetUnitAbilityLevel( u, i, 2 )
            endif
            call UnitRemoveAbility( u, i )
        endloop
    elseif c < 0 then
        set c = -c
        loop
            exitwhen c == 0
            call UnitAddAbility( u, i )
            if c >= 100 then
                set c = c - 100
                call SetUnitAbilityLevel( u, i, 7 )
            elseif c >= 10 then
                set c = c - 10
                call SetUnitAbilityLevel( u, i, 6 )
            else
                set c = c - 1
                call SetUnitAbilityLevel( u, i, 5 )
            endif
            call UnitRemoveAbility( u, i )
        endloop
    endif
endfunction

// ===== SetUnitMax__I (строки 3688-3695) =====
function SetUnitMax__I takes nothing returns nothing
    local unit dummy = CreateUnit( Player( 13 ), 'hfoo', 0., 0., 0. )
    call SetUnitMax_Life( dummy, 100 )
    call TriggerSleepAction( 0.1 )
    call RemoveUnit( dummy )
    // 05.09: anti-leak (obnulenie lokalov)
    set dummy = null
endfunction

// ===== Set_TDM_MB_Act (строки 3843-4010) =====
function Set_TDM_MB_Act takes nothing returns nothing
    local boolean array is_min
    local integer i = 1
    local multiboarditem mbi = null
    local boolean team2set
    loop
        exitwhen( i > 10 )
        if GetLocalPlayer( ) == Player( i - 1 ) then
            set is_min[i] = IsMultiboardMinimized( TDMMultiboardLib_TDM_MB )
        endif
        set i = i + 1
    endloop
    call MultiboardDisplay( TDMMultiboardLib_TDM_MB, FALSE )
    call DestroyMultiboard( TDMMultiboardLib_TDM_MB )
    set TDMMultiboardLib_TDM_MB = null
    set TDMMultiboardLib_TDM_MB = CreateMultiboard( )
    call MultiboardSetColumnCount( TDMMultiboardLib_TDM_MB, 5 )
    if Choosed_Creeps then
        call MultiboardSetColumnCount( TDMMultiboardLib_TDM_MB, 5 + 1 )
    endif
    call MultiboardSetRowCount( TDMMultiboardLib_TDM_MB, Online_Players + 3 )
    call MultiboardSetItemsStyle( TDMMultiboardLib_TDM_MB, true, false )
    call MultiboardSetTitleText( TDMMultiboardLib_TDM_MB, "Командная Арена || Лимит: " + I2S( Choosed_WP ) )
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 0, 0 )
    call AntiBJ_MultiboardSetItemWidthBJN( TDMMultiboardLib_TDM_MB, 1, 0, 12. ) //8 10
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 0, 1 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "K" )
    call AntiBJ_MultiboardSetItemWidthBJN( TDMMultiboardLib_TDM_MB, 2, 0, 1.8 ) //1.5 1.7
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 0, 2 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "D" )
    call AntiBJ_MultiboardSetItemWidthBJN( TDMMultiboardLib_TDM_MB, 3, 0, 1.8 ) //1.5
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 0, 3 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "L" )
    call AntiBJ_MultiboardSetItemWidthBJN( TDMMultiboardLib_TDM_MB, 4, 0, 1.8 ) //1.5
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 0, 4 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "DPS" )
    call AntiBJ_MultiboardSetItemWidthBJN( TDMMultiboardLib_TDM_MB, 5, 0, 3.4 ) //2.8 3.1
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 0, 5 )
    call MultiboardSetItemValue( mbi, s__Color_Hex[7] + "CR" )
    call AntiBJ_MultiboardSetItemWidthBJN( TDMMultiboardLib_TDM_MB, 6, 0, 2.5 ) //1.9 2.2
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 1, 0 )
    call MultiboardSetItemValue( mbi, "|cFF00FF00»|r " + s__Team_Name[1] )
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 1, 1 )
    call MultiboardSetItemValue( mbi, I2S( s__Kills_Team[1] ) )
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 1, 2 )
    call MultiboardSetItemValue( mbi, I2S( s__Deaths_Team[1] ) )
    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 1, 3 )
    call MultiboardSetItemValue( mbi, I2S( s__Lvl_Team[1] ) )
    if Choosed_Creeps then
        set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, 1, 5 )
        call MultiboardSetItemValue( mbi, I2S( s__Creeps_Team[1] ) )
    endif
    set team2set = FALSE
    set i = 1

    loop
        exitwhen( i > Online_Players )
        if GetConvertedPlayerId( s__Online_Player[i] ) < 6 then
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 0 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + GetPlayerName( s__Online_Player[i] ) + "|r" )
            call MultiboardSetItemStyle( mbi, true, true )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValue( mbi, s__Color_Hex[9] + "[-]|r" + s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + GetPlayerName( s__Online_Player[i] ) + "|r" )
            endif
            if GetUnitState( s__Hero[GetConvertedPlayerId( s__Online_Player[i] )], UNIT_STATE_LIFE ) > 0.405 then
                call MultiboardSetItemIcon( mbi, s__Hero_Icon_A[GetConvertedPlayerId( s__Online_Player[i] )] )
            else
                call MultiboardSetItemIcon( mbi, s__Hero_Icon_D[GetConvertedPlayerId( s__Online_Player[i] )] )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 1 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Kills[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 2 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Deaths[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 3 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Level[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 4 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( R2I( s__DPSLib_DPS[GetConvertedPlayerId( s__Online_Player[i] )] ) ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            if Choosed_Creeps then
                set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 5 )
                call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Creeps[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
                if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                    call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
                endif
            endif
        else
            if not team2set then
                set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 0 )
                call MultiboardSetItemValue( mbi, "|cFF00FF00»|r " + s__Team_Name[2] )
                set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 1 )
                call MultiboardSetItemValue( mbi, I2S( s__Kills_Team[2] ) )
                set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 2 )
                call MultiboardSetItemValue( mbi, I2S( s__Deaths_Team[2] ) )
                set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 3 )
                call MultiboardSetItemValue( mbi, I2S( s__Lvl_Team[2] ) )
                if Choosed_Creeps then
                    set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 1, 5 )
                    call MultiboardSetItemValue( mbi, I2S( s__Creeps_Team[2] ) )
                endif
                set team2set = TRUE
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 2, 0 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + GetPlayerName( s__Online_Player[i] ) + "|r" )
            call MultiboardSetItemStyle( mbi, true, true )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValue( mbi, s__Color_Hex[9] + "[-]|r" + s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + GetPlayerName( s__Online_Player[i] ) + "|r" )
            endif
            if GetUnitState( s__Hero[GetConvertedPlayerId( s__Online_Player[i] )], UNIT_STATE_LIFE ) > 0.405 then
                call MultiboardSetItemIcon( mbi, s__Hero_Icon_A[GetConvertedPlayerId( s__Online_Player[i] )] )
            else
                call MultiboardSetItemIcon( mbi, s__Hero_Icon_D[GetConvertedPlayerId( s__Online_Player[i] )] )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 2, 1 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Kills[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 2, 2 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Deaths[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 2, 3 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Level[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 2, 4 )
            call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( R2I( s__DPSLib_DPS[GetConvertedPlayerId( s__Online_Player[i] )] ) ) + "|r" )
            if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
            endif
            if Choosed_Creeps then
                set mbi = MultiboardGetItem( TDMMultiboardLib_TDM_MB, i + 2, 5 )
                call MultiboardSetItemValue( mbi, s__Color_Hex[GetConvertedPlayerId( s__Online_Player[i] )] + I2S( s__Creeps[GetConvertedPlayerId( s__Online_Player[i] )] ) + "|r" )
                if GetPlayerSlotState( s__Online_Player[i] ) == PLAYER_SLOT_STATE_LEFT then
                    call MultiboardSetItemValueColor( mbi, 128, 128, 128, 255 )
                endif
            endif
        endif
        set i = i + 1
    endloop
    call MultiboardDisplay( TDMMultiboardLib_TDM_MB, true )
    set i = 1
    loop
        exitwhen( i > 10 )
        if GetLocalPlayer( ) == Player( i - 1 ) then
            if is_min[i]then
                call MultiboardMinimize( TDMMultiboardLib_TDM_MB, true )
            else
                call MultiboardMinimize( TDMMultiboardLib_TDM_MB, FALSE )
            endif
        endif
        set i = i + 1
    endloop
    set mbi = null
endfunction

// ===== Act (строки 4125-4141) =====
function Act takes nothing returns nothing
    local integer i = 0
    loop
        exitwhen( i > ( 10  ) )

        if s__ADSLib_ADS_Enabled[i + 1] and GetPlayerSlotState(Player( i )) == PLAYER_SLOT_STATE_PLAYING  then
            if not IsUnitSelected( s__Hero[i + 1], Player( i ) ) and not IsUnitSelected( gg_unit_n000_0005, Player( i ) )and not IsUnitSelected( gg_unit_n002_0006, Player( i ) )and not IsUnitSelected( gg_unit_n001_0007, Player( i ) )and not IsUnitSelected( gg_unit_edos_0053, Player( i ) ) then

                if GetLocalPlayer( ) == Player( i ) then
                    call ClearSelection( )
                    call SelectUnit( s__Hero[i + 1], TRUE )
                endif
            endif
        endif
        set i = i + 1
    endloop
endfunction

// ===== Damage_CreateTextTagNew (строки 4752-4800) =====
function Damage_CreateTextTagNew takes unit u, real value, integer dmgOwnPlayerId, boolean crit, boolean isHeal returns nothing
    local real size = DamageLib__Normal_Size
    local real time = 0.6
    local texttag tt
    local integer i = 1
    local string text

    if crit then
        set size = DamageLib__Crit_Size
        set time = time * 2
    endif

    if isHeal then
        set text = "+" + I2S(R2I(value)) // Для исцеления
    else
        set text = I2S(R2I(value)) // Для урона
    endif

    set tt = CreateTextTagUnitBJ(text, u, DamageLib__Spell_Damage_Height, size, 255, 255, 255, 255)

    if value < 1. then
        call SetTextTagText(tt, "", size * 2)
    endif

    if LoadBoolean(HT, GetHandleId(u), StringHash("PalShield")) then
        call SetTextTagText(tt, "", size * 2)
    endif

    // Отображение текста только для игроков, которые могут видеть цель
    if GetLocalPlayer() == Player(dmgOwnPlayerId) or GetLocalPlayer() == GetOwningPlayer(u) then
        call SetTextTagVisibility(tt, TRUE)
    else
        call SetTextTagVisibility(tt, FALSE)
    endif

    call SetTextTagVelocity(tt, 0.03, 0.03)

    if isHeal then
        call SetTextTagColor(tt, 0, 255, 0, 255) // Зеленый для исцеления
    else
        call SetTextTagColor(tt, 255, 255, 255, 255) // Белый для урона
    endif

    call SetTextTagFadepoint(tt, time / 2)
    call SetTextTagLifespan(tt, time)
    call SetTextTagPermanent(tt, false)

    set tt = null
endfunction

// ===== ForkedLightning_Act (строки 5201-5294) =====
function ForkedLightning_Act takes unit caster, unit target, real dmg, integer count returns nothing
    local timer t
    local integer tid
   // local unit caster = GetTriggerUnit()
    //local unit target = GetSpellTargetUnit()
    local integer jump = count
    local integer jumpmax = count
    local lightning chain
    local real damage = dmg
    local real x = GetUnitX(caster)
    local real y = GetUnitY(caster)
    local real z = GetUnitFlyHeight(caster) + 60
    local real tx
    local real ty
    local real tz
    local real number = 0
    local group g = CreateGroup()
    local group g2 = CreateGroup()
    local unit enemy
    local unit tarter
    local real dx
    local real dy
    local real distance
    local real distance2
    loop
        exitwhen jump == 0
        if jump < jumpmax then
            set tx = GetUnitX(target)
            set ty = GetUnitY(target)
            set distance2 = 300
            call GroupEnumUnitsInRange(g, tx, ty, distance2, null)
            loop
                set enemy = FirstOfGroup(g)
                exitwhen enemy == null
                if IsUnitInGroup(enemy, g2) == false and IsUnitType(enemy, UNIT_TYPE_STRUCTURE) == false and IsUnitType(enemy , UNIT_TYPE_MAGIC_IMMUNE) == false and IsUnitType(enemy, UNIT_TYPE_DEAD) == false and IsUnitEnemy(enemy, GetOwningPlayer(caster)) == true and GetUnitState( enemy, UNIT_STATE_LIFE ) > 0.405 then
                    set x = GetUnitX(enemy)
                    set y = GetUnitY(enemy)
                    set dx = tx - x
                    set dy = ty - y

                    set distance = SquareRoot(dx * dx + dy * dy)
                    if distance < distance2 then
                        set distance2 = distance
                        set tarter = enemy
                    endif
                endif
                call GroupRemoveUnit(g, enemy)
                set enemy = null
            endloop
        else
            set tarter = target
        endif

        if tarter != null then
            call GroupAddUnit(g2, tarter)
            set jump = jump - 1
            set x = GetUnitX(caster)
            set y = GetUnitY(caster)
            set tx = GetUnitX(tarter)
            set ty = GetUnitY(tarter)
     //       set tz = GetUnitFlyHeight(tarter) + 60
      //      set chain = AddLightningEx( "FORK", true, x, y, z, tx, ty, tz )
            call DestroyEffect( AddSpecialEffectTarget("Abilities\\Weapons\\Bolt\\BoltImpact.mdl" , tarter, "origin") )
         //   call UnitDamageTarget(caster, tarter, damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, null)
          //  call DisableTrigger( gg_trg_DamageCategory0)

            call DamageLib_SpellDamage( caster, tarter, GROS5_FilterWater( tx, ty , dmg ))
           // call EnableTrigger( gg_trg_DamageCategory0 )

            call LightningUnit(caster, tarter, "FORK", 1, 1, 1, 1, 0.8, 2000)

       //     set t = CreateTimer()
       //     set tid = GetHandleId(t)
       //     call SaveUnitHandle(HT, tid, 300, caster)
        //    call SaveUnitHandle(HT, tid, 301, tarter)
         //   call SaveLightningHandle(HT, tid, 302, chain)
        //    call SaveReal(HT, tid, 303, number)
       //     call TimerStart(t, 0.02, true, function Forked_Lightning_timer)

            set tarter = null
        else
            set jump = 0
        endif
    //    call DisplayTextToForce( GetPlayersAll(), I2S(CountUnitsInGroup(g2)) )
    endloop
    call DestroyGroup(g)
    call DestroyGroup(g2)
    set t = null
    set caster = null
    set target = null
    set chain = null
    set g = null
    set g2 = null
endfunction

// ===== DamageCategory0_Actions (строки 5319-5341) =====
function DamageCategory0_Actions takes nothing returns nothing
    local real eventDamage = GetEventDamage()
    local unit target = GetTriggerUnit()
    local unit damageSource = GetEventDamageSource()
    local timer t
    local integer id
    local integer i = 0
    local integer Random = GetRandomInt(0, 100)
    local real dist = Dist( GetUnitX(damageSource), GetUnitY(damageSource), GetUnitX(target), GetUnitY(target) )

    call DisableTrigger( gg_trg_DamageCategory0)
    if damageSource != null and eventDamage > 0. and IsUnitEnemy(damageSource, GetOwningPlayer(target)) and IsUnitType(damageSource, UNIT_TYPE_MAGIC_IMMUNE) == false and GetUnitState(damageSource, UNIT_STATE_LIFE ) > 0.405 then
        call GROS4spell(damageSource, target, eventDamage )

        //атака молний сюд

    endif

    call EnableTrigger( gg_trg_DamageCategory0 )
    set target = null
    set damageSource = null
    set t = null
endfunction

// ===== DamageCategory0_Cond (строки 5343-5345) =====
function DamageCategory0_Cond takes nothing returns boolean
    return GetEventDamage() > 0 and GetEventDamageSource() != GetTriggerUnit()
endfunction

// ===== InitTrig_DamageCategory0 (строки 5347-5351) =====
function InitTrig_DamageCategory0 takes nothing returns nothing
    set gg_trg_DamageCategory0 = CreateTrigger()
    call TriggerAddCondition(gg_trg_DamageCategory0, Condition(function DamageCategory0_Cond))
    call TriggerAddAction(gg_trg_DamageCategory0, function DamageCategory0_Actions)
endfunction

// ===== s__recept_create (строки 5723-5743) =====
function s__recept_create takes integer target, integer s1, integer s2, integer s3, integer s4, integer s5, integer s6, integer s7 returns integer
    local integer r = s__recept__allocate( )
    set s__recept_target[r] = target
    set s__recept_count[r] = 0
    set s___recept_it[s__recept_it[r]] = s1
    set s___recept_it[s__recept_it[r] + 1] = s2
    set s___recept_it[s__recept_it[r] + 2] = s3
    set s___recept_it[s__recept_it[r] + 3] = s4
    set s___recept_it[s__recept_it[r] + 4] = s5
    set s___recept_it[s__recept_it[r] + 5] = s6
    set s___recept_it[s__recept_it[r] + 6] = s7
    set s___recept_kratn[s__recept_kratn[r]] = 1
    set s___recept_kratn[s__recept_kratn[r] + 1] = 1
    set s___recept_kratn[s__recept_kratn[r] + 2] = 1
    set s___recept_kratn[s__recept_kratn[r] + 3] = 1
    set s___recept_kratn[s__recept_kratn[r] + 4] = 1
    set s___recept_kratn[s__recept_kratn[r] + 5] = 1
    set s___recept_kratn[s__recept_kratn[r] + 6] = 1
    call sc__recept_normalize( r )
    return r
endfunction

// ===== s__recepts_create (строки 5744-5748) =====
function s__recepts_create takes nothing returns integer
    local integer r = s__recepts__allocate( )
    set s__recepts_count[r] = 0
    return r
endfunction

// ===== s__recepts_add (строки 5749-5754) =====
function s__recepts_add takes integer this, integer target, integer s1, integer s2, integer s3, integer s4, integer s5, integer s6, integer s7 returns nothing
    if ( target > 0 )and( s1 > 0 )and( s2 > 0 ) then
        set s___recepts_list[s__recepts_list[this] + s__recepts_count[this]] = s__recept_create( target, s1, s2, s3, s4, s5, s6, s7 )
        set s__recepts_count[this] = s__recepts_count[this] + 1
    endif
endfunction

// ===== s__recepts_try (строки 5755-5796) =====
function s__recepts_try takes integer this, item it, unit u returns boolean
    local boolean b
    local boolean bb
    local integer i = 0
    local integer j
    local integer k
    local item it1
    loop
        exitwhen i >= s__recepts_count[this]
        set b = true
        set j = 0
        set bb = IF_IsItemInInventory( u, it )
        loop
            exitwhen( j >= s__recept_count[s___recepts_list[s__recepts_list[this] + i]] )or( not b )
            set k = IF_CountItemInInventory( u, s___recept_it[s__recept_it[s___recepts_list[s__recepts_list[this] + i]] + j] )
            set b = ( ( not bb )and( ( k >= s___recept_kratn[s__recept_kratn[s___recepts_list[s__recepts_list[this] + i]] + j] )or( ( k >= s___recept_kratn[s__recept_kratn[s___recepts_list[s__recepts_list[this] + i]] + j] - 1 )and( GetItemTypeId( it ) == s___recept_it[s__recept_it[s___recepts_list[s__recepts_list[this] + i]] + j] ) ) ) )or( ( bb )and( ( k >= s___recept_kratn[s__recept_kratn[s___recepts_list[s__recepts_list[this] + i]] + j] ) ) )
            set j = j + 1
        endloop
        if b then
            call RemoveItem( it )
            set j = 0
            loop
                exitwhen j > s__recept_count[s___recepts_list[s__recepts_list[this] + i]]
                set k = 0
                loop
                    exitwhen( k >= s___recept_kratn[s__recept_kratn[s___recepts_list[s__recepts_list[this] + i]] + j] )or( ( k >= s___recept_kratn[s__recept_kratn[s___recepts_list[s__recepts_list[this] + i]] + j] - 1 )and( GetItemTypeId( it ) == s___recept_it[s__recept_it[s___recepts_list[s__recepts_list[this] + i]] + j] ) )
                    call IF_RemoveItemFromInventory( u, s___recept_it[s__recept_it[s___recepts_list[s__recepts_list[this] + i]] + j] )
                    set k = k + 1
                endloop
                set j = j + 1
            endloop
            set it1 = CreateItem( s__recept_target[s___recepts_list[s__recepts_list[this] + i]], GetUnitX( u ), GetUnitY( u ) )
            call DestroyEffect( AddSpecialEffectTarget( ISS__FX, u, "origin" ) )
            call UnitAddItem( u, it1 )
            set it1 = null
            return true
        endif
        set i = i + 1
    endloop
    set it1 = null
    return false
endfunction

// ===== s__itemdummy_create (строки 5798-5804) =====
function s__itemdummy_create takes integer it, integer du, boolean buy returns integer
    local integer id = s__itemdummy__allocate( )
    set s__itemdummy_it[id] = it
    set s__itemdummy_du[id] = du
    set s__itemdummy_buy[id] = buy
    return id
endfunction

// ===== s__items_create (строки 5806-5810) =====
function s__items_create takes nothing returns integer
    local integer i = s__items__allocate( )
    set s__items_count[i] = 0
    return i
endfunction

// ===== s__items_add (строки 5812-5815) =====
function s__items_add takes integer this, integer it, integer du, boolean buy returns nothing
    set s___items_list[s__items_list[this] + s__items_count[this]] = s__itemdummy_create( it, du, buy )
    set s__items_count[this] = s__items_count[this] + 1
endfunction

// ===== s__items_getdummyindex (строки 5817-5827) =====
function s__items_getdummyindex takes integer this, integer it returns integer
    local integer i = 0
    loop
        exitwhen i >= s__items_count[this]
        if ( s__itemdummy_du[s___items_list[s__items_list[this] + i]] == it ) then
            return i
        endif
        set i = i + 1
    endloop
    return - 1
endfunction

// ===== s__items_getitemindex (строки 5829-5839) =====
function s__items_getitemindex takes integer this, integer it returns integer
    local integer i = 0
    loop
        exitwhen i >= s__items_count[this]
        if ( s__itemdummy_it[s___items_list[s__items_list[this] + i]] == it ) then
            return i
        endif
        set i = i + 1
    endloop
    return - 1
endfunction

// ===== s__items_getdummy (строки 5841-5843) =====
function s__items_getdummy takes integer this, integer i returns integer
    return s__itemdummy_du[s___items_list[s__items_list[this] + i]]
endfunction

// ===== s__items_getitem (строки 5845-5847) =====
function s__items_getitem takes integer this, integer i returns integer
    return s__itemdummy_it[s___items_list[s__items_list[this] + i]]
endfunction

// ===== s__items_getbuy (строки 5849-5851) =====
function s__items_getbuy takes integer this, integer i returns boolean
    return s__itemdummy_buy[s___items_list[s__items_list[this] + i]]
endfunction

// ===== creepsInit (строки 7061-7114) =====
function creepsInit takes nothing returns nothing
    call TriggerSleepAction( 0.01 )
    set s__CreepsLib__Count_Creeps[1] = 3
    set s__CreepsLib__Count_Creeps[2] = 3
    set s__CreepsLib__Count_Creeps[3] = 3
    set s__CreepsLib__Count_Creeps[4] = 3
    set s__CreepsLib__Count_Creeps[5] = 3
    set s__CreepsLib__Max_Levels[1] = 6
    set s__CreepsLib__Max_Levels[2] = 6
    set s__CreepsLib__Max_Levels[3] = 4
    set s__CreepsLib__Max_Levels[4] = 6
    set s__CreepsLib__Max_Levels[5] = 4
    call SaveInteger( HT, StringHash( "Camp_1" ), StringHash( "Level_1" ), 'nfrl' )
    call SaveInteger( HT, StringHash( "Camp_1" ), StringHash( "Level_2" ), 'nfrs' )
    call SaveInteger( HT, StringHash( "Camp_1" ), StringHash( "Level_3" ), 'nfrb' )
    call SaveInteger( HT, StringHash( "Camp_1" ), StringHash( "Level_4" ), 'nfrg' )
    call SaveInteger( HT, StringHash( "Camp_1" ), StringHash( "Level_5" ), 'nfre' )
    call SaveInteger( HT, StringHash( "Camp_1" ), StringHash( "Level_6" ), 'nfra' )

    call SaveInteger( HT, StringHash( "Camp_2" ), StringHash( "Level_1" ), 'nban' )
    call SaveInteger( HT, StringHash( "Camp_2" ), StringHash( "Level_2" ), 'nbrg' )
    call SaveInteger( HT, StringHash( "Camp_2" ), StringHash( "Level_3" ), 'nrog' )
    call SaveInteger( HT, StringHash( "Camp_2" ), StringHash( "Level_4" ), 'nass' )
    call SaveInteger( HT, StringHash( "Camp_2" ), StringHash( "Level_5" ), 'nenf' )
    call SaveInteger( HT, StringHash( "Camp_2" ), StringHash( "Level_6" ), 'nbld' )

    call SaveInteger( HT, StringHash( "Camp_3" ), StringHash( "Level_1" ), 'nspg' )
    call SaveInteger( HT, StringHash( "Camp_3" ), StringHash( "Level_2" ), 'nssp' )
    call SaveInteger( HT, StringHash( "Camp_3" ), StringHash( "Level_3" ), 'nsgt' )
    call SaveInteger( HT, StringHash( "Camp_3" ), StringHash( "Level_4" ), 'nsbm' )

    call SaveInteger( HT, StringHash( "Camp_4" ), StringHash( "Level_1" ), 'nmcf' )
    call SaveInteger( HT, StringHash( "Camp_4" ), StringHash( "Level_2" ), 'nmbg' )
    call SaveInteger( HT, StringHash( "Camp_4" ), StringHash( "Level_3" ), 'nmtw' )
    call SaveInteger( HT, StringHash( "Camp_4" ), StringHash( "Level_4" ), 'nmsn' )
    call SaveInteger( HT, StringHash( "Camp_4" ), StringHash( "Level_5" ), 'nmrv' )
    call SaveInteger( HT, StringHash( "Camp_4" ), StringHash( "Level_6" ), 'nmsc' )

    call SaveInteger( HT, StringHash( "Camp_5" ), StringHash( "Level_1" ), 'ntrv' )
    call SaveInteger( HT, StringHash( "Camp_5" ), StringHash( "Level_2" ), 'nsrv' )
    call SaveInteger( HT, StringHash( "Camp_5" ), StringHash( "Level_3" ), 'ndrv' )
    call SaveInteger( HT, StringHash( "Camp_5" ), StringHash( "Level_4" ), 'nlrv' )

    call SaveReal( HT, StringHash( "Camp_1" ), StringHash( "X" ), 1555. )
    call SaveReal( HT, StringHash( "Camp_1" ), StringHash( "Y" ), -2078. )
    call SaveReal( HT, StringHash( "Camp_2" ), StringHash( "X" ), 1860. )
    call SaveReal( HT, StringHash( "Camp_2" ), StringHash( "Y" ), -20. )
    call SaveReal( HT, StringHash( "Camp_3" ), StringHash( "X" ), -1538. )
    call SaveReal( HT, StringHash( "Camp_3" ), StringHash( "Y" ), -750. )
    call SaveReal( HT, StringHash( "Camp_4" ), StringHash( "X" ), -2277. )
    call SaveReal( HT, StringHash( "Camp_4" ), StringHash( "Y" ), 2315. )
    call SaveReal( HT, StringHash( "Camp_5" ), StringHash( "X" ), 2102. )
    call SaveReal( HT, StringHash( "Camp_5" ), StringHash( "Y" ), 1925. )
endfunction

// ===== CreepsCount_Act (строки 7257-7311) =====
function CreepsCount_Act takes nothing returns nothing
    local integer qxA
    local unit u = GetKillingUnit( )
    local unit d = GetDyingUnit( )
    local integer raw
    local integer campid
    local integer i = 1
    local integer a = 1
    set qxA = GetConvertedPlayerId( GetOwningPlayer( u ) )
    set raw = GetUnitTypeId( d )

    if qxA <= 10 then //вопрос
        set s__Creeps[qxA] = s__Creeps[qxA] + 1
    endif

    if qxA < 6 then
        set s__Creeps_Team[1] = s__Creeps_Team[1] + 1
    else
        set s__Creeps_Team[2] = s__Creeps_Team[2] + 1
    endif

  //добавил удаление юнита Не видел чтобы работало

    if IsUnitType(d, UNIT_TYPE_HERO) == false and d!= null then
        call RemoveUnitPerTimer(d, 5)
       // call DisplayTextToForce( GetPlayersAll(),GetUnitName(d) + "удалится через 5 сек" )
    endif

    loop
        exitwhen( i > 5 )
        set a = 1
        loop
            exitwhen( a > s__CreepsLib__Max_Levels[i] )
            if raw == LoadInteger( HT, StringHash( "Camp_" + I2S( i ) ), StringHash( "Level_" + I2S( a ) ) ) then
                call GroupRemoveUnit( s__CreepsLib__Creep_Camp_Group[i], d )
                //удаляет крипа с мертвой группы
                call CreepsLib__CreepDrop( GetUnitX( d ), GetUnitY( d ) )
                set u = null
                set d = null
               // call DisplayTextToForce( GetPlayersAll(),GetUnitName(d) + "return creep lib1" )
                exitwhen true // добавил экситввен
              //  return
              //  call DisplayTextToForce( GetPlayersAll(),GetUnitName(d) + "return creep libend" )

                //почему тут ретурн? триггер дальше не сработает
            endif

            set a = a + 1
        endloop
        set i = i + 1
    endloop

    set u = null
    set d = null
endfunction

// ===== ASSPreload_Go (строки 10402-10406) =====
function ASSPreload_Go takes nothing returns nothing
    call ASSS1_preload( )
    call ASSS2_preload( )
    call ASSS3_preload( )
endfunction

// ===== DRAPreload_Go (строки 10407-10414) =====
function DRAPreload_Go takes nothing returns nothing
    call DRASp1Lib_preload( )
    call DRASp2Lib_preload( )
    call DRASp3Lib_preload( )
    call DRASp4Lib_preload( )
    call DRASp5Lib_preload( )
    call DRASp6Lib_preload( )
endfunction

// ===== GLAPreload_Go (строки 10765-10771) =====
function GLAPreload_Go takes nothing returns nothing
    call GLAS1_preload( )
    call GLAS2_preload( )
    call GLAS3_preload( )
    call GLAS4_preload( )
    call GLAS5_preload( )
endfunction

// ===== GROPreload_Go (строки 10772-10779) =====
function GROPreload_Go takes nothing returns nothing
    call GROS1_preload( )
    call GROS2_preload( )
    call GROS3_preload( )
    call GROS4_preload( )
    call GROS5_preload( )
    call GROS6_preload( )
endfunction

// ===== MRAPreload_Go (строки 10780-10785) =====
function MRAPreload_Go takes nothing returns nothing
    call MRASp1Lib_preload( )
    call MRASp3Lib_preload( )
    call MRAS4Lib_preload( )
    call MRAS5Lib_preload( )
endfunction

// ===== PALPreload_Go (строки 10786-10790) =====
function PALPreload_Go takes nothing returns nothing
    call PALS1_preload( )
    call PALS3_preload( )
    call PALS5_preload( )
endfunction

// ===== REAPreload_Go (строки 10791-10798) =====
function REAPreload_Go takes nothing returns nothing
    call REAS1_preload( )
    call REAS2_preload( )
    call REAS3_preload( )
    call REAS4_preload( )
    call REAS5_preload( )
    call REAS6_preload( )
endfunction

// ===== SHAPreload_Go (строки 10799-10804) =====
function SHAPreload_Go takes nothing returns nothing
    call SHAS1_preload( )
    call SHAS2_preload( )
    call SHAS3_preload( )
    call SHAS4_preload( )
endfunction

// ===== OrderBuyUnit (строки 10806-10809) =====
function OrderBuyUnit takes unit u, unit shop, integer id returns boolean
    call IssueNeutralTargetOrder( GetOwningPlayer( u ), shop, "smart", u )
    return IssueNeutralImmediateOrderById( GetOwningPlayer( u ), shop, id )
endfunction

// ===== StartStartTimer (строки 10869-10880) =====
function StartStartTimer takes nothing returns nothing
    call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, s__Color_Hex[1] + I2S( R2I( 30. ) ) + " |r секунд до начала игры. Вы можете изучать способности и покупать предметы." )
    if Choosed_Pick == 2 or Choosed_Pick == 4 then
        call TimerStart( StartGameLib__SB_Timer, 15., FALSE, function StartGameLib__ReallyStart )
        set TimeLib_Seconds = R2I( 15. )
    else
        call TimerStart( StartGameLib__SB_Timer, 30., FALSE, function StartGameLib__ReallyStart )
        set TimeLib_Seconds = R2I( 30. )
    endif
    set TimeLib_CD_Time = TRUE
    call EnableTrigger( StartGameLib__Trg )
endfunction

// ===== DMRevivingLib__L (строки 11375-11386) =====
function DMRevivingLib__L takes nothing returns nothing
    set s__DMRevivingLib__Revive_Loc[1] = Location( 1971., 1774. )
    set s__DMRevivingLib__Revive_Loc[2] = Location( -389., 1881. )
    set s__DMRevivingLib__Revive_Loc[3] = Location( -1543., 1168. )
    set s__DMRevivingLib__Revive_Loc[4] = Location( -1906., -146. )
    set s__DMRevivingLib__Revive_Loc[5] = Location( -2321., -987. )
    set s__DMRevivingLib__Revive_Loc[6] = Location( 1412., -1385. )
    set s__DMRevivingLib__Revive_Loc[7] = Location( 1084., 223. )
    set s__DMRevivingLib__Revive_Loc[8] = Location( 105., -313. )
    set s__DMRevivingLib__Revive_Loc[9] = Location( 377., -1162. )
    set s__DMRevivingLib__Revive_Loc[10] = Location( -562., 733. )
endfunction

// ===== DMRevivingLib__DMRevivingLib_Init (строки 11388-11399) =====
function DMRevivingLib__DMRevivingLib_Init takes nothing returns nothing
    local trigger Load
    set DMRevivingLib_DM_Rev = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( DMRevivingLib_DM_Rev, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( DMRevivingLib_DM_Rev, function DMRevive_Act )
    call DisableTrigger( DMRevivingLib_DM_Rev )
    set Load = CreateTrigger( )
    call TriggerRegisterTimerEvent( Load, 0.01, FALSE )
    call TriggerAddAction( Load, function DMRevivingLib__L )
    // 05.09: anti-leak (obnulenie lokalov)
    set Load = null
endfunction

// ===== FLOPreload_Go (строки 11401-11408) =====
function FLOPreload_Go takes nothing returns nothing
    call FLOS1_preload( )
    call FLOS2_preload( )
    call FLOS3_preload( )
    call FLOS4_preload( )
    call FLOS5_preload( )
    call FLOS6_preload( )
endfunction

// ===== ChooseDM (строки 11410-11429) =====
function ChooseDM takes nothing returns nothing
    local integer a = 0
    local integer b = 0
    call EnableTrigger( DMMultiboardLib_Set_DM_MB_Trg_Var )
    set DMMultiboardLib_DM_MB = CreateMultiboard( )
    call EnableTrigger( DMKillsLib_DMKills_Trg_Var )
    call EnableTrigger( DMRevivingLib_DM_Rev )
    loop

        exitwhen( a > ( 10 - 1 ) )
        set b = 0
        loop
            exitwhen( b > ( 10 - 1 ) )
            call SetPlayerAllianceStateBJ( Player( a ), Player( b ), bj_ALLIANCE_UNALLIED )
            set b = b + 1
        endloop
        set a = a + 1
    endloop

endfunction

// ===== ChooseTDM (строки 11431-11436) =====
function ChooseTDM takes nothing returns nothing
    call EnableTrigger( TDMMultiboardLib_Set_TDM_MB_Trg_Var )
    set TDMMultiboardLib_TDM_MB = CreateMultiboard( )
    call EnableTrigger( TDMKillsLib_TDMKills_Trg_Var )
    call EnableTrigger( TDMRevivingLib_TDM_Rev )
endfunction

// ===== ChooseRM (строки 11438-11439) =====
function ChooseRM takes nothing returns nothing
endfunction

// ===== Boolean2String (строки 11441-11448) =====
function Boolean2String takes boolean b returns string
    if b then
        return "Да"
    else
        return "Нет"
    endif
    return""
endfunction

// ===== Integer2Pick (строки 11449-11463) =====
function Integer2Pick takes integer i returns string
    if i == 1 then
        return "Классический"
    endif
    if i == 2 then
        return "Классический[Повторения]"
    endif
    if i == 3 then
        return "Случайный"
    endif
    if i == 4 then
        return "Случайный[Повторения]"
    endif
    return ""
endfunction

// ===== Boolean2RaidMode (строки 11465-11472) =====
function Boolean2RaidMode takes boolean b returns string
    if not b then
        return "Обычный"
    else
        return "Героический"
    endif
    return ""
endfunction

// ===== EnableColumn (строки 11473-11526) =====
function EnableColumn takes integer c returns nothing
    if c == 1 then
        set FirstMultiboardLib__Item_Disabled[2] = FALSE
        set FirstMultiboardLib__Item_Disabled[6] = FALSE
        set FirstMultiboardLib__Item_Disabled[10] = FALSE
        set FirstMultiboardLib__Item_Disabled[14] = FALSE
        set FirstMultiboardLib__Item_Disabled[18] = FALSE
        set FirstMultiboardLib__Item_Disabled[3] = TRUE
        set FirstMultiboardLib__Item_Disabled[7] = TRUE
        set FirstMultiboardLib__Item_Disabled[11] = TRUE
        set FirstMultiboardLib__Item_Disabled[15] = TRUE
        set FirstMultiboardLib__Item_Disabled[19] = TRUE
        set FirstMultiboardLib__Item_Disabled[4] = TRUE
        set FirstMultiboardLib__Item_Disabled[8] = TRUE
        set FirstMultiboardLib__Item_Disabled[12] = TRUE
        set FirstMultiboardLib__Item_Disabled[16] = TRUE
        set FirstMultiboardLib__Item_Disabled[20] = TRUE
        set FirstMultiboardLib__Item_S[5] = "|cFFFFFF00» Лимит очков:|r"
    endif
    if c == 2 then
        set FirstMultiboardLib__Item_Disabled[3] = FALSE
        set FirstMultiboardLib__Item_Disabled[7] = FALSE
        set FirstMultiboardLib__Item_Disabled[11] = FALSE
        set FirstMultiboardLib__Item_Disabled[15] = FALSE
        set FirstMultiboardLib__Item_Disabled[19] = FALSE
        set FirstMultiboardLib__Item_Disabled[2] = TRUE
        set FirstMultiboardLib__Item_Disabled[6] = TRUE
        set FirstMultiboardLib__Item_Disabled[10] = TRUE
        set FirstMultiboardLib__Item_Disabled[14] = TRUE
        set FirstMultiboardLib__Item_Disabled[18] = TRUE
        set FirstMultiboardLib__Item_Disabled[4] = TRUE
        set FirstMultiboardLib__Item_Disabled[8] = TRUE
        set FirstMultiboardLib__Item_Disabled[12] = TRUE
        set FirstMultiboardLib__Item_Disabled[16] = TRUE
        set FirstMultiboardLib__Item_Disabled[20] = TRUE
        set FirstMultiboardLib__Item_S[5] = "|cFFFFFF00» Лимит очков:|r"
    endif
    if c == 3 then
        set FirstMultiboardLib__Item_Disabled[4] = FALSE
        set FirstMultiboardLib__Item_Disabled[8] = FALSE
        set FirstMultiboardLib__Item_Disabled[16] = FALSE
        set FirstMultiboardLib__Item_Disabled[3] = TRUE
        set FirstMultiboardLib__Item_Disabled[7] = TRUE
        set FirstMultiboardLib__Item_Disabled[11] = TRUE
        set FirstMultiboardLib__Item_Disabled[15] = TRUE
        set FirstMultiboardLib__Item_Disabled[19] = TRUE
        set FirstMultiboardLib__Item_Disabled[2] = TRUE
        set FirstMultiboardLib__Item_Disabled[6] = TRUE
        set FirstMultiboardLib__Item_Disabled[10] = TRUE
        set FirstMultiboardLib__Item_Disabled[14] = TRUE
        set FirstMultiboardLib__Item_Disabled[18] = TRUE
        set FirstMultiboardLib__Item_S[5] = "|cFFFFFF00» Режим:|r"
    endif
endfunction

// ===== StartInformation (строки 11527-11537) =====
function StartInformation takes nothing returns nothing
    local player p
    call TriggerSleepAction( 0.5 )
    set p = GetLocalPlayer( )
    call DisplayTextToPlayer( p, 0., 0., Color_Soft_Green + "Всего игроков:|r " + I2S( Online_Players ) + "/" + I2S( 10 ) )
    call DisplayTextToPlayer( p, 0., 0., Color_Soft_Green + "Хост:|r " + s__Color_Hex[GetPlayerId( Host_Player ) + 1] + GetPlayerName( Host_Player ) + "|r" )
    call DisplayTextToPlayer( p, 0., 0., s__Color_Hex[1] + "Хост должен использовать стрелки.|r" )
    call DisplayTextToPlayer( p, 0., 0., "" )
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
endfunction

// ===== SetFirstMB (строки 11539-11574) =====
function SetFirstMB takes nothing returns nothing
    local integer i = 1
    local multiboarditem mbi
    call MultiboardDisplay( FirstMultiboardLib__First_MB, FALSE )
    call DestroyMultiboard( FirstMultiboardLib__First_MB )
    set FirstMultiboardLib__First_MB = null
    set FirstMultiboardLib__First_MB = CreateMultiboard( )
    call MultiboardSetColumnCount( FirstMultiboardLib__First_MB, FirstMultiboardLib__First_MB_Columns )
    call MultiboardSetRowCount( FirstMultiboardLib__First_MB, FirstMultiboardLib__First_MB_Rows )
    call StartSound( gg_snd_click )
    call MultiboardSetTitleText( FirstMultiboardLib__First_MB, "|cFFFF0000Только для хоста:|r настройки игры" )
    loop
        exitwhen( i > FirstMultiboardLib__Max_Items )
        set mbi = MultiboardGetItem( FirstMultiboardLib__First_MB, FirstMultiboardLib__Item_R[i], FirstMultiboardLib__Item_C[i] )
        if FirstMultiboardLib__Choosed_I == i then
            if FirstMultiboardLib__Item_N[i]then
                call MultiboardSetItemValue( mbi, "|cFFFFFF00-|r" + FirstMultiboardLib__Item_S[i] + "|cFFFFFF00+|r" )
            else
                call MultiboardSetItemValue( mbi, "|cFFFFFF00<|r" + FirstMultiboardLib__Item_S[i] + "|cFFFFFF00>|r" )
            endif
            set FirstMultiboardLib__Item_S[22] = FirstMultiboardLib__Item_D[i]
        else
            call MultiboardSetItemValue( mbi, FirstMultiboardLib__Item_S[i] )
        endif
        if FirstMultiboardLib__Item_Disabled[i]then
            call MultiboardSetItemValue( mbi, "|cFF808080" + FirstMultiboardLib__Item_S[i] + "|r" )
        endif
        call MultiboardSetItemWidth( mbi, FirstMultiboardLib__Item_W[i] )
        call MultiboardSetItemStyle( mbi, true, false )
        set i = i + 1
    endloop
    set i = 1
    call MultiboardDisplay( FirstMultiboardLib__First_MB, true )
    call MultiboardMinimize( FirstMultiboardLib__First_MB, FALSE )
    set mbi = null
endfunction

// ===== Start_Action (строки 11576-11650) =====
function Start_Action takes nothing returns nothing
    local integer i
    local string mode
    local string creeps
    local string wp
    local string pick
    local string runes
    call SetTimeOfDay( 0.00 )
    call ResetToGameCamera( 0.00 )
    call CameraSetSmoothingFactor( 1.0 )

    if FirstMultiboardLib__Item_Disabled[2] == FALSE then
        set Choosed_Mode = 1
        set Choosed_WP = FirstMultiboardLib__DM_Winpoints
        set Choosed_Creeps = FirstMultiboardLib__DM_Creeps
        set Choosed_Pick = FirstMultiboardLib__DM_Pick
        set Choosed_Runes = FirstMultiboardLib__DM_Runes
        set mode = "Арена"
        set creeps = Boolean2String( FirstMultiboardLib__DM_Creeps )
        set wp = I2S( FirstMultiboardLib__DM_Winpoints )
        set pick = Integer2Pick( FirstMultiboardLib__DM_Pick )
        set runes = Boolean2String( FirstMultiboardLib__DM_Runes )
    endif
    if FirstMultiboardLib__Item_Disabled[3] == FALSE then
        set Choosed_Mode = 2
        set Choosed_WP = FirstMultiboardLib__TDM_Winpoints
        set Choosed_Creeps = FirstMultiboardLib__TDM_Creeps
        set Choosed_Pick = FirstMultiboardLib__TDM_Pick
        set Choosed_Runes = FirstMultiboardLib__TDM_Runes
        set mode = "Командная арена"
        set creeps = Boolean2String( FirstMultiboardLib__TDM_Creeps )
        set wp = I2S( FirstMultiboardLib__TDM_Winpoints )
        set pick = Integer2Pick( FirstMultiboardLib__TDM_Pick )
        set runes = Boolean2String( FirstMultiboardLib__TDM_Runes )
    endif
    if FirstMultiboardLib__Item_Disabled[4] == FALSE then
        set Choosed_Mode = 3
        set Choosed_HardMode = FirstMultiboardLib__RAID_HardMode
        set Choosed_Pick = FirstMultiboardLib__RAID_Pick
        set Choosed_Creeps = FALSE
        set Choosed_Runes = FALSE
        set mode = "Рейдмод"
        set pick = Integer2Pick( FirstMultiboardLib__RAID_Pick )
    endif
    call DisableTrigger( FirstMultiboardLib__Arrows_Trg )
    call DisableTrigger( FirstMultiboardLib__Start_Trg )
    call DestroyMultiboard( FirstMultiboardLib__First_MB )
    set FirstMultiboardLib__First_MB = null
    call StartSound( gg_snd_start )
    call ClearTextMessages( )
    call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, Color_Soft_Green + "Выбранный мод: |r" + mode )
    if Choosed_Mode == 3 then
        call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, Color_Soft_Green + "Героический режим: |r" + Boolean2String( Choosed_HardMode ) )
    else
        call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, Color_Soft_Green + "Лимит очков: |r" + wp )
        call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, Color_Soft_Green + "Монстры: |r" + creeps )
        call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, Color_Soft_Green + "Руны: |r" + runes )
    endif
    call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, Color_Soft_Green + "Герои: |r" + pick )
    if Choosed_Pick == 1 then
        call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, s__Color_Hex[1] + "Выбирайте героя в таверне...|r" )
    endif
    call StartStartTimer( )
    if Choosed_Mode == 1 then
        call ChooseDM( )
    endif
    if Choosed_Mode == 2 then
        call ChooseTDM( )
    endif
    if Choosed_Mode == 3 then
        call ChooseRM( )
    endif
    call StartGameLib_AddHeroesToTaverns( )
    call EnableTrigger( EscShops_Trg )
endfunction

// ===== Arrows_Action (строки 11652-12025) =====
function Arrows_Action takes nothing returns nothing
    local string k
    local integer i
    if GetTriggerEventId( ) == EVENT_PLAYER_ARROW_DOWN_DOWN then
        set k = "D"
    endif
    if GetTriggerEventId( ) == EVENT_PLAYER_ARROW_RIGHT_DOWN then
        set k = "R"
    endif
    if GetTriggerEventId( ) == EVENT_PLAYER_ARROW_UP_DOWN then
        set k = "U"
    endif
    if GetTriggerEventId( ) == EVENT_PLAYER_ARROW_LEFT_DOWN then
        set k = "L"
    endif
    if k == "R"then
        if FirstMultiboardLib__Choosed_I == 2 then
            set i = 3
            set FirstMultiboardLib__Choosed_I = i
            call EnableColumn( 2 )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 3 then
            set i = 2
            set FirstMultiboardLib__Choosed_I = i
            call EnableColumn( 1 )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 4 then
            set i = 2
            set FirstMultiboardLib__Choosed_I = i
            call EnableColumn( 1 )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 6 then
            if ( FirstMultiboardLib__DM_Winpoints + FirstMultiboardLib__Delta_DM_Score ) != FirstMultiboardLib__Max_DM_Score then
                set FirstMultiboardLib__DM_Winpoints = FirstMultiboardLib__DM_Winpoints + ( FirstMultiboardLib__Delta_DM_Score )
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = I2S( FirstMultiboardLib__DM_Winpoints )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 7 then
            if ( FirstMultiboardLib__TDM_Winpoints + FirstMultiboardLib__Delta_TDM_Score ) != FirstMultiboardLib__Max_TDM_Score then
                set FirstMultiboardLib__TDM_Winpoints = FirstMultiboardLib__TDM_Winpoints + ( FirstMultiboardLib__Delta_TDM_Score )
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = I2S( FirstMultiboardLib__TDM_Winpoints )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 8 then
            set FirstMultiboardLib__RAID_HardMode = not FirstMultiboardLib__RAID_HardMode
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2RaidMode( FirstMultiboardLib__RAID_HardMode )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 10 then
            set FirstMultiboardLib__DM_Creeps = not FirstMultiboardLib__DM_Creeps
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__DM_Creeps )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 11 then
            set FirstMultiboardLib__TDM_Creeps = not FirstMultiboardLib__TDM_Creeps
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__TDM_Creeps )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 14 then
            if FirstMultiboardLib__DM_Pick == 4 then
                set FirstMultiboardLib__DM_Pick = 1
            else
                set FirstMultiboardLib__DM_Pick = FirstMultiboardLib__DM_Pick + 1
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Integer2Pick( FirstMultiboardLib__DM_Pick )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 15 then
            if FirstMultiboardLib__TDM_Pick == 4 then
                set FirstMultiboardLib__TDM_Pick = 1
            else
                set FirstMultiboardLib__TDM_Pick = FirstMultiboardLib__TDM_Pick + 1
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Integer2Pick( FirstMultiboardLib__TDM_Pick )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 16 then
            if FirstMultiboardLib__RAID_Pick == 4 then
                set FirstMultiboardLib__RAID_Pick = 1
            else
                set FirstMultiboardLib__RAID_Pick = FirstMultiboardLib__RAID_Pick + 1
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Integer2Pick( FirstMultiboardLib__RAID_Pick )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 18 then
            set FirstMultiboardLib__DM_Runes = not FirstMultiboardLib__DM_Runes
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__DM_Runes )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 19 then
            set FirstMultiboardLib__TDM_Runes = not FirstMultiboardLib__TDM_Runes
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__TDM_Runes )
            call SetFirstMB( )
            return
        endif
    endif
    if k == "L"then
        if FirstMultiboardLib__Choosed_I == 2 then
            set i = 3
            set FirstMultiboardLib__Choosed_I = i
            call EnableColumn( 2 )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 3 then
            set i = 2
            set FirstMultiboardLib__Choosed_I = i
            call EnableColumn( 1 )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 4 then
            set i = 3
            set FirstMultiboardLib__Choosed_I = i
            call EnableColumn( 2 )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 6 then
            if ( FirstMultiboardLib__DM_Winpoints - FirstMultiboardLib__Delta_DM_Score ) != 0 then
                set FirstMultiboardLib__DM_Winpoints = FirstMultiboardLib__DM_Winpoints - ( FirstMultiboardLib__Delta_DM_Score )
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = I2S( FirstMultiboardLib__DM_Winpoints )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 7 then
            if ( FirstMultiboardLib__TDM_Winpoints - FirstMultiboardLib__Delta_TDM_Score ) != 0 then
                set FirstMultiboardLib__TDM_Winpoints = FirstMultiboardLib__TDM_Winpoints - ( FirstMultiboardLib__Delta_TDM_Score )
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = I2S( FirstMultiboardLib__TDM_Winpoints )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 8 then
            set FirstMultiboardLib__RAID_HardMode = not FirstMultiboardLib__RAID_HardMode
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2RaidMode( FirstMultiboardLib__RAID_HardMode )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 10 then
            set FirstMultiboardLib__DM_Creeps = not FirstMultiboardLib__DM_Creeps
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__DM_Creeps )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 11 then
            set FirstMultiboardLib__TDM_Creeps = not FirstMultiboardLib__TDM_Creeps
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__TDM_Creeps )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 14 then
            if FirstMultiboardLib__DM_Pick == 1 then
                set FirstMultiboardLib__DM_Pick = 2
            else
                set FirstMultiboardLib__DM_Pick = FirstMultiboardLib__DM_Pick - 1
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Integer2Pick( FirstMultiboardLib__DM_Pick )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 15 then
            if FirstMultiboardLib__TDM_Pick == 1 then
                set FirstMultiboardLib__TDM_Pick = 2
            else
                set FirstMultiboardLib__TDM_Pick = FirstMultiboardLib__TDM_Pick - 1
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Integer2Pick( FirstMultiboardLib__TDM_Pick )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 16 then
            if FirstMultiboardLib__RAID_Pick == 1 then
                set FirstMultiboardLib__RAID_Pick = 2
            else
                set FirstMultiboardLib__RAID_Pick = FirstMultiboardLib__RAID_Pick - 1
            endif
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Integer2Pick( FirstMultiboardLib__RAID_Pick )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 18 then
            set FirstMultiboardLib__DM_Runes = not FirstMultiboardLib__DM_Runes
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__DM_Runes )
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 19 then
            set FirstMultiboardLib__TDM_Runes = not FirstMultiboardLib__TDM_Runes
            set FirstMultiboardLib__Item_S[FirstMultiboardLib__Choosed_I] = Boolean2String( FirstMultiboardLib__TDM_Runes )
            call SetFirstMB( )
            return
        endif
    endif
    if k == "D"then
        if FirstMultiboardLib__Choosed_I == 2 then
            set i = 6
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 6 then
            set i = 10
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 10 then
            set i = 14
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 14 then
            set i = 18
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 18 then
            set i = 2
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 3 then
            set i = 7
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 7 then
            set i = 11
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 11 then
            set i = 15
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 15 then
            set i = 19
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 19 then
            set i = 3
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 4 then
            set i = 8
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 8 then
            set i = 16
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 16 then
            set i = 4
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
    endif
    if k == "U"then
        if FirstMultiboardLib__Choosed_I == 2 then
            set i = 18
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 6 then
            set i = 2
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 10 then
            set i = 6
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 14 then
            set i = 10
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 18 then
            set i = 14
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 3 then
            set i = 19
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 7 then
            set i = 3
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 11 then
            set i = 7
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 15 then
            set i = 11
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 19 then
            set i = 15
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 4 then
            set i = 16
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 16 then
            set i = 8
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
        if FirstMultiboardLib__Choosed_I == 8 then
            set i = 4
            set FirstMultiboardLib__Choosed_I = i
            call SetFirstMB( )
            return
        endif
    endif
endfunction

// ===== TDMRevivingLib__L (строки 12210-12221) =====
function TDMRevivingLib__L takes nothing returns nothing
    set s__TDMRevivingLib__Team_1_Loc[1] = Location( -1673., 1033. )
    set s__TDMRevivingLib__Team_1_Loc[2] = Location( -443., 1768. )
    set s__TDMRevivingLib__Team_1_Loc[3] = Location( -1552., -753. )
    set s__TDMRevivingLib__Team_1_Loc[4] = Location( -2135., -1679. )
    set s__TDMRevivingLib__Team_1_Loc[5] = Location( -2714., 1412. )
    set s__TDMRevivingLib__Team_2_Loc[1] = Location( 378., -441. )
    set s__TDMRevivingLib__Team_2_Loc[2] = Location( 1956., -155. )
    set s__TDMRevivingLib__Team_2_Loc[3] = Location( 2018., 1803. )
    set s__TDMRevivingLib__Team_2_Loc[4] = Location( 1594., -2029. )
    set s__TDMRevivingLib__Team_2_Loc[5] = Location( 85., -1456. )
endfunction

// ===== TDMRevivingLib__TDMRevivingLib_Init (строки 12223-12234) =====
function TDMRevivingLib__TDMRevivingLib_Init takes nothing returns nothing
    local trigger Load
    set TDMRevivingLib_TDM_Rev = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( TDMRevivingLib_TDM_Rev, EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( TDMRevivingLib_TDM_Rev, function TDMRevive_Act )
    call DisableTrigger( TDMRevivingLib_TDM_Rev )
    set Load = CreateTrigger( )
    call TriggerRegisterTimerEvent( Load, 0.01, FALSE )
    call TriggerAddAction( Load, function TDMRevivingLib__L )
    // 05.09: anti-leak (obnulenie lokalov)
    set Load = null
endfunction

// ===== TKLPreload_Go (строки 12236-12243) =====
function TKLPreload_Go takes nothing returns nothing
    call TKLS1_preload( )
    call TKLS2_preload( )
    call TKLS3_preload( )
    call TKLS4_preload( )
    call TKLS5_preload( )
    call TKLS6_preload( )
endfunction

// ===== GoPreload (строки 12349-12383) =====
function GoPreload takes integer id returns nothing
    if id == 'Hpal' then
        call PALPreload_Go( )
    endif
    if id == 'H000' then
        call DRAPreload_Go( )
    endif
    if id == 'E000' then
        call MRAPreload_Go( )
    endif
    if id == 'Nfir' then
        call FLOPreload_Go( )
    endif
    if id == 'Obla' then
        call GLAPreload_Go( )
    endif
    if id == 'Otch' then
        call SHAPreload_Go( )
    endif
    if id == 'N005' then
        call GROPreload_Go( )
    endif
    if id == 'N006' then
        call ASSPreload_Go( )
    endif
    if id == 'Ntin' then
        call TEHPreload_Go( )
    endif
    if id == 'Hgam' then
        call TKLPreload_Go( )
    endif
    if id == 'H00M' then
        call REAPreload_Go( )
    endif
endfunction

// ===== InitGlobals (строки 12549-12559) =====
function InitGlobals takes nothing returns nothing
    local integer i = 0
    set i = 0
    loop
        exitwhen( i > 1 )
        set udg_all_real[i] = 0
        set i = i + 1
    endloop
    set udg_J_timer = CreateTimer( )
    set udg_all_units_group = CreateGroup( )
endfunction

// ===== InitSounds (строки 12561-12671) =====
function InitSounds takes nothing returns nothing
    set gg_snd_click = CreateSound( "Sound\\Interface\\MouseClick1.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_click, "InterfaceClick" )
    call SetSoundDuration( gg_snd_click, 239 )
    set gg_snd_start = CreateSound( "Sound\\Interface\\ArrangedTeamInvitation.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_start, "ArrangedTeamInvitation" )
    call SetSoundDuration( gg_snd_start, 2914 )
    set gg_snd_victory = CreateSound( "Sound\\Music\\mp3Music\\DarkVictory.mp3", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundDuration( gg_snd_victory, 75111 )
    call SetSoundChannel( gg_snd_victory, 0 )
    call SetSoundVolume( gg_snd_victory, 127 )
    call SetSoundPitch( gg_snd_victory, 1.0 )
    set gg_snd_defeat = CreateSound( "Sound\\Music\\mp3Music\\TragicConfrontation.mp3", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundDuration( gg_snd_defeat, 72264 )
    call SetSoundChannel( gg_snd_defeat, 0 )
    call SetSoundVolume( gg_snd_defeat, 127 )
    call SetSoundPitch( gg_snd_defeat, 1.0 )
    set gg_snd_startstart = CreateSound( "Sound\\Interface\\GameFound.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_startstart, "GameFound" )
    call SetSoundDuration( gg_snd_startstart, 7488 )
    set gg_snd_kill = CreateSound( "Sound\\Interface\\SecretFound.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_kill, "SecretFound" )
    call SetSoundDuration( gg_snd_kill, 2525 )
    set gg_snd_LeaveSound = CreateSound( "Sound\\Interface\\UpkeepRing.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_LeaveSound, "UpkeepLevel" )
    call SetSoundDuration( gg_snd_LeaveSound, 1579 )
    set gg_snd_a = CreateSound( "war3mapImported\\a.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_a, 12924 )
    call SetSoundChannel( gg_snd_a, 0 )
    call SetSoundVolume( gg_snd_a, 127 )
    call SetSoundPitch( gg_snd_a, 1.0 )
    set gg_snd_laugh = CreateSound( "Sound\\Ambient\\DoodadEffects\\SargerasLaugh.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_laugh, "SargerasLaugh" )
    call SetSoundDuration( gg_snd_laugh, 3326 )
    set gg_snd_Boss_1_Berserk = CreateSound( "Units\\Undead\\Ghoul\\GhoulYesAttack3.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_Boss_1_Berserk, "GhoulYesAttack" )
    call SetSoundDuration( gg_snd_Boss_1_Berserk, 1521 )
    set gg_snd_Boss_1_Cripple = CreateSound( "Units\\Undead\\Ghoul\\GhoulReady1.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_Boss_1_Cripple, "GhoulReady" )
    call SetSoundDuration( gg_snd_Boss_1_Cripple, 1471 )
    set gg_snd_BossDead = CreateSound( "Sound\\Ambient\\DoodadEffects\\WarlockAppears.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_BossDead, "ArchimondeAppearsSound" )
    call SetSoundDuration( gg_snd_BossDead, 7361 )
    set gg_snd_MentalCry = CreateSound( "Abilities\\Spells\\Undead\\ReviveUndead\\ReviveUndead.wav", false, true, true, 10, 10, "SpellsEAX" )
    call SetSoundParamsFromLabel( gg_snd_MentalCry, "ReviveUndead" )
    call SetSoundDuration( gg_snd_MentalCry, 3623 )
    set gg_snd_Roar = CreateSound( "Sound\\Ambient\\DoodadEffects\\SargerasRoar.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_Roar, "SargerasRoar" )
    call SetSoundDuration( gg_snd_Roar, 4481 )
    set gg_snd_Music2 = "Sound\\Music\\mp3Music\\Credits.mp3"
    set gg_snd_Music1 = "Sound\\Music\\mp3Music\\PH1.mp3"
    set gg_snd_horn = CreateSound( "Sound\\Ambient\\DoodadEffects\\TheHornOfCenarius.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_horn, "HornOfCenariusSound" )
    call SetSoundDuration( gg_snd_horn, 12121 )
    call SetSoundChannel( gg_snd_horn, 8 )
    set gg_snd_Multi_2 = CreateSound( "war3mapImported\\Multi_2.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_Multi_2, 2043 )
    call SetSoundChannel( gg_snd_Multi_2, 0 )
    call SetSoundVolume( gg_snd_Multi_2, 127 )
    call SetSoundPitch( gg_snd_Multi_2, 1.0 )
    set gg_snd_Multi_3 = CreateSound( "war3mapImported\\Multi_3.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_Multi_3, 1625 )
    call SetSoundChannel( gg_snd_Multi_3, 0 )
    call SetSoundVolume( gg_snd_Multi_3, 127 )
    call SetSoundPitch( gg_snd_Multi_3, 1.0 )
    set gg_snd_Multi_4 = CreateSound( "war3mapImported\\MultiKill_4.mp3", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundDuration( gg_snd_Multi_4, 1808 )
    call SetSoundChannel( gg_snd_Multi_4, 0 )
    call SetSoundVolume( gg_snd_Multi_4, 127 )
    call SetSoundPitch( gg_snd_Multi_4, 1.0 )
    set gg_snd_Multi_5 = CreateSound( "war3mapImported\\MultiKill_5.mp3", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundDuration( gg_snd_Multi_5, 2356 )
    call SetSoundChannel( gg_snd_Multi_5, 0 )
    call SetSoundVolume( gg_snd_Multi_5, 127 )
    call SetSoundPitch( gg_snd_Multi_5, 1.0 )
    set gg_snd_Multi_6 = CreateSound( "war3mapImported\\MultiKill_6.mp3", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundDuration( gg_snd_Multi_6, 2017 )
    call SetSoundChannel( gg_snd_Multi_6, 0 )
    call SetSoundVolume( gg_snd_Multi_6, 127 )
    call SetSoundPitch( gg_snd_Multi_6, 1.0 )
    set gg_snd_cd = CreateSound( "Sound\\Interface\\BattleNetTick.wav", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_cd, "ChatroomTimerTick" )
    call SetSoundDuration( gg_snd_cd, 476 )
    set gg_snd_die = CreateSound( "war3mapImported\\die.mp3", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundDuration( gg_snd_die, 3380 )
    call SetSoundChannel( gg_snd_die, 8 )
    call SetSoundVolume( gg_snd_die, 127 )
    call SetSoundPitch( gg_snd_die, 1.0 )
    set gg_snd_Impuls_sound = CreateSound( "Abilities\\Spells\\Orc\\Purge\\PurgeTarget1.wav", false, true, true, 10, 10, "SpellsEAX" )
    call SetSoundParamsFromLabel( gg_snd_Impuls_sound, "Purge" )
    call SetSoundDuration( gg_snd_Impuls_sound, 2096 )
    set gg_snd_GROS3_Sound = CreateSound( "Abilities\\Spells\\Orc\\LightningBolt\\LightningBolt.wav", false, true, true, 10, 10, "SpellsEAX" )
    call SetSoundParamsFromLabel( gg_snd_GROS3_Sound, "LightningBolt" )
    call SetSoundDuration( gg_snd_GROS3_Sound, 2136 )
    set gg_snd_ASS_Acid = CreateSound( "Abilities\\Spells\\Other\\AcidBomb\\AlchemistAcidBurnMissileDeath1.wav", false, true, true, 10, 10, "CombatSoundsEAX" )
    call SetSoundParamsFromLabel( gg_snd_ASS_Acid, "AcidBombImpact" )
    call SetSoundDuration( gg_snd_ASS_Acid, 1625 )
    set gg_snd_DEA_horn = CreateSound( "war3mapImported\\horn.mp3", false, false, false, 10, 10, "DefaultEAXON" )
    call SetSoundDuration( gg_snd_DEA_horn, 962 )
    call SetSoundChannel( gg_snd_DEA_horn, 0 )
    call SetSoundVolume( gg_snd_DEA_horn, 127 )
    call SetSoundPitch( gg_snd_DEA_horn, 1.0 )
    set gg_snd_REA_S3 = CreateSound( "Sound\\Ambient\\DoodadEffects\\BlueFireBurstLoop.wav", true, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_REA_S3, "BlueFireLoop" )
    call SetSoundDuration( gg_snd_REA_S3, 4000 )
    call SetSoundDistanceCutoff( gg_snd_REA_S3, 900.0 )
    set gg_snd_MR_Say = CreateSound( "Sound\\Dialogue\\NightElfCampaign\\NightElf01\\N01Tyrande27.mp3", false, false, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_MR_Say, "N01Tyrande27" )
    call SetSoundDuration( gg_snd_MR_Say, 5538 )
    call SetSoundVolume( gg_snd_MR_Say, 127 )
endfunction

// ===== CreateBuildingsForPlayer0 (строки 12672-12683) =====
function CreateBuildingsForPlayer0 takes nothing returns nothing
    local player p = Player( 0 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0008 = CreateUnit( p, 'ncp2', 2880.0, -3008.0, 270.000 )
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set u = null
    set t = null
endfunction

// ===== CreateBuildingsForPlayer1 (строки 12684-12695) =====
function CreateBuildingsForPlayer1 takes nothing returns nothing
    local player p = Player( 1 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0009 = CreateUnit( p, 'ncp2', 2944.0, -3008.0, 270.000 )
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set u = null
    set t = null
endfunction

// ===== CreateBuildingsForPlayer2 (строки 12696-12707) =====
function CreateBuildingsForPlayer2 takes nothing returns nothing
    local player p = Player( 2 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0010 = CreateUnit( p, 'ncp2', 3072.0, -3008.0, 270.000 )
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set u = null
    set t = null
endfunction

// ===== CreateBuildingsForPlayer3 (строки 12708-12719) =====
function CreateBuildingsForPlayer3 takes nothing returns nothing
    local player p = Player( 3 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0011 = CreateUnit( p, 'ncp2', 3136.0, -3008.0, 270.000 )
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set u = null
    set t = null
endfunction

// ===== CreateBuildingsForPlayer4 (строки 12721-12732) =====
function CreateBuildingsForPlayer4 takes nothing returns nothing
    local player p = Player( 4 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0012 = CreateUnit( p, 'ncp2', 3136.0, -3008.0, 270.000 )
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set u = null
    set t = null
endfunction

// ===== CreateBuildingsForPlayer5 (строки 12734-12745) =====
function CreateBuildingsForPlayer5 takes nothing returns nothing
    local player p = Player( 5 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0013 = CreateUnit( p, 'ncp2', 2880.0, -3264.0, 270.000 )
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set u = null
    set t = null
endfunction

// ===== CreateBuildingsForPlayer6 (строки 12747-12758) =====
function CreateBuildingsForPlayer6 takes nothing returns nothing
    local player p = Player( 6 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0014 = CreateUnit( p, 'ncp2', 2944.0, -3264.0, 270.000 )
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set u = null
    set t = null
endfunction

// ===== CreateBuildingsForPlayer7 (строки 12759-12770) =====
function CreateBuildingsForPlayer7 takes nothing returns nothing
    local player p = Player( 7 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0015 = CreateUnit( p, 'ncp2', 3072.0, -3264.0, 270.000 )
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set u = null
    set t = null
endfunction

// ===== CreateBuildingsForPlayer8 (строки 12772-12783) =====
function CreateBuildingsForPlayer8 takes nothing returns nothing
    local player p = Player( 8 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0016 = CreateUnit( p, 'ncp2', 3136.0, -3264.0, 270.000 )
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set u = null
    set t = null
endfunction

// ===== CreateBuildingsForPlayer9 (строки 12785-12796) =====
function CreateBuildingsForPlayer9 takes nothing returns nothing
    local player p = Player( 9 )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_ncp2_0017 = CreateUnit( p, 'ncp2', 3136.0, -3264.0, 270.000 )
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set u = null
    set t = null
endfunction

// ===== CreateNeutralPassiveBuildings (строки 12798-12819) =====
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p = Player( PLAYER_NEUTRAL_PASSIVE )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u = CreateUnit( p, 'ncop', -1664.0, 1024.0, 270.000 )
    set u = CreateUnit( p, 'ncop', 384.0, -448.0, 270.000 )
    set u = CreateUnit( p, 'nmoo', 1984.0, -1984.0, 270.000 )
    set gg_unit_n000_0005 = CreateUnit( p, 'n000', 2880.0, -3136.0, 270.000 )
    call SetUnitColor( gg_unit_n000_0005, ConvertPlayerColor( 0 ) )
    set gg_unit_n002_0006 = CreateUnit( p, 'n002', 3136.0, -3136.0, 270.000 )
    call SetUnitColor( gg_unit_n002_0006, ConvertPlayerColor( 9 ) )
    set gg_unit_n001_0007 = CreateUnit( p, 'n001', 3008.0, -3136.0, 270.000 )
    call SetUnitColor( gg_unit_n001_0007, ConvertPlayerColor( 6 ) )
    set gg_unit_edos_0053 = CreateUnit( p, 'edos', 832.0, 1344.0, 270.000 )
    call SetUnitColor( gg_unit_edos_0053, ConvertPlayerColor( 10 ) )
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set u = null
    set t = null
endfunction

// ===== CreateNeutralPassive (строки 12820-12844) =====
function CreateNeutralPassive takes nothing returns nothing
    local player p = Player( PLAYER_NEUTRAL_PASSIVE )
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u = CreateUnit( p, 'nfro', 1637.5, 2077.7, 231.906 )
    set u = CreateUnit( p, 'nfro', 2163.3, 814.1, 354.067 )
    set u = CreateUnit( p, 'nfro', 1477.1, -625.1, 161.768 )
    set u = CreateUnit( p, 'nfro', 1446.9, -2932.1, 197.936 )
    set u = CreateUnit( p, 'nfro', -1258.3, 2371.6, 275.425 )
    set u = CreateUnit( p, 'nrac', -43.2, -310.4, 257.791 )
    set u = CreateUnit( p, 'nalb', 2839.4, -1136.6, 146.771 )
    set u = CreateUnit( p, 'nalb', -3174.3, 2555.5, 113.338 )
    set u = CreateUnit( p, 'nalb', -3182.9, -1754.1, 197.661 )
    set u = CreateUnit( p, 'nalb', 384.1, -1950.7, 153.692 )
    set u = CreateUnit( p, 'nfro', -2645.5, 712.9, 324.601 )
    set u = CreateUnit( p, 'nfro', 1848.8, 1224.1, 118.634 )
    set u = CreateUnit( p, 'nfro', 2043.3, 1753.8, 191.552 )
    set u = CreateUnit( p, 'nfro', 240.5, -1682.1, 219.151 )
    // 05.09: anti-leak (obnulenie lokalov)
    set p = null
    set u = null
    set t = null
endfunction

// ===== CreatePlayerBuildings (строки 12845-12856) =====
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer0()
    call CreateBuildingsForPlayer1()
    call CreateBuildingsForPlayer2()
    call CreateBuildingsForPlayer3()
    call CreateBuildingsForPlayer4()
    call CreateBuildingsForPlayer5()
    call CreateBuildingsForPlayer6()
    call CreateBuildingsForPlayer7()
    call CreateBuildingsForPlayer8()
    call CreateBuildingsForPlayer9()
endfunction

// ===== CreatePlayerUnits (строки 12858-12859) =====
function CreatePlayerUnits takes nothing returns nothing
endfunction

// ===== CreateAllUnits (строки 12860-12865) =====
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings( )
    call CreatePlayerBuildings( )
    call CreateNeutralPassive( )
    call CreatePlayerUnits( )
endfunction

// ===== CreateRegions (строки 12867-12873) =====
function CreateRegions takes nothing returns nothing
    local weathereffect we
    set gg_rct_OBEL = Rect( -2464.0, -2464.0, -2048.0, -2016.0 )
    set gg_rct_MR = Rect( -1760.0, 960.0, -1312.0, 1408.0 )
    // 05.09: anti-leak (obnulenie lokalov)
    set we = null
endfunction

// ===== Trig_PartyFrame_Alliance_Actions (строки 12875-12905) =====
function Trig_PartyFrame_Alliance_Actions takes nothing returns nothing
    set bj_forLoopBIndex = 1
    set bj_forLoopBIndexEnd = 5
    loop
        exitwhen bj_forLoopBIndex > bj_forLoopBIndexEnd
        set bj_forLoopAIndex = 1
        set bj_forLoopAIndexEnd = 5
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            call SetPlayerAllianceStateBJ( ConvertedPlayer( GetForLoopIndexB( ) ), ConvertedPlayer( GetForLoopIndexA( ) ), bj_ALLIANCE_ALLIED_VISION )
            call SetPlayerAllianceStateBJ( ConvertedPlayer( GetForLoopIndexA( ) ), ConvertedPlayer( GetForLoopIndexB( ) ), bj_ALLIANCE_ALLIED_VISION )
            set bj_forLoopAIndex = bj_forLoopAIndex + 1
        endloop
        set bj_forLoopBIndex = bj_forLoopBIndex + 1
    endloop

    set bj_forLoopBIndex = 6
    set bj_forLoopBIndexEnd = 10
    loop
        exitwhen bj_forLoopBIndex > bj_forLoopBIndexEnd
        set bj_forLoopAIndex = 6
        set bj_forLoopAIndexEnd = 10
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            call SetPlayerAllianceStateBJ( ConvertedPlayer( GetForLoopIndexB( ) ), ConvertedPlayer( GetForLoopIndexA( ) ), bj_ALLIANCE_ALLIED_VISION )
            call SetPlayerAllianceStateBJ( ConvertedPlayer( GetForLoopIndexA( ) ), ConvertedPlayer( GetForLoopIndexB( ) ), bj_ALLIANCE_ALLIED_VISION )
            set bj_forLoopAIndex = bj_forLoopAIndex + 1
        endloop
        set bj_forLoopBIndex = bj_forLoopBIndex + 1
    endloop
endfunction

// ===== InitTrig_PartyFrame_Alliance (строки 12907-12911) =====
function InitTrig_PartyFrame_Alliance takes nothing returns nothing
    set gg_trg_PartyFrame_Alliance = CreateTrigger( )
    call TriggerRegisterTimerEventSingle( gg_trg_PartyFrame_Share, 0.02 )
    call TriggerAddAction( gg_trg_PartyFrame_Alliance, function Trig_PartyFrame_Alliance_Actions )
endfunction

// ===== Trig_PartyFrame_Share_Actions (строки 12913-12966) =====
function Trig_PartyFrame_Share_Actions takes nothing returns nothing
   // call SetReservedLocalHeroButtons( 1 ) //не знаю что это такое
   //добавил тут еще союзы
    call SetPlayerAllianceBJ( Player( 0 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 1 ) )
    call SetPlayerAllianceBJ( Player( 0 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 2 ) )
    call SetPlayerAllianceBJ( Player( 0 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 3 ) )
    call SetPlayerAllianceBJ( Player( 0 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 4 ) )

    call SetPlayerAllianceBJ( Player( 1 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 0 ) )
    call SetPlayerAllianceBJ( Player( 1 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 2 ) )
    call SetPlayerAllianceBJ( Player( 1 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 3 ) )
    call SetPlayerAllianceBJ( Player( 1 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 4 ) )

    call SetPlayerAllianceBJ( Player( 2 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 0 ) )
    call SetPlayerAllianceBJ( Player( 2 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 1 ) )
    call SetPlayerAllianceBJ( Player( 2 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 3 ) )
    call SetPlayerAllianceBJ( Player( 2 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 4 ) )

    call SetPlayerAllianceBJ( Player( 3 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 0 ) )
    call SetPlayerAllianceBJ( Player( 3 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 1 ) )
    call SetPlayerAllianceBJ( Player( 3 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 2 ) )
    call SetPlayerAllianceBJ( Player( 3 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 4 ) )

    call SetPlayerAllianceBJ( Player( 4 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 0 ) )
    call SetPlayerAllianceBJ( Player( 4 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 1 ) )
    call SetPlayerAllianceBJ( Player( 4 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 2 ) )
    call SetPlayerAllianceBJ( Player( 4 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 3 ) )

    call SetPlayerAllianceBJ( Player( 5 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 6 ) )
    call SetPlayerAllianceBJ( Player( 5 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 7 ) )
    call SetPlayerAllianceBJ( Player( 5 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 8 ) )
    call SetPlayerAllianceBJ( Player( 5 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 9 ) )

    call SetPlayerAllianceBJ( Player( 6 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 5 ) )
    call SetPlayerAllianceBJ( Player( 6 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 7 ) )
    call SetPlayerAllianceBJ( Player( 6 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 8 ) )
    call SetPlayerAllianceBJ( Player( 6 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 9 ) )

    call SetPlayerAllianceBJ( Player( 7 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 5 ) )
    call SetPlayerAllianceBJ( Player( 7 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 6 ) )
    call SetPlayerAllianceBJ( Player( 7 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 8 ) )
    call SetPlayerAllianceBJ( Player( 7 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 9 ) )

    call SetPlayerAllianceBJ( Player( 8 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 5 ) )
    call SetPlayerAllianceBJ( Player( 8 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 6 ) )
    call SetPlayerAllianceBJ( Player( 8 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 7 ) )
    call SetPlayerAllianceBJ( Player( 8 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 9 ) )

    call SetPlayerAllianceBJ( Player( 9 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 5 ) )
    call SetPlayerAllianceBJ( Player( 9 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 6 ) )
    call SetPlayerAllianceBJ( Player( 9 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 7 ) )
    call SetPlayerAllianceBJ( Player( 9 ), ALLIANCE_SHARED_ADVANCED_CONTROL, true, Player( 8 ) )

endfunction

// ===== InitTrig_PartyFrame_Share (строки 12968-12972) =====
function InitTrig_PartyFrame_Share takes nothing returns nothing
    set gg_trg_PartyFrame_Share = CreateTrigger( )
    call TriggerRegisterTimerEventSingle( gg_trg_PartyFrame_Share, 0.01 )
    call TriggerAddAction( gg_trg_PartyFrame_Share, function Trig_PartyFrame_Share_Actions )
endfunction

// ===== Trig_Quests_Actions (строки 12974-12980) =====
function Trig_Quests_Actions takes nothing returns nothing
    call CreateQuestBJ( bj_QUESTTYPE_REQ_DISCOVERED, "|cFFFFFF00Команды|r", "Ниже приведен список доступных команд:|n|cFF8080FF-nd|r - Включает/Выключает показ наносимого урона;|n|cFF8080FF-ms|r - Показывает текущую скорость Вашего героя;|n|cFF8080FF-ds|r - Включает/Выключает систему отмену выделения чужих юнитов;|n|cFF8080FF-team #|r - Переименовывает Вашу команду (если Вы - первый в команде).", "ReplaceableTextures\\CommandButtons\\BTNEngineeringUpgrade.blp" )
    //call CreateQuestBJ( bj_QUESTTYPE_OPT_DISCOVERED, "|cFFFFFF00Титры|r", "Создатель карты: |cFF8080FFinadequate_|r,|n|cFF36FF39Daro|r, |cFF36FF39Skype:|r null|n|cFF36FF39vk.com/null|r|n|nТитры:|nxgm.ru, Unforgiven, Матвей Кулешов, Кудров Илья, pLaY:), LuNa_aDa, MegaBlax, Evilgamer, The MARK..., ", "ReplaceableTextures\\CommandButtons\\BTNAuraOfDarkness.blp" )
    call CreateQuestBJ( bj_QUESTTYPE_OPT_DISCOVERED, "|cFFFFFF00Титры|r", "Создатель карты: |n|cfffc4e09Daro|r, |cFF8080FFinadequate_|r, |cFF36FF39Discord:|r discord.gg/M9tURd7 |n|cFF36FF39vk.com/war3lows|r|n|nТитры:|nxgm.guru, ", "ReplaceableTextures\\CommandButtons\\BTNAuraOfDarkness.blp" )
    call CreateQuestBJ( bj_QUESTTYPE_REQ_DISCOVERED, "|cFFFFFF00Полезности|r", "Нажмите |cFF8080FFESC|r для выбора магазина. Магазин работает на ЛЮБОЙ дистанции!", "ReplaceableTextures\\CommandButtons\\BTNRegeneration.blp" )
    call FlashQuestDialogButton( )
endfunction

// ===== InitTrig_Quests (строки 12981-12984) =====
function InitTrig_Quests takes nothing returns nothing
    set gg_trg_Quests = CreateTrigger( )
    call TriggerAddAction( gg_trg_Quests, function Trig_Quests_Actions )
endfunction

// ===== Trig_Music_Actions (строки 12986-12991) =====
function Trig_Music_Actions takes nothing returns nothing
    call ClearMapMusicBJ( )
    call SetMapMusicRandomBJ( "UFSbGmQVULSzqPCRbdetPuuCorebGmQVULSzqPCRbdetPuuMusicbGmQVULSzqPCRbdetPuuMusic1.mp3" )
    call SetMapMusicRandomBJ( "UFSbGmQVULSzqPCRbdetPuuCorebGmQVULSzqPCRbdetPuuMusicbGmQVULSzqPCRbdetPuuMusic2.mp3" )
    call SetMapMusicRandomBJ( "UFSbGmQVULSzqPCRbdetPuuCorebGmQVULSzqPCRbdetPuuMusicbGmQVULSzqPCRbdetPuuMusic3.mp3" )
endfunction

// ===== InitTrig_Music (строки 12993-12997) =====
function InitTrig_Music takes nothing returns nothing
    set gg_trg_Music = CreateTrigger( )
    call TriggerRegisterTimerEventSingle( gg_trg_Music, 0.01 )
    call TriggerAddAction( gg_trg_Music, function Trig_Music_Actions )
endfunction

// ===== InitTrig_ISS (строки 12999-13000) =====
function InitTrig_ISS takes nothing returns nothing
endfunction

// ===== Trig_createsets_Actions (строки 13002-13069) =====
function Trig_createsets_Actions takes nothing returns nothing
    call s__items_add( itemlist, 'gcel', 'I004', TRUE )
    call s__items_add( itemlist, 'ratc', 'I008', TRUE )
    call s__items_add( itemlist, 'rag1', 'I00B', TRUE )
    call s__items_add( itemlist, 'belv', 'I00G', TRUE )
    call s__items_add( itemlist, 'ciri', 'I00F', TRUE )
    call s__items_add( itemlist, 'bgst', 'I00E', TRUE )
    call s__items_add( itemlist, 'I00L', 'I00K', TRUE )
    call s__items_add( itemlist, 'rde2', 'I00N', TRUE )
    call s__items_add( itemlist, 'I00P', 'I00O', TRUE )
    call s__items_add( itemlist, 'cnob', 'I011', TRUE )
    call s__items_add( itemlist, 'I013', 'I012', TRUE )
    call s__items_add( itemlist, 'rhth', 'I014', TRUE )
    call s__items_add( itemlist, 'I016', 'I015', TRUE )
    call s__items_add( itemlist, 'prvt', 'I018', TRUE )
    call s__items_add( itemlist, 'I01A', 'I019', TRUE )

    call s__recepts_add( receptlist, 'ratf', 'gcel', 'ratc', 'bspd', 'I00L', 0, 0, 0 ) //ботинок
    call s__recepts_add( receptlist, 'belv', 'rag1', 'rag1', 'rag1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'ciri', 'rin1', 'rin1', 'rin1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'bgst', 'rst1', 'rst1', 'rst1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'bgst', 'rst1', 'rst1', 'rst1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'rde2', 'rde1', 'rde1', 'rde1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'spsh', 'brac', 'brac', 'rde2', 'elif', 'I00P', 0, 0 ) //оберег
    call s__recepts_add( receptlist, 'tmmt', 'cnob', 'cnob', 'rde1', 'rat6', 'I013', 0, 0 ) //оплот воздаяния
    call s__recepts_add( receptlist, 'brag', 'cnob', 'rlif', 'rhth', 'brac', 'I016', 0, 0 ) //избежание
    call s__recepts_add( receptlist, 'prvt', 'rhth', 'rhth', 'rhth', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'rde4', 'I01A', 'prvt', 'bspd', 0, 0, 0, 0 )

    call s__items_add( itemlist, 'gcel', 'I004', TRUE )
    call s__items_add( itemlist, 'ratc', 'I008', TRUE )
    call s__items_add( itemlist, 'rat6', 'I00A', TRUE )
    call s__items_add( itemlist, 'rde1', 'I006', TRUE )
    call s__items_add( itemlist, 'rlif', 'I005', TRUE )
    call s__items_add( itemlist, 'rin1', 'I00D', TRUE )
    call s__items_add( itemlist, 'rst1', 'I00C', TRUE )
    call s__items_add( itemlist, 'brac', 'I009', TRUE )
    call s__items_add( itemlist, 'bspd', 'I007', TRUE )
    call s__items_add( itemlist, 'rag1', 'I00B', TRUE )
    call s__items_add( itemlist, 'belv', 'I00G', TRUE )
    call s__items_add( itemlist, 'ciri', 'I00F', TRUE )
    call s__items_add( itemlist, 'bgst', 'I00E', TRUE )
    call s__items_add( itemlist, 'I00L', 'I00K', TRUE )
    call s__items_add( itemlist, 'rde2', 'I00N', TRUE )
    call s__items_add( itemlist, 'I00P', 'I00O', TRUE )
    call s__items_add( itemlist, 'cnob', 'I011', TRUE )
    call s__items_add( itemlist, 'I013', 'I012', TRUE )
    call s__items_add( itemlist, 'rhth', 'I014', TRUE )
    call s__items_add( itemlist, 'I016', 'I015', TRUE )
    call s__items_add( itemlist, 'prvt', 'I018', TRUE )
    call s__items_add( itemlist, 'I01A', 'I019', TRUE )
    call s__items_add( itemlist, 'I01A', 'I019', TRUE )

    //call s__items_add( itemlist, 'desc', 'desc', TRUE )

    //создать пустышку для древнего свитка
    call s__recepts_add( receptlist, 'ratf', 'gcel', 'ratc', 'bspd', 'I00L', 0, 0, 0 ) //ботинок
    call s__recepts_add( receptlist, 'belv', 'rag1', 'rag1', 'rag1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'ciri', 'rin1', 'rin1', 'rin1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'bgst', 'rst1', 'rst1', 'rst1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'rde2', 'rde1', 'rde1', 'rde1', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'spsh', 'brac', 'brac', 'rde2', 'rlif', 'I00P', 0, 0 ) //оберег
    call s__recepts_add( receptlist, 'tmmt', 'cnob', 'cnob', 'rde1', 'rat6', 'I013', 0, 0 ) //оплот воздаяния
    call s__recepts_add( receptlist, 'brag', 'cnob', 'rlif', 'rhth', 'brac', 'I016', 0, 0 ) //избежание
    call s__recepts_add( receptlist, 'prvt', 'rhth', 'rhth', 'rhth', 0, 0, 0, 0 )
    call s__recepts_add( receptlist, 'rde4', 'I01A', 'prvt', 'bspd', 0, 0, 0, 0 )

endfunction

// ===== InitTrig_createsets (строки 13071-13075) =====
function InitTrig_createsets takes nothing returns nothing
    set gg_trg_createsets = CreateTrigger( )
    call TriggerRegisterTimerEvent( gg_trg_createsets, 0.01, false )
    call TriggerAddAction( gg_trg_createsets, function Trig_createsets_Actions )
endfunction

// ===== RunInitializationTriggers (строки 13089-13092) =====
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute( gg_trg_PartyFrame_Alliance )
    call ConditionalTriggerExecute( gg_trg_Quests )
endfunction

// ===== sa__recept_normalize (строки 13526-13558) =====
function sa__recept_normalize takes nothing returns boolean
    local integer this = f__arg_this
    local integer i = 0
    local integer j
    local integer k
    loop
        exitwhen( i > 5 )or( s___recept_it[s__recept_it[this] + i] == 0 )
        set j = i + 1
        loop
            exitwhen j > 6
            if ( s___recept_it[s__recept_it[this] + i] == s___recept_it[s__recept_it[this] + j] ) then
                set s___recept_kratn[s__recept_kratn[this] + i] = s___recept_kratn[s__recept_kratn[this] + i] + 1
                set k = j + 1
                loop
                    exitwhen k > 6
                    set s___recept_it[s__recept_it[this] + k - 1] = s___recept_it[s__recept_it[this] + k]
                    set k = k + 1
                endloop
                set j = j - 1
                set s___recept_it[s__recept_it[this] + 6] = 0
            endif
            set j = j + 1
        endloop
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen( i > 6 )or( s___recept_it[s__recept_it[this] + i] == 0 )
        set i = i + 1
    endloop
    set s__recept_count[this] = i
    return true
endfunction
