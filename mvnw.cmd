@echo off
setlocal

set "JAVA_HOME=C:\Program Files\Java\jdk-17.0.18"
set "MAVEN_CMD=C:\Program Files\apache-maven-3.9.13\bin\mvn.cmd"

if not exist "%JAVA_HOME%\bin\java.exe" (
    echo Java 17 not found at "%JAVA_HOME%".
    exit /b 1
)

if not exist "%MAVEN_CMD%" (
    echo Maven not found at "%MAVEN_CMD%".
    exit /b 1
)

set "PATH=%JAVA_HOME%\bin;%PATH%"
call "%MAVEN_CMD%" %*
