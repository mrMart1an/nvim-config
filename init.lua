-- Based on https://github.com/nvim-lua/kickstart.nvim.git

-- Load the neovim configs
require("configs")

-- Install and setup package manager and plugins
require("lazy_setup")

-- Configure the installed plugins
require("plugins_config")

-- Load the editor keybinds
require("keybinds")


-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
