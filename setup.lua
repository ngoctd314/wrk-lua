-- The setup phase begins after the target IP address has been resolved
-- and all threads have been initialized but not yet started
--
-- At this point you can change for each thread being execute the address found
-- during the IP target phase. You are able to manipulate

-- thread.addr: get or set the thread's server address
-- thread:get(name): get the value of a global in the thread's env
-- thread:set(name, value): set the value of a global in the thread's env
-- thread:stop(): stop the thread

require "running"

local setup = function(thread)
    -- code
end
