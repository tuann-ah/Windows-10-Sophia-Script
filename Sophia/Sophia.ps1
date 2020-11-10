<#
	.SYNOPSIS
	Default preset file for "Windows 10 Sophia Script"

	Version: v5.1.1
	Date: 09.10.2020
	Copyright (c) 2020 farag & oZ-Zo

	Thanks to all http://forum.ru-board.com members involved

	.DESCRIPTION
	Supported Windows 10 versions: 2004 (20H1)/2009 (20H2), 19041/19042, Home/Pro/Enterprise, x64

	Due to the fact that the script includes more than 270 functions, you must read the entire preset file carefully
	and comment out/uncomment those functions that you do/do not want to be executed
	Every tweak in a preset file has its' corresponding function to restore the default settings

	Running the script is best done on a fresh install because running it on wrong tweaked system may result in errors occurring

	PowerShell must be run with elevated privileges
	Set execution policy to be able to run scripts only in the current PowerShell session:
		Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force

	.EXAMPLE
	PS C:\> .\Sophia.ps1

	.NOTES
	http://forum.ru-board.com/topic.cgi?forum=62&topic=30617#15
	https://habr.com/en/post/521202/
	https://forums.mydigitallife.net/threads/powershell-script-setup-windows-10.81675/
	https://www.reddit.com/r/PowerShell/comments/go2n5v/powershell_script_setup_windows_10/

	.LINK
	https://github.com/farag2/Windows-10-Sophia-Script
#>

#Requires -RunAsAdministrator
#Requires -Version 5.1

Clear-Host

Remove-Module -Name Sophia -Force -ErrorAction Ignore
Import-Module -Name .\Sophia.psd1 -PassThru -Force

Import-LocalizedData -BindingVariable Global:Localization

# Checking
Check

# Create a restore point
CreateRestorePoint

#region Privacy & Telemetry
# Disable the "Connected User Experiences and Telemetry" service (DiagTrack)
DisableTelemetryServices
# Enable the "Connected User Experiences and Telemetry" service (DiagTrack)
# EnableTelemetryServices

# Set the OS level of diagnostic data gathering to minimum
SetMinimalDiagnosticDataLevel
# Set the default OS level of diagnostic data gathering
# SetDefaultDiagnosticDataLevel

# Turn off Windows Error Reporting for the current user
DisableWindowsErrorReporting
# Turn on Windows Error Reporting for the current user
# EnableWindowsErrorReporting

# Change Windows feedback frequency to "Never" for the current user
DisableWindowsFeedback
# Change Windows Feedback frequency to "Automatically" for the current user
# EnableWindowsFeedback

# Turn off diagnostics tracking scheduled tasks
DisableScheduledTasks
# Turn on diagnostics tracking scheduled tasks
# EnableScheduledTasks

# Do not use sign-in info to automatically finish setting up device and reopen apps after an update or restart (current user only)
DisableSigninInfo
# Use sign-in info to automatically finish setting up device and reopen apps after an update or restart (current user only)
# EnableSigninInfo

# Do not let websites provide locally relevant content by accessing language list (current user only)
DisableLanguageListAccess
# Let websites provide locally relevant content by accessing language list (current user only)
# EnableLanguageListAccess

# Do not allow apps to use advertising ID (current user only)
DisableAdvertisingID
# Allow apps to use advertising ID (current user only)
# EnableAdvertisingID

# Do not let apps on other devices open and message apps on this device, and vice versa (current user only)
DisableShareAcrossDevices
# Let apps on other devices open and message apps on this device, and vice versa (current user only)
# EnableShareAcrossDevices

# Do not show the Windows welcome experiences after updates and occasionally when I sign in to highlight what's new and suggested (current user only)
DisableWindowsWelcomeExperience
# Show the Windows welcome experiences after updates and occasionally when I sign in to highlight what's new and suggested (current user only)
# EnableWindowsWelcomeExperience

# Get tip, trick, and suggestions as you use Windows (current user only)
# EnableWindowsTips
# Do not get tip, trick, and suggestions as you use Windows (current user only)
DisableWindowsTips

# Do not show suggested content in the Settings app (current user only)
DisableSuggestedContent
# Show suggested content in the Settings app (current user only)
# EnableSuggestedContent

