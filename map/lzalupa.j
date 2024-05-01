globals
  timer TIMER_FireCloak = CreateTimer()
  group GROUP_FireCloak= CreateGroup()
  group GROUP_FireCloakBuff= CreateGroup()
endglobals
//
function Item_FireCloak_Group takes nothing returns nothing
local unit u = GetEnumUnit()
//GetUnitState(u,UNIT_STATE_LIFE) < maxlife and
local real aoe = 350
local real damage = 0 
local string sfx =""
if  GetUnitState(u,UNIT_STATE_LIFE) >0 and IsPassOff(u) == false and not IsUnitPaused(u) then

  

endif
set u = null
endfunction

function Item_FireCloak_Timer takes nothing returns nothing
  call ForGroup(GROUP_FireCloak,function Item_FireCloak_Group)
endfunction

//| Подбирает
function Item_FireCloak_Action takes nothing returns nothing

  call GroupAddUnit(GROUP_FireCloak,GetTriggerUnit())

if CountUnitsInGroup(GROUP_FireCloak)==1 then


  call TimerStart(TIMER_FireCloak,1,true,function Item_FireCloak_Timer)
endif
endfunction

//| Теряет
function Item_FireCloak_Drop_Action takes nothing returns nothing
  call GroupRemoveUnit(GROUP_FireCloak,GetTriggerUnit())
if CountUnitsInGroup(GROUP_FireCloak)==0 then

  call PauseTimer(TIMER_FireCloak)
endif
endfunction

function Item_FireCloak_Cond takes nothing returns boolean
return  IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) and  GetItemTypeId(GetManipulatedItem())=='I0EY' and IsUnitInGroup(GetTriggerUnit(),GROUP_FireCloak)==false and CountItemOfTypeOnUnit(GetTriggerUnit(),'I0EY')==1
endfunction

function Item_FireCloak_Drop_Cond takes nothing returns boolean
return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) and  GetItemTypeId(GetManipulatedItem())=='I0EY' and IsUnitInGroup(GetTriggerUnit(),GROUP_FireCloak) ==true  and CountItemOfTypeOnUnit(GetTriggerUnit(),'I0EY')==1
endfunction

