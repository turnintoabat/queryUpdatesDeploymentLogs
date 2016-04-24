 Function Get-FileName($initialDirectory){   
	[System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") |
	Out-Null

	$OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
	$OpenFileDialog.initialDirectory = $initialDirectory
	$OpenFileDialog.filter = "All files (*.*)| *.*"
	$OpenFileDialog.ShowDialog() | Out-Null
	$OpenFileDialog.filename
}

#Open a file dialog window to get the source file
$serverList = Get-Content -Path (Get-FileName)

$saveLoc = ""

foreach($server in $serverList){
cp \\$server\c$\windows\ccm\logs\UpdatesDeployment.log "$saveLoc\$server"UpdatesDeployment.log"
}