# Turn off automatic installing suggested apps (current user only)
DisableAppsSilentInstalling
# Turn on automatic installing suggested apps (current user only)
# EnableAppsSilentInstalling

# Do not suggest ways I can finish setting up my device to get the most out of Windows (current user only)
DisableWhatsNewInWindows
# Suggest ways I can finish setting up my device to get the most out of Windows
# EnableWhatsNewInWindows

# Do not offer tailored experiences based on the diagnostic data setting (current user only)
DisableTailoredExperiences
# Offer tailored experiences based on the diagnostic data setting
# EnableTailoredExperiences

# Disable Bing search in the Start Menu
DisableBingSearch
# Enable Bing search in the Start Menu
# EnableBingSearch
#endregion Privacy & Telemetry

#region UI & Personalization
# Show "This PC" on Desktop (current user only)
ShowThisPC
# Do not show "This PC" on Desktop (current user only)
# HideThisPC

# Do not use check boxes to select items (current user only)
DisableCheckBoxes
# Use check boxes to select items (current user only)
# EnableCheckBoxes

# Show hidden files, folders, and drives (current user only)
ShowHiddenItems
# Do not show hidden files, folders, and drives (current user only)
# HideHiddenItems

# Show file name extensions (current user only)
ShowFileExtensions
# Do not show file name extensions (current user only)
# HideFileExtensions

# Do not hide folder merge conflicts (current user only)
ShowMergeConflicts
# Hide folder merge conflicts (current user only)
# HideMergeConflicts

# Open File Explorer to: "This PC" (current user only)
OpenFileExplorerToThisPC
# Open File Explorer to: "Quick access" (current user only)
# OpenFileExplorerToQuickAccess

# Do not show Cortana button on the taskbar (current user only)
HideCortanaButton
# Show Cortana button on the taskbar (current user only)
# ShowCortanaButton

# Do not show sync provider notification within File Explorer (current user only)
HideOneDriveFileExplorerAd
# Show sync provider notification within File Explorer (current user only)
# ShowOneDriveFileExplorerAd

# Do not show Task View button on the taskbar (current user only)
HideTaskViewButton
# Show Task View button on the taskbar (current user only)
# ShowTaskViewButton

# Do not show People button on the taskbar (current user only)
HidePeopleTaskbar
# Show People button on the taskbar (current user only)
# ShowPeopleTaskbar

# Show seconds on the taskbar clock (current user only)
ShowSecondsInSystemClock
# Do not show seconds on the taskbar clock (current user only)
# HideSecondsInSystemClock

# Do not show when snapping a window, what can be attached next to it (current user only)
DisableSnapAssist
# Show when snapping a window, what can be attached next to it (current user only)
# EnableSnapAssist

# Always open the file transfer dialog box in the detailed mode (current user only)
FileTransferDialogDetailed
# Always open the file transfer dialog box in the compact mode (current user only)
# FileTransferDialogCompact

# Show the ribbon expanded in File Explorer (current user only)
FileExplorerRibbonExpanded
# Do not show the ribbon expanded in File Explorer (current user only)
# FileExplorerRibbonMinimized

# Display recycle bin files delete confirmation
EnableRecycleBinDeleteConfirmation
# Do not display recycle bin files delete confirmation
# DisableRecycleBinDeleteConfirmation

# Hide the "3D Objects" folder from "This PC" and "Quick access" (current user only)
Hide3DObjects
# Show the "3D Objects" folder from "This PC" and "Quick access" (current user only)
# Show3DObjects

# Do not show frequently used folders in "Quick access" (current user only)
HideQuickAccessFrequentFolders
# Show frequently used folders in "Quick access" (current user only)
# ShowQuickAccessFrequentFolders

# Do not show recently used files in Quick access (current user only)
HideQuickAccessRecentFiles
# Show recently used files in Quick access (current user only)
# ShowQuickAccessShowRecentFiles

# Hide the search box or the search icon from the taskbar (current user only)
HideTaskbarSearch
# Show the search box from the taskbar (current user only)
# ShowTaskbarSearch

# Do not show the "Windows Ink Workspace" button on the taskbar (current user only)
HideWindowsInkWorkspace
# Show the "Windows Ink Workspace" button in taskbar (current user only)
# ShowWindowsInkWorkspace

