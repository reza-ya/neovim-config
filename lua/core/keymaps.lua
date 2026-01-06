local map = vim.keymap.set

-- Save / Quit
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")

-- Fast escape
map("i", "jk", "<Esc>")

-- Window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
local map = vim.keymap.set

-- Save / Quit
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")

-- Fast escape
map("i", "jk", "<Esc>")

-- Window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")

-- Normal mode
map('n', 'd', '"_d', { desc = "Delete without yanking" })
map('n', 'D', '"_D', { desc = "Delete line without yanking" })
map('n', 'c', '"_c', { desc = "Change without yanking" })
map('n', 'C', '"_C', { desc = "Change line without yanking" })
map('n', 's', '"_s', { desc = "Substitute without yanking" })
map('n', 'S', '"_S', { desc = "Substitute line without yanking" })

-- Visual mode
map('v', 'd', '"_d', { desc = "Delete selection without yanking" })
map('v', 'p', '"_dP', { desc = "Paste over selection without losing current pasteboard" })
