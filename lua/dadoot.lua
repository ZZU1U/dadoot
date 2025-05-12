-- main module file
local module = require("dadoot.module")

---@class Config
---@field opt string Your config option
local config = {
  opt = "Hello!",
}

---@class MyModule
local M = {}

---@type Config
M.config = config

---@param args Config?
-- you can define your setup function here. Usually configurations can be merged, accepting outside params and
-- you can also put some validation here for those.
M.setup = function(args)
  M.config = vim.tbl_deep_extend("force", M.config, args or {})

  local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

  parser_config.dadoot = {
	  install_info = {
		  url = "/Users/dudu/projects/tree-sitter-dadoot", -- adjust to your path
		  files = { "src/parser.c" },
		  branch = "main",
		  -- generate_requires_npm = true,
		  -- requires_generate_from_grammar = true,
	  },
	  filetype = "dadoot",
  }
end

M.hello = function()
  return module.my_first_function(M.config.opt)
end

return M
