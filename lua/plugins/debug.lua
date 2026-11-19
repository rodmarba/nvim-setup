return {
				"mfussenegger/nvim-dap",
				dependencies = {
								"igorlfs/nvim-dap-view",
								"mfussenegger/nvim-dap-python",
				},
				config = function()
								local dap = require("dap")
								local ui = require("dap-view")

								dap.listeners.before.attatch.dapui_config = function()
												ui.open()
								end
								dap.listeners.before.launch.dapui_config = function()
												ui.open()
								end
								dap.listeners.before.event_terminated.dapui_config = function()
												ui.close()
								end
								dap.listeners.before.event_exited.dapui_config = function()
												ui.close()
								end

								vim.keymap.set("n", "<Leader>bp", dap.toggle_breakpoint, { desc = "Add debugging breakpoint" })
								vim.keymap.set("n", "<Leader>bs", function()
												require('dap').terminate()
												require('dap-view').close() 
								end, { desc = "Stop debbuging" })
								vim.keymap.set("n", "<F1>", dap.continue)
								vim.keymap.set("n", "<F2>", dap.step_into)
								vim.keymap.set("n", "<F3>", dap.step_over)	
								vim.keymap.set("n", "<F4>", dap.step_out)
								vim.keymap.set("n", "<F5>", dap.step_back)
								vim.keymap.set("n", "<F6>", dap.restart)

				end,
}
