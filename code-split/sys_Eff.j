// ===== Eff__RemoveEffect (строки 2293-2302) =====
function Eff__RemoveEffect takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local effect e = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "EF" ) )
    call DestroyEffect( e )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set e = null
endfunction

// ===== Eff_AddThenRemoveEffectOnUnit (строки 2304-2311) =====
function Eff_AddThenRemoveEffectOnUnit takes string l__gg_snd_DEA_horn, unit u, string attach, real time returns nothing
    local effect e = AddSpecialEffectTarget( l__gg_snd_DEA_horn, u, attach )
    local timer t = CreateTimer( )
    call SaveEffectHandle( HT, GetHandleId( t ), StringHash( "EF" ), e )
    call TimerStart( t, time, false, function Eff__RemoveEffect )
    set e = null
    set t = null
endfunction
