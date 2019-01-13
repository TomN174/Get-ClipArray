# load function
 . C:\YourPath\Get-ClipArray.ps1

# Register Command in VS Code
Register-EditorCommand -Name "MyClipArray" -DisplayName "Get Clipboard and convert to Array" -ScriptBlock {Get-ClipArray} -SuppressOutput