-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local km = vim.keymap
local opts = { noremap = true, silent = true }
local builtin = require("telescope.builtin")

-- Split Window
km.set("n", "sv", ":split<Return>")
km.set("n", "ss", ":vsplit<Return>")

-- Resize window
km.set("n", "<C-w><left>", "<C-w><")
km.set("n", "<C-w><right>", "<C-w>>")
km.set("n", "<C-w><up>", "<C-w>+")
km.set("n", "<C-w><down>", "<C-w>-")

-- Select all content
km.set("n", "<C-a>", "gg<S-v>G")
km.set("n", "<C-w>", ":bd<Return>")
km.set("n", "fg", builtin.live_grep, {})

-- Telescope file browser
km.set("n", "ff", "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>", { noremap = true })

km.set("n", "<C-h", "<S-l>")