# Always show all icons in the notification area (current user only)
ShowTrayIcons
# Do not show all icons in the notification area (current user only)
# HideTrayIcons

# Unpin "Microsoft Edge" and "Microsoft Store" from the taskbar (current user only)
UnpinTaskbarEdgeStore

# View the Control Panel icons by: large / small icons (current user only)
# ControlPanelLargeIcons
ControlPanelSmallIcons
# View the Control Panel icons by: category (current user only)
# ControlPanelCategoryIcons

# Set the Windows mode color scheme to the light (current user only)
# WindowsColorSchemeLight
# Set the Windows mode color scheme to the dark (current user only)
WindowsColorSchemeDark

# Set the default app mode color scheme to the light (current user only)
# AppModeLight
# Set the default app mode color scheme to the dark (current user only)
AppModeDark

# Do not show the "New App Installed" indicator
DisableNewAppInstalledNotification
# Show the "New App Installed" indicator
# EnableNewAppInstalledNotification

# Do not show user first sign-in animation after the upgrade
HideFirstSigninAnimation
# Show user first sign-in animation the upgrade
# ShowFirstSigninAnimation

# Set the quality factor of the JPEG desktop wallpapers to maximum (current user only)
JPEGWallpapersQualityMax
# Set the quality factor of the JPEG desktop wallpapers to default (current user only)
# JPEGWallpapersQualityDefault

# Start Task Manager in expanded mode (current user only)
TaskManagerWindowExpanded
# Start Task Manager in compact mode (current user only)
# TaskManagerWindowCompact

# Show a notification when your PC requires a restart to finish updating
ShowRestartNotification
# Do not show a notification when your PC requires a restart to finish updating
# HideRestartNotification

# Do not add the "- Shortcut" suffix to the file name of created shortcuts (current user only)
DisableShortcutsSuffix
# Add the "- Shortcut" suffix to the file name of created shortcuts (current user only)
# EnableShortcutsSuffix

# Use the PrtScn button to open screen snipping (current user only)
EnablePrtScnSnippingTool
# Do not use the PrtScn button to open screen snipping (current user only)
# DisablePrtScnSnippingTool
#endregion UI & Personalization

#region OneDrive
# Uninstall OneDrive
UninstallOneDrive

# Install OneDrive (current user only)
# InstallOneDrive
#endregion OneDrive

#region System
# Turn on Storage Sense (current user only)
# EnableStorageSense
# Turn off Storage Sense (current user only)
DisableStorageSense

# Run Storage Sense every month (current user only)
# StorageSenseMonthFrequency
# Run Storage Sense during low free disk space (default value) (current user only)
# StorageSenseDefaultFrequency

# Delete temporary files that apps aren't using (current user only)
# EnableStorageSenseTempFiles
# Do not delete temporary files that apps aren't using (current user only)
# DisableStorageSenseTempFiles

# Delete files in recycle bin if they have been there for over 30 days (current user only)
# EnableStorageSenseRecycleBin
# Do not delete files in recycle bin if they have been there for over 30 days (current user only)
# DisableStorageSenseRecycleBin

# Disable hibernation if the device is not a laptop
# DisableHibernate
# Turn on hibernate
EnableHibernate

# Change the %TEMP% environment variable path to the %SystemDrive%\Temp (both machine-wide, and for the current user)
# SetTempPath
# Change %TEMP% environment variable path to the %LOCALAPPDATA%\Temp (default value) (both machine-wide, and for the current user)
# SetDefaultTempPath

# Enable Windows 260 character path limit
EnableWin32LongPaths
# Disable Windows 260 character path limit
# DisableWin32LongPaths

# Display the Stop error information on the BSoD
EnableBSoDStopError
# Do not display the Stop error information on the BSoD
# DisableBSoDStopError

# Change "Behavior of the elevation prompt for administrators in Admin Approval Mode" to "Elevate without prompting"
DisableAdminApprovalMode
# Change "Behavior of the elevation prompt for administrators in Admin Approval Mode" to "Prompt for consent for non-Windows binaries" (default value)
# EnableAdminApprovalMode

