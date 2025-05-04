require("config.lazy")

require("dashboard")
require("theme")

-- require("catppuccin").setup({
--     flavour = "Macchiato", -- latte, frappe, macchiato, mocha
--     background = { -- :h background
--         light = "latte",
--         dark = "mocha",
--     },
--     transparent_background = true,
-- 	integrations = {
-- 	cmp = true,
-- 	gitsigns = true,
-- 	nvimtree = true,
-- 	treesitter = true,
-- 	notify = false,
-- 	mini = {
-- 	    enabled = true,
-- 	    indentscope_color = "",
-- 	    },
-- 	}
-- })

-- require('kanagawa').setup({
--     compile = false,             -- enable compiling the colorscheme
--     undercurl = true,            -- enable undercurls
--     commentStyle = { italic = true },
--     functionStyle = { italic = true },
--     keywordStyle = { italic = true},
--     statementStyle = { bold = true },
--     typeStyle = {},
--     transparent = false,         -- do not set background color
--     dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
--     terminalColors = true,       -- define vim.g.terminal_color_{0,17}
--     colors = {                   -- add/modify theme and palette colors
--         palette = {},
--         theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--     },
--     overrides = function(colors) -- add/modify highlights
--         return {}
--     end,
--     theme = "lotus",              -- Load "wave" theme when 'background' option is not set
--     background = {               -- map the value of 'background' option to a theme
--         dark = "dragon",           -- try "dragon" !
--         light = "lotus"
--     },
-- })

require("notify")

require('toggleterm').setup{
}

require('leap').create_default_mappings()

require('todo-comments').setup{}

require("obsidian")

-- Установка нумерации строк
vim.cmd.set("number")
vim.cmd.set("relativenumber")

-- Установка табуляции
vim.cmd.set("tabstop=4")
vim.cmd.set("shiftwidth=4")

-- Установка буфера для копирования
vim.cmd.set("clipboard^=unnamed")
vim.cmd.set("clipboard^=unnamedplus")

vim.g.mapleader = " "
-- Привязка клавиши для сохранения файла
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })

-- Привязка клавиши для закрытия файла
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })

-- Настройка привязки клавиш для открытия NeoTree
vim.api.nvim_set_keymap('n', '<leader>e', ':Neotree<CR>', { noremap = true, silent = true })

