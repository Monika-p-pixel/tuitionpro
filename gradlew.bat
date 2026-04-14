@rem Gradle startup script for Windows
@if "%DEBUG%"=="" @echo off
set JAVA_EXE=java.exe
set WRAPPER_JAR=%~dp0gradle\wrapper\gradle-wrapper.jar
"%JAVA_EXE%" -classpath "%WRAPPER_JAR%" org.gradle.wrapper.GradleWrapperMain %*
