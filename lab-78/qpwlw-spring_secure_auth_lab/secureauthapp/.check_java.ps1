$jdk=(Get-ChildItem -Directory .jdk | Select-Object -First 1).FullName
& "$jdk\bin\java.exe" -version
