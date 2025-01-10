/*  =========================================================================
    $File: $
    $Date: $
    $Revision: $
    $Creator: Joey Lapegna $
    $Notice: (c) Copyright 2025 Beachhouse Games LLC, All Rights Reserved. $
    ========================================================================= */

    #include <windows.h>

    int CALLBACK
    WinMain(HINSTANCE hInstance,
            HINSTANCE hPrevInstance,
            LPSTR lpCmdLine,
            int nCmdShow)
    {
        MessageBoxA(0, "This is handmade!", "Handmade Hero", MB_OK|MB_ICONINFORMATION);
        return(0);
    }
    