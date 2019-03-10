# load function
 . C:\YourPath\Get-ClipArray.ps1

# Register Command in VS Code
Register-EditorCommand -Name "MyClipArray" -DisplayName "Paste Clipboard as Array" -ScriptBlock {Get-ClipArray} -SuppressOutput