# Turn on access to mapped drives from app running with elevated permissions with Admin Approval Mode enabled
EnableMappedDrivesAppElevatedAccess
# Turn off access to mapped drives from app running with elevated permissions with Admin Approval Mode enabled
# DisableMappedDrivesAppElevatedAccess

# Opt out of the Delivery Optimization-assisted updates downloading
DisableDeliveryOptimization
# Opt-in to the Delivery Optimization-assisted updates downloading
# EnableDeliveryOptimization

# Always wait for the network at computer startup and logon for workgroup networks
# AlwaysWaitNetworkStartup
# Never wait for the network at computer startup and logon for workgroup networks
# NeverWaitNetworkStartup

# Do not let Windows decide which printer should be the default one (current user only)
DisableWindowsManageDefaultPrinter
# Let Windows decide which printer should be the default one (current user only)
# EnableWindowsManageDefaultPrinter

# Disable the following Windows features
DisableWindowsFeatures
# Enable the following Windows features
# EnableWindowsFeatures

<#
	Install the Windows Subsystem for Linux (WSL)

	https://github.com/farag2/Windows-10-Setup-Script/issues/43
	https://github.com/microsoft/WSL/issues/5437
#>
# InstallWSL

<#
	Download and install the Linux kernel update package
	Set WSL 2 as the default version when installing a new Linux distribution
	Run the function only after WSL installed and PC restart

	https://github.com/microsoft/WSL/issues/5437
#>
# SetupWSL

<#
	Disable swap file in WSL
	Use only if the %TEMP% environment variable path changed

	https://github.com/microsoft/WSL/issues/5437
#>
# DisableWSLSwap

<#
	Enable swap file in WSL

	https://github.com/microsoft/WSL/issues/5437
#>
# EnableWSLSwap

# Uninstall the Windows Subsystem for Linux (WSL2)
# UninstallWSL

# Disable certain Feature On Demand v2 (FODv2) capabilities
DisableWindowsCapabilities

# Opt-in to Microsoft Update service, so to receive updates for other Microsoft products
# EnableUpdatesMicrosoftProducts

# Opt-out of Microsoft Update service, so not to receive updates for other Microsoft products
DisableUpdatesMicrosoftProducts

# Do not let UWP apps run in the background, except the followings... (current user only)
DisableBackgroundUWPApps
# Let UWP apps run in the background (current user only)
# EnableBackgroundUWPApps

# Set the power management scheme on "High performance" if device is a desktop
# DesktopPowerManagementScheme
# Set the power management scheme on "Balanced" (default value)
DefaultPowerManagementScheme

# Use latest installed .NET runtime for all apps
EnableLatestInstalled.NET
# Do not use latest installed .NET runtime for all apps
# DisableLatestInstalled.NET

# Do not allow the computer (if device is not a laptop) to turn off the network adapters to save power
DisallowPCTurnOffDevice
# Allow the computer to turn off the network adapters to save power
# AllowPCTurnOffDevice

# Set the default input method to the English language
SetEnglishDefaultInputMethod
# Reset the default input method
# ResetDefaultInputMethod

# Enable Windows Sandbox
EnableWindowsSandbox
# Disable Windows Sandbox
# DisableWindowsSandbox

<#
	Change the location of the user folders to any drives root (current user only)
	It is suggested to move it to any disks root of your choice using the interactive menu by default
	User files or folders won't me moved to a new location
#>
ChangeUserShellFolderLocation
<#
	Change the location of the user folders to the default values (current user only)
	User files or folders won't me moved to the new location
#>
# SetDefaultUserShellFolderLocation

# Save screenshots by pressing Win+PrtScr to the Desktop folder (current user only)
# WinPrtScrDesktopFolder
# Save screenshots by pressing Win+PrtScr to the Pictures folder (default value) (current user only)
# WinPrtScrDefaultFolder

<#
	Run troubleshooters automatically, then notify
	In order this feature to work the OS level of diagnostic data gathering must be set to "Full"
#>
# AutomaticRecommendedTroubleshooting
<#
	Ask me before running troubleshooters (default value)
	In order this feature to work the OS level of diagnostic data gathering must be set to "Full"
#>
# DefaultRecommendedTroubleshooting

