return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { 
    "nvim-tree/nvim-web-devicons",
    "marko-cerovac/material.nvim",
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- -- Set header
    -- dashboard.section.header.val = {
    --   "                               ",
    --   "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆         ",
    --   "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
    --   "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷⠄⠄⠄⠄⠻⠿⢿⣿⣧⣄     ",
    --   "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
    --   "          ⢠⣿⣿⣿⠈  ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
    --   "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘⠄ ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
    --   "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
    --   " ⣠⣿⠿⠛⠄⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
    --   " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇⠄⠛⠻⢷⣄ ",
    --   "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
    --   "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
    --   "                               ",
    -- }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "󰈞  Find file", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
      dashboard.button("t", "  Find text", ":Telescope live_grep<CR>"),
      dashboard.button("c", "  Configuration", ":e $MYVIMRC<CR>"),
      dashboard.button("q", "󰅚  Quit", ":qa<CR>"),
    }

    -- Set footer
    local function footer()
      local stats = require("lazy").stats()
      local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
      return "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms"
    end

    dashboard.section.footer.val = footer()
    dashboard.section.footer.opts.hl = "Type"

    -- Set padding
    local padding = { type = "padding", val = 2 }
    dashboard.config.layout = {
      padding,
      dashboard.section.header,
      padding,
      dashboard.section.buttons,
      padding,
      dashboard.section.footer,
    }

    alpha.setup(dashboard.config)

    -- Hide tabline and statusline on alpha buffer
    vim.api.nvim_create_autocmd("User", {
      pattern = "AlphaReady",
      desc = "hide cursor line and statusline",
      callback = function()
        vim.opt_local.cursorline = false
        vim.opt_local.laststatus = 0
        vim.cmd([[colorscheme material]])  -- Ensure material is applied after alpha loads
      end,
    })
  end
}
