-- Remap Leader keymap
spacebar

-- Remap Esc to jk
 jk

-- Set J and K to move lines in visual mode
J and K

-- Append line below to current line
J

-- Move down/up file keeping cursor centered
<C-d>
<C-u>

-- Next/Previous find while keeping cursor centered
n
N

-- turn on spelling checker
<leader>sp

-- Preserves paste buffer so you can past multiple times
-- greatest remap ever
<leader>p

-- y yank to system clipboard and Y to nvim only
-- next greatest remap ever : asbjornHaland
<leader>y
<leader>Y

-- Deletes to void register
<leader>d

-- Fixes issue with Ctrl+c in vertical edit mode
-- This is going to get me canceled
<C-c>

-- Stops from accidentally running a macro
Q

-- Starts search/replace with the word you are currently on
<leader>s

-- Sets the current open file to executable
<leader>x

n, <leader><leader>, function()
  vim.cmd(so)
end)

-- My macro keys
-- Move to next guide <++>
{ i, n }, ;j, <Esc>/<++><Cr>\_c4l)

-- Markdown
{ i, n }, ;<Cr>, <Esc>A<br><Esc>0<Cr>)
{ i, n }, ;b, <Esc>:normal ysiw*wysiw*<Cr>)
{ i, n }, ;i, <Esc>:normal ysiw*<Cr>)
i, ;l, [title](link)<Esc>F[2l)
i, ;d, ![alt text](image.jpg)<Esc>F[2l)
i, ;c, <Esc>i```<Space>lang<Cr><Cr>```<Cr><++><Esc>02k/lang<Cr>)

-- This line of text is for testing on. <++>
