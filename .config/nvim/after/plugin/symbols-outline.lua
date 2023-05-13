require "symbols-outline".setup()

require "which-key".register({
  ["<leader>so"] = {"<cmd>SymbolsOutline<CR>", "Toggle Symbols Outline"}
})
