local M = {
  "neogitorg/neogit",
}

function M.config()
  local wk = require "which-key"
  wk.register {
    ["<leader>gg"] = { "<cmd>Neogit<CR>", "Neogit" },
  }

  require("neogit").setup {
    auto_refresh = true,
    disable_builtin_notifications = false,
    use_magit_keybindings = false,
    -- Change the default way of opening neogit
    kind = "tab",
    -- Change the default way of opening the commit popup
    commit_popup = {
      kind = "split",
    },
    -- Change the default way of opening popups
    popup = {
      kind = "split",
    },
  }
end

return M
