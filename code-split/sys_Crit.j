// ===== Crit_IsCrit (строки 2134-2144) =====
function Crit_IsCrit takes unit source returns boolean
    local real chance = I2R( GetHeroInt( source, true ) ) * Crit__Crit_Per_Int * ( Crit__Decrease_Chance_Modifer + GetUnitLevel( source ) * Crit__Decrease_Per_Lvl )
    local real dice = GetRandomReal( 1., 100. )
    if dice <= chance then

        return TRUE
    else
        return FALSE

    endif
endfunction

// ===== Crit_GetDamage (строки 2146-2152) =====
function Crit_GetDamage takes real damage, boolean crit returns real
    if crit then
        return( damage * Crit__Crit_Modifer ) * ( 1. + GetRandomReal( -Crit__UnConst_Value, Crit__UnConst_Value ) )
    else
        return damage * ( 1. + GetRandomReal( -Crit__UnConst_Value, Crit__UnConst_Value ) )
    endif
endfunction
