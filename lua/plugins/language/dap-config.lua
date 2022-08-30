local dap = require("dap")

dap.adapters.coreclr = {
  type = 'executable',
  command = 'C:\\Users\\mguin\\AppData\\Local\\nvim-data\\mason\\bin',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/net6.0/', 'file')
    end,
  },
}

