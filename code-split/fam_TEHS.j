// ===== TEHS1_preload (строки 9807-9809) =====
function TEHS1_preload takes nothing returns nothing
    call X_PreloadAbility( 'A039' )
endfunction

// ===== TEHS1___Cond1 (строки 9810-9815) =====
function TEHS1___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), TEHS1___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== TEHS1___ReleazeMissile (строки 9817-9850) =====
function TEHS1___ReleazeMissile takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local player o = LoadPlayerHandle( HT, GetHandleId( t ), StringHash( "owner" ) )
    local unit c = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "c" ) )
    local real X = LoadReal( HT, GetHandleId( t ), StringHash( "X" ) )
    local real Y = LoadReal( HT, GetHandleId( t ), StringHash( "Y" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "dmg" ) )
    local unit FoG
    local unit d
    set TEHS1___ch_p = o
    call Dest_KillDestInRange( X, Y, 200. )
    call GroupEnumUnitsInRange( TEHS1___gr, X, Y, 200., Condition( function TEHS1___Cond1 ) )

    loop
        set FoG = FirstOfGroup( TEHS1___gr )
        exitwhen( FoG == null )
        set d = CreateUnit( GetOwningPlayer( c ), 'hfoo', X, Y, 0. )
        call UnitAddAbility( d, 'A006' )
        call X_ApplyLife( d )
        call IssueTargetOrderById( d, 852075, FoG )
        set d = null
        call DamageLib_SpellDamage( c, FoG, dmg )
        call GroupRemoveUnit( TEHS1___gr, FoG )
    endloop
    call GroupClear( TEHS1___gr )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set c = null
    set t = null
    // 05.09: anti-leak (obnulenie lokalov)
    set o = null
    set FoG = null
endfunction

// ===== TEHS1___CreateMissile (строки 9852-9872) =====
function TEHS1___CreateMissile takes real cX, real cY, real tX, real tY, player owner, real dmg, unit c returns nothing
    local timer t = CreateTimer( )
    local real rX = GetRandomReal( 0., 400. / 2 )
    local real rY = GetRandomReal( 0., 400. / 2 )
    local real rA = GetRandomReal( 0., 359.99 )
    local real X = tX + rX * Cos( rA * bj_DEGTORAD )
    local real Y = tY + rY * Sin( rA * bj_DEGTORAD )
    local real dist = SquareRoot( ( cX - X ) * ( cX - X ) + ( cY - Y ) * ( cY - Y ) )
    local unit dummy = CreateUnit( owner, 'hfoo', cX, cY, 0. )
    call X_ApplyLife( dummy )
    call UnitAddAbility( dummy, 'A039' )
    call IssuePointOrderById( dummy, 852652, X, Y )
    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "c" ), c )
    call SavePlayerHandle( HT, GetHandleId( t ), StringHash( "owner" ), owner )
    call SaveReal( HT, GetHandleId( t ), StringHash( "X" ), X )
    call SaveReal( HT, GetHandleId( t ), StringHash( "Y" ), Y )
    call SaveReal( HT, GetHandleId( t ), StringHash( "dmg" ), dmg )
    call TimerStart( t, dist / 1500., FALSE, function TEHS1___ReleazeMissile )
    set dummy = null
    set t = null
endfunction

// ===== TEHS1___Act (строки 9874-9900) =====
function TEHS1___Act takes nothing returns nothing
    local unit u
    local real tx
    local real ty
    local real dmg
    local integer i
    if GetSpellAbilityId( ) == 'A038' or GetSpellAbilityId( ) == 'A03C' then
        set u = GetTriggerUnit( )
        set tx = GetSpellTargetX( )
        set ty = GetSpellTargetY( )
        set dmg = ( GetHeroInt( u, true ) ) * 1.4
        if GetSpellAbilityId( ) == 'A03C' then
            set dmg = ( GetHeroInt( u, true ) ) * 2.
        endif
        set i = 1
        loop
            exitwhen( i > 8 )
            call TriggerSleepAction( 0.03 )
            if GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 then
                call TEHS1___CreateMissile( GetUnitX( u ), GetUnitY( u ), tx, ty, GetOwningPlayer( u ), dmg, u )
            endif
            set i = i + 1
        endloop
        call IssueImmediateOrderById( u, 851972 )
        set u = null
    endif
