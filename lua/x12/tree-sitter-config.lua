local M = {}
function M.register_treesitter()
  local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
  parser_config.x12 = {
    install_info = {
      url = "https://github.com/pfeiferj/tree-sitter-x12.git", -- local path or git repo
      files = {"src/parser.c", "src/scanner.cc"},
      -- optional entries:
      branch = "main", -- default branch in case of git repo if different from master
      generate_requires_npm = false, -- if stand-alone parser without npm dependencies
      requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
    },
    filetype = "x12", -- if filetype does not match the parser name
  }
end

return M
