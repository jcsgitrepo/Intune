This is packaged via IntuneWinAppUtil - packaged as an app because gov/dod/whatever doesn't have PR yet (wtf Microsoft).

No need for excessive checks because the environment is tightly controlled and machines are configured how they are expected to be for this to run.

But I might add some checking just for shits and giggles.

Step 1)

Put the following files in a folder:

-MoveDownloadsToOneDrive.ps1
-RemoveOneDriveDownloads.ps1
-CheckConfiguration.ps1

Step 2)

Use IntuneWinAppUtil to package the app - setup file when prompted is MoveDownloadsToOneDrive.ps1

Step 3)

Make new win32 app in Intune, call it whatever you want idc

Step 4)

On Program tab, use the Install-Command and Uninstall-Command for the command fields.

Set install behavior to user.

Device restart - no specific action.

Step 5)

Requirements tab choose whatever

Step 6)

Rules format - custom detection script.

Upload CheckConfiguration.ps1

Leave options as no

Step 7)

Rest of the tabs do your thing