---@class CustomModule
local M = {}

---@return string
M.my_first_function = function()
	local parser = vim.treesitter.get_parser(0, "dadoot")
	local tree = parser:parse()[1]
	local root = tree:root()

	local ts_utils = require("nvim-treesitter.ts_utils")

	local function print_nodes(node)
		for child in node:iter_children() do
			local text = vim.treesitter.get_node_text(child, 0)
			print(child:type(), text)
			print_nodes(child) -- recursive
		end
	end

	print_nodes(root)
end

return M
