vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- ==========================================================
-- File Explorer
-- ==========================================================
keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Open file explorer" })

-- ==========================================================
-- File Operations
-- ==========================================================
keymap.set("n", "<leader>ww", "<cmd>w<CR>", { desc = "Write file" })
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit window" })
keymap.set("n", "<leader>Q", "<cmd>q!<CR>", { desc = "Force quit window" })
keymap.set("n", "<leader>x", "<cmd>x<CR>", { desc = "Save and quit" })
keymap.set("n", "<leader>X", "<cmd>xa<CR>", { desc = "Save all & quit" })

-- ==========================================================
-- Mode Switching
-- ==========================================================
keymap.set("i", "jk", "<Esc>", { desc = "Exit to Insert mode" })
keymap.set("v", "<C-c>", "<Esc>", { desc = "Exit visual mode" })

-- ==========================================================
-- Search
-- ==========================================================
keymap.set("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- ==========================================================
-- Visual Mode
-- ==========================================================
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines up in visual mode" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines down in visual mode" })

-- ==========================================================
-- Numbers
-- ==========================================================
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- ==========================================================
-- Window Management
-- ==========================================================
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Equal splits" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close split" }) -- close current split window

-- ==========================================================
-- Window Navigation
-- ==========================================================
keymap.set("n", "sh", "<C-w>h", { desc = "Focus left" })
keymap.set("n", "sl", "<C-w>l", { desc = "Focus right" })
keymap.set("n", "sk", "<C-w>k", { desc = "Focus up" })
keymap.set("n", "sj", "<C-w>j", { desc = "Focus down" })

-- ==========================================================
-- Tabs
-- ==========================================================
-- keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- ==========================================================
-- Neovim
-- ==========================================================
vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end, { desc = "Source vim file" })
