$startupDir = [System.Environment]::GetFolderPath("Startup")
Get-ChildItem $PSScriptRoot -Filter '*.ahk' | ForEach-Object {
    Write-Host "Creating link to $(Join-Path $startupDir $_.Name) from $($_.FullName)"
    New-Item -ItemType SymbolicLink -Path (Join-Path $startupDir $_.Name) -Value $_.FullName
}
