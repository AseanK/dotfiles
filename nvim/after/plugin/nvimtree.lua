  local wk = require "which-key"
  wk.register {
    ["<leader>e"] = { "<cmd>NvimTreeToggle<CR>", "Explorer" },
  }
  require("nvim-tree").setup {
    hijack_netrw = false,
    sync_root_with_cwd = true,
    view = {
      relativenumber = true,
      width = 25,
    },
    renderer = {
      add_trailing = false,
      group_empty = false,
      highlight_git = false,
      full_name = false,
      highlight_opened_files = "none",
      root_folder_label = ":t",
      indent_width = 1,
      indent_markers = {
        enable = false,
        inline_arrows = true,
      },
      special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
      symlink_destination = true,
    },
    update_focused_file = {
      enable = true,
      debounce_delay = 15,
      update_root = true,
      ignore_list = {},
    },

    diagnostics = {
      enable = true,
      show_on_dirs = false,
      show_on_open_dirs = true,
      debounce_delay = 50,
      severity = {
        min = vim.diagnostic.severity.HINT,
        max = vim.diagnostic.severity.ERROR,
      },
    }
  }