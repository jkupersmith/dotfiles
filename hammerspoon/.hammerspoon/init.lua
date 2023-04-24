hs.window.animationDuration = 0

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
	hs.reload()
end)
hs.alert.show("Config loaded")

--[[
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
	hs.alert.show("Hello World!")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	f.x = f.x - 10
	win:setFrame(f)
end)
--]]


--[[
CAFFEINE = hs.menubar.new()
function SetCaffeineDisplay(state)
	if state then
		CAFFEINE:setTitle("AWAKE")
	else
		CAFFEINE:setTitle("SLEEPY")
	end
end

function CaffeineClicked()
	SetCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

if CAFFEINE then
	CAFFEINE:setClickCallback(CaffeineClicked)
	SetCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end
--]]

-- fill screen
hs.hotkey.bind({"ctrl", "cmd"}, 'up', function() hs.window.focusedWindow():moveToUnit({0, 0, 1, 1}) end)
-- move it back to a "reasonable" size
hs.hotkey.bind({"ctrl", "cmd"}, 'down', function() hs.window.focusedWindow():moveToUnit({0.1, 0.1, 0.6, 0.8}) end)

-- half of screen
hs.hotkey.bind({"ctrl", "shift"}, 'left', function() hs.window.focusedWindow():moveToUnit({0, 0, 0.5, 1}) end)
hs.hotkey.bind({"ctrl", "shift"}, 'right', function() hs.window.focusedWindow():moveToUnit({0.5, 0, 0.5, 1}) end)
hs.hotkey.bind({"ctrl", "shift"}, 'up', function() hs.window.focusedWindow():moveToUnit({0, 0, 1, 0.5}) end)
hs.hotkey.bind({"ctrl", "shift"}, 'down', function() hs.window.focusedWindow():moveToUnit({0, 0.5, 1, 0.5}) end)
-- quarter of screen
hs.hotkey.bind({"ctrl", "shift", "cmd"}, 'left', function() hs.window.focusedWindow():moveToUnit({0, 0, 0.5, 0.5}) end)
hs.hotkey.bind({"ctrl", "shift", "cmd"}, 'right', function() hs.window.focusedWindow():moveToUnit({0.5, 0.5, 0.5, 0.5}) end)
hs.hotkey.bind({"ctrl", "shift", "cmd"}, 'up', function() hs.window.focusedWindow():moveToUnit({0.5, 0, 0.5, 0.5}) end)
hs.hotkey.bind({"ctrl", "shift", "cmd"}, 'down', function() hs.window.focusedWindow():moveToUnit({0, 0.5, 0.5, 0.5}) end)
-- third of screen
hs.hotkey.bind({"ctrl", "alt"}, "left", 	function() hs.window.focusedWindow():moveToUnit({0, 0, 0.3, 1}) end)
hs.hotkey.bind({"ctrl", "alt"}, "up", 		function() hs.window.focusedWindow():moveToUnit({0.3, 0, 0.3, 1}) end)
hs.hotkey.bind({"ctrl", "alt"}, "right", 	function() hs.window.focusedWindow():moveToUnit({0.6, 0, 0.4, 1}) end)
-- third of screen (upper)
hs.hotkey.bind({"ctrl", "alt"}, "1", function() hs.window.focusedWindow():moveToUnit({0, 0, 0.3, 0.5}) end)
hs.hotkey.bind({"ctrl", "alt"}, "2", function() hs.window.focusedWindow():moveToUnit({0.3, 0, 0.3, 0.5}) end)
hs.hotkey.bind({"ctrl", "alt"}, "3", function() hs.window.focusedWindow():moveToUnit({0.6, 0, 0.4, 0.5}) end)
-- third of screen (lower)
hs.hotkey.bind({"ctrl", "alt"}, "4", function() hs.window.focusedWindow():moveToUnit({0, 0.5, 0.3, 0.5}) end)
hs.hotkey.bind({"ctrl", "alt"}, "5", function() hs.window.focusedWindow():moveToUnit({0.3, 0.5, 0.3, 0.5}) end)
hs.hotkey.bind({"ctrl", "alt"}, "6", function() hs.window.focusedWindow():moveToUnit({0.6, 0.5, 0.4, 0.5}) end)

hs.loadSpoon("EmmyLua")
