-- local api = vim.api

local M = {}

M.config = {

}

function M.wrap_selected()
  print("HELLO");
  vim.cmd('normal! gv"xy')
  local txt = vim.fn.getreg('x')
  local tbl = {}
  for line in txt:gmatch("[^\n]+") do
    table.insert(tbl, line)
  end
  for _, line in ipairs(table) do
    print(line)
  end
end

function M.setup()
  print("TESTING1")
  vim.api.nvim_command("command! -range WrapSelected lua require('vsc_surround').wrap_selected()")
  print("TESTING2")
end

return M
