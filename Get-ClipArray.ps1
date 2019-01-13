#requires -Version 5.0
function Get-ClipArray {
    [CmdletBinding(SupportsShouldProcess)]
    param()
  
    [System.Collections.ArrayList]$ClipIn = (Get-Clipboard).Trim()
    #remove last empty line
    if (!$ClipIn[-1]) {
        $ClipIn.Removeat($ClipIn.count - 1)
        $ClipIn
    }
    $Clip = "`$clip = '$($ClipIn -join "', '")' "
    $Clip
    if ($psISE) {
        $psISE.CurrentFile.Editor.InsertText($Clip)
        Write-Verbose 'ISE'
    }
    elseif ($psEditor) {
        $psEditor.GetEditorContext().CurrentFile.InsertText($Clip)
        Write-Verbose 'VS Code'
    }
 }
  