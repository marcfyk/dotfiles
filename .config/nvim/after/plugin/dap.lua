require "which-key".register({
  ["<F5>"] = { ":lua require'dap'.continue()<CR>", "DAP continue" },
  ["<F3>"] = { ":lua require'dap'.step_over()<CR>", "DAP step over" },
  ["<F2>"] = { ":lua require'dap'.step_into()<CR>", "DAP step into" },
  ["<F12>"] = { ":lua require'dap'.step_out()<CR>", "DAP step out" },
  ["<leader>b"] = { ":lua require'dap'.toggle_breakpoint()<CR>", "DAP toggle breakpoint" },
  ["<leader>B"] = { ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
    "DAP set breakpoint with breakpoint condition" },
  ["<leader>lp"] = { ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>",
    "DAP set breakpoint with log point message" },
  ["<leader>dr"] = { ":lua require'dap'.repl.open()<CR>", "DAP repl open" },
  ["<leader>dt"] = { ":lua require'dap-go'.debug_test()<CR>", "DAP debug test" },
})
--vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
--vim.keymap.set("n", "<F3>", ":lua require'dap'.step_over()<CR>")
--vim.keymap.set("n", "<F2>", ":lua require'dap'.step_into()<CR>")
--vim.keymap.set("n", "<F12>", ":lua require'dap'.step_out()<CR>")
--vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
--vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
--vim.keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
--vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")
--vim.keymap.set("n", "<leader>dt", ":lua require'dap-go'.debug_test()<CR>")

local dap = require "dap"
local dapui = require "dapui"

dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
