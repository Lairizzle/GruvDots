require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pylsp" }
vim.lsp.enable(servers)

vim.o.winborder = "single"

-- read :h vim.lsp.config for changing options of lsp servers