endfunction

// ===== TEHS1___I (строки 9902-9908) =====
function TEHS1___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function TEHS1___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== TEHS2_preload (строки 9910-9911) =====
function TEHS2_preload takes nothing returns nothing
endfunction

// ===== TEHS2___Act (строки 9913-9934) =====
function TEHS2___Act takes nothing returns nothing
    local unit caster
    local real caster_x
    local real caster_y
    local integer turrel_id
    local unit turrel
    local integer turelLvl
    if GetSpellAbilityId( ) == 'A03D' or GetSpellAbilityId( ) == 'A03E' then
        set caster = GetTriggerUnit( )
        set caster_x = GetUnitX( caster )
        set caster_y = GetUnitY( caster )
        set turelLvl = 1 + R2I( I2R( GetUnitLevel( caster ) ) / I2R( 5 ) )
        if turelLvl > 10 then
            set turelLvl = 10
        endif
        set turrel_id = TEHS2___turrel_id[turelLvl]
        set turrel = CreateUnit( GetOwningPlayer( caster ), turrel_id, caster_x, caster_y, 0. )
        call UnitApplyTimedLife( turrel, 'BTLF', 20. )
        set turrel = null
        set caster = null
    endif
endfunction

// ===== TEHS2___I (строки 9936-9951) =====
function TEHS2___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function TEHS2___Act )
    set TEHS2___turrel_id[1] = 'h00C'
    set TEHS2___turrel_id[2] = 'h00D'
    set TEHS2___turrel_id[3] = 'h00E'
    set TEHS2___turrel_id[4] = 'h00F'
    set TEHS2___turrel_id[5] = 'h00G'
    set TEHS2___turrel_id[6] = 'h00H'
    set TEHS2___turrel_id[7] = 'h00I'
    set TEHS2___turrel_id[8] = 'h00J'
    set TEHS2___turrel_id[9] = 'h00K'
    set TEHS2___turrel_id[10] = 'h00L'
    set Trg = null
endfunction

// ===== TEHS3_preload (строки 9953-9960) =====
function TEHS3_preload takes nothing returns nothing
    local unit d
    set d = CreateUnit( Player( 13 ), 'h009', 0., 0., 0. )
    call RemoveUnit( d )
    set d = CreateUnit( Player( 13 ), 'h00A', 0., 0., 0. )
    call RemoveUnit( d )
    set d = null
endfunction

// ===== TEHS3___Cond1 (строки 9962-9967) =====
function TEHS3___Cond1 takes nothing returns boolean
    local unit u = GetFilterUnit( )
    local boolean b = IsPlayerEnemy( GetOwningPlayer( u ), TEHS3___ch_p )and GetUnitState( u, UNIT_STATE_LIFE ) > 0.405 and GetUnitAbilityLevel( u, 'Aloc' ) == 0 and IsUnitType(u, UNIT_TYPE_MAGIC_IMMUNE) == false
    set u = null
    return b
endfunction

// ===== TEHS3___Count (строки 9969-9975) =====
function TEHS3___Count takes nothing returns nothing
    local destructable dt = GetEnumDestructable( )
    if GetDestructableTypeId( dt ) == 'ATtr' then
        set TEHS3___dest_counter = TEHS3___dest_counter + 1
    endif
    set dt = null
endfunction

// ===== TEHS3___DelChain (строки 9977-10045) =====
function TEHS3___DelChain takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit elem
    local unit head = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_8" ) )
    local unit head2 = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_17" ) )
    local integer now_chains = LoadInteger( HT, GetHandleId( t ), StringHash( "H_10" ) )
    local timer ti = LoadTimerHandle( HT, GetHandleId( t ), StringHash( "H_9" ) )
    local unit FoG = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ) )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    if FoG == cst then
        if now_chains > 0 then
            set elem = LoadUnitHandle( HT, GetHandleId( ti ), StringHash( "Elem_" + I2S( LoadInteger( HT, GetHandleId( t ), StringHash( "H_16" ) ) + 1 - now_chains ) ) )
            call SetUnitPosition( head, GetUnitX( elem ), GetUnitY( elem ) )
            call SetUnitPosition( FoG, GetUnitX( elem ), GetUnitY( elem ) )
            call RemoveUnit( elem )
            set now_chains = now_chains - 1
            call SaveInteger( HT, GetHandleId( t ), StringHash( "H_10" ), now_chains )
        else
            call PauseUnit( cst, FALSE )
            call IssueImmediateOrderById( cst, 851972 )
            call SetUnitPathing( cst, TRUE )
            call RemoveUnit( head )
            call RemoveUnit( head2 )
            call FlushChildHashtable( HT, GetHandleId( ti ) )
            //почему 2 таймера
            call PauseTimer( ti )
            call DestroyTimer( ti )
            call FlushChildHashtable( HT, GetHandleId( t ) )

            call PauseTimer( t )
            call DestroyTimer( t )
            set cst = null
        endif
    else
        if now_chains > 0 then
            set elem = LoadUnitHandle( HT, GetHandleId( ti ), StringHash( "Elem_" + I2S( now_chains ) ) )
            call SetUnitPosition( head, GetUnitX( elem ), GetUnitY( elem ) )
            call SetUnitPosition( FoG, GetUnitX( elem ), GetUnitY( elem ) )
            call RemoveUnit( elem )
            set now_chains = now_chains - 1
            call SaveInteger( HT, GetHandleId( t ), StringHash( "H_10" ), now_chains )
        else
            call PauseUnit( cst, FALSE )
            if FoG != null then
                call PauseUnit( FoG, FALSE )
                call SetUnitPathing( FoG, TRUE )
                call IssueTargetOrderById( cst, 851983, FoG )
            else
                call IssueImmediateOrderById( cst, 851972 )

            endif
            call RemoveUnit( head )
            call FlushChildHashtable( HT, GetHandleId( ti ) )
            call PauseTimer( ti )
            call DestroyTimer( ti )
            call FlushChildHashtable( HT, GetHandleId( t ) )
            call PauseTimer( t )
            call DestroyTimer( t )
            set cst = null
        endif
    endif
    set FoG = null
    set t = null
    set elem = null
    set head = null
    set ti = null
    // 05.09: anti-leak (obnulenie lokalov)
    set head2 = null
endfunction

