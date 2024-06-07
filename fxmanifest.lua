fx_version 'bodacious'
game 'gta5'

description 'KL-Pool'
author 'KL-Scripts & ottersek'
version '1.0.3'

client_scripts {
    'config.lua',
    'client/*.lua',
}

server_scripts { 
    'config.lua',
    'server/run.lua',
}

ui_page('client/html/sound.html')

files {
    'client/html/sound.html',
    'client/html/*.ogg',
}