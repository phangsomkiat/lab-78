$jdk=(Get-ChildItem -Directory .jdk | Select-Object -First 1).FullName
Write-Output "Using JAVA_HOME=$jdk"
$env:JAVA_HOME = $jdk
$env:PATH = "$env:JAVA_HOME\bin;$env:PATH"
.\mvnw.cmd -DskipTests clean package
