-- Remap Leader keymap
vim.g.mapleader = " "

-- Open file file search
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Remap Esc to jk
vim.keymap.set({ "i", "v" }, "jk", "<Esc>", options)

-- Set J and K to move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Append line below to current line
vim.keymap.set("n", "J", "mzJ`z")

-- Move down/up file keeping cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Next/Previous find while keeping cursor centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- turn on spelling checker
vim.keymap.set("n", "<leader>sp", "<cmd>set spell!<CR>")

-- Preserves paste buffer so you can past multiple times
-- "greatest remap ever"
vim.keymap.set("x", "<leader>p", [["_dP]])

-- "y" yank to system clipboard and "Y" to nvim only
-- "next greatest remap ever : asbjornHaland"
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Deletes to void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Fixes issue with Ctrl+c in vertical edit mode
-- "This is going to get me canceled"
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Stops from accidentally running a macro
vim.keymap.set("n", "Q", "<nop>")

-- LSP format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Starts search/replace with the word you are currently on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Sets the current open file to executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

-- My macro keys
-- Move to next guide <++>
vim.keymap.set({ "i", "n" }, ";j", "<Esc>/<++><Cr>\"_c4l")

-- Markdown
vim.keymap.set({ "i", "n" }, ";<Cr>", "<Esc>A<br><Esc>0<Cr>")
vim.keymap.set({ "i", "n" }, ";b", "<Esc>:normal ysiw*wysiw*<Cr>")
vim.keymap.set({ "i", "n" }, ";i", "<Esc>:normal ysiw*<Cr>")
vim.keymap.set("i", ";l", "[title](link)<Esc>F[2l")
vim.keymap.set("i", ";d", "![alt text](image.jpg)<Esc>F[2l")
vim.keymap.set("i", ";c", "<Esc>i```<Space>lang<Cr><Cr>```<Cr><++><Esc>02k/lang<Cr>")

-- This line of text is for testing on. <++>


