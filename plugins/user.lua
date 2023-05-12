-- TODO: Test
local prefix = "<leader>x"
return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {},
    event = "User AstroFile",
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    opts = {},
  },
  {
    "Wansmer/treesj",
    keys = {
      {
        "<leader>m",
        "<CMD>TSJToggle<CR>",
        desc = "Toggle Treesitter Join",
      },
    },
    cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
    opts = { use_default_keymas = false },
  },
  {
    "kevinhwang91/nvim-bqf",
    event = "VeryLazy",
    opts = {},
  },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
  },
  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle", "Trouble" },
    keys = {
      { prefix, desc = "Trouble" },
      { prefix .. "X", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
      { prefix .. "x", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics" },
      { prefix .. "q", "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List" },
    },
    opts = {
      use_diagnostic_signs = true,
      actions_keys = {
        close = { "q", "<esc>" },
        cancel = "<c-e>",
      },
    },
  },
}
