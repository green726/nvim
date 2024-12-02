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


return M
