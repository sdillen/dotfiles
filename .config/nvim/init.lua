require('sdillen.base')
require('sdillen.maps')
require('sdillen.plugins')
require('sdillen.language-specific')

local has = vim.fn.has
local is_mac = has "macunix"

if is_mac then
    require('sdillen.macos')
end
