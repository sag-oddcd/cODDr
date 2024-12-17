return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  cmd = "Neotree",
  keys = {
    { "<leader>e", "<cmd>Neotree toggle float<cr>", desc = "Float File Explorer" },
    { "<leader>ge", "<cmd>Neotree float git_status<cr>", desc = "Float Git Explorer" },
    { "<leader>be", "<cmd>Neotree float buffers<cr>", desc = "Float Buffer Explorer" },
  },
  opts = {
    close_if_last_window = true,
    enable_git_status = true,
    window = {
      position = "float",
      width = 35,
      mappings = {
        ["l"] = "open",
        ["h"] = "close_node",
        ["P"] = { "toggle_preview", config = { use_float = true } },
      },
    },
    filesystem = {
      follow_current_file = true,
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        never_show = {
          ".DS_Store",
          "thumbs.db"
        },
      },
    },
    default_component_configs = {
      indent = {
        with_expanders = true,
        expander_collapsed = "",
        expander_expanded = "",
      },
    },
  },
}
