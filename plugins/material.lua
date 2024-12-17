return {
  "marko-cerovac/material.nvim",
  lazy = false,  -- Important: load immediately
  priority = 1000,  -- Ensure it loads before other plugins
  config = function()
    vim.g.material_style = "deep ocean"
    require("material").setup({
      contrast = {
        terminal = false,
        sidebars = false,
        floating_windows = false,
        cursor_line = false,
        non_current_windows = false,
        filetypes = {},
      },
      styles = {
        comments = { italic = true },
        strings = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
        variables = {},
        operators = {},
        types = {},
      },
    })
    vim.cmd([[colorscheme material]])
  end,
}