# Launch folder windows in a separate process (current user only)
# EnableFoldersLaunchSeparateProcess
# Do not folder windows in a separate process (current user only)
# DisableFoldersLaunchSeparateProcess

# Disable and delete reserved storage after the next update installation
DisableReservedStorage
# Turn on reserved storage
# EnableReservedStorage

# Disable help lookup via F1 (current user only)
DisableF1HelpPage
# Turn on Help page opening by F1 key (current user only)
# EnableF1HelpPage

# Turn on Num Lock at startup
EnableNumLock
# Turn off Num Lock at startup
# DisableNumLock

# Do not activate StickyKey after tapping the Shift key 5 times (current user only)
DisableStickyShift
# Activate StickyKey after tapping the Shift key 5 times (current user only)
# EnableStickyShift

# Do not use AutoPlay for all media and devices (current user only)
DisableAutoplay
# Use AutoPlay for all media and devices (current user only)
# EnableAutoplay

# Disable thumbnail cache removal
DisableThumbnailCacheRemoval
# Enable thumbnail cache removal
# EnableThumbnailCacheRemoval

# Automatically save my restartable apps when signing out and restart them after signing in (current user only)
# EnableSaveRestartableApps
# Do not automatically save my restartable apps when signing out and restart them after signing in
# DisableSaveRestartableApps

# Enable "Network Discovery" and "File and Printers Sharing" for workgroup networks
# EnableNetworkDiscovery
# Disable "Network Discovery" and "File and Printers Sharing" for workgroup networks
# DisableNetworkDiscovery

# Automatically adjust active hours for me based on daily usage
# EnableSmartActiveHours
# Do not automatically adjust active hours for me based on daily usage
DisableSmartActiveHours

# Restart this device as soon as possible when a restart is required to install an update
# EnableDeviceRestartAfterUpdate
# Do not restart this device as soon as possible when a restart is required to install an update
DisableDeviceRestartAfterUpdate
#endregion System

#region Start menu
# Do not show recently added apps in the Start menu
HideRecentlyAddedApps
# Show recently added apps in the Start menu
# ShowRecentlyAddedApps

# Do not show app suggestions in the Start menu
HideAppSuggestions
# Show app suggestions in the Start menu
# ShowAppSuggestions

# Run the Command Prompt shortcut from the Start menu as Administrator
RunCMDShortcutElevated
# Run the Command Prompt shortcut from the Start menu as user
# RunCMDShortcutUser

# Unpin all the Start tiles
UnpinAllStartTiles

<#
	Pin the "Control Panel" shortcut to Start within syspin

	http://www.technosys.net/products/utils/pintotaskbar
	SHA256: 6967E7A3C2251812DD6B3FA0265FB7B61AADC568F562A98C50C345908C6E827
#>
# PinControlPanel

<#
	Pin the old-style "Devices and Printers" shortcut to Start within syspin

	http://www.technosys.net/products/utils/pintotaskbar
	SHA256: 6967E7A3C2251812DD6B3FA0265FB7B61AADC568F562A98C50C345908C6E827
#>
# PinDevicesPrinters

<#
	Pin the Command Prompt" shortcut to Start within syspin

	http://www.technosys.net/products/utils/pintotaskbar
	SHA256: 6967E7A3C2251812DD6B3FA0265FB7B61AADC568F562A98C50C345908C6E827
#>
# PinCommandPrompt
#endregion Start menu

#region UWP apps
<#
	Uninstall UWP apps
	A dialog box that enables the user to select packages to remove
	App packages will not be installed for new users if "Uninstall for All Users" is checked
#>
UninstallUWPApps

<#
	Open Microsoft Store "HEVC Video Extensions from Device Manufacturer" page
	The extension can be installed without Microsoft account for free instead of $0.99
	"Movies & TV" app required
#>
# InstallHEVC

# Turn off Cortana autostarting
DisableCortanaAutostart
# Turn on Cortana autostarting
# EnableCortanaAutostart

# Check for UWP apps updates
CheckUWPAppsUpdates
#endregion UWP apps

#region Gaming
# Turn off Xbox Game Bar
DisableXboxGameBar
# Turn on Xbox Game Bar
# EnableXboxGameBar

# Turn off Xbox Game Bar tips
DisableXboxGameTips
# Turn on Xbox Game Bar tips
# EnableXboxGameTips

