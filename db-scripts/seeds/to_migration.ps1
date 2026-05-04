# Pegar o diretorio atual
$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

# Arquivo de saida de todos os sql
$outPutFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

# Verificação do arquivo
if (Test-Path -Path $outPutFile) {
    Remove-Item -Path $outPutFile
}

# Pega o conteúdo dos arquivos
$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter "*.sql" -File | Sort-Object -Property Name

foreach ($file in $sqlFiles) {
    Get-Content -Path $file.FullName | Out-File -Append -FilePath $outPutFile 
    "GO" | Out-File -Append -FilePath $outPutFile
}

Write-Host "Todos os arquivos foram combinados no: $outPutFile"
