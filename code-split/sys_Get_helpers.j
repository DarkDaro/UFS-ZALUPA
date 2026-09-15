// ===== Get_Target_Unit (строки 1072-1123) =====
function Get_Target_Unit takes unit u, real x, real y returns unit
    local unit uf
    local unit ut_hero
    local unit ut_creep
    local boolexpr b
    local real hp
    local real min_hp_hero = 0.0
    local real min_hp_creep = 0.0
    local group G = CreateGroup()
    local player p = GetOwningPlayer(u)

    call GroupEnumUnitsInRange(G, x, y, 800.0, null)
    loop
        set uf = FirstOfGroup(G)
        exitwhen uf == null

        if GetWidgetLife(uf) > 0.405 and IsUnitEnemy(uf, p) and IsUnitVisible(uf, p) then

            set hp = GetUnitState(uf, UNIT_STATE_LIFE)

            if IsUnitType(uf, UNIT_TYPE_HERO) == true then
                if hp < min_hp_hero or min_hp_hero == 0.0 then
                    set min_hp_hero = hp
                    set ut_hero = uf
                endif
            elseif IsUnitType(uf, UNIT_TYPE_HERO) == false then

                if hp < min_hp_creep or min_hp_creep == 0.0 then
                    set min_hp_creep = hp
                    set ut_creep = uf
                endif

            endif

        endif
        call GroupRemoveUnit(G, uf)
    endloop
    call DestroyGroup(G)
//всегда возвщает героя
    set b = null
    set u = null
    if ut_hero != null then
        set ut_creep = null
        return ut_hero
    endif
    // 05.09: anti-leak (obnulenie lokalov)
    set uf = null
    set ut_hero = null
    set G = null
    set p = null
    return ut_creep
endfunction
