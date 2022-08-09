require('pretty-fold').setup({
   keep_indentation = true,
   fill_char = '━',
   sections = {
      left = {
         '+', function() return string.rep('-', vim.v.foldlevel) end,
         ' ', 'number_of_folded_lines', ':', 'content',
      }
   },
    -- possible values:
    -- "delete" : delete all comment signs from the fold string.
    -- "spaces" : replace all comment signs with equal number of spaces.
    -- false    : do nothing with comment signs.
    process_comment_signs = 'false',
    remove_fold_markers = true,
    -- comment signs additional to the value of `&commentstring` option.
    comment_signs = {},

    -- list of patterns that will be removed from content foldtext section.
    stop_words = {
        '@brief%s*', -- (for c++) remove '@brief' and all spaces after.
    },

    add_close_pattern = true, -- true, 'last_line' or false

    matchup_patterns = {
        { '{', '}' },
        { '%(', ')' }, -- % to escape lua pattern char
        { '%[', ']' }, -- % to escape lua pattern char
    },

    ft_ignore = { 'neorg' },
})

require('pretty-fold').ft_setup('lua', {
   keep_indentation = true,
   fill_char = '━',
   sections = {
      left = {
         '+', function() return string.rep('-', vim.v.foldlevel) end,
         ' ', 'number_of_folded_lines', ':', 'content',
      }
   },
    -- possible values:
    -- "delete" : delete all comment signs from the fold string.
    -- "spaces" : replace all comment signs with equal number of spaces.
    -- false    : do nothing with comment signs.
    process_comment_signs = 'false',
    remove_fold_markers = true,
    -- comment signs additional to the value of `&commentstring` option.
    comment_signs = {},

    -- list of patterns that will be removed from content foldtext section.
    stop_words = {
        '@brief%s*', -- (for c++) remove '@brief' and all spaces after.
    },

    add_close_pattern = true, -- true, 'last_line' or false

    ft_ignore = { 'neorg' },
    matchup_patterns = {
        { '^%s*do$', 'end' }, -- do ... end blocks
        { '^%s*if', 'end' }, -- if ... end
        { '^%s*for', 'end' }, -- for
        { 'function%s*%(', 'end' }, -- 'function( or 'function (''
        { '{', '}' },
        { '%(', ')' }, -- % to escape lua pattern char
        { '%[', ']' }, -- % to escape lua pattern char
    },
})

-- require('fold-preview').setup()
