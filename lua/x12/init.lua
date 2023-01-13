local tree_sitter_config = require("x12.tree-sitter-config")
local M = {}

M.register_treesitter = tree_sitter_config.register_treesitter

function M.setup()
  vim.filetype.add({
    extension = {
      x12 = "x12",
    },
    filename = {
      [".x12"] = "x12",
    }
  })
  M.register_treesitter()
end

return M
