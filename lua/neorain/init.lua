local M = {}
local neorain_namespace = vim.api.nvim_create_namespace("neorain")

local rain = require("neorain.rain")
Is_Playing = false

M.setup = function(opts)
	vim.notify("ran setup for neorain", vim.log.levels.INFO)
end

M.play = function()
	vim.notify("ran play for neorain", vim.log.levels.INFO)
	Is_Playing = true
	rain.run_animation_loop()
end

M.stop = function()
	Is_Playing = false
	vim.notify("ran stop for neorain", vim.log.levels.INFO)
end

return M
