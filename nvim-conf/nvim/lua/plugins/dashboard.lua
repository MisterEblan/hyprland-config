return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
	local plugins = require("lazy").stats().count
    require('dashboard').setup {
      -- config
	  theme = "doom",
	  config = {
	    header = {
		  " _   _                 _           ",
		  "| \\ | |                _           ",
		  "|  \\| | ___  _____   ___ _ __ ___  ",
	          "| . ` |/ _ \\/ _ \\ \\ / / | '_ ` _ \\ ",
	          "| |\\  |  __/  _  \\ V /| | | | | | |",
          	  "\\_| \\_/\\___|\\___/ \\_/ |_|_| |_| |_|",
		  "",
		  "MisterEblan", ""
		},
        center = {
          {
            icon = '  ',
            desc = 'Recently opened files    ',
            action = 'Telescope oldfiles',
            key = 's',
          },
          {
            icon = '🔍 ',
            desc = 'Find  File    ',
            action = 'Telescope find_files',
            key = 'h',
          },
          {
            icon = '📁 ',
            desc = 'File Browser    ',
            action = 'Neotree',
            key = 'f',
          },
          {
            icon = '🔖 ',
            desc = 'Find  word    ',
            action = 'Telescope live_grep',
            key = 'b',
          },
        },
        footer = { '', 'NeoVim loaded ' .. plugins .. ' packages' }
	  }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