// ===== TEHS3___Chain (строки 10047-10170) =====
function TEHS3___Chain takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit cst = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    local real now_dist = LoadReal( HT, GetHandleId( t ), StringHash( "H_11" ) )
    local real dist = LoadReal( HT, GetHandleId( t ), StringHash( "H_7" ) )
    local real cX = LoadReal( HT, GetHandleId( t ), StringHash( "H_12" ) )
    local real cY = LoadReal( HT, GetHandleId( t ), StringHash( "H_13" ) )
    local real speed = LoadReal( HT, GetHandleId( t ), StringHash( "H_9" ) )
    local real angle = LoadReal( HT, GetHandleId( t ), StringHash( "H_14" ) )
    local unit head = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_8" ) )
    local integer now_chains = LoadInteger( HT, GetHandleId( t ), StringHash( "H_10" ) )
    local real dmg = LoadReal( HT, GetHandleId( t ), StringHash( "H_6" ) )
    local unit elem
    local rect r = Rect( cX - 110., cY - 110., cX + 110., cY + 110. )
    local timer ti
    local unit FoG
    set TEHS3___dest_counter = 0
    call EnumDestructablesInRect( r, null, function TEHS3___Count )
    set TEHS3___ch_p = GetOwningPlayer( cst )
    call GroupEnumUnitsInRange( TEHS3___gr, cX, cY, 110., Condition( function TEHS3___Cond1 ) )

    set FoG = FirstOfGroup( TEHS3___gr )
    if LoadInteger( HT, GetHandleId( t ), StringHash( "H_15" ) ) == 1 then
        if now_dist < dist and FoG == null and TEHS3___dest_counter == 0 then
            set now_chains = now_chains + 1
            set elem = CreateUnit( GetOwningPlayer( cst ), 'h009', cX, cY, angle )
            if speed == 100.then
                call SetUnitScale( elem, 4., 4., 4. )
            endif
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "Elem_" + I2S( now_chains ) ), elem )
            set cX = cX + speed * Cos( angle * bj_DEGTORAD )
            set cY = cY + speed * Sin( angle * bj_DEGTORAD )
            set now_dist = now_dist + ( speed )
            call SetUnitPosition( head, cX, cY )
            call SaveInteger( HT, GetHandleId( t ), StringHash( "H_10" ), now_chains )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_12" ), cX )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_13" ), cY )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_11" ), now_dist )
        else
            if TEHS3___dest_counter == 0 then
                call PauseTimer( t )
                set ti = t
                set t = CreateTimer( )
                call SaveTimerHandle( HT, GetHandleId( t ), StringHash( "H_9" ), ti )
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_8" ), head )
                call SaveInteger( HT, GetHandleId( t ), StringHash( "H_10" ), now_chains )
                call SaveInteger( HT, GetHandleId( t ), StringHash( "H_16" ), now_chains )
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), cst )

                if FoG != null and GetUnitTypeId( FoG ) != 'ncp2' then
                    call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ), FoG )
                    call DestroyEffect( AddSpecialEffectTarget( "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", FoG, "chest" ) )
                    call DamageLib_SpellDamage( cst, FoG, dmg )
                    call PauseUnit( FoG, TRUE )
                    call SetUnitPathing( FoG, FALSE )
                endif
                call TimerStart( t, 0.04, TRUE, function TEHS3___DelChain )
                set ti = null
            else
                call PauseTimer( t )
                set ti = t
                set t = CreateTimer( )
                call SaveTimerHandle( HT, GetHandleId( t ), StringHash( "H_9" ), ti )
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_17" ), head )
                set head = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "Elem_1" ) )
                if head != null then
                    call BJDebugMsg( "test hook" )
                endif
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_8" ), head )
                call SaveInteger( HT, GetHandleId( t ), StringHash( "H_10" ), now_chains )
                call SaveInteger( HT, GetHandleId( t ), StringHash( "H_16" ), now_chains )
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), cst )
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ), cst )
                call PauseUnit( cst, TRUE )
                call SetUnitPathing( cst, FALSE )
                call TimerStart( t, 0.04, TRUE, function TEHS3___DelChain )
                set ti = null
            endif
        endif
    else
        if now_dist < dist and FoG == null then
            set now_chains = now_chains + 1
            set elem = CreateUnit( GetOwningPlayer( cst ), 'h009', cX, cY, angle )
            call Dest_KillDestInRange( cX, cY, 110. )
            if speed == 100.then
                call SetUnitScale( elem, 4., 4., 4. )
            endif
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "Elem_" + I2S( now_chains ) ), elem )
            set cX = cX + speed * Cos( angle * bj_DEGTORAD )
            set cY = cY + speed * Sin( angle * bj_DEGTORAD )
            set now_dist = now_dist + ( speed )
            call SetUnitPosition( head, cX, cY )
            call SaveInteger( HT, GetHandleId( t ), StringHash( "H_10" ), now_chains )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_12" ), cX )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_13" ), cY )
            call SaveReal( HT, GetHandleId( t ), StringHash( "H_11" ), now_dist )
        else
            call PauseTimer( t )
            set ti = t
            set t = CreateTimer( )
            call SaveTimerHandle( HT, GetHandleId( t ), StringHash( "H_9" ), ti )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_8" ), head )
            call SaveInteger( HT, GetHandleId( t ), StringHash( "H_10" ), now_chains )
            call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), cst )
            if FoG != null and GetUnitTypeId( FoG ) != 'ncp2' then
                call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_2" ), FoG )
                call DestroyEffect( AddSpecialEffectTarget( "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl", FoG, "chest" ) )
                call DamageLib_SpellDamage( cst, FoG, dmg )
                call PauseUnit( FoG, TRUE )
                call SetUnitPathing( FoG, FALSE )
            endif
            call TimerStart( t, 0.04, TRUE, function TEHS3___DelChain )
            set ti = null
        endif
    endif
    call GroupClear( TEHS3___gr )
    call RemoveRect( r )
    set FoG = null
    set t = null
    set cst = null
    set head = null
    set elem = null
    set r = null
