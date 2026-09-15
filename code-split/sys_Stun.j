// ===== StunUnitAct (строки 3697-3726) =====
function StunUnitAct takes nothing returns nothing
    local timer t=GetExpiredTimer()
    local integer HID=GetHandleId(t)
    local unit target=LoadUnitHandle(udg_Hash,HID,400)
    local integer UID=GetHandleId(target)
    local real last=LoadReal(udg_Hash,UID,300)
    call SaveReal(udg_Hash,UID,300,last-0.10)

  //call DisplayTextToForce( GetPlayersAll(), GetUnitName(target)+ "stun time-"  + R2S(last) )

    if last<0.10 or GetUnitAbilityLevel(target,'BPSE')==0 then

      if IsUnitType(target,UNIT_TYPE_HERO)==false then
     //   call FlushChildHashtable(udg_Hash,UID)
      endif

      call UnitRemoveAbility(target,'BPSE')
  //    call DisplayTextToForce( GetPlayersAll(), GetUnitName(target)+ "stun clear" )
      call RemoveSavedReal(udg_Hash,UID,300)
      call RemoveSavedHandle(udg_Hash,UID,100)
      call FlushChildHashtable(udg_Hash,HID)
      call PauseTimer(t)
      call DestroyTimer(t)
    endif

    set t =null
    set t=null
    // 05.09: anti-leak (obnulenie lokalov)
    set target = null
endfunction

// ===== StunUnit (строки 3728-3783) =====
function StunUnit takes unit target,real last returns real
    local timer t=null
    local integer UID=GetHandleId(target)
    local unit dummy
    local integer HID=0
    local boolean boolean01=false
    local location dl // 07.09: anti-leak
    set last = last

    //своя хештаблица для стана
    if GetUnitAbilityLevel(target,'BPSE')==0 and LoadTimerHandle(udg_Hash,UID,100)==null then
    set t=CreateTimer()
    set boolean01=true
    else
    set t=LoadTimerHandle(udg_Hash,UID,100)
    endif

    set HID=GetHandleId(t)
    call SaveTimerHandle(udg_Hash,UID,100,t)
    call SaveUnitHandle(udg_Hash,HID,400, target)

    if last>LoadReal(udg_Hash,UID,300) then
    set last=last
    call SaveReal(udg_Hash,UID,300,last)
    set dl=GetUnitLoc(target) // 07.09: anti-leak - location v lokal
    set dummy=CreateUnitAtLoc(GetOwningPlayer(target),'e002',dl,0)
    call RemoveLocation(dl)
    call RemoveUnitPerTimer(dummy, 3.0) // 07.09: vremya zhizni dammi
    set dl=null
    call UnitAddAbility(dummy,'A04S')
    call SetUnitAbilityLevel(dummy,'A04S',1+R2I(last))

    call UnitShareVision( target, GetOwningPlayer( dummy ), true )
    call IssueTargetOrder(dummy,"thunderbolt",target)
    call UnitShareVision( target, GetOwningPlayer( dummy ), false )
    //call DisplayTextToForce( GetPlayersAll(), GetUnitName(target)+ "stun continue" + R2S(last) )
    else
    if last > 0.01 and last < LoadReal(udg_Hash, UID, 300) then
    call SaveReal(udg_Hash, UID, 300, last)
    //call DisplayTextToForce( GetPlayersAll(), GetUnitName(target) + " stun updated " + R2S(last) )
    else
    //set boolean01=true Работает без него
    set last=LoadReal(udg_Hash,UID,300)+last
    call SaveReal(udg_Hash,UID,300,last)
    //call DisplayTextToForce( GetPlayersAll(), GetUnitName(target)+ "stun increase+" + R2S(last) )
    endif
    endif

    if boolean01 then
    //call DisplayTextToForce( GetPlayersAll(), "Stun timer start" )
    call TimerStart(t,0.10,true,function StunUnitAct)
    endif
    set t=null
    set dummy=null
    return last
endfunction

// ===== Stun__StopUnit (строки 3785-3802) =====
function Stun__StopUnit takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "StunUnitH_1" ) )
    local real time = LoadReal( HT, GetHandleId( t ), StringHash( "StunTimeH_2" ) )
    local effect fx = LoadEffectHandle( HT, GetHandleId( t ), StringHash( "StunEH_3" ) )
    if ( time > 0. ) and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and IsUnitType( u, UNIT_TYPE_DEAD ) == false and u != null then
        call IssueImmediateOrderById( u, 851972 )
        call SaveReal( HT, GetHandleId( t ), StringHash( "StunTimeH_2" ), time - 0.005 )
    else
        call DestroyEffect( fx )
        call FlushChildHashtable( HT, GetHandleId( t ) )
        call PauseTimer( t )
        call DestroyTimer( t )
        set fx = null
    endif
    set t = null
    set u = null
endfunction

// ===== Stun_Target (строки 3805-3823) =====
function Stun_Target takes unit cst, unit u, real time returns nothing
    local integer stuns = LoadInteger( HT, GetHandleId( u ), StringHash( I2S( GetPlayerId( GetOwningPlayer( cst ) ) + 1 ) + "stuns" ) )
    local timer t
    local effect fx
    set time = time * ( ( I2R( Stun__max_stuns ) - I2R( stuns ) ) / I2R( Stun__max_stuns ) )
    if time != 0.and not( IsUnitType( u, UNIT_TYPE_TAUREN ) ) and GetUnitAbilityLevel( u, 'Avul' ) == 0 then
        set t = CreateTimer( )
        set fx = AddSpecialEffectTarget( Stun__eff_id, u, "overhead" )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "StunUnitH_1" ), u )
        call SaveReal( HT, GetHandleId( t ), StringHash( "StunTimeH_2" ), time )
        call SaveEffectHandle( HT, GetHandleId( t ), StringHash( "StunEH_3" ), fx )
        call SaveInteger( HT, GetHandleId( u ), StringHash( I2S( GetPlayerId( GetOwningPlayer( cst ) ) + 1 ) + "stuns" ), stuns + 1 )
        call TimerStart( t, 0.005, TRUE, function Stun__StopUnit )
        set t = null
        set fx = null
    endif
    set t = null
    set fx = null
endfunction

// ===== Stun_ClearStuns (строки 3826-3838) =====
function Stun_ClearStuns takes unit u returns nothing
    // почему с 10 считаем?
    local integer i = 10
    loop
        exitwhen( i == 0 )
        if i != ( GetPlayerId( GetOwningPlayer( u ) ) + 1 ) then //как это полнять блять
            call SaveInteger( HT, GetHandleId( u ), StringHash( I2S( i ) + "stuns" ), 0 )
        else
        //вывести число станов на юните
        endif
        set i = i - 1
    endloop
endfunction

// ===== Stun__I (строки 3840-3841) =====
function Stun__I takes nothing returns nothing
endfunction
