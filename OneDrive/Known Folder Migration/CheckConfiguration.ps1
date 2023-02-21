$downloadsPath = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path

#check if downloads path is set to subfolder in onedrive path
if ($downloadsPath -like "*OneDrive - JCS Solutions LLC*") {
    Write-Host "Downloads path is correctly configured in OneDrive"
} else {
    Write-Error "Downloads path is not correctly configured in OneDrive"
}