// ===== CreepsLib__Is_Unit_Matching (строки 7117-7122) =====
function CreepsLib__Is_Unit_Matching takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = ( GetUnitTypeId( u ) == CreepsLib__Matching_Type and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and not IsUnitIllusion( u ) )
    set u = null
    return b
endfunction

// ===== CreepsLib_Creeps_Act (строки 7124-7175) =====
function CreepsLib_Creeps_Act takes nothing returns nothing
    local real x
    local real y
    local integer u_type
    local integer i = 1
    local integer a = 1
    local integer lvl
    local unit u
    set CreepsLib__Times = CreepsLib__Times + 1

    if ModuloInteger( CreepsLib__Times, 10 ) == 0 then
        set CreepsLib__Lvl = CreepsLib__Lvl + 1
        call DisplayTextToForce( bj_FORCE_ALL_PLAYERS, Color_Soft_Green + "Монстры стали сильнее!|r" )
    endif

    set i = 1
    loop
        exitwhen( i > 5 )
        set a = 1

        if CreepsLib__Lvl > s__CreepsLib__Max_Levels[i]then

            if s__CreepsLib__Count_Creeps[i] < 7 and ModuloInteger( CreepsLib__Times, 10 ) == 0 then
                set s__CreepsLib__Count_Creeps[i] = s__CreepsLib__Count_Creeps[i] + 1
            endif

            set u_type = LoadInteger( HT, StringHash( "Camp_" + I2S( i ) ), StringHash( "Level_" + I2S( s__CreepsLib__Max_Levels[i] ) ) )
        else
            set u_type = LoadInteger( HT, StringHash( "Camp_" + I2S( i ) ), StringHash( "Level_" + I2S( CreepsLib__Lvl ) ) )
        endif

        if CountUnitsInGroup( s__CreepsLib__Creep_Camp_Group[i] ) == 0 then
            set x = LoadReal( HT, StringHash( "Camp_" + I2S( i ) ), StringHash( "X" ) )
            set y = LoadReal( HT, StringHash( "Camp_" + I2S( i ) ), StringHash( "Y" ) )

            loop
                exitwhen ( a > s__CreepsLib__Count_Creeps[i] )

                set u = CreateUnit( Player( 12 ), u_type, x, y, GetRandomReal( 0., 360. ) )
                call AlphaLib_AddAlphing( u )
                call DamageLib_AddToDamageGroup( u )
                call GroupAddUnit( s__CreepsLib__Creep_Camp_Group[i], u )
                set u = null
                set a = a + 1
            endloop

        endif

        set i = i + 1
    endloop
    set u = null
endfunction

// ===== CreepsLib__CreepDrop (строки 7177-7204) =====
function CreepsLib__CreepDrop takes real x, real y returns nothing
    local integer i = GetRandomInt( 1, 100 )
    local integer a = 1
    local integer b = 0
    local integer array c
    local integer id
    local item it
    loop
        exitwhen( a > CreepsLib__count_drop )
        if s__CreepsLib__dr_item_c[a] >= i then
            set b = b + 1
            set c[b] = s__CreepsLib__dr_item_r[a]
        endif
        set a = a + 1
    endloop
    if b > 1 then
        set i = GetRandomInt( 1, b )
        set id = c[i]
    else
        set id = c[1]
    endif
    if id != 0 then
        set it = CreateItem( id, x, y )
        call ItemDestroy(it,180.) // время жизни выпадющих предметов
        set it = null
    endif
    set it = null
endfunction

