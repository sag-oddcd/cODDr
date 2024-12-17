-- ~/.config/nvim/colors/oddcd.lua
local M = {}

-- Define the colors
local colors = {
    variable = "HSL(0, 100%, 61.2%)",
    func = "HSL(30, 100%, 63.8%)",
    keyword = "HSL(60, 100%, 66.4%)",
    string = "HSL(120, 100%, 58.9%)",
    type = "HSL(240, 100%, 69.8%)",
    constant = "HSL(270, 100%, 67.2%)",
    operator = "HSL(300, 100%, 64.5%)",
    comment = "HSL(0, 0%, 57.3%)",
    parameter = "HSL(0, 100%, 54.8%)",
    property = "HSL(30, 100%, 57.4%)",
    field = "HSL(60, 100%, 60.1%)",
    method = "HSL(120, 100%, 52.5%)",
    namespace = "HSL(240, 100%, 63.4%)",
    constructor = "HSL(270, 100%, 60.8%)",
    number = "HSL(300, 100%, 58.1%)",
    punctuation = "HSL(0, 0%, 50.7%)"
}

-- Set up the colorscheme
function M.setup()
    vim.cmd('hi clear')
    vim.cmd('syntax reset')
    vim.o.background = 'dark'
    vim.o.termguicolors = true

    -- TreeSitter highlights
    require('nvim-treesitter.configs').setup {
        highlight = {
            enable = true,
            custom_captures = {
                ["@variable"] = { fg = colors.variable },
                ["@function"] = { fg = colors.func },
                ["@keyword"] = { fg = colors.keyword },
                ["@string"] = { fg = colors.string },
                ["@type"] = { fg = colors.type },
                ["@constant"] = { fg = colors.constant },
                ["@operator"] = { fg = colors.operator },
                ["@comment"] = { fg = colors.comment },
                ["@parameter"] = { fg = colors.parameter },
                ["@property"] = { fg = colors.property },
                ["@field"] = { fg = colors.field },
                ["@method"] = { fg = colors.method },
                ["@namespace"] = { fg = colors.namespace },
                ["@constructor"] = { fg = colors.constructor },
                ["@number"] = { fg = colors.number },
                ["@punctuation"] = { fg = colors.punctuation }
            }
        }
    }
end

return M
