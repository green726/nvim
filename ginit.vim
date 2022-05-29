" Enable Mouse
set mouse=a


" call rpcnotify(1, 'Gui', 'Font', 'SpaceMono Nerd Font 12')

set guifont=SpaceMono\ Nerd\ Font\ Mono:h13
set linespace=-6

" Other configuration
if exists('g:nvui')
  " Configure nvui
  NvuiCmdFontFamily SpaceMono Nerd Font
  NvuiCmdFontSize 14
  NvuiScrollAnimationDuration 0.2
endif

if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    GuiFont! SpaceMono Nerd Font Mono:h13
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
