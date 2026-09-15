// ===== Filters__Filter_Timer (строки 2473-2480) =====
function Filters__Filter_Timer takes nothing returns nothing
    local timer t = GetExpiredTimer( )
    call PauseTimer( t )
    call DestroyTimer( t )
    call DisplayCineFilter( false )
    call EnableUserUI( true )
    set t = null
endfunction

// ===== Filters_Multi (строки 2482-2497) =====
function Filters_Multi takes string l__gg_snd_DEA_horn, player p returns nothing
    local timer t = CreateTimer( )
    call SetCineFilterTexture( l__gg_snd_DEA_horn )
    call SetCineFilterBlendMode( BLEND_MODE_BLEND )
    call SetCineFilterTexMapFlags( TEXMAP_FLAG_NONE )
    call SetCineFilterStartUV( 0, 0, 1, 1 )
    call SetCineFilterEndUV( 0, 0, 1, 1 )
    call SetCineFilterStartColor( 255, 0, 0, 255 )
    call SetCineFilterEndColor( 255, 0, 0, 0 )
    call SetCineFilterDuration( 1. )
    if GetLocalPlayer( ) == p then
        call DisplayCineFilter( true )
    endif
    call TimerStart( t, .5, false, function Filters__Filter_Timer )
    set t = null
endfunction
