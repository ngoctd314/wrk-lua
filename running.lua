require "endpoint"

local config = {
    -- scheme = "http",
    -- host = "localhost",
    -- port = nil,
    method = "GET",
    -- path = "/",
    -- headers = {},
    -- body = nil,
}

local counter = 0
local endpoints = ENDPOINTS

request = function()
    local path = endpoints[counter]
    counter = counter + 1
    if counter == #endpoints + 1 then
        counter = 0
    end

    return wrk.format(config.method, path)
end
