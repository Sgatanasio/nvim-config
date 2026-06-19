vim.opt.termguicolors = true
vim.cmd.colorscheme("habamax")

-- GENERAL CODE VISUALIZATION --

vim.opt.number = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

-- TABS --

vim.opt.tabstop = 2 -- tabwidth
vim.opt.shiftwidth = 2 -- indent width
vim.opt.softtabstop = 2 -- soft tab stop
vim.opt.expandtab = false
vim.opt.smartindent = true -- smart indenting
vim.opt.autoindent = true -- copy indent from current line

-- SEARCH --

vim.opt.ignorecase = true -- case insensitive
vim.opt.smartcase = true -- case sensitive if upper in searched string
vim.opt.hlsearch = true -- highlight search matches
vim.opt.incsearch = true -- show mathces as you type

-- MISCELANEOUS --

vim.opt.showmatch = true -- highlight matching brackets
vim.opt.cmdheight = 1 -- n lines command line
vim.opt.completeopt = "menuone,noinsert,noselect" -- completion options
vim.opt.showmode = false -- do not show mode, instead haveit in statusline
vim.opt.pumheight = 10 -- popup menu height
vim.opt.pumblend = 10 -- popup menu transparency (blend)
vim.opt.winblend = 0 -- floating window transparency (blend)
vim.opt.conceallevel = 0 -- do not hide markup
vim.opt.concealcursor = "" -- do not hide crusorline in markup
vim.opt.lazyredraw = true -- do not redraw during macros
vim.opt.synmaxcol = 500 -- syntax highlighting limit
vim.opt.fillchars = { eob = " " } -- hide "~" on empty lines

local undodir = vim.fn.expand("~/.vim/undodir")

-- UNDO DIR

if vim.fn.isdirectory(undodir) == 0 then
	vim.fn.mkdir(undodir,"p")
end

vim.opt.backup = false -- no backup file
vim.opt.writebackup = false -- no writing to backup file
vim.opt.swapfile = false -- no swapfile
vim.opt.undofile = true -- create undo file
vim.opt.undodir = undodir

vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.autoread = true
vim.opt.autowrite = false

vim.opt.hidden = true -- allow hidden buffers
vim.opt.errorbells = false -- no error sounds
vim.opt.backspace = "indent,eol,start" -- better backspace behavior
vim.opt.autochdir = false
vim.opt.iskeyword:append("-") -- include - in words (so hel-lo becomes a whole word)
vim.opt.path:append("**") -- include subdirs in search
vim.opt.selection = "inclusive" -- include last char in selection
vim.opt.clipboard:append("unnamedplus") -- use system clipboard
vim.opt.mouse = "a" -- enable mouse support
vim.opt.modifiable = true -- allow buffer modifications
vim.opt.encoding = "utf-8" -- set encoding

vim.opt.guicursor =
	"n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175" -- cursor blinking and settings

-- FOLDING (REQUIRES TREESITTER) --

vim.opt.foldmethod = "expr" -- use expression for folding
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- use treesitter for folding
vim.opt.foldlevel = 99 -- start with all folds open

vim.opt.splitbelow = true -- horizontal splits go below
vim.opt.splitright = true -- vertical splits go right

vim.opt.wildmenu = true -- tab completion
vim.opt.wildmode = "longest:full,full" -- complete longest common match, full completion list, cycle through with Tab
vim.opt.diffopt:append("linematch:60") -- improve diff display
vim.opt.redrawtime = 10000 -- increase neovim redraw tolerance
vim.opt.maxmempattern = 20000 -- increase max memory


-- EXTERNAL FILES CALLS --

require("keybinds")
require("autocmds")
require("plugins")