function InitTrig_ItemFireCloak takes nothing returns nothing
    local trigger t = CreateTrigger()
    call TriggerRegister(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(t,Condition(function Item_FireCloak_Cond))
    call TriggerAddAction(t,function Item_FireCloak_Action)
    set t = CreateTrigger()
    call TriggerRegister(t,EVENT_PLAYER_UNIT_DROP_ITEM)
    call TriggerAddCondition(t,Condition(function Item_FireCloak_Drop_Cond))
    call TriggerAddAction(t,function Item_FireCloak_Drop_Action)
    set t= null
endfunction



function Spell_ImpaleJumper_D2 takes nothing returns nothing
  local timer t = GetExpiredTimer()
  local real x1 = LoadReal(udg_HashS,GetHandleId(t),10)
  local real y1 = LoadReal(udg_HashS,GetHandleId(t),11)
  local real angle = LoadReal(udg_HashS,GetHandleId(t),12)
  local unit a =LoadUnitHandle(udg_HashS,GetHandleId(t),13)
  local real d = LoadReal(udg_HashS,GetHandleId(t),14)
  local real speed = LoadReal(udg_HashS,GetHandleId(t),15)
  local effect ef = LoadEffectHandle(udg_HashS,GetHandleId(t),16)
  local real time = LoadReal(udg_HashS,GetHandleId(t),17)
  local group g = LoadGroupHandle(udg_HashS,GetHandleId(t),18)
  local real dmg = LoadReal(udg_HashS,GetHandleId(t),19)
  local real i1 = LoadReal(udg_HashS,GetHandleId(t),20)
  local real x = GetUnitX(a)
  local real y = GetUnitY(a)
  local real dx = x - x1
  local real dy = y - y1
  local real x2
  local real y2
  local real height
  local real angle1 = 0
  local real aoe = 350
  local unit b
  local unit c
  local unit c1
  local string se = "Abilities\\Spells\\Undead\\Impale\\ImpaleMissTarget.mdl"
  local string se1 = "Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl"
  local string se2 = "Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl"
if time > 0 and GetWidgetLife(a) > 0.405 then
  call SaveReal(udg_HashS,GetHandleId(t),17,time-0.01)
  
  call SetUnitX(a,x+speed*Cos(angle*bj_DEGTORAD))
  call SetUnitY(a,y+speed*Sin(angle*bj_DEGTORAD))
  set height = (4*450/d)*(d-SquareRoot(dx*dx+dy*dy))*(SquareRoot(dx*dx+dy*dy)/d)
  
  call SetUnitFlyHeight(a,height,0)
endif
if time < 0 and GetWidgetLife(a) > 0.405 then
  call SaveReal(udg_HashS,GetHandleId(t),20,i1-0.03)
endif
if time == 0 and i1 == 0.30 and GetWidgetLife(a) > 0.405 then
  call SetUnitTimeScale(a,3)
  call DestroyEffect(ef)
  call SetUnitFlyHeight(a,0,0)
  call SetUnitAnimation(a,"spell slam")
endif
if time == 0 and i1 == 0 and GetWidgetLife(a) > 0.405 then
  call DestroyEffect(AddSpecialEffectTarget(se2,a,"origin"))
loop
  exitwhen angle1 == 360
  call DestroyEffect(AddSpecialEffect(se,x+120*Cos(angle1),y+120*Sin(angle1)))
  call DestroyEffect(AddSpecialEffect(se,x+220*Cos(angle1),y+220*Sin(angle1)))
  call DestroyEffect(AddSpecialEffect(se,x+320*Cos(angle1),y+320*Sin(angle1)))
  call DestroyEffect(AddSpecialEffect(se1,x+120*Cos(angle1),y+120*Sin(angle1)))
  call DestroyEffect(AddSpecialEffect(se1,x+220*Cos(angle1),y+220*Sin(angle1)))
  call DestroyEffect(AddSpecialEffect(se1,x+320*Cos(angle1),y+320*Sin(angle1)))
  set angle1 = angle1 + 15
endloop
  call GroupEnumUnitsInRange(g,x,y,aoe,null)
loop
  set b = FirstOfGroup(g)
  exitwhen b == null
if IsPlayerEnemy(GetOwningPlayer(a), GetOwningPlayer(b)) and GetWidgetLife(b) > 0.405 then
  call UnitDamageTarget(a,b,dmg,false,false,ATTACK_TYPE_HERO,DAMAGE_TYPE_UNIVERSAL,null)
  
                call StunUnitSimple(b,1.5)
                call ImpaleUnitNoBuff(b, 1.0)

 // set x2 = GetUnitX(b)
 // set y2 = GetUnitY(b)
  //set c1 = CreateUnit(GetOwningPlayer(a),'h001',x2,y2,0)
  //call IssueTargetOrder(c1,"thunderbolt",b)
 // call UnitApplyTimedLife(c1,'BTLF',1)
//  set c = CreateUnit(GetOwningPlayer(a),'h001',x2,y2,0)
//  call IssueTargetOrder(c,"cyclone",b)
//  call UnitApplyTimedLife(c,'BTLF',1)
  
endif
  call GroupRemoveUnit(g,b)
endloop
  call SetUnitTimeScale(a,1)
  call PauseUnit(a,false)
  call IssueImmediateOrder(a,"stop")
  call FlushChildHashtable(udg_HashS,GetHandleId(t))
  call PauseTimer(t)
  call DestroyTimer(t)
  call GroupClear(g)
  call DestroyGroup(g)
  set a = null
  set b = null
  set c = null
  set ef = null
endif

if GetWidgetLife(a) < 0.405 then
  call DestroyEffect(ef)
  call SetUnitFlyHeight(a,0,0)
  call SetUnitTimeScale(a,1)
  call PauseUnit(a,false)
  call IssueImmediateOrder(a,"stop")
  call FlushChildHashtable(udg_HashS,GetHandleId(t))
  call PauseTimer(t)
  call DestroyTimer(t)
  call GroupClear(g)
  call DestroyGroup(g)
  set a = null
  set b = null
  set c = null
  set ef = null
endif

  set a = null
  set b = null
  set c = null
  set ef = null
  set t = null
endfunction

function Spell_ImpaleJumper_D takes nothing returns nothing
  local unit a = GetTriggerUnit()
  local real x = GetUnitX(a)
  local real y = GetUnitY(a)
  local real x1 = GetSpellTargetX()
  local real y1 = GetSpellTargetY()
  local real angle = bj_RADTODEG*Atan2(y1-y,x1-x)
  local real angle1 = 0
  local real time = 0.35
  local real dx = x - x1
  local real dy = y - y1
  local real d = SquareRoot(dx*dx+dy*dy)
  local real speed = d/time*0.01
  
  local string se = "Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl"
  local string se1 = "Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl"
  local string se2 = "Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl"
  local effect ef
  local group g = CreateGroup()
  local real dmg = GetHeroStr(a,true)*3
  local real i1 = 0.30
  local timer t = CreateTimer()
  loop
  exitwhen angle1 == 360
  call DestroyEffect(AddSpecialEffect(se1,x1+320*Cos(angle1),y1+320*Sin(angle1)))
  set angle1 = angle1 + 15
endloop

if SquareRoot(dx*dx+dy*dy) > 0 and GetWidgetLife(a) > 0.405 then

  set ef = AddSpecialEffectTarget(se,a,"chest")
  call PauseUnit(a,true)
  call UnitAddAbility(a,'Aave')
  call UnitRemoveAbility(a,'Aave')
  call SetUnitTimeScale(a,0.63)
  call SetUnitAnimationByIndex(a,5)
  call DestroyEffect(AddSpecialEffect(se2,x,y))
  call SaveReal(udg_HashS,GetHandleId(t),10,x1)
  call SaveReal(udg_HashS,GetHandleId(t),11,y1)
  call SaveReal(udg_HashS,GetHandleId(t),12,angle)
  call SaveUnitHandle(udg_HashS,GetHandleId(t),13,a)
  call SaveReal(udg_HashS,GetHandleId(t),14,d)
  call SaveReal(udg_HashS,GetHandleId(t),15,speed)
  call SaveEffectHandle(udg_HashS,GetHandleId(t),16,ef)
  call SaveReal(udg_HashS,GetHandleId(t),17,time)
  call SaveGroupHandle(udg_HashS,GetHandleId(t),18,g)
  call SaveReal(udg_HashS,GetHandleId(t),19,dmg)
  call SaveReal(udg_HashS,GetHandleId(t),20,i1)
  call TimerStart(t,0.03,true,function Spell_ImpaleJumper_D2)
endif
  set a = null
endfunction

function Spell_ImpaleJumper_Y takes nothing returns boolean
  return GetSpellAbilityId() == 'A17B'
endfunction
//===========================================================================
function InitTrig_Spell_ImpaleJumper takes nothing returns nothing
    local trigger t = CreateTrigger()
    local integer i = 0
loop
    exitwhen i > 12
    call TriggerRegisterPlayerUnitEvent(t,Player(i),EVENT_PLAYER_UNIT_SPELL_EFFECT,null)
    set i = i + 1
endloop
    call TriggerAddCondition(t,Condition(function Spell_ImpaleJumper_Y))
    call TriggerAddAction(t,function Spell_ImpaleJumper_D)
    set t = null
endfunction







globals
  integer hspellid = 332
  integer shspellid = 500
  string array A17_order
  unit array A17_target
  integer array A17_cstack
  integer array A17_hlvl
  unit array A17_boss
endglobals
//Выбор супергероя
function A17_sheroi takes nothing returns nothing
  local timer t = GetExpiredTimer()
  local integer i = GetHandleId(t)
  local integer p = LoadInteger(udg_Hash, i,0)
  local unit u = udg_Heroes[p]
  local integer j = 0
  loop
      exitwhen GetUnitState(u,UNIT_STATE_LIFE)>0
      set j = 0
  endloop
  loop
      exitwhen j > 5
      call UnitRemoveItemFromSlot(u,j)
      set j = j + 1
  endloop
  //Сила
  if GetUnitPointValue(u) == 1 then
      call UnitAddItemById(u,'I073')
      call UnitAddItemById(u,'I03P')
      call UnitAddItemById(u,'I03H')
      call UnitAddItemById(u,'I063')
      call UnitAddItemById(u,'I04O')
      call UnitAddItemById(u,'I03M')
  endif
  //Ловкость
   if GetUnitPointValue(u) == 2 then
      call UnitAddItemById(u,'I073')
      call UnitAddItemById(u,'I066')
      call UnitAddItemById(u,'I03Q')
      call UnitAddItemById(u,'I03N')
      call UnitAddItemById(u,'I065')
      call UnitAddItemById(u,'I04O')
  endif
  //Разум
   if GetUnitPointValue(u) == 3 then
      call UnitAddItemById(u,'I073')
      call UnitAddItemById(u,'I03O')
      call UnitAddItemById(u,'I04P')
      call UnitAddItemById(u,'I076')
      call UnitAddItemById(u,'I034')
      call UnitAddItemById(u,'I04O')
  endif
  call DestroyTimer(t)
  set t = null
  set u = null
endfunction

function A17_shero takes unit u returns nothing
  local timer t = CreateTimer()
  local integer k = GetHandleId(t)
  local item it
  local integer i = 13
  local boolean endflag = false
  loop
      exitwhen (endflag == true)
      set i = GetRandomInt(13,34)
      if(udg_AltarBool[i] == false)
          set it = UnitAddItemById(u,udg_AltarItem[i])
          call UnitUseItem(u,it)
          call SaveInteger(udg_Hash,k,0,GetPlayerId(GetOwningPlayer(u))+1)
          call TimerStart(t,2.2,false,function A17_sheroi)
          set endflag = true
      endif
      set i = i + 1
  endloop
  set it = null
  set t = null
endfunction
//Фильтр врагов героев
function A17_EnemyHeroFilter takes nothing returns boolean
  return GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>0 and IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO)
