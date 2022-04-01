--first line of code below is to prevent screen tearing
--below comments are to remember stuff - first is call docs on cursor hold, second is echo char under cursor
--autocmd CursorHold *.cs :OmniSharpDocumentation
--autocmd CursorHold *.cs :echo matchstr(getline('.'), '\%' . col('.') . 'c.')
vim.cmd([[
    let csDocsToggled = false
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
        if char != '' && char != ' ' && g:csDocsToggled == false
          g:csDocsToggled = true
          :OmniSharpDocumentation
        endif
    endfunc

    func CsDocsOff()
      g:csDocsToggled = false
    endfunc

    let testnum = 0
    func TestLog()
        g:testnum = g:testnum + 1
        echo 'test ' . g:testnum
    endfunc

    autocmd CursorHold *.cs silent! call CsDocs()
    autocmd CursorMove *.cs silent! call CsDocsOff()
    autocmd CursorHold *.java silent! call CocActionAsync('doHover')
    autocmd BufWrite *.cs :OmniSharpCodeFormat
]])

--     autocmd BufEnter * highlight Normal guibg=0
--need to write CsDocs into a toggle so it doesn't spam refresh b/c it is triggering cursor movement causing cursor hold to spam refresh
