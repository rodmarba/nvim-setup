require("config.lazy")
require("config.keymaps")

vim.cmd[[colorscheme tokyonight-night]]

vim.cmd[[:set number]]
vim.cmd[[:set relativenumber]]
vim.cmd[[:set tabstop=2]]
vim.cmd[[:set softtabstop=2]]
--vim.cmd[[:set autoindent]]
--vim.cmd[[:set smarttab]]
vim.cmd[[:set termguicolors]]

require"bufferline".setup()

require("dap-python").setup("python3")

