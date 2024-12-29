local M = {}
local internal = {}

local global_dt = 1.0 / 1.0

M.run_animation_loop = function()
	vim.notify("running loop", vim.log.levels.INFO)

	local timer = vim.uv.new_timer()
	if timer == nil then
		print("failed for some reason")
		return
	end

	timer:start(250, 1000, function()
		if Is_Playing == false then
			timer:close()
		end

		internal.run_frame()
	end)
end

internal.run_frame = function()
	vim.notify("running frame!!", vim.log.levels.INFO)
end

return M
