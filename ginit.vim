" Disable Mouse
set mouse=


if (has('win32'))
    set guifont=FiraCode\ NF:h11
    " set linespace=-4
else
    set guifont=FiraCode\ Nerd\ Font\ Mono:h13
    " set linespace=-6
endif

if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    if (has ('win32'))
        GuiFont! FiraCode NF:h11
    else
        GuiFont! FiraCode Nerd Font Mono:h13
    endif
    
endif


" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 0
endif


" " Right Click Context Menu (Copy-Cut-Paste)
" nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
" inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
" xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
" snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv
