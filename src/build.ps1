# Create build directory if it doesn't exist
New-Item -ItemType Directory -Path "../../build" -Force | Out-Null

# Store current location and move to build directory
Push-Location "../../build"

# Show current directory (equivalent to pwd)
Get-Location

# Compile using cl (assuming Visual Studio environment is set up)
# We need to check if cl is available first
if (Get-Command cl -ErrorAction SilentlyContinue) {
    cl.exe -Zi ../handmade/src/win32_handmade.cpp user32.lib
} else {
    Write-Error "cl.exe not found. Make sure you're running this from a Developer Command Prompt for VS or have run vcvarsall.bat"
}

# Return to original directory
Pop-Location