<#
	Set "High performance" in graphics performance preference for an app
	Only with a dedicated GPU
#>
# SetAppGraphicsPerformance

<#
	Turn on hardware-accelerated GPU scheduling. Restart needed
	Only with a dedicated GPU and WDDM verion is 2.7 or higher
#>
# EnableGPUScheduling
# Turn off hardware-accelerated GPU scheduling. Restart needed
# DisableGPUScheduling
#endregion Gaming

#region Scheduled tasks
<#
	Create a task to clean up unused files and Windows updates in the Task Scheduler
	A minute before the task starts, a warning in the Windows action center will appear
	The task runs every 90 days
#>
# CreateCleanUpTask
# Delete a task to clean up unused files and Windows updates in the Task Scheduler
# DeleteCleanUpTask

# Create a task to clear the %SystemRoot%\SoftwareDistribution\Download folder in the Task Scheduler
# The task runs on Thursdays every 4 weeks
# CreateSoftwareDistributionTask
# Delete a task to clear the %SystemRoot%\SoftwareDistribution\Download folder in the Task Scheduler
# DeleteCSoftwareDistributionTask

<#
	Create a task to clear the %TEMP% folder in the Task Scheduler
	The task runs every 62 days
#>
# CreateTempTask
# Delete a task to clear the %TEMP% folder in the Task Scheduler
# DeleteTempTask
#endregion Scheduled tasks

#region Microsoft Defender & Security
# Enable Controlled folder access and add protected folders
# AddProtectedFolders
# Remove all added protected folders
# RemoveProtectedFolders

# Allow an app through Controlled folder access
# AddAppControlledFolder
# Remove all allowed apps through Controlled folder access
# RemoveAllowedAppsControlledFolder

# Add a folder to the exclusion from Microsoft Defender scanning
# AddDefenderExclusionFolder
# Remove all excluded folders from Microsoft Defender scanning
# RemoveDefenderExclusionFolders

# Add a file to the exclusion from Microsoft Defender scanning
# AddDefenderExclusionFile
# Remove all excluded files from Microsoft Defender scanning
# RemoveDefenderExclusionFiles

# Turn on Microsoft Defender Exploit Guard network protection
# EnableNetworkProtection
# Turn off Microsoft Defender Exploit Guard network protection
DisableNetworkProtection

# Turn on detection for potentially unwanted applications and block them
# EnablePUAppsDetection
# Turn off detection for potentially unwanted applications and block them
DisabledPUAppsDetection

# Run Microsoft Defender within a sandbox
EnableDefenderSandbox
# Do not run Microsoft Defender within a sandbox
# DisableDefenderSandbox

# Dismiss Microsoft Defender offer in the Windows Security about signing in Microsoft account
DismissMSAccount

# Dismiss Microsoft Defender offer in the Windows Security about turning on the SmartScreen filter for Microsoft Edge
DismissSmartScreenFilter

# Turn on events auditing generated when a process is created or starts
# EnableAuditProcess
# Turn off events auditing generated when a process is created or starts
# DisableAuditProcess

<#
	Include command line in process creation events
	In order this feature to work events auditing must be enabled ("EnableAuditProcess" function)
#>
# EnableAuditCommandLineProcess
# Do not include command line in process creation events
# DisableAuditCommandLineProcess

<#
	Create "Process Creation" Event Viewer Custom View
	In order this feature to work events auditing and command line in process creation events must be enabled ("EnableAuditProcess" function)
#>
# CreateEventViewerCustomView
# Remove "Process Creation" Event Viewer Custom View
# RemoveEventViewerCustomView

# Log for all Windows PowerShell modules
# EnablePowerShellModulesLogging
# Do not log for all Windows PowerShell modules
# DisablePowerShellModulesLogging

# Log all PowerShell scripts input to the Windows PowerShell event log
# EnablePowerShellScriptsLogging
# Do not log all PowerShell scripts input to the Windows PowerShell event log
# DisablePowerShellScriptsLogging

# Do not check apps and files within Microsofot Defender SmartScreen
DisableAppsSmartScreen
# Check apps and files within Microsofot Defender SmartScreen
# EnableAppsSmartScreen

