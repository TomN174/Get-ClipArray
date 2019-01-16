 # load function 
 . C:\YourPath\Get-ClipArray.ps1
 
 # create keyboard shortcut
 $psISE.CurrentPowerShellTab.AddOnsMenu.SubMenus.Add(
   'Paste Clipboard as Array',
   {
     Get-ClipArray
   },
   'Control+Alt+V'
 )