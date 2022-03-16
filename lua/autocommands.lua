--first line of code below is to prevent screen tearing
--below comments are to remember stuff - first is call docs on cursor hold, second is echo char under cursor
--autocmd CursorHold *.cs :OmniSharpDocumentation
--autocmd CursorHold *.cs :echo matchstr(getline('.'), '\%' . col('.') . 'c.')
--autocmd BufEnter * highlight Normal guibg=0
vim.cmd [[
    func CsDocs()
      let wordsIgnore = ['', ' ', '(', ')', '{', '}', ';', 'public', 'static', 'private', 'void', 'for', 'foreach', 'if', 'else', 'true', 'false', '&&', '[', ']', 'class', 'using']
      let word = expand("<cword>") "get cursor word, above is a list of words to ignore
      let char =  matchstr(getline('.'), '\%' . col('.') . 'c.') "get char under cursor
      let line = matchstr(getline('.'), '^\s*\/') "check if first char of line is a comment (/)
      if line != ''
        return
      endif
      for i in wordsIgnore
        if word == i
          return
        endif
      endfor
        if char != '' && char != ' '
          :OmniSharpDocumentation
        endif
    endfunc

    autocmd CursorHold *.java silent! :call CocAction('doHover')
    autocmd BufWrite *.cs :OmniSharpCodeFormat
    autocmd CursorHold *.cs :call CsDocs()
]]


