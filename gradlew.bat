@echo off
set DIR=%~dp0
if not exist "%DIR%gradle\wrapper\gradle-wrapper.jar" (
  echo Gradle wrapper JAR missing; using preinstalled Gradle to generate it...
  gradle -q wrapper --gradle-version 8.9
)
"%DIR%gradlew" %*
