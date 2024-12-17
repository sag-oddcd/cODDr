return {
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.material_style = "deep ocean"
    end,
  },
  {
    "zaldih/themery.nvim",
    dependencies = {
      "marko-cerovac/material.nvim",
      "folke/tokyonight.nvim",
    },
    cmd = "Themery",
    config = function()
      require("themery").setup({
        themes = {
          {
            name = "Material Deep Ocean",
            colorscheme = "material",
            before = [[
              vim.g.material_style = "deep ocean"
            ]],
          },
          {
            name = "Tokyo Night",
            colorscheme = "tokyonight",
            before = [[
              vim.g.tokyonight_style = 'night'
              vim.g.tokyonight_italic_functions = true
            ]],
          },
        },
        livePreview = true,
        globalBefore = [[
          vim.opt.termguicolors = true
        ]],
        globalAfter = [[
          if vim.g.colors_name then
            require('lualine').setup({
              options = { theme = vim.g.colors_name }
            })
          end
        ]],
      })
      -- Set default theme immediately after setup
      vim.cmd([[colorscheme material]])
    end,
  },
}
