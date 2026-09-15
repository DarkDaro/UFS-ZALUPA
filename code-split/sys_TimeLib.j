// ===== TimeLib__Time_Act (строки 4019-4039) =====
function TimeLib__Time_Act takes nothing returns nothing
    local integer i = 0
    if TimeLib_GO_Time then
        if TimeLib_Seconds >= 59 then
            set TimeLib_Seconds = 0
            set TimeLib__Minutes = TimeLib__Minutes + 1
        else
            set TimeLib_Seconds = TimeLib_Seconds + 1
        endif
    else
        if TimeLib_CD_Time then
            set TimeLib_Seconds = TimeLib_Seconds - 1
        endif
    endif
    loop
        exitwhen( i > 11 ) //12 игроков
        call SetPlayerState( Player( i ), PLAYER_STATE_RESOURCE_FOOD_USED, TimeLib_Seconds )
        call SetPlayerState( Player( i ), PLAYER_STATE_RESOURCE_LUMBER, TimeLib__Minutes )
        set i = i + 1
    endloop
endfunction

// ===== TimeLib__TimeLib_Init (строки 4041-4047) =====
function TimeLib__TimeLib_Init takes nothing returns nothing
    local trigger Time_Trg = CreateTrigger( )
    call TriggerRegisterTimerEvent( Time_Trg, 1., true )
    call TriggerAddAction( Time_Trg, function TimeLib__Time_Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Time_Trg = null
endfunction
