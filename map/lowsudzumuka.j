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