# Prevent SmartScreen from marking files that have been downloaded from the Internet as unsafe (current user only)
DisableSaveZoneInformation
# Mark files that have been downloaded from the Internet as unsafe within SmartScreen (current user only)
# EnableSaveZoneInformation

# Turn off Windows Script Host (current user only)
DisableWindowsScriptHost
# Turn on Windows Script Host (current user only)
# EnableWindowsScriptHost
#endregion Microsoft Defender & Security

#region Context menu
# Add the "Extract all" item to Windows Installer (.msi) context menu
AddMSIExtractContext
# Remove the "Extract all" item from Windows Installer (.msi) context menu
# RemoveMSIExtractContext

# Add the "Install" item to the .cab archives context menu
AddCABInstallContext
# Remove the "Install" item from the .cab archives context menu
# RemoveCABInstallContext

# Add the "Run as different user" item to the .exe files types context menu
AddExeRunAsDifferentUserContext
# Remove the "Run as different user" item from the .exe files types context menu
# RemoveExeRunAsDifferentUserContext

# Hide the "Cast to Device" item from the context menu
HideCastToDeviceContext
# Show the "Cast to Device" item in the context menu
# ShowCastToDeviceContext

# Hide the "Share" item from the context menu
HideShareContext
# Show the "Share" item in the context menu
# ShowShareContext

# Hide the "Edit with Paint 3D" item from the context menu
HideEditWithPaint3DContext
# Show the "Edit with Paint 3D" item in the context menu
# ShowEditWithPaint3DContext

# Hide the "Edit with Photos" item from the context menu
HideEditWithPhotosContext
# Show the "Edit with Photos" item in the context menu
# ShowEditWithPhotosContext

# Hide the "Create a new video" item from the context menu
HideCreateANewVideoContext
# Show the "Create a new video" item in the context menu
# ShowCreateANewVideoContext

# Hide the "Edit" item from the images context menu
HideImagesEditContext
# Show the "Edit" item from in images context menu
# ShowImagesEditContext

# Hide the "Print" item from the .bat and .cmd context menu
HidePrintCMDContext
# Show the "Print" item in the .bat and .cmd context menu
# ShowPrintCMDContext

# Hide the "Include in Library" item from the context menu
HideIncludeInLibraryContext
# Show the "Include in Library" item in the context menu
# ShowIncludeInLibraryContext

# Hide the "Send to" item from the folders context menu
HideSendToContext
# Show the "Send to" item in the folders context menu
# ShowSendToContext

# Hide the "Turn on BitLocker" item from the context menu
# HideBitLockerContext
# Show the "Turn on BitLocker" item in the context menu
# ShowBitLockerContext

# Remove the "Bitmap image" item from the "New" context menu
RemoveBitmapImageNewContext
# Restore the "Bitmap image" item in the "New" context menu
# RestoreBitmapImageNewContext

# Remove the "Rich Text Document" item from the "New" context menu
RemoveRichTextDocumentNewContext
# Restore the "Rich Text Document" item in the "New" context menu
# RestoreRichTextDocumentNewContext

# Remove the "Compressed (zipped) Folder" item from the "New" context menu
RemoveCompressedFolderNewContext
# Restore the "Compressed (zipped) Folder" item from the "New" context menu
# RestoreCompressedFolderNewContext

# Make the "Open", "Print", and "Edit" context menu items available, when more than 15 items selected
EnableMultipleInvokeContext
# Disable the "Open", "Print", and "Edit" context menu items for more than 15 items selected
# DisableMultipleInvokeContext

# Hide the "Look for an app in the Microsoft Store" item in the "Open with" dialog
DisableUseStoreOpenWith
# Show the "Look for an app in the Microsoft Store" item in the "Open with" dialog
# EnableUseStoreOpenWith

# Hide the "Previous Versions" tab from files and folders context menu and also the "Restore previous versions" context menu item
DisablePreviousVersionsPage
# Show the "Previous Versions" tab from files and folders context menu and also the "Restore previous versions" context menu item
# EnablePreviousVersionsPage
#endregion Context menu

<#
	Simulate pressing F5 to refresh the desktop
	Refresh desktop icons, environment variables, taskbar
	Restart the Start menu
#>
Refresh

# Errors output
Errors
