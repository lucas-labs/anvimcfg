---@type LazySpec
return {
  {
    "folke/snacks.nvim",
    opts = {
      gh = {
        keys = {
          select = { "<cr>", "gh_actions", desc = "Select Action" },
          edit = { "i", "gh_edit", desc = "Edit" },
          comment = { "a", "gh_comment", desc = "Add Comment" },
          close = { "c", "gh_close", desc = "Close" },
          reopen = { "o", "gh_reopen", desc = "Reopen" },
        },
      },
      picker = {
        sources = {
          gh_issue = {},
          gh_pr = {},
        },
      },
    },
    keys = {
      {
        "<leader>gi",
        function() require("snacks").picker.gh_issue() end,
        desc = "GitHub Issues (open)",
      },
      {
        "<leader>gI",
        function() require("snacks").picker.gh_issue { state = "all" } end,
        desc = "GitHub Issues (all)",
      },
      {
        "<leader>gp",
        function() require("snacks").picker.gh_pr() end,
        desc = "GitHub Pull Requests (open)",
      },
      {
        "<leader>gP",
        function() require("snacks").picker.gh_pr { state = "all" } end,
        desc = "GitHub Pull Requests (all)",
      },
    },
  },
}
