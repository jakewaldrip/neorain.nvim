local M = {}
local internal = {}

-- todo, make configurable fps
local global_dt = 1.0 / 15

M.run_animation_loop = function()
	vim.notify("running loop", vim.log.levels.INFO)

	local timer = vim.uv.new_timer()
	if timer == nil then
		print("failed for some reason")
		return
	end

	-- todo, put global_dt in second param here
	timer:start(250, 1000, function()
		if Is_Playing == false then
			timer:close()
		end

		-- todo, we will pass overall animation info from here
		-- raindrops will likely be stored individually in a table
		-- we can store them + their position and then render the next frame accordingly
		internal.run_frame()
	end)
end

-- todo render here, this will run an individual frame
internal.run_frame = function()
	vim.notify("running frame!!", vim.log.levels.INFO)
end

return M
