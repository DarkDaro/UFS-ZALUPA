// ===== Energy_Get (строки 2314-2318) =====
function Energy_Get takes unit u, real heal returns real
    local integer playerId = GetPlayerId(GetOwningPlayer(u)) + 1
    local real energyFactor = (20.0 + 1.6 * s__now_energy[playerId]) / 100.0
    return heal * energyFactor
endfunction

// ===== Energy_Minus (строки 2321-2335) =====
function Energy_Minus takes unit u, integer energyAmount returns nothing
    local integer playerId = GetPlayerId(GetOwningPlayer(u)) + 1
    local integer currentEnergy = s__now_energy[playerId]

    if currentEnergy >= energyAmount then
        // Проверяем, не превышает ли результат максимальное значение
        if currentEnergy - energyAmount <= Energy_max_energy then
            set s__now_energy[playerId] = currentEnergy - energyAmount
        else
            set s__now_energy[playerId] = Energy_max_energy // Ограничение максимального значения
        endif
    else
        set s__now_energy[playerId] = 0 // Если энергии не хватает, сбрасываем в 0
    endif
endfunction

// ===== Energy_AcceptEB (строки 2338-2371) =====
function Energy_AcceptEB takes unit u returns nothing
    local integer playerId = GetPlayerId(GetOwningPlayer(u)) + 1
    local texttag energyTextTag
    local string energyString = ""
    local integer energyBarCount = 0

    // Создание тексттега для энергии
    set energyTextTag = CreateTextTag()
    call SetTextTagPos(energyTextTag, GetUnitX(u) + Energy__x_offset, GetUnitY(u) + Energy__y_offset, Energy__z_offset + GetUnitFlyHeight(u))
    call SetTextTagPermanent(energyTextTag, true)
    call SetTextTagColor(energyTextTag, 0, 255, 0, 255) // Зеленый цвет по умолчанию

    // Инициализация энергии игрока
    set s__now_energy[playerId] = Energy_max_energy
    set s__Energy__EB_tt[playerId] = energyTextTag

    // Генерация строки энергии
    loop
        exitwhen energyBarCount > Energy_max_energy
        set energyString = energyString + Energy__one_bar
        if energyBarCount >= s__now_energy[playerId] then
            set energyString = energyString + Energy__end
            exitwhen true
        endif
        set energyBarCount = energyBarCount + 1
    endloop

    // Устанавливаем текст и видимость
    call SetTextTagText(energyTextTag, energyString, Energy__size)
    call SetTextTagVisibility(energyTextTag, IsPlayerAlly(GetLocalPlayer(), GetOwningPlayer(u)))

    // Очистка
    set energyTextTag = null
endfunction

// ===== Energy__SetTTPos (строки 2374-2419) =====
function Energy__SetTTPos takes nothing returns nothing
    local integer playerId = 1
    local texttag energyTextTag
    local unit hero
    local string energyString
    local integer energyBarCount

    loop
        exitwhen playerId > 10 // Обновление для 10 игроков

        // Получаем тексттег и героя
        set energyTextTag = s__Energy__EB_tt[playerId]
        set hero = s__Hero[playerId]

        if energyTextTag != null and hero != null then
            set energyString = ""
            set energyBarCount = 0

            // Сбрасываем энергию, если герой мертв
            if GetWidgetLife(hero) < 0.405 then
                set s__now_energy[playerId] = 0
            endif

            // Генерация строки энергии
            loop
                exitwhen energyBarCount > Energy_max_energy
                set energyString = energyString + Energy__one_bar
                if energyBarCount >= s__now_energy[playerId] then
                    set energyString = energyString + Energy__end
                    exitwhen true
                endif
                set energyBarCount = energyBarCount + 1
            endloop

            // Обновляем текст и позицию тексттега
            call SetTextTagText(energyTextTag, energyString, Energy__size)
            call SetTextTagPos(energyTextTag, GetUnitX(hero) + Energy__x_offset, GetUnitY(hero) + Energy__y_offset, Energy__z_offset + GetUnitFlyHeight(hero))
        endif

        set playerId = playerId + 1
    endloop

    // Очистка ссылок
    set energyTextTag = null
    set hero = null
endfunction

// ===== Energy__Regen (строки 2422-2432) =====
function Energy__Regen takes nothing returns nothing
    local integer playerId = 1

    loop
        exitwhen playerId > 10
        if s__now_energy[playerId] < Energy_max_energy then
            set s__now_energy[playerId] = s__now_energy[playerId] + 1
        endif
        set playerId = playerId + 1
    endloop
endfunction

// ===== Energy__I (строки 2435-2448) =====
function Energy__I takes nothing returns nothing
    local timer energyTextTimer = CreateTimer()
    local timer energyRegenTimer = CreateTimer()

    // Таймер для обновления позиций тексттегов
    call TimerStart(energyTextTimer, 0.04, true, function Energy__SetTTPos)

    // Таймер для регенерации энергии
    call TimerStart(energyRegenTimer, Energy__regen_period, true, function Energy__Regen)

    // Очистка
    set energyTextTimer = null
    set energyRegenTimer = null
endfunction