endfunction

// ===== TEHS3___Unpause (строки 10172-10182) =====
function TEHS3___Unpause takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    local unit u = LoadUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ) )
    call PauseUnit( u, FALSE )
    call IssueImmediateOrderById( u, 851972 )
    call FlushChildHashtable( HT, GetHandleId( t ) )
    call PauseTimer( t )
    call DestroyTimer( t )
    set t = null
    set u = null
endfunction

// ===== TEHS3___Act (строки 10183-10244) =====
function TEHS3___Act takes nothing returns nothing
    local unit u
    local real caster_x
    local real caster_y
    local real tx
    local real ty
    local real angle
    local real dmg
    local real dist
    local unit missile
    local real speed
    local timer t
    if GetSpellAbilityId( ) == 'A03F' or GetSpellAbilityId( ) == 'A03G' then
        set u = GetTriggerUnit( )
        set caster_x = GetUnitX( u )
        set caster_y = GetUnitY( u )
        set tx = GetSpellTargetX( )
        set ty = GetSpellTargetY( )
        set angle = bj_RADTODEG * Atan2( ty - caster_y, tx - caster_x )
        set dmg = GetHeroStr( u, TRUE ) * 1.0
        if GetSpellAbilityId( ) == 'A03G' then
            set dmg = GetHeroStr( u, TRUE ) * 1.3
        endif
        set dist = SquareRoot( ( tx - caster_x ) * ( tx - caster_x ) + ( ty - caster_y ) * ( ty - caster_y ) )
        if dist > 1200.then
            set dist = 1200.
        endif
        set missile = CreateUnit( GetOwningPlayer( u ), 'h00A', caster_x, caster_y, angle )
        set speed = 80.
        if GetSpellAbilityId( ) == 'A03G' then
            set speed = 100.
            call SetUnitScale( missile, 4., 4., 4. )
        endif
        set t = CreateTimer( )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_1" ), u )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_2" ), caster_x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_3" ), caster_y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_4" ), tx )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_5" ), ty )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_6" ), dmg )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_7" ), dist )
        call SaveUnitHandle( HT, GetHandleId( t ), StringHash( "H_8" ), missile )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_9" ), speed )
        call SaveInteger( HT, GetHandleId( t ), StringHash( "H_10" ), 0 )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_11" ), 0. )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_12" ), caster_x )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_13" ), caster_y )
        call SaveReal( HT, GetHandleId( t ), StringHash( "H_14" ), angle )
        call TimerStart( t, 0.04, TRUE, function TEHS3___Chain )
        call PauseUnit( u, TRUE )
        if GetSpellAbilityId( ) == 'A03F' then
            call SetUnitAnimationByIndex( u, 5 )
            call SaveInteger( HT, GetHandleId( t ), StringHash( "H_15" ), 1 )
        else
            call SetUnitAnimationByIndex( u, 16 )
            call SaveInteger( HT, GetHandleId( t ), StringHash( "H_15" ), 2 )
        endif
        set u = null
        set missile = null
        set t = null
    endif
endfunction

// ===== TEHS3___I (строки 10245-10251) =====
function TEHS3___I takes nothing returns nothing
    local trigger Trg = CreateTrigger( )
    call TriggerRegisterAnyUnitEventBJ( Trg, EVENT_PLAYER_UNIT_SPELL_EFFECT )
    call TriggerAddAction( Trg, function TEHS3___Act )
    // 05.09: anti-leak (obnulenie lokalov)
    set Trg = null
endfunction

// ===== TEHPreload_Go (строки 11048-11052) =====
function TEHPreload_Go takes nothing returns nothing
    call TEHS1_preload( )
    call TEHS2_preload( )
    call TEHS3_preload( )
endfunction
