-- This file defines some custom key bindings for nvim

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- configs for normal mode
        n = {
          -- make ctrl + q toggle insert mode, that is, in normal mode, pressing ctrl + q will enter
          -- insert mode, and in insert mode, pressing ctrl + q will return to normal mode
          ["<C-q>"] = { "<Esc>i", desc = "Toggle insert mode" },
          -- Esc on normal mode goes to insert mode
          ["<Esc>"] = { "i", desc = "Go to insert mode" },
          -- ctrl + z to undo, ctrl + y to redo
          ["<C-z>"] = { "u", desc = "Undo" },
          ["<C-y>"] = { "<C-r>", desc = "Redo" },
          -- ctrl + v to paste
          ["<C-v>"] = { '"+p', desc = "Paste from clipboard" },
          -- move current line up and down with alt + arrow up and down keys
          ["<A-Up>"] = { ":m .-2<CR>==", desc = "Move line up" },
          ["<A-Down>"] = { ":m .+1<CR>==", desc = "Move line down" },
        },

        -- configs for insert mode
        i = {
          -- save with Ctrl + S during insert mode, then go back to insert mode
          ["<C-s>"] = { "<Esc>:w<CR>a", desc = "Save file" },
          -- make ctrl + q toggle insert mode
          ["<C-q>"] = { "<Esc>", desc = "Toggle insert mode" },
          -- ctrl + z to undo, ctrl + y to redo
          ["<C-z>"] = { "<Esc>u", desc = "Undo" },
          ["<C-y>"] = { "<Esc><C-r>", desc = "Redo" },
          -- ctrl + v to paste, then go back to insert mode
          ["<C-v>"] = { '<Esc>"+p<CR>a', desc = "Paste from clipboard" },
          -- move current line up and down with alt + arrow keys
          ["<A-Up>"] = { "<Esc>:m .-2<CR>==gi", desc = "Move line up" },
          ["<A-Down>"] = { "<Esc>:m .+1<CR>==gi", desc = "Move line down" },
        },

        -- configs for visual mode
        v = {
          -- move ALL selected lines up and down with alt + arrow keys WITHOUT losing the selection
          -- that is, after moving the lines, the same lines are still selected
          ["<A-Up>"] = { ":m '<-2<CR>gv=gv", desc = "Move selection up" },
          ["<A-Down>"] = { ":m '>+1<CR>gv=gv", desc = "Move selection down" },

          -- ctrl + c to copy selection, ctrl + x to cut selection
          ["<C-c>"] = { '"+y', desc = "Copy to clipboard" },
          ["<C-x>"] = { '"+d', desc = "Cut to clipboard" },
        },

        -- configs for terminal mode
        t = {},
      },
    },
  },
}
