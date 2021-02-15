#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance

CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.

Loop
{ 
ImageSearch, FoundX, FoundY, 1483, 271, 1612, 325, *50 *TransBlack F:\Elevation data\58.bmp
if (ErrorLevel = 0)
   {
   MsgBox Found.   
   Gui, -Caption +AlwaysOnTop +ToolWindow +LastFound
   Gui, Margin, 0, 0 ; Remove margins to get perfect alignment with center of screen
   Gui, Add, Picture, , Richmond.png ; Picture file name, in the same folder as the script
   Controlgetpos, , , picW, picH, , ; Store picture width and height in variables
   xPos := A_ScreenWidth/2 - picW/2
   yPos := A_ScreenHeight/2 - picH/2 ; Used to align picture center with screen centerGui, Show, x%xPos% y%yPos% NA ; Crosshair can be moved by manually setting X and Y numbers
   Gui, Color, 0000FF ; Set background color. You might need to change this color to one not contained in the crosshair
   WinSet, TransColor, 0000FF ; Make the background color transparent
   Sleep 5000
   }
else
   Sleep 1000
}
*/