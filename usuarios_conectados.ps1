# Executa o comando quser para listar todas as sessões de usuários conectadas
$sessions = quser

# Verifica se há sessões ativas
if ($sessions) {
    Write-Host "Sessões conectadas:"
    $sessions | ForEach-Object { Write-Host $_ }
} else {
    Write-Host "Nenhuma sessão conectada."
}
