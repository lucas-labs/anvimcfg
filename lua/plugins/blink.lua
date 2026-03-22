---@type LazySpec
return {
  {
    "Saghen/blink.cmp",
    opts = {
      keymap = {
        ["<C-\\>"] = { "show", "show_documentation", "hide_documentation" },
        ["<Esc>"] = { "hide", "fallback" },
      },
    },
  },
}
