#UseHook On
F12::

WinGet, WindowID, ID, A
WinSet, Style, ^0xC40000, ahk_id %WindowID%
WinMove, ahk_id %WindowID%, , 0, 0, A_ScreenWidth, A_ScreenHeight

Return
