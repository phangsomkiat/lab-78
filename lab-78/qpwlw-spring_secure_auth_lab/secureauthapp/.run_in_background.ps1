$jdk=(Get-ChildItem -Directory .jdk | Select-Object -First 1).FullName
$env:JAVA_HOME=$jdk
$env:PATH="$env:JAVA_HOME\bin;$env:PATH"
Start-Process -FilePath "$env:JAVA_HOME\bin\java.exe" -ArgumentList '-jar','target/secureauthapp-0.0.1-SNAPSHOT.jar' -WorkingDirectory (Get-Location) -WindowStyle Hidden -PassThru | Write-Output
