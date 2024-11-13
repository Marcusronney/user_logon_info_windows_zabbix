# Script para contar o número de usuários conectados

# Obtém as sessões ativas de usuários conectados
$sessions = query user

# Remove a linha do cabeçalho e linhas vazias
$connectedUsers = $sessions | Where-Object { $_ -and $_ -notmatch 'USERNAME' }

# Conta o número de usuários conectados
$userCount = $connectedUsers.Count

# Exibe o número de usuários conectados
Write-Host $userCount