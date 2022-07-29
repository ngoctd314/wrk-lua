-- Load URL paths from the file
local function get_end_point(file)
    local endpoints = {}

    local f = io.open(file, "r")
    if f ~= nil then
        io.close(f)
    else
        -- Return the empty array
        return endpoints
    end

    -- If the file exists loop through all its lines
    -- and add them into the lines array
    for line in io.lines(file) do
        if not (line == '') then
            endpoints[#endpoints + 1] = line
        end
    end

    return endpoints
end

-- Load URL paths from file
ENDPOINTS = get_end_point("endpoint.txt")

-- Check if at least one path was found in the file
if #ENDPOINTS <= 0 then
    print("multiplepaths: No paths found. You have to create a file paths.txt with one path per line")
    os.exit()
end
