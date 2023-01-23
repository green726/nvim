local M = {}

local autoFileTypes = {"cs", "csharp", "python", "py", "javascript", "js", "lua"}

-- vim.cmd([[autocmd User SessionLoadPost lua require"nvim-tree".toggle(false, true)]])
-- vim.cmd [[autocmd CursorHold * lua DiagAndDocs()]]
-- vim.cmd [[autocmd CursorHoldI * lua vim.lsp.buf.hover()]]
-- vim.cmd [[autocmd CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=true, scope="cursor"})]]


DiagAndDocs = function()
    -- local diagWin = vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
    -- if diagWin ~= nil then
    --     return
    -- else
    if vim.api.nvim_buf_get_name(0) == "NvimTree" then
        return
    end
    for i, v in ipairs(autoFileTypes) do 
        if v == vim.bo.filetype then
            vim.lsp.buf.hover()
            return
        end
    end
end

LSPFormat = function()
    -- if (vim.bo.filetype ~= "lua" and vim.bo.filetype ~= "kotlin" and vim.bo.filetype ~= "reason") then
    --     vim.lsp.buf.formatting()
    -- end
end

--BUG: below autocmd didnt work in random file - threw errors - uncomment to fix lsp ststus issues
-- vim.cmd([[autocmd CursorHold,BufEnter <buffer> lua require('lsp-status').update_current_function()]])
-- vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float(nil, {focus=true, scope="cursor"})]]

vim.cmd [[autocmd BufWritePre * lua LSPFormat()]]

return M
