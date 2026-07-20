vim.opt.ts=4
vim.opt.sw=4
vim.opt.hls=true
vim.opt.ignorecase=true
vim.opt.smartcase=true
vim.opt.autowrite=true
vim.opt.signcolumn="yes" -- always show the diag gutter
vim.cmd [[colorscheme retrobox]]
vim.lsp.enable('gopls')
vim.lsp.enable('golangci_lint_ls')

require("config.lazy")
