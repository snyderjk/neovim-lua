vim.g.mapleader = " "

local keymap = vim.keymap

local silent = { silent = true }

-- general
keymap.set("n", "<Esc>", ":nohl<CR>", silent)
keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>", silent)

keymap.set("n", "<leader>to", ":tabnew<CR>", silent)
keymap.set("n", "<leader>tx", ":tabclose<CR>", silent)
keymap.set("n", "<leader>tn", ":tabn<CR>", silent)
keymap.set("n", "<leader>tp", ":tabp<CR>", silent)

keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- plugin keymaps

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", silent)

-- resizing splits
vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left)
vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down)
vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up)
vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right)
-- moving between splits
vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", silent)

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", silent)
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", silent)
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", silent)
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", silent)
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", silent)
