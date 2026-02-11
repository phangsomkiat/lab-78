$urls = @(
    'https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.8+7/OpenJDK17U-jdk_x64_windows_hotspot_17.0.8_7.zip',
    'https://download.bell-sw.com/java/17.0.8+7/bellsoft-jdk17.0.8+7-windows-amd64.zip',
    'https://cdn.azul.com/zulu/bin/zulu17.48.21-ca-jdk17.0.8-win_x64.zip'
)
$out = '.jdk\\jdk.zip'
Remove-Item $out -ErrorAction SilentlyContinue -Force
foreach ($u in $urls) {
    Write-Output "Trying $u"
    try {
        Invoke-WebRequest -Uri $u -OutFile $out -UseBasicParsing -Headers @{ 'User-Agent' = 'Mozilla/5.0' } -TimeoutSec 120
        if (Test-Path $out) { Write-Output "DL_OK:$u"; break }
    } catch {
        Write-Output "Failed: $u"
    }
}
if (-not (Test-Path $out)) { Write-Output 'DOWNLOAD_FAILED'; exit 2 }
Expand-Archive -Path $out -DestinationPath .jdk -Force
Get-ChildItem -Directory .jdk | Select-Object -First 1 | ForEach-Object { Write-Output $_.FullName }
