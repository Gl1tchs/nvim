local keymap = vim.keymap.set

keymap("n", "<leader>pv", vim.cmd.Ex)

-- "Super Y" to yank to system clipboard
keymap({"n", "v"}, "<leader>y", [["+y]])
keymap("n", "<leader>Y", [["+Y]])

-- Delete without yanking into register
keymap({"n", "v"}, "<leader>d", [["_d]])

-- Move selected lines up and down in visual mode
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor in middle when searching/scrolling
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

keymap("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Move selected lines up down
vim.keymap.set("v", "<C-S-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-S-Down>", ":m '>+1<CR>gv=gv")

-- Move selected lines up
vim.keymap.set("v", "<C-S-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<C-S-Up>", ":m '<-2<CR>gv=gv")

keymap("n", "<leader><leader>", function()
    vim.cmd("so")
end)
