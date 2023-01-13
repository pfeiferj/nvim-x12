# nvim-x12

Syntax highlighting for x12 files.

This project adds .x12 file detection and sets nvim-treesitter configs for [tree-sitter-x12](https://github.com/pfeiferj/tree-sitter-x12).

## Setup

### Requirements

This project utilizes [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
to manage the tree-sitter parser for x12. You must have nvim-treesitter
installed to use this plugin.

### Instructions

Once you install the plugin it can be setup using the setup function:

``` lua
require("hurl").setup()
```

The setup function injects the x12 tree-sitter configuration into
nvim-treesitter but does not install the parser. To install the parser you must
either call :TSinstall x12 or add x12 to your nvim-treesitter
ensure\_installed list

Command:

``` vim
:TSInstall x12
```

nvim-treesitter setup with parser install:

``` lua
require 'nvim-treesitter.config'.setup {
  ensure_installed = { "x12" },
  highlight = {
    enable = true
  }
}
```

### Packer

``` lua
use {
  "nvim-treesitter/nvim-treesitter",
  requires = {
    {
      "pfeiferj/nvim-x12",
      branch="main",
    }
  },
  config = function()

    require("x12").setup() -- add x12 to the nvim-treesitter config

    require 'nvim-treesitter.config'.setup {
      ensure_installed = { "x12" }, -- ensure that x12 gets installed
      highlight = {
        enable = true -- x12 plugin provides tree-sitter highlighting
      }
    }
  end
};

```
