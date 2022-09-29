shared_script '@secwrap/init.lua' fx_version 'cerulean'

game 'gta5'
ui_page {
    'html/index.html',
}

client_scripts {
	'config.lua',
	'client/main.lua'
}

server_scripts {
	'config.lua',
	'server/main.lua'
}

files {
	'html/index.html',
	'html/script.js',
	'html/style.css',
	'html/levelup.gif',
    'html/audio/*.ogg',
}