// ===== CreepsLib__Loading (строки 7206-7255) =====
function CreepsLib__Loading takes nothing returns nothing
    set s__CreepsLib__dr_item_r[1] = 'I00B' //туфля паука
    set s__CreepsLib__dr_item_c[1] = 12
    set s__CreepsLib__dr_item_r[2] = 'I014' //талисман здоровья
    set s__CreepsLib__dr_item_c[2] = 12
    set s__CreepsLib__dr_item_r[3] = 'I00A' //стальной молот
    set s__CreepsLib__dr_item_c[3] = 12
    set s__CreepsLib__dr_item_r[4] = 'I007' //сапог
    set s__CreepsLib__dr_item_c[4] = 12
    set s__CreepsLib__dr_item_r[5] = 'I009' //рунный браслет
    set s__CreepsLib__dr_item_c[5] = 12
    set s__CreepsLib__dr_item_r[6] = 'I004' // перчатки скорости
    set s__CreepsLib__dr_item_c[6] = 12
    set s__CreepsLib__dr_item_r[7] = 'I00D' // мантия ученого
    set s__CreepsLib__dr_item_c[7] = 12
    set s__CreepsLib__dr_item_r[8] = 'I005' // кольцо регенерациия
    set s__CreepsLib__dr_item_c[8] = 12
    set s__CreepsLib__dr_item_r[9] = 'I006' // кольцо защиты
    set s__CreepsLib__dr_item_c[9] = 12
    set s__CreepsLib__dr_item_r[10] = 'I00C' // железный костет
    set s__CreepsLib__dr_item_c[10] = 12
    set s__CreepsLib__dr_item_r[11] = 'I011'// деревянный щит
    set s__CreepsLib__dr_item_c[11] = 12
    set s__CreepsLib__dr_item_r[12] = 'I008' //боевые когти
    set s__CreepsLib__dr_item_c[12] = 12
    set s__CreepsLib__dr_item_r[13] = 'I00K' //Ботинок авантюриста свиток
    set s__CreepsLib__dr_item_c[13] = 5
    set s__CreepsLib__dr_item_r[14] = 'I015' //Избежание свиток
    set s__CreepsLib__dr_item_c[14] = 5
    set s__CreepsLib__dr_item_r[15] = 'I00O' //оберег рецепт
    set s__CreepsLib__dr_item_c[15] = 5
    set s__CreepsLib__dr_item_r[16] = 'I019' //сапог друида рецепт
    set s__CreepsLib__dr_item_c[16] = 5
    set s__CreepsLib__dr_item_r[17] = 'I010' //клык гнула
    set s__CreepsLib__dr_item_c[17] = 2
    set s__CreepsLib__dr_item_r[18] = 'I000' //лапа гнула
    set s__CreepsLib__dr_item_c[18] = 2
    set s__CreepsLib__dr_item_r[19] = 'I01C' //ледяное сердце
    set s__CreepsLib__dr_item_c[19] = 2
    set s__CreepsLib__dr_item_r[20] = 'I01E' //последня надежда сапог 400
    set s__CreepsLib__dr_item_c[20] = 2
    set s__CreepsLib__dr_item_r[21] = 'I001' //посох безмолвия
    set s__CreepsLib__dr_item_c[21] = 2
    set s__CreepsLib__dr_item_r[22] = 'I002' //утерянный медальон 18 статок
    set s__CreepsLib__dr_item_c[22] = 2
    set s__CreepsLib__dr_item_r[23] = 'I01B' //хладный страж
    set s__CreepsLib__dr_item_c[23] = 2
   // set s__CreepsLib__dr_item_r[24] = 'I017' //большой талисман здоровья добавил и убрал
  //  set s__CreepsLib__dr_item_c[24] = 5
endfunction

// ===== CreepsLib__L (строки 7313-7319) =====
function CreepsLib__L takes nothing returns nothing
    set s__CreepsLib__Creep_Camp_Group[1] = CreateGroup( )
    set s__CreepsLib__Creep_Camp_Group[2] = CreateGroup( )
    set s__CreepsLib__Creep_Camp_Group[3] = CreateGroup( )
    set s__CreepsLib__Creep_Camp_Group[4] = CreateGroup( )
    set s__CreepsLib__Creep_Camp_Group[5] = CreateGroup( )
endfunction

// ===== CreepsLib__CreepsLib_Init (строки 7321-7340) =====
function CreepsLib__CreepsLib_Init takes nothing returns nothing
    local trigger Creeps_Trg = CreateTrigger( )
    local trigger CreepsCount_Trg
    local trigger Load
    call TriggerRegisterTimerEvent( Creeps_Trg, 15., true ) //респ крипов или первое появленеи
    call TriggerAddAction( Creeps_Trg, function CreepsLib_Creeps_Act )
    set Creeps_Creating_Trg = Creeps_Trg
    call DisableTrigger( Creeps_Creating_Trg )
    set CreepsCount_Trg = CreateTrigger( )
    call TriggerRegisterPlayerUnitEventSimple( CreepsCount_Trg, Player( PLAYER_NEUTRAL_AGGRESSIVE ), EVENT_PLAYER_UNIT_DEATH )
    call TriggerAddAction( CreepsCount_Trg, function CreepsCount_Act )
    set Load = CreateTrigger( )
    call TriggerRegisterTimerEvent( Load, 0.01, FALSE )
    call TriggerAddAction( Load, function CreepsLib__L )
    call CreepsLib__Loading( )
    // 05.09: anti-leak (obnulenie lokalov)
    set Creeps_Trg = null
    set CreepsCount_Trg = null
    set Load = null
endfunction
