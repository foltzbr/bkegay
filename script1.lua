local script1URL = "https://raw.githubusercontent.com/seuusuario/repositorio/refs/heads/main/script1.lua"
local script2URL = "https://raw.githubusercontent.com/seuusuario/repositorio/refs/heads/main/script2.lua"

print(":rocket: Executando Script 2...")

-- Executar VoidHub
loadstring(game:HttpGet("https://raw.githubusercontent.com/abcconfirm/yuuuur/refs/heads/main/voidhub.lua", true))()

-- Preparar Script 1 para o próximo teleporte (reiniciando o ciclo)
if syn and syn.queue_on_teleport then
    syn.queue_on_teleport('loadstring(game:HttpGet("' .. script1URL .. '", true))()')
    print(":white_check_mark: Script 1 preparado para próximo teleporte!")
elseif queue_on_teleport then
    queue_on_teleport('loadstring(game:HttpGet("' .. script1URL .. '", true))()')
    print(":white_check_mark: Script 1 preparado para próximo teleporte!")
else
    print(":x: queue_on_teleport não disponível")
end

print(":arrows_counterclockwise: Ciclo continuado: 2 → 1 → 2 → 1 → ...") 