endfunction
//Узнать в каком клане бот
function A17_GetClan takes player p returns integer
  local integer i = GetPlayerId(p)+1
  if i>0 and i<13 then
      if i<7 then
      return 1
      else
      return 2
      endif
  else
  return 0
  endif
endfunction
//Поиск Фарма


function A17_FindFarm takes unit u returns nothing
  local integer c = A17_GetClan(GetOwningPlayer(u))
  local integer p = GetPlayerId(GetOwningPlayer(u)) + 1
  local group g = CreateGroup()
  local unit f
  local integer count = 0
  loop
  exitwhen (count ==4 or count ==8) 
      if (c == 1 and count ==0) then
          set count = 1
      elseif (c == 2 and count == 0) then        
          set count = 5
      endif
      call GroupEnumUnitsInRange(g,GetRectCenterX(udg_CreepRect[A17_cs[count]]),GetRectCenterY(udg_CreepRect[A17_cs[count]]),800,function A17_EnemyHeroFilter)
      set f = FirstOfGroup(g)
      if ( IsUnitAlly(u,GetOwningPlayer(f)) == true and f !=u) or (A17_cstack[A17_cs[count]] > 0) then
          set count = count + 1
      elseif (GetUnitState(f,UNIT_STATE_LIFE)/GetUnitState(u,UNIT_STATE_LIFE))<0.8 then 
          call IssuePointOrder(u,"attack",GetRectCenterX(udg_CreepRect[A17_cs[count]]),GetRectCenterY(udg_CreepRect[A17_cs[count]]))
          set A17_order[p] = "farm"
          set A17_cstack[A17_cs[count]] = p
          call DestroyGroup(g)
          set g = null
          return
      else
          set count = count + 1
      endif
      if ( count == 4 or count ==8) then
          call IssuePointOrder(u,"attack",GetRectCenterX(udg_CreepRect[A17_cs[count]]),GetRectCenterY(udg_CreepRect[A17_cs[count]]))
          set A17_order[p] = "farm"
          call DestroyGroup(g)
          set g = null
          return
      endif
      set f = null
      call GroupClear(g)
  endloop
endfunction
//Обработка ИИ
function A17_Action takes nothing returns nothing
  local integer i = 1 // для цикла
  local integer cs = 0 // Крипстаки
  local unit u  // юниты
  local real x // координата x
  local real y // координата y
  local integer c // клан
  local group g = CreateGroup() // группа
  local unit f // первый в группе
  loop
      exitwhen i > 12
      if(GetPlayerController(Player(i-1))==MAP_CONTROL_COMPUTER and udg_Heroes[i]!=null) then
          set c = A17_GetClan(Player(i-1))
          set u = udg_Heroes[i]
          //Выбор супергероя
          if(A17_istep[i] == 13 and GetPlayerState(Player(i-1),PLAYER_STATE_RESOURCE_GOLD)>800 and GetUnitState(u,UNIT_STATE_LIFE)>0) then
              call A17_shero(u)
              set A17_istep[i] = 14
          else    
              //call BJDebugMsg("AI number"+I2S(i))
              //Выдача голды и экспы в зависимости от сложности
              call SetPlayerState(Player(i-1),PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(Player(i-1),PLAYER_STATE_RESOURCE_GOLD)+A17_istep[i]*A17_hlvl[i]/2)
              call AddHeroXP(u,5+4*A17_istep[i]*A17_hlvl[i], false )
              //Проверка жив ли и выдача предмета
              if(GetUnitState(u,UNIT_STATE_LIFE)>0 and A17_istep[i]<13) then
                  //Сила
                  if GetUnitPointValue(u) == 1 then
                      if GetPlayerState(Player(i-1),PLAYER_STATE_RESOURCE_GOLD)>A17_cstr[A17_istep[i]] then
                          call SetPlayerState(Player(i-1),PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(Player(i-1),PLAYER_STATE_RESOURCE_GOLD)-A17_cstr[A17_istep[i]])
                          call UnitAddItemById(u,A17_str[A17_istep[i]])
                          set A17_istep[i] = A17_istep[i] + 1
                      endif
                  endif
                  //Ловкость
                  if GetUnitPointValue(u) == 2 then
                      if GetPlayerState(Player(i-1),PLAYER_STATE_RESOURCE_GOLD)>A17_cagi[A17_istep[i]] then
                          call SetPlayerState(Player(i-1),PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(Player(i-1),PLAYER_STATE_RESOURCE_GOLD)-A17_cagi[A17_istep[i]])
                          call UnitAddItemById(u,A17_agi[A17_istep[i]])
                          set A17_istep[i] = A17_istep[i] + 1
                      endif
                  endif
                  //Разум
                  if GetUnitPointValue(u) == 3 then
                      if GetPlayerState(Player(i-1),PLAYER_STATE_RESOURCE_GOLD)>A17_cint[A17_istep[i]] then
                          call SetPlayerState(Player(i-1),PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(Player(i-1),PLAYER_STATE_RESOURCE_GOLD)-A17_cint[A17_istep[i]])
                          call UnitAddItemById(u,A17_int[A17_istep[i]])
                          set A17_istep[i] = A17_istep[i] + 1
                      endif
                  endif
              endif      
              //Проверка , на базе ли они
              if (RectContainsUnit(gg_rct_Base1,u) or RectContainsUnit(gg_rct_Base2,u)) and (GetUnitState(u,UNIT_STATE_LIFE)/GetUnitState(u,UNIT_STATE_MAX_LIFE))==1 then 
                  set cs = 0
                  loop
                      exitwhen cs>8
                      if A17_cstack[cs] == (GetPlayerId(Player(i-1))+1)  then
                          set A17_cstack[cs] = 0                    
                      endif
                      set cs = cs + 1
                  endloop
                  if c == 1 then
                      call IssuePointOrder(u,"move",GetRectCenterX(gg_rct_Pin1),GetRectCenterY(gg_rct_Pin1))
                  else
                      call IssuePointOrder(u,"move",GetRectCenterX(gg_rct_Pin2),GetRectCenterY(gg_rct_Pin2))
                  endif
                  set A17_order[i] = "outbase"
              endif
       
              //Проверка, вышли ли с базы
              if (RectContainsUnit(gg_rct_Pout1,u) or RectContainsUnit(gg_rct_Pout2,u) and A17_order[i] == "outbase") then       
                  call A17_FindFarm(u)
              endif
              //Проверка на сильных врагов
              call GroupEnumUnitsInRange(g,GetUnitX(u),GetUnitY(u),500.0,function A17_EnemyHeroFilter)
              loop
                  set f = FirstOfGroup(g)
                  exitwhen f == null
                  if (f!=u and c != A17_GetClan(GetOwningPlayer(f)) and (GetUnitState(u,UNIT_STATE_LIFE)/GetUnitState(f,UNIT_STATE_LIFE))<0.5) then
                      //call BJDebugMsg("HeroAgressive "+GetUnitName(f))
                      set A17_order[i] = "home" 
                      if c == 1 then
                          call IssuePointOrder(u,"move",GetRectCenterX(gg_rct_Bin1),GetRectCenterY(gg_rct_Bin1))
                      else
                          call IssuePointOrder(u,"move",GetRectCenterX(gg_rct_Bin2),GetRectCenterY(gg_rct_Bin2))
                      endif
                  endif 
                  call GroupRemoveUnit(g,f)
              endloop
              call GroupClear(g)
              call DestroyGroup(g)
              //Проверка на дуэль и массдуэль                    
              if((DuelB == true or MDuelB == true ) and RectContainsUnit(gg_rct_DMzone,u)==true) then
                  call IssuePointOrder(u,"attack",GetRectCenterX(gg_rct_DMzone),GetRectCenterY(gg_rct_DMzone))
                  //Проверка , прокачаны ли супергеры
              elseif(A17_istep[i] == 14 and GetUnitState(u,UNIT_STATE_LIFE)>0 and GetUnitLevel(u)>50) then
                  set g = CreateGroup()
                  call GroupEnumUnitsInRect(g,gg_rct_arn,function A17_EnemyHeroFilter)
                  loop
                      set f = FirstOfGroup(g)
                      exitwhen f == null
                      if( IsUnitAlly(f,GetOwningPlayer(u)) == false) then
                          set g = null
                          call IssueTargetOrder(u,"attack",f)
                      endif
                      call GroupRemoveUnit(g,f)
                  endloop           
              endif
          endif                
      endif
      set i = i+ 1
  endloop
  call DestroyGroup(g)
  set u = null
  set f = null
  set g = null
