-- Delete all the buffers except the current one.
local function delete_others()
	local curr_buffer = vim.api.nvim_get_current_buf()
	for _, b in pairs(vim.fn.getbufinfo()) do
		if b.bufnr ~= curr_buffer then
			vim.api.nvim_buf_delete(b.bufnr, {})
		end
	end
end

-- Delete hidden buffers.
local function delete_hidden()
	for _, b in pairs(vim.fn.getbufinfo()) do
		if b.hidden == 1 and b.loaded == 1 then
			vim.api.nvim_buf_delete(b.bufnr, {})
		end
	end
end

return {
	delete_others = delete_others,
	delete_hidden = delete_hidden,
}
