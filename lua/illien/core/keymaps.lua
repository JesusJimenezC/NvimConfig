-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- use ii to exit from INSERT mode
keymap.set("i", "ii", "<ESC>", {desc = "Exit from INSERT mode"})

keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "Remove highlights"})

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split to right" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split to bottom" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "All splited same size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "New tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Prev tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Clone tab" }) --  move current buffer to new tab

-- nvim tree
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle explorer" }) -- toggle file explorer
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle current file explorer" }) -- toggle file explorer on current file
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse explorer" }) -- collapse file explorer
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh explorer" }) -- refresh file explorer

-- telescope fuzzy finder
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Find on recet files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find <STRING> on files" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find selected <STRING>" })
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

-- automated session manager
keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory

-- disable mouse scroll (https://stackoverflow.com/questions/75498817/nvim-deactivating-mouse/76845374#76845374)

-- Disable arrow keys
keymap.set("", "<up>", "<nop>", { noremap = true })
keymap.set("", "<down>", "<nop>", { noremap = true })
keymap.set("i", "<up>", "<nop>", { noremap = true })
keymap.set("i", "<down>", "<nop>", { noremap = true })
keymap.set("", "<left>", "<nop>", { noremap = true })
keymap.set("i", "<left>", "<nop>", { noremap = true })
keymap.set("", "<right>", "<nop>", { noremap = true })
keymap.set("i", "<right>", "<nop>", { noremap = true })
keymap.set("v", "<up>", "<nop>", { noremap = true })
keymap.set("v", "<down>", "<nop>", { noremap = true })
keymap.set("v", "<left>", "<nop>", { noremap = true })
keymap.set("v", "<right>", "<nop>", { noremap = true })

-- Disable the Delete key in all modes
keymap.set('', '<Del>', '<nop>', { noremap = true })
keymap.set('i', '<Del>', '<nop>', { noremap = true })
keymap.set('v', '<Del>', '<nop>', { noremap = true })

-- Disable the Home key in all modes
keymap.set('', '<Home>', '<nop>', { noremap = true })
keymap.set('i', '<Home>', '<nop>', { noremap = true })
keymap.set('v', '<Home>', '<nop>', { noremap = true })

-- Disable the Page Down key in all modes
keymap.set('', '<PageDown>', '<nop>', { noremap = true })
keymap.set('i', '<PageDown>', '<nop>', { noremap = true })
keymap.set('v', '<PageDown>', '<nop>', { noremap = true })

-- Disable the Page Up key in all modes
keymap.set('', '<PageUp>', '<nop>', { noremap = true })
keymap.set('i', '<PageUp>', '<nop>', { noremap = true })
keymap.set('v', '<PageUp>', '<nop>', { noremap = true })

-- Disable the Backspace key in all modes
keymap.set('', '<BS>', '<nop>', { noremap = true })
keymap.set('i', '<BS>', '<nop>', { noremap = true })
keymap.set('v', '<BS>', '<nop>', { noremap = true })
keymap.set('c', '<BS>', '<nop>', { noremap = true })  -- Backspace in command mode
keymap.set('s', '<BS>', '<nop>', { noremap = true })  -- Backspace in select mode
