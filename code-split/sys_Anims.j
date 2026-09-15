// ===== Anims__BE (строки 1910-1919) =====
function Anims__BE takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local integer id = GetUnitTypeId( u )
    local boolean b = FALSE
    if id == 'nrac' or id == 'necr' or id == 'nfro' or id == 'nder' or id == 'ndog' then
        set b = TRUE
    endif
    set u = null
    return b
endfunction

// ===== Anims__B (строки 1921-1925) =====
function Anims__B takes nothing returns nothing
    local unit u = GetEnumUnit( )
    call SetUnitExploded( u, TRUE )
    set u = null
endfunction

// ===== Anims__A (строки 1927-1937) =====
function Anims__A takes nothing returns nothing
    local timer tm = GetExpiredTimer( ) // 07.09: anti-leak
    local group g = CreateGroup( )
    call GroupEnumUnitsInRange( g, 0., 0., 9999999., Condition( function Anims__BE ) )
    call ForGroup( g, function Anims__B )
    call GroupClear( g )
    call DestroyGroup( g )
    call DestroyTimer( tm ) // 07.09: anti-leak
    set tm = null
    set g = null
endfunction

// ===== Anims__I (строки 1939-1944) =====
function Anims__I takes nothing returns nothing
    local timer t = CreateTimer( )
    call TimerStart( t, 1., FALSE, function Anims__A )
    // 05.09: anti-leak (obnulenie lokalov)
    set t = null
endfunction
