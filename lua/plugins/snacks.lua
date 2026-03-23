---@type LazySpec
return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        sections = {
          { section = "header" },
          {
            pane = 2,
            section = "terminal",
            cmd = 'pwsh -NoLogo -NoProfile -Command "Import-Module ps-color-scripts; Show-ColorScript fade"',
            height = 5,
            padding = 1,
          },
          { section = "keys", gap = 1, padding = 1 },
          { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          {
            pane = 2,
            icon = " ",
            title = "Git Status",
            section = "terminal",
            enabled = function() return require("snacks").git.get_root() ~= nil end,
            cmd = "git status --short --branch --renames",
            height = 5,
            padding = 1,
            ttl = 5 * 60,
            indent = 3,
          },
          { section = "startup" },
        },
        preset = {
          header = table.concat({
            "             ████       ",
            "             ████       ",
            "          ████          ",
            "          ████          ",
            "  █████   ████   █████  ",
            "  ████            ████  ",
            "  ████            ████  ",
            "  ████            ████  ",
            "████                ████",
            "  ████            ████  ",
            "  ████            ████  ",
            "  ████            ████  ",
            "  █████          █████  ",
          }, "\n"),
        },
      },
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
