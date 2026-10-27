@echo off
REM JavaScript XMI Validator - Windows CLI Runner
REM Usage: run-validation.bat <path_to_xmi_file_or_url> [options]

if "%~1"=="" (
    echo Error: No XMI file or URL provided.
    echo Usage: run-validation.bat ^<path_to_xmi_file_or_url^> [options]
    exit /b 1
)

echo Starting Stateless XMI Validator...
echo Target: %1

npx.cmd tsx src/cli/index.ts %*

