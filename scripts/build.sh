#!/bin/bash
SCRIPT_DIR="$(dirname "$0")"

if [[ "$1" == "--restart" || "$1" == "-r" ]]; then
    taskkill /F /IM Resonite.exe 2>/dev/null
    taskkill /F /IM Renderite.Host.exe 2>/dev/null
    taskkill /F /IM cloudflared.exe 2>/dev/null
fi

dotnet build "$SCRIPT_DIR/../DesktopBuddy/DesktopBuddy.csproj"

if [[ "$1" == "--restart" || "$1" == "-r" ]]; then
    start steam://rungameid/2519830
fi
