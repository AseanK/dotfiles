-- harpoon
local function mark_file()
  require("harpoon.mark").add_file()
  vim.notify "󱡅  marked file"
end

vim.keymap.set("n", "<leader>m", mark_file, { desc = "Mark file" })
vim.keymap.set("n", "<TAB>", require("harpoon.ui").toggle_quick_menu)
