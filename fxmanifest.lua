
fx_version 'cerulean'
game 'gta5'
lua54 'yes'

shared_script '@es_extended/imports.lua'

client_script 'client/main.lua'

ui_page 'web/index.html'

files{
    'web/style.css',
    'web/script.js',
    'web/index.html'
}

dependency 'es_extended'