--first line of code below is to prevent screen tearing
--below comments are to remember stuff - first is call docs on cursor hold, second is echo char under cursor
--autocmd CursorHold *.cs :OmniSharpDocumentation
--autocmd CursorHold *.cs :echo matchstr(getline('.'), '\%' . col('.') . 'c.')
vim.cmd [[
    func CsDocs()
      let wordsIgnore = ['', ' ', '(', ')', '{', '}', ';', 'public', 'static', 'private', 'void']
      let word = expand("<cword>")
      for i in wordsIgnore
        if word == i
          return
        endif
      endfor
      :OmniSharpDocumentation
    endfunc

    autocmd BufEnter * highlight Normal guibg=0
    autocmd CursorHold *.java :call CocAction('doHover')
    autocmd BufWrite *.cs :OmniSharpCodeFormat
    autocmd CursorHold *.cs :call CsDocs()
]]


--vim.cmd[[colorscheme tokyonight]]

--set the colorscheme
vim.cmd [[colorscheme vscode]]
--below changes tabs to four spaces
vim.cmd [[set tabstop=4]]
vim.cmd [[set shiftwidth=4]]
vim.cmd [[set expandtab]]

--lower vim update time from 4000ms to 1000ms which will decrease cursorhold time
vim.cmd [[set updatetime=800]]