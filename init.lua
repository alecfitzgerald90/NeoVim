require('base')
require('highlights')
require('maps')
require('plugins')
vim.lsp.set_log_level('debug')
local has = function(x)
  return vim.fn.has(x) == 1
end
-- thing 
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('macos')
end
if is_win then
  require('windows')
end
