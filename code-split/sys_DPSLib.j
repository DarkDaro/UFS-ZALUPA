// ===== DPSLib__PeriodicEvent (строки 2258-2266) =====
function DPSLib__PeriodicEvent takes nothing returns nothing
    local integer i = 1
    set DPSLib__Time = DPSLib__Time + ( DPSLib__Period )
    loop
        exitwhen( i > 10 )
        set s__DPSLib_DPS[i] = s__DPSLib_Total_Damage_Done[i] / DPSLib__Time
        set i = i + 1
    endloop
endfunction

// ===== DPSLib__Act (строки 2268-2279) =====
function DPSLib__Act takes nothing returns nothing
    local unit a = GetEventDamageSource( )
    local integer qxA = GetConvertedPlayerId( GetOwningPlayer( a ) )
    call DisableTrigger( DPSLib_DPS_Trg )
    call DisableTrigger( GetTriggeringTrigger( ) )
    if GetEventDamage( ) > 0 then
        set s__DPSLib_Total_Damage_Done[qxA] = s__DPSLib_Total_Damage_Done[qxA] + ( GetEventDamage( ) )
    endif
    call EnableTrigger( DPSLib_DPS_Trg )
    call EnableTrigger( GetTriggeringTrigger( ) )
    set a = null
endfunction

// ===== DPSLib__DPSLib_Init (строки 2281-2291) =====
function DPSLib__DPSLib_Init takes nothing returns nothing
    local trigger Trg
    set DPSLib_DPS_Trg = CreateTrigger( )
    call TriggerAddAction( DPSLib_DPS_Trg, function DPSLib__Act )

    set Trg = CreateTrigger( )
    call TriggerRegisterTimerEvent( Trg, DPSLib__Period, true )
    call TriggerAddAction( Trg, function DPSLib__PeriodicEvent )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction
