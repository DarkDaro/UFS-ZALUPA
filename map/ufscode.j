globals
  timer TIMER_Crusader = CreateTimer()
  group GROUP_Crusader= CreateGroup()
endglobals


function CrusaderShieldRemove takes nothing returns nothing 
  local timer t = GetExpiredTimer() 
  local unit caster = LoadUnitHandle(udg_HashS, GetHandleId(t), 1) 
  local real last = LoadReal(udg_HashS, GetHandleId(t), 2) 
  local real elapsed = TimerGetElapsed(t)
  call SaveReal(udg_HashS, GetHandleId(t), 2, last - elapsed) 

  if last <= 0. or GetWidgetLife(caster) <= 0.405 or IsPassOff(caster) == true then 
    call UnitRemoveAbility(caster, 'A169') 
    call UnitRemoveAbility(caster, 'A16A') 
    call UnitRemoveAbility(caster, 'A168') 
    call DisplayTextToPlayer(GetOwningPlayer(caster), 0, 0, "удалили щит.") 
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\DivineShield\\DivineShieldTarget.mdl", caster, "origin")) 
    call FlushChildHashtable(udg_HashS, GetHandleId(t)) 
    call PauseTimer(t) 
    call DestroyTimer(t) 
  else 
    call TimerStart(t, 0.1, true, function CrusaderShieldRemove) 
    call DisplayTextToPlayer(GetOwningPlayer(caster), 0, 0, "щит рекурсия.") 

  endif 
  set t = null 
  set caster = null 
endfunction 


function CrusaderShieldRemove1 takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local unit caster = LoadUnitHandle(udg_HashS, GetHandleId(t), 1)
    local real last = LoadReal(udg_HashS, GetHandleId(t), 2)
    call SaveReal(udg_HashS,GetHandleId(t),2, last - 0.1 )
    
    if last <=0. or GetWidgetLife(caster) <= 0.405 or  IsPassOff(caster) == true then
        call UnitRemoveAbility( caster, 'A169')
        call UnitRemoveAbility( caster,  'A16A')
        call UnitRemoveAbility( caster, 'A168')
        call DisplayTextToPlayer(GetOwningPlayer(caster), 0, 0, "удалили  щит.")
        call DestroyEffect( AddSpecialEffectTarget( "Abilities\\Spells\\Human\\DivineShield\\DivineShieldTarget.mdl", caster, "origin" ) )
        call FlushChildHashtable(udg_HashS, GetHandleId(t))
        call PauseTimer(t)
        call DestroyTimer(t)
    endif
    set t = null
    set caster = null
endfunction

function CrusaderShieldAdd takes unit caster,real last returns nothing
        local timer t 
    //Обновление таймера
      if GetUnitAbilityLevel(caster,'A168') ==0  then
        set   t = CreateTimer()
        call UnitAddAbility(caster, 'A168')
        call UnitMakeAbilityPermanent( caster, true, 'A169')
        call UnitMakeAbilityPermanent( caster, true, 'A16A')
        call UnitMakeAbilityPermanent( caster, true, 'A168')
        call SaveUnitHandle(udg_HashS, GetHandleId(t), 1, caster)
        call SaveReal(udg_HashS,GetHandleId(t),2,last) //last
        call TimerStart(t, 0.1, true, function CrusaderShieldRemove)
        call CreateEffectUnit(caster, "Abilities\\Spells\\Human\\DivineShield\\DivineShieldTarget.mdl", "origin", last)
        call DisplayTextToForce( GetPlayersAll(), "щит дали" )  
    endif
        set t = null
        set caster = null
endfunction

function Item_Crusader_Group takes nothing returns nothing
local unit u = GetEnumUnit()
local integer Random = GetRandomInt(1,100)
if  GetWidgetLife(u)>.405 and IsUnitIllusion(u) == false and IsPassOff(u) == false then

 if ( Random  <= ChanseLucky(u ,50)  ) then
    call DisplayTextToForce( GetPlayersAll(), "щит шанс прок" )
    call CrusaderShieldAdd(u,5)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl",u,"origin"))
    else
    
    endif

endif
set u = null
endfunction

function Item_Crusader_Timer takes nothing returns nothing
  call ForGroup(GROUP_Crusader,function Item_Crusader_Group)
endfunction

//| Подбирает
function Item_Crusader_Action takes nothing returns nothing
  call GroupAddUnit(GROUP_Crusader,GetTriggerUnit())
if CountUnitsInGroup(GROUP_Crusader)==1 then
    call DisplayTextToForce( GetPlayersAll(), "щит старт" )

  call TimerStart(TIMER_Crusader,5,true,function Item_Crusader_Timer)
endif
endfunction

//| Теряет
function Item_Crusader_Drop_Action takes nothing returns nothing
  call GroupRemoveUnit(GROUP_Crusader,GetTriggerUnit())
if CountUnitsInGroup(GROUP_Crusader)==0 then
    call DisplayTextToForce( GetPlayersAll(), "щит стоп выброс" )

  call PauseTimer(TIMER_Crusader)
endif
endfunction

function Item_Crusader_Cond takes nothing returns boolean
return GetItemTypeId(GetManipulatedItem())=='I0F6' and IsUnitInGroup(GetTriggerUnit(),GROUP_Crusader)==false and CountItemOfTypeOnUnit(GetTriggerUnit(),'I0F6')==1
endfunction

function Item_Crusader_Drop_Cond takes nothing returns boolean
    return GetItemTypeId(GetManipulatedItem())=='I0F6' and IsUnitInGroup(GetTriggerUnit(),GROUP_Crusader)  and CountItemOfTypeOnUnit(GetTriggerUnit(),'I0F6')==1
endfunction

function InitTrig_Item_Crusader takes nothing returns nothing
    local trigger t = CreateTrigger()
    call TriggerRegister(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(t,Condition(function Item_Crusader_Cond))
    call TriggerAddAction(t,function Item_Crusader_Action)
    set t = CreateTrigger()
    call TriggerRegister(t,EVENT_PLAYER_UNIT_DROP_ITEM)
    call TriggerAddCondition(t,Condition(function Item_Crusader_Drop_Cond))
    call TriggerAddAction(t,function Item_Crusader_Drop_Action)
    set t = null
endfunction



globals
    constant real CRITICAL_CHANCE = 0.25 // Шанс на критический удар (25%)
    constant real CRITICAL_DAMAGE = 2.0 // Урон от критического удара (в 2 раза больше обычного удара)
    hashtable baseDamageTable
endglobals

function GetBaseDamage takes unit attacker returns real
    local integer attackerId = GetHandleId(attacker)
    local real baseDamage = 0.0

    if not HashtableHasKey(baseDamageTable, attackerId) then
        // Если базовый урон еще не рассчитан для данного атакующего, то рассчитываем его
        // Тут можно добавить свою логику для расчета базового урона, например, в зависимости от типа атакующего или его уровня
        // В данном примере, просто устанавливаем базовый урон равным 10.0
        call HashtableSet(baseDamageTable, attackerId, 10.0)
        baseDamage = 10.0
    else
        baseDamage = GetHashtableReal(baseDamageTable, attackerId)
    endif

    return baseDamage
endfunction

function DoAttack takes unit attacker, unit target returns nothing
    local real damage = GetBaseDamage(attacker) // Получаем базовый урон атакующего
    local real critThreshold = CRITICAL_CHANCE * 100 // Приводим шанс на критический удар к диапазону от 0 до 100

    if GetRandomReal(0, 100) <= critThreshold then // Проверяем выпадение критического удара
        damage = damage * CRITICAL_DAMAGE // Увеличиваем урон от атаки в случае критического удара
        // Здесь ты можешь добавить дополнительные эффекты критического удара, если нужно
    end if

    // Применяем урон к цели
    call UnitDamageTarget(attacker, target, damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
endfunction



function GetHuskarHealthPct takes unit huskar returns real
    return GetUnitState(huskar, UNIT_STATE_LIFE) / GetUnitState(huskar, UNIT_STATE_MAX_LIFE) * 100
endfunction

function BerserkersBlood takes nothing returns nothing
    local unit huskar = GetTriggerUnit()
    local real healthPct = GetHuskarHealthPct(huskar)

    local integer resist = IMinBJ(98, 1 + R2I(healthPct / 7))
    call UnitAddAbility(huskar, 'AInv')

    call SetUnitAbilityLevel(huskar, 'AInv', resist)
    
    call IssueImmediateOrderById(huskar, OrderId('attack'))
    call IssueImmediateOrderById(huskar, OrderId('stop'))
endfunction

function InitTrig_BerserkersBlood takes nothing returns nothing
    local trigger t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DAMAGED)
    call TriggerAddCondition(t, Condition(function BerserkersBlood))
endfunction





globals
    private constant integer MOON_GLAIVES_ABILITY_ID = 'A002'
    private constant integer MOON_GLAIVES_ATTACK_EVENT_ID = 4
    private constant integer MOON_GLAIVES_DISTANCE = 900

endglobals

function MoonGlaivesProc takes nothing returns boolean
    local unit luna = GetTriggerUnit()
    local unit attacker = GetAttacker()
    local real dmg = GetEventDamage()

    if attacker != luna and not IsUnitType(attacker, UNIT_TYPE_STRUCTURE) then
        local real x = GetUnitX(luna)
        local real y = GetUnitY(luna)
        local real distance
        local unit target
        local boolean hit
        local integer i

        // Находим ближайших противников в радиусе действия способности
        loop
            set i = i + 1
            set distance = MOON_GLAIVES_DISTANCE * i
            set target = null
            set hit = false
            
            loop
                set target = GetNearestEnemyUnit(luna, distance, false)
                exitwhen target == null or not IsUnitAliveBJ(target)

                // Исключаем уже пораженных юнитов
                if not IsUnitInRange(target, luna, 1000.0) then
                    set hit = true
                endif

                exitwhen hit
            endloop

            if target != null and IsUnitInRange(target, luna, 1000.0) then
                call UnitDamageTarget(luna, target, dmg, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
            endif

            exitwhen target == null or i >= 6
        endloop
    endif

    return false
endfunction

function InitTrig_MoonGlaivesProc takes nothing returns nothing
    local trigger t = CreateTrigger()
    local unittype ut = ConvertUnitType(MOON_GLAIVES_ABILITY_ID)

    call TriggerRegisterUnitEvent(t, GetLocalPlayer(), EVENT_PLAYER_UNIT_ATTACKED, Filter(function MoonGlaivesProc))
    call TriggerRegisterUnitEvent(t, GetLocalPlayer(), EVENT_PLAYER_UNIT_ATTACKED, nil)
    call TriggerAddCondition(t, Condition(function MoonGlaivesProc))
endfunction


function MoonGlaiveProc takes nothing returns boolean
    local unit attacker = GetAttacker()
    local unit luna = GetOwningUnit(attacker)
    local real damage = GetEventDamage()
    local real x = GetUnitX(luna)
    local real y = GetUnitY(luna)

    if attacker != null and IsUnitType(attacker, UNIT_TYPE_HERO) and not IsUnitType(attacker, UNIT_TYPE_STRUCTURE) then
        local integer bounceCount = 2 // Количество отскоков
        local real distance = 900.0
        local real damagePercent = 35 // Процент урона для отскоков
        
        loop
            set distance = 900.0
            exitwhen bounceCount <= 0
            
            set bounceCount = bounceCount - 1
            set damage = damage * damagePercent * 0.01
            
            // Находим ближайших противников в радиусе действия способности
            local group targets = CreateGroup()
            
            call GroupEnumUnitsInRange(targets, x, y, distance, Condition(function filter))
            call GroupRemoveUnit(targets, attacker)
            
            // Атакуем найденных противников
            local integer i = 0
            local unit target
            loop
                exitwhen i >= bounceCount or FirstOfGroup(targets) == null
                
                set target = FirstOfGroup(targets)
                
                // Создаем сюрикен
                call CreateNUnitsAtLoc(1, 'Auco', GetOwningPlayer(attacker), GetUnitLoc(target), bj_UNIT_FACING)
                
                // Наносим урон
                call UnitDamageTarget(luna, target, damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_NORMAL)
                
                set i = i + 1
                call GroupRemoveUnit(targets, target)
            endloop
            
            call DestroyGroup(targets)
        endloop
    endif

    return false
endfunction

function InitTrig_MoonGlaiveProc takes nothing returns nothing
    local trigger t = CreateTrigger()
    
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(t, Condition(function MoonGlaiveProc))
endfunction

function filter takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and not IsUnitType(GetFilterUnit(), UNIT_TYPE_STRUCTURE)
endfunction


function PitOfMaliceProc takes nothing returns boolean
    local unit attacker = GetAttacker()
    local unit underlord = GetOwningUnit(attacker)
    local real x = GetUnitX(underlord)
    local real y = GetUnitY(underlord)
    local real distance = 275.0
    
    if attacker != null and IsUnitType(attacker, UNIT_TYPE_HERO) and not IsUnitType(attacker, UNIT_TYPE_STRUCTURE) then
        local unit enemy = GetTriggerUnit()
        
        if IsUnitEnemy(enemy, GetOwningPlayer(underlord)) and not IsUnitType(enemy, UNIT_TYPE_STRUCTURE) then
            set distance = DistanceBetweenPoints(x, y, GetUnitX(enemy), GetUnitY(enemy))
            
            if distance <= 275.0 then
                call UnitAddAbility(underlord, 'A06A')
                call UnitRemoveAbility(underlord, 'A06B')
                
                call ShowUnitHide(underlord, true)
                call ShowUnitShow(underlord, false)
                
                call PingMinimapEx(x, y, 5, 255, 0, 0, false)
                call IssueTargetOrder(underlord, "impale", underlord)
                
                call UnitDamageTarget(underlord, enemy, GetEventDamage(), true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
                
                call ShowUnitHide(underlord, false)
                
                call UnitAddAbility(underlord, 'A06B')
                call UnitRemoveAbility(underlord, 'A06A')
            endif
        endif
    endif
    
    return false
endfunction

function InitTrig_PitOfMaliceProc takes nothing returns nothing
    local trigger t = CreateTrigger()
    
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(t, Condition(function PitOfMaliceProc))
endfunction