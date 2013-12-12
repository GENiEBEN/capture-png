#Include Gdip.ahk
#Singleinstance force

SysGet, ScreenWidth, 78
SysGet, ScreenHeight, 79

Gui Add, Picture, x0 y0, watermark.png

Gui Margin, 1,1
Gui +AlwaysOnTop -Caption +ToolWindow -Owner

Gui Show, x0 y0, OandaOverlay
WinSet, Transparent, 50, OandaOverlay
;WinSet, TransColor, FFFFFF, OandaOverlay



file=%A_ScriptDir%\Screenshot_%A_Now%.png

nl:=0
nt:=0
nw:=ScreenWidth
nh:=ScreenHeight
pToken:=Gdip_Startup()
pBitmap:=Gdip_BitmapFromScreen(nL "|" nT "|" nW "|" nH)
Gdip_SaveBitmapToFile(pBitmap,file, 0)
Gdip_Shutdown(pToken)
ExitApp