require("telescope").setup {
  defaults = {
    border = true, -- or true or "rounded"
  },
  vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "NONE" }),
  vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = "#282828", bg = "#d79921" }),
  vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#bdae93", bg = "NONE" }),
  vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#d65d0e" }), -- red border
}
