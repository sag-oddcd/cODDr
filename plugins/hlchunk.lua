-- return {
--   "shellRaining/hlchunk.nvim",
--   event = { "CursorHold", "CursorHoldI" },
--   dependencies = {
--     "nvim-treesitter/nvim-treesitter",
--   },
--   opts = {
--     chunk = {
--       chars = {
--         horizontal_line = "─",
--         vertical_line = "│",
--         left_top = "╭",
--         left_bottom = "╰",
--         right_arrow = ">",
--       },
--       style = {
--         { fg = "#806d9c" },
--         { fg = "#c21f30" },
--       },
--       duration = 200,  -- Animation duration in milliseconds
--       delay = 300,    -- Animation delay in milliseconds
--     },
--   },
-- }

return {
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("hlchunk").setup({})
  end
}
