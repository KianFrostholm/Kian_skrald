resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

author 'Kian Frostholm'

description 'Et simpelt bt-target script som giver spillere muligheder for at undersøge skraldespande'

client_scripts {
    'lib/Proxy.lua',
    'lib/Tunnel.lua',
    'config.lua',
    'client.lua'
}

server_scripts {
    '@vrp/lib/utils.lua',
    'config.lua',
    'server.lua'
}


