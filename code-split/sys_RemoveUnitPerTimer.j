// ===== RemoveUnitPerTimerExpired (строки 849-863) =====
function RemoveUnitPerTimerExpired takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local integer i = GetHandleId( t )
    local unit u = LoadUnitHandle( HT, i, 0 )
    if u != null then
      //  call DisplayTextToForce( GetPlayersAll(),GetUnitName(u) + "_удален юнит" )
        call KillUnit( u )
        call RemoveUnit( u )
    endif
    call FlushChildHashtable( HT, i )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== RemoveUnitPerTimer (строки 865-872) =====
function RemoveUnitPerTimer takes unit u, real time returns nothing
    local timer t = CreateTimer( )
    local integer i = GetHandleId( t )
    call SaveUnitHandle( HT, i, 0, u )
    call TimerStart( t, time, false, function RemoveUnitPerTimerExpired )
    set t = null
    set u = null
endfunction
