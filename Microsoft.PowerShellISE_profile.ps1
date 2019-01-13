 # load function 
 . C:\YourPath\Get-ClipArray.ps1
 
 # create keyboard shortcut
 $psISE.CurrentPowerShellTab.AddOnsMenu.SubMenus.Add(
   'Clipboard to Array',
   {
     Get-ClipArray
   },
   'Control+Alt+C'
 )