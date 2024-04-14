-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.keymap.set
local builtin = require("telescope.builtin")

keymap("i", "jk", "<Esc>")
keymap("n", "<C-p>", builtin.find_files, {})
keymap("n", "<C-S-p>", builtin.live_grep, {})
keymap("n", "<leader>fb", builtin.buffers, {})

keymap("n", "s", "cl", {})

keymap("", "gp", vim.diagnostic.goto_prev)
keymap("n", "gn", vim.diagnostic.goto_next)

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

vim.keymap.set("n", "Q", "<nop>")

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.updatetime = 50
vim.opt.signcolumn = "yes"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.list = false
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set("x", "<leader>ps", function()
  local word = vim.fn.expand("<cword>")
  builtin.grep_string({ search = word })
end)
