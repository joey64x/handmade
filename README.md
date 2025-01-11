# Handmade Hero joeyx64 Edition
Project working through the Handmade Hero videos created by Casey Muratori

## Visual Studio Code Terminal Configuration Startup
In the first episode of Handmade Hero, Casey sets up a batch file to initialize the environment for development. I don't use emacs or command prompt. I'm using Visual Studio Code and PowerShell. To do this, I needed to add this entry to the settings in VS Code:
```
{
    "terminal.integrated.profiles.windows": {
        "MSVC PowerShell": {
            "source": "PowerShell",
            "args": [
            "-NoExit",
            "-ExecutionPolicy", "Bypass",
            "-Command",
            "& 'C:/Program Files/Microsoft Visual Studio/2022/Community/Common7/Tools/Launch-VsDevShell.ps1' -SkipAutomaticLocation"
        ]
        }
    },
    "terminal.integrated.defaultProfile.windows": "MSVC PowerShell"
}
```

## Running the Project
- From run build.bat in command prompt or build.ps1 in powershell
