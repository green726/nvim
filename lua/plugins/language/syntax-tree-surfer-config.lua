
local opts = { noremap = true, silent = true }

-- Syntax Tree Surfer V2 Mappings
-- Targeted Jump with virtual_text
local sts = require("syntax-tree-surfer")
vim.keymap.set("n", "gV", function() -- only jump to variable_declarations
	sts.targeted_jump({ "variable_declaration" })
end, opts)
vim.keymap.set("n", "gfu", function() -- only jump to functions
	sts.targeted_jump({ "function", "arrrow_function", --[[ "function_definition", ]] "method_declaration" })
  --> In this example, the Lua language schema uses "function",
  --  when the Python language uses "function_definition"
  --  we include both, so this keymap will work on both languages
end, opts)
vim.keymap.set("n", "gif", function() -- only jump to if_statements
	sts.targeted_jump({ "if_statement" })
end, opts)
vim.keymap.set("n", "gfo", function() -- only jump to for_statements
	sts.targeted_jump({ "for_statement" })
end, opts)
vim.keymap.set("n", "gj", function() -- jump to all that you specify
	sts.targeted_jump({
		"function",
	  "if_statement",
		"else_clause",
		"else_statement",
		"elseif_statement",
		"for_statement",
		"while_statement",
		"switch_statement",
        "method_declaration",
	})
end, opts)

-------------------------------
-- filtered_jump --
-- "default" means that you jump to the default_desired_types or your lastest jump types
vim.keymap.set("n", "<A-n>", function()
	sts.filtered_jump("default", true) --> true means jump forward
end, opts)
vim.keymap.set("n", "<A-p>", function()
	sts.filtered_jump("default", false) --> false means jump backwards
end, opts)

-- non-default jump --> custom desired_types
-- vim.keymap.set("n", "your_keymap", function()
-- 	sts.filtered_jump({
-- 		"if_statement",
-- 		"else_clause",
-- 		"else_statement",
-- 	}, true) --> true means jump forward
-- end, opts)
-- vim.keymap.set("n", "your_keymap", function()
-- 	sts.filtered_jump({
-- 		"if_statement",
-- 		"else_clause",
-- 		"else_statement",
-- 	}, false) --> false means jump backwards
-- end, opts)

-------------------------------
-- jump with limited targets --
-- jump to sibling nodes only
vim.keymap.set("n", "-", function()
	sts.filtered_jump({
		"if_statement",
		"else_clause",
		"else_statement",
	}, false, { destination = "siblings" })
end, opts)
vim.keymap.set("n", "=", function()
	sts.filtered_jump({ "if_statement", "else_clause", "else_statement" }, true, { destination = "siblings" })
end, opts)

-- jump to parent or child nodes only
vim.keymap.set("n", "_", function()
	sts.filtered_jump({
		"if_statement",
		"else_clause",
		"else_statement",
	}, false, { destination = "parent" })
end, opts)
vim.keymap.set("n", "+", function()
	sts.filtered_jump({
		"if_statement",
		"else_clause",
		"else_statement",
	}, true, { destination = "children" })
end, opts)

-- Setup Function example:
-- These are the default options:
require("syntax-tree-surfer").setup({
	highlight_group = "STS_highlight",
	disable_no_instance_found_report = false,
	default_desired_types = {
		"function",
		"arrow_function",
		"function_definition",
		"if_statement",
		"else_clause",
		"else_statement",
		"elseif_statement",
		"for_statement",
		"while_statement",
		"switch_statement",
        "method_declaration",
	},
	left_hand_side = "fdsawervcxqtzb",
	right_hand_side = "jkl;oiu.,mpy/n",
	icon_dictionary = {
		["if_statement"] = "",
		["else_clause"] = "",
		["else_statement"] = "",
		["elseif_statement"] = "",
		["for_statement"] = "ﭜ",
		["while_statement"] = "ﯩ",
		["switch_statement"] = "ﳟ",
		["function"] = "",
		["function_definition"] = "",
        ["method_declaration"] = "",
		["variable_declaration"] = "",
	},
})
