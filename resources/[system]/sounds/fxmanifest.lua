fx_version "bodacious"
game "gta5"
lua54 "yes"

ui_page "web-side/index.html"

client_scripts {
	"@vrp/lib/Utils.lua",
	"config.lua",
	"client-side/main.lua",
	"client-side/events.lua",
	"client-side/exports/*.lua",
	"client-side/compatibility.lua"
}

server_scripts {
	"@vrp/lib/Utils.lua",
	"config.lua",
	"server-side/main.lua",
	"server-side/exports/*.lua"
}

files {
	"web-side/index.html",
	"web-side/scripts/*.js",
	"web-side/sounds/*.mp3"
}
