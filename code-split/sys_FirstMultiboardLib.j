// ===== FirstMultiboardLib_In (строки 12027-12169) =====
function FirstMultiboardLib_In takes nothing returns nothing
    local integer i = 1
    loop
        exitwhen( i > 10 )
        if GetLocalPlayer( ) == Player( i - 1 ) then
            call SetCameraTargetController( gg_unit_n002_0006, 0., 0., FALSE )
        endif
        set i = i + 1
    endloop
    call TriggerSleepAction( 0.01 )
    set FirstMultiboardLib__First_MB = CreateMultiboard( )
    set i = 1
    loop
        exitwhen( i > FirstMultiboardLib__Max_Items )
        set FirstMultiboardLib__Item_W[i] = FirstMultiboardLib__Width
        set i = i + 1
    endloop
    set i = 1
    set FirstMultiboardLib__Item_R[i] = 0
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = "|cFFFFFF00» Мод:|r"
    set i = 2
    set FirstMultiboardLib__Item_R[i] = 0
    set FirstMultiboardLib__Item_C[i] = 1
    set FirstMultiboardLib__Item_S[i] = "Арена"
    set FirstMultiboardLib__Item_D[i] = "Классическая арена."
    set i = 3
    set FirstMultiboardLib__Item_R[i] = 0
    set FirstMultiboardLib__Item_C[i] = 2
    set FirstMultiboardLib__Item_S[i] = "Командная арена"
    set FirstMultiboardLib__Item_D[i] = "Арена команда на команду."
    set i = 4
    set FirstMultiboardLib__Item_R[i] = 0
    set FirstMultiboardLib__Item_C[i] = 3
    set FirstMultiboardLib__Item_S[i] = "Рейдмод"
    set FirstMultiboardLib__Item_D[i] = "Все игроки объединяются в команду для того, чтобы победить могущественных боссов."
    set i = 5
    set FirstMultiboardLib__Item_R[i] = 1
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = "|cFFFFFF00» Лимит очков:|r"
    set i = 6
    set FirstMultiboardLib__Item_R[i] = 1
    set FirstMultiboardLib__Item_C[i] = 1
    set FirstMultiboardLib__Item_S[i] = I2S( FirstMultiboardLib__DM_Winpoints )
    set FirstMultiboardLib__Item_D[i] = "Выберите лимит очков. Как только лимит будет достигнут, игра заканчивается."
    set FirstMultiboardLib__Item_N[i] = TRUE
    set i = 7
    set FirstMultiboardLib__Item_R[i] = 1
    set FirstMultiboardLib__Item_C[i] = 2
    set FirstMultiboardLib__Item_S[i] = I2S( FirstMultiboardLib__TDM_Winpoints )
    set FirstMultiboardLib__Item_D[i] = "Выберите лимит очков. Как только лимит будет достигнут, игра заканчивается."
    set FirstMultiboardLib__Item_N[i] = TRUE
    set i = 8
    set FirstMultiboardLib__Item_R[i] = 1
    set FirstMultiboardLib__Item_C[i] = 3
    set FirstMultiboardLib__Item_S[i] = Boolean2RaidMode( FirstMultiboardLib__RAID_HardMode )
    set FirstMultiboardLib__Item_D[i] = "В героическом режиме с боссов выпадают более качественные вещи, но убить их гораздо сложнее."
    set i = 9
    set FirstMultiboardLib__Item_R[i] = 2
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = "|cFFFFFF00» Монстры:|r"
    set i = 10
    set FirstMultiboardLib__Item_R[i] = 2
    set FirstMultiboardLib__Item_C[i] = 1
    set FirstMultiboardLib__Item_S[i] = Boolean2String( FirstMultiboardLib__DM_Creeps )
    set FirstMultiboardLib__Item_D[i] = "Включает/Выключает монстров (крипов). Они перерождаются каждые 15 секунд и улучшаются со временем"
    set i = 11
    set FirstMultiboardLib__Item_R[i] = 2
    set FirstMultiboardLib__Item_C[i] = 2
    set FirstMultiboardLib__Item_S[i] = Boolean2String( FirstMultiboardLib__TDM_Creeps )
    set FirstMultiboardLib__Item_D[i] = "Включает/Выключает монстров (крипов). Они перерождаются каждые 15 секунд и улучшаются со временем"
    set i = 12
    set FirstMultiboardLib__Item_R[i] = 2
    set FirstMultiboardLib__Item_C[i] = 3
    set FirstMultiboardLib__Item_S[i] = Boolean2String( FALSE )
    set FirstMultiboardLib__Item_D[i] = "Включает/Выключает монстров (крипов). Они перерождаются каждые 15 секунд и улучшаются со временем"
    set i = 13
    set FirstMultiboardLib__Item_R[i] = 3
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = "|cFFFFFF00» Выбор героев:|r"
    set i = 14
    set FirstMultiboardLib__Item_R[i] = 3
    set FirstMultiboardLib__Item_C[i] = 1
    set FirstMultiboardLib__Item_S[i] = Integer2Pick( FirstMultiboardLib__DM_Pick )
    set FirstMultiboardLib__Item_D[i] = "Классический или случайный? [Повторения] включает возможность выбор одинаковых героев."
    set i = 15
    set FirstMultiboardLib__Item_R[i] = 3
    set FirstMultiboardLib__Item_C[i] = 2
    set FirstMultiboardLib__Item_S[i] = Integer2Pick( FirstMultiboardLib__TDM_Pick )
    set FirstMultiboardLib__Item_D[i] = "Классический или случайный? [Повторения] включает возможность выбор одинаковых героев."
    set i = 16
    set FirstMultiboardLib__Item_R[i] = 3
    set FirstMultiboardLib__Item_C[i] = 3
    set FirstMultiboardLib__Item_S[i] = Integer2Pick( FirstMultiboardLib__RAID_Pick )
    set FirstMultiboardLib__Item_D[i] = "Классический или случайный? [Повторения] включает возможность выбор одинаковых героев."
    set i = 17
    set FirstMultiboardLib__Item_R[i] = 4
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = "|cFFFFFF00» Руны:|r"
    set i = 18
    set FirstMultiboardLib__Item_R[i] = 4
    set FirstMultiboardLib__Item_C[i] = 1
    set FirstMultiboardLib__Item_S[i] = Boolean2String( FirstMultiboardLib__DM_Runes )
    set FirstMultiboardLib__Item_D[i] = "Включает/Выключает появление рун на арене."
    set i = 19
    set FirstMultiboardLib__Item_R[i] = 4
    set FirstMultiboardLib__Item_C[i] = 2
    set FirstMultiboardLib__Item_S[i] = Boolean2String( FirstMultiboardLib__TDM_Runes )
    set FirstMultiboardLib__Item_D[i] = "Включает/Выключает появление рун на арене."
    set i = 20
    set FirstMultiboardLib__Item_R[i] = 4
    set FirstMultiboardLib__Item_C[i] = 3
    set FirstMultiboardLib__Item_S[i] = Boolean2String( FALSE )
    set FirstMultiboardLib__Item_D[i] = "Включает/Выключает появление рун на арене."
    set i = 21
    set FirstMultiboardLib__Item_R[i] = 5
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = "|cFFFFFF00» Описание:|r"
    set FirstMultiboardLib__Item_W[i] = FirstMultiboardLib__FullScreen_Width
    set i = 22
    set FirstMultiboardLib__Item_R[i] = 6
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = FirstMultiboardLib__Item_D[FirstMultiboardLib__Choosed_I]
    set FirstMultiboardLib__Item_W[i] = FirstMultiboardLib__FullScreen_Width
    set i = 23
    set FirstMultiboardLib__Item_R[i] = 7
    set FirstMultiboardLib__Item_C[i] = 0
    set FirstMultiboardLib__Item_S[i] = "|cFFFF0000                                                                                                                             Для старта нажмите |r'ESC'|cFFFF0000 или  |r'-go'"
    set FirstMultiboardLib__Item_W[i] = FirstMultiboardLib__FullScreen_Width
    call EnableColumn( FirstMultiboardLib__Enabled_Column )
    call SetFirstMB( )
    call StartInformation( )
    set FirstMultiboardLib__Arrows_Trg = CreateTrigger( )
    call TriggerRegisterPlayerEvent( FirstMultiboardLib__Arrows_Trg, Host_Player, EVENT_PLAYER_ARROW_LEFT_DOWN )
    call TriggerRegisterPlayerEvent( FirstMultiboardLib__Arrows_Trg, Host_Player, EVENT_PLAYER_ARROW_RIGHT_DOWN )
    call TriggerRegisterPlayerEvent( FirstMultiboardLib__Arrows_Trg, Host_Player, EVENT_PLAYER_ARROW_DOWN_DOWN )
    call TriggerRegisterPlayerEvent( FirstMultiboardLib__Arrows_Trg, Host_Player, EVENT_PLAYER_ARROW_UP_DOWN )
    call TriggerAddAction( FirstMultiboardLib__Arrows_Trg, function Arrows_Action )
    set FirstMultiboardLib__Start_Trg = CreateTrigger( )
    call TriggerRegisterPlayerChatEvent( FirstMultiboardLib__Start_Trg, Host_Player, "-go", true )
    call TriggerRegisterPlayerEvent( FirstMultiboardLib__Start_Trg, Host_Player, EVENT_PLAYER_END_CINEMATIC )
    call TriggerAddAction( FirstMultiboardLib__Start_Trg, function Start_Action )
endfunction
