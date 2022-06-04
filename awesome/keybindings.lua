--
-- ██ ▄█▀▓█████▓██   ██▓ ▄▄▄▄    ██▓ ███▄    █   ▄████   ██████ 
-- ██▄█▒ ▓█   ▀ ▒██  ██▒▓█████▄ ▓██▒ ██ ▀█   █  ██▒ ▀█▒▒██    ▒ 
-- ▓███▄░ ▒███    ▒██ ██░▒██▒ ▄██▒██▒▓██  ▀█ ██▒▒██░▄▄▄░░ ▓██▄   
-- ▓██ █▄ ▒▓█  ▄  ░ ▐██▓░▒██░█▀  ░██░▓██▒  ▐▌██▒░▓█  ██▓  ▒   ██▒
-- ▒██▒ █▄░▒████▒ ░ ██▒▓░░▓█  ▀█▓░██░▒██░   ▓██░░▒▓███▀▒▒██████▒▒
-- ▒ ▒▒ ▓▒░░ ▒░ ░  ██▒▒▒ ░▒▓███▀▒░▓  ░ ▒░   ▒ ▒  ░▒   ▒ ▒ ▒▓▒ ▒ ░
-- ░ ░▒ ▒░ ░ ░  ░▓██ ░▒░ ▒░▒   ░  ▒ ░░ ░░   ░ ▒░  ░   ░ ░ ░▒  ░ ░
-- ░ ░░ ░    ░   ▒ ▒ ░░   ░    ░  ▒ ░   ░   ░ ░ ░ ░   ░ ░  ░  ░  
-- ░  ░      ░  ░░ ░      ░       ░           ░       ░       ░  
--              ░ ░           ░                                 

local awful = require("awful")

awful.key({"Mod4"},"Left", function()
    awful.client.focus.bydirection("left")
end, {description="Focus left" , group = "client"}),

awful.key({"Mod4"},"Right", function()
    awful.client.focus.bydirection("right")
end, {description="Focus right" , group = "client"}),