endfunction


function A17_HeroSpells takes integer sid1,integer sid2,integer sid3,integer sid4 returns nothing
  set hspellid = hspellid + 1
  call SaveInteger(Ithash,hspellid,1,sid1)
  call SaveInteger(Ithash,hspellid,2,sid2)
  call SaveInteger(Ithash,hspellid,3,sid3)
  call SaveInteger(Ithash,hspellid,4,sid4)
endfunction
function A17_SHeroSpells takes integer sid1,integer sid2,integer sid3,integer sid4,integer sid5 returns nothing
  set shspellid = shspellid + 1
  call SaveInteger(Ithash,shspellid,1,sid1)
  call SaveInteger(Ithash,shspellid,2,sid2)
  call SaveInteger(Ithash,shspellid,3,sid3)
  call SaveInteger(Ithash,shspellid,4,sid4)
  call SaveInteger(Ithash,shspellid,5,sid5)
endfunction
function Trig_AI_Init_Actions takes nothing returns nothing
  local timer t = CreateTimer()
  local integer i = 1
  loop
      exitwhen i>12
      if ( GetPlayerController(Player(i-1)) == MAP_CONTROL_COMPUTER ) then
          call CreateUnit(Player(i-1),udg_HType[udg_RN[i]],GetRectCenterX(gg_rct_Wisp_Start_Loc),GetRectCenterY(gg_rct_Wisp_Start_Loc),270.0)
          //Установка голды в зависимости от сложности
          if GetAIDifficulty(Player(i-1)) == AI_DIFFICULTY_NEWBIE then
              set A17_hlvl[i] = 1
              //call BJDebugMsg("g1")
          elseif  GetAIDifficulty(Player(i-1)) == AI_DIFFICULTY_NORMAL then
              set A17_hlvl[i] = 2
              //call BJDebugMsg("g2")
          else 
              set A17_hlvl[i] = 3
              //call BJDebugMsg("g3")
          endif
      endif
      set i = i+1
  endloop
  //Скиллы ботов
  call A17_HeroSpells('A04K','A02G','A0GY','A060')//1
  call A17_HeroSpells('A0SF','A0SI','A0SG','A0SH')//2
  call A17_HeroSpells('A01V','A0RE','A0RD','A02D')//3
  call A17_HeroSpells('A03Q','A0NT','A0PL','A051')//4
  call A17_HeroSpells('A0D3','A0F9','A0S8','A0LM')//5
  call A17_HeroSpells('A04K','A02W','A0LN','A0EJ')//6
  call A17_HeroSpells('A0D3','A0NW','A0PM','A02T')//7
  call A17_HeroSpells('A0L7','A0PO','A03P','A03G')//8
  call A17_HeroSpells('A0L9','A0PJ','A01S','A0NA')//9
  call A17_HeroSpells('A0MN','A0MP','A0MO','A0MQ')//10
  call A17_HeroSpells('A0JR','A0PC','A0PD','A0PE')//11
  call A17_HeroSpells('A018','A02F','A04U','A02E')//12
  call A17_HeroSpells('A034','A03N','A01S','A01P')//13
  call A17_HeroSpells('A0LJ','A0LK','A0LL','ANsy')//14
  call A17_HeroSpells('A0LJ','A0G4','A0MH','A0MG')//15
  call A17_HeroSpells('A01X','A01W','A0KG','A0PT')//16
  call A17_HeroSpells('A0PS','A0PQ','A0PR','A02E')//17
  call A17_HeroSpells('A01D','A029','A02I','A051')//18
  call A17_HeroSpells('A018','A01W','A054','A01A')//19
  call A17_HeroSpells('A0E3','A02S','A02U','A0LA')//20
  call A17_HeroSpells('A0D3','A0PO','A0PP','A03R')//21
  call A17_HeroSpells('A0L2','A019','A03L','A03W')//22
  call A17_HeroSpells('A038','A0PN','A0GF','A0FL')//23
  call A17_HeroSpells('A04K','A02W','A0LN','A0EJ')//24
  call A17_HeroSpells('A00K','A0MU','A0F4','A03I')//25
  call A17_HeroSpells('A03Q','A02P','A02Z','A0BY')//26
  call A17_HeroSpells('A03Q','A0L6','A0L5','A028')//27
  call A17_HeroSpells('A00J','A0LF','A0LG','A03M')//28
  call A17_HeroSpells('A0E3','A0PU','A03P','A03X')//29
  call A17_HeroSpells('A03Q','A053','A02L','A03X')//30
  call A17_HeroSpells('A027','A043','A02L','A020')//31
  call A17_HeroSpells('A0DJ','A02W','A0DK','A0DL')//32
  call A17_HeroSpells('A0RG','A0RI','A0RK','A0RL')//33
  call A17_HeroSpells('A039','A043','A04B','A028')//34
  call A17_HeroSpells('A0EK',0,'A0NV','A028')//35
  call A17_HeroSpells('A0RQ','A0RR','A0RS','A03U')//36
  call A17_HeroSpells('A038','A04C','A03P','A01O')//37
  call A17_HeroSpells('A034','A036','A03O','A04H')//38
  call A17_HeroSpells('A0AK','A036','A0LQ','A02E')//39
  call A17_HeroSpells('A033','A032','A03T','A0FD')//40
  call A17_HeroSpells('A0LH','A04F','A0LI','A0PY')//41
  call A17_HeroSpells('A00K','A01M','A0LN','A023')//42
  call A17_HeroSpells('A0LB','A0LC','A0LD','A0LE')//43
  call A17_HeroSpells('A0EF','A0MI','A0ML','A0MM')//44
  call A17_HeroSpells('A0FV','A0RO','A0MS','A0RP')//45
  call A17_HeroSpells('A03Q','A0S9','A0NV','A0LA')//46
  call A17_HeroSpells('A021','A04F','A09D','A0PV')//47
  call A17_HeroSpells('A01N','A02S','A02O','A04M')//48
  call A17_HeroSpells('A03Q','A036','A054','A02E')//49
  call A17_HeroSpells('A0FV','A0Q2','A04B','A028')//50
  call A17_HeroSpells('A04E','A019','A04N','A0PW')//51
  call A17_HeroSpells('A0LR','A04F','A015','A0LS')//52
  call A17_HeroSpells('A0SB','A0SD',0,'A0SE')//53
  call A17_HeroSpells('A00M','A0LF','A0L4','A050')//54
  call A17_HeroSpells('A033','A0O6','A03O','A060')//55
  call A17_HeroSpells('A018','A0Q0','A0L4','A0LS')//56
  call A17_HeroSpells('A033','A04C','A0L4','A0PX')//57
  call A17_HeroSpells('A038','A036','A02O','A03M')//58
  call A17_HeroSpells('A021','A00O','A01U','A01P')//59
  call A17_HeroSpells('A030','A01Z','A01S','A01Y')//60
  call A17_HeroSpells('A0PS','A0NT','A0MK',0)//61
  call A17_HeroSpells('A018','A02C','A03L','A02Q')//62
  call A17_HeroSpells('A0RU','A052','A0S6','A0S7')//63
  call A17_HeroSpells('A0AF','A0AH','A0AG','A0AI')//64
  call A17_HeroSpells('A0AF','A04F','A0PZ','A0PW')//65
  call A17_HeroSpells('A0SO','A0SP','A0SQ','A0SR')//66
  call A17_HeroSpells('A039','A02N','A0OI','A04H')//67
  call A17_HeroSpells('A0EH','A01M','A0EI','A0EJ')//68
  call A17_HeroSpells('A0EF','A02S','A0EE','A0EG')//69
  call A17_HeroSpells('A0EK','A043','A0EE','A0EL')//70
  call A17_HeroSpells('A0AK','A0AP','A0AS','A0AT')//71
  call A17_HeroSpells('A0C9','A025','A0C2','A0CB')//72
  //Супергерои
  call A17_SHeroSpells('A0KE','A0KF','A0KB','A0KD','A000')//Аарон
  call A17_SHeroSpells('A07B','A0E7','A0DR','A0B2','A000')//Адмирал
  call A17_SHeroSpells('A0D8','A0JZ','A0DA','A0D9','A0KW')//Акама
  call A17_SHeroSpells('AOws','AOcl','A097','AHab','A0JY')//Алукард    
  call A17_SHeroSpells('A09J','A09L','A09K','A09I','A000')//Блокейд    
  call A17_SHeroSpells('A0B0','A06Y','A06X','A06W','A000')//Валькирий
  call A17_SHeroSpells('A0NB','A0NZ','AEfk','A000',0)//Вонни
  call A17_SHeroSpells('A0F2','A0BA','A0F1','A0F0','A000')//Вэг
  call A17_SHeroSpells('A0ER','A0EQ','A0EP','A0EN','A000')//Гарона
  call A17_SHeroSpells('A0R5','A0R8','A0AX','A000',0)//Гаррош
  call A17_SHeroSpells('A07A','A079','A078','A076','A0JO')//Драктул
  call A17_SHeroSpells('A07Q','A07P','A07O','A0E9','A000')//Йормун
  call A17_SHeroSpells('A07A','A07H','A07G','A07F','A0JX')//Келтузед
  call A17_SHeroSpells('A07E','A0MV','A0EB','A076','A0K3')//Кель
  call A17_SHeroSpells('A0QX','A0QZ','A0DI','A0DN','A000')//Кэрн
  call A17_SHeroSpells('A0CS','A0CM','A0CP','A0CN','A0CO')//Медив
  call A17_SHeroSpells('A0BT','A0RB','A0RA','A0NQ','A000')//Навариус
  call A17_SHeroSpells('ANdb','A0D2','ANc2','A07D','A000')//Севрен    
  call A17_SHeroSpells('A07M','A0K7','A09M','A0P9','A000')//Тралл
  call A17_SHeroSpells('ANab','A0O2','A054','A0O1','A000')//Утер
  call A17_SHeroSpells('A0BB','A0BC','A0BD','A0BE','A0JN')//Хордон
  call A17_SHeroSpells('A074','A073','A071','A0K9','A000')//Эндоргус 
  call A17_SHeroSpells('A00N','A0ST','A0SU','A0DM','A000')//Чень 
  call TimerStart(t,4.0,true,function A17_Action)
  set t = null
endfunction

//===========================================================================
function InitTrig_AI takes nothing returns nothing
  set gg_trg_AI = CreateTrigger(  )
  call TriggerRegisterTimerEventSingle( gg_trg_AI, 13.00 )
  call TriggerAddAction( gg_trg_AI, function Trig_AI_Init_Actions )
endfunction


