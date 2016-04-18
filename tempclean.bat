:: Temp File Cleaner v3 by Kyle Weller
:: Converted from Powershell
:: Added CCleaner cleaning locations
:: Added System locations
:: Moved System Locations out of for loop

@echo off

if /i "%WIN_VER:~0,9%"=="Microsoft" (
	for /D %%x in ("%SystemDrive%\Documents and Settings\*") do (
		del /F /S /Q "%%x\Application Data\Adobe\Flash Player\*" 2>NUL
		del /F /S /Q "%%x\Application Data\Macromedia\Flash Player\*" 2>NUL
		del /F /S /Q "%%x\Application Data\Microsoft\Dr Watson\*" 2>NUL
		del /F /S /Q "%%x\Application Data\Microsoft\Windows\WER\ReportArchive\*" 2>NUL
		del /F /S /Q "%%x\Application Data\Microsoft\Windows\WER\ReportQueue\*" 2>NUL
		del /F /S /Q "%%x\Application Data\Sun\Java\*" 2>NUL
		del /F /S /Q "%%x\Local Settings\Application Data\ApplicationHistory\*" 2>NUL
		del /F /S /Q "%%x\Local Settings\Application Data\Google\Chrome\User Data\Default\Cache\*" 2>NUL
		del /F /S /Q "%%x\Local Settings\Application Data\Google\Chrome\User Data\Default\JumpListIconsOld\*" 2>NUL
		del /F /S /Q "%%x\Local Settings\Application Data\Google\Chrome\User Data\Default\JumpListIcons\*" 2>NUL
		del /F /S /Q "%%x\Local Settings\Application Data\Google\Chrome\User Data\Default\Local Storage\*" 2>NUL
		del /F /S /Q "%%x\Local Settings\Application Data\Google\Chrome\User Data\Default\Media Cache\*" 2>NUL
		del /F /S /Q "%%x\Local Settings\Application Data\Microsoft\Internet Explorer\Recovery\*" 2>NUL
		del /F /S /Q "%%x\Local Settings\Application Data\Microsoft\Terminal Server Client\Cache\*" 2>NUL
		del /F /S /Q "%%x\Local Settings\Temp\*" 2>NUL
		del /F /S /Q "%%x\Local Settings\Temporary Internet Files\*" 2>NUL
		del /F /S /Q "%%x\My Documents\*.tmp" 2>NUL
		del /F /S /Q "%%x\Recent\*" 2>NUL
	)
) else (
	for /D %%x in ("%SystemDrive%\Users\*") do ( 
		del /F /S /Q "%%x\AppData\LocalLow\Sun\Java\*" 2>NUL
		del /F /S /Q "%%x\Appdata\LocalLow\Sun\Java\Deployment\cache\*" 2>NUL
		del /F /S /Q "%%x\Appdata\LocalLow\Sun\Java\Deployment\javaws\cache\*" 2>NUL
		del /F /S /Q "%%x\Appdata\LocalLow\Sun\Java\Deployment\Logs\*" 2>NUL
		del /F /S /Q "%%x\Appdata\LocalLow\Sun\Java\Deployment\tmp\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Microsoft\Silverlight\is\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Microsoft\Silverlight\*.tmp" 2>NUL
		del /F /S /Q "%%x\Appdata\LocalLow\Microsoft\Silverlight\is\*" 2>NUL
		del /F /S /Q "%%x\Appdata\LocalLow\Microsoft\Silverlight\*.tmp" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Google\Chrome\User Data\Default\Cache\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Google\Chrome\User Data\Default\Cache\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Google\Chrome\User Data\Default\Application Cache\Cache\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Google\Chrome\User Data\Default\JumpListIconsOld\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Google\Chrome\User Data\Default\JumpListIcons\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Google\Chrome\User Data\Default\Local Storage\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Google\Chrome\User Data\Default\Media Cache\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Google\Chrome\User Data\Default\GPUCache\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Google\Chrome\User Data\ShaderCache\GPUCache\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Microsoft\Internet Explorer\Recovery\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Microsoft\Terminal Server Client\Cache\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Microsoft\Windows\Caches\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Microsoft\Windows\Explorer\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Microsoft\Windows\INetCache\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Microsoft\Windows\Temporary Internet Files\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Microsoft\Windows\WER\ReportArchive\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Microsoft\Windows\WER\ReportQueue\*" 2>NUL
		del /F /S /Q "%%x\AppData\Local\Microsoft\Windows\WebCache\*" 2>NUL
		::del /F /S /Q "%%x\AppData\Local\Temp\*" 2>NUL
		del /F /S /Q "%%x\AppData\Roaming\Adobe\Flash Player\*" 2>NUL
		del /F /S /Q "%%x\AppData\Roaming\Macromedia\Flash Player\*" 2>NUL
		::del /F /S /Q "%%x\Documents\*.tmp" 2>NUL
		del /F /S /Q "%%x\Appdata\Microsoft\Feeds Cache\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Mozilla\Firefox\cache\*"  2>NUL
		::del /F /S /Q "%%x\Appdata\Local\Mozilla\Firefox\Profiles\*\cache\*" 2>NUL
		::del /F /S /Q "%%x\Appdata\Local\Mozilla\Firefox\Profiles\*\cache2\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\Macromedia\Flashp~1\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Chrome\User Data\Default\Pepper Data\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Opera\Opera\cache\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\Microsoft\Internet Explorer\UserData\Low\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\Apple Computer\MobileSync\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\Apple Computer\Logs\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\Apple Computer\iTunes\iPhone Software Updates\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\Macromedia\Flash Player\macromedia.com\support\flashplayer\sys\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Google\Chrome\User Data\Default\Pepper Data\Shockwave Flash\CacheWritableAdobeRoot\AssetCache\*"  2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\Macromedia\Flash Player\#SharedObjects\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\Mozilla\Firefox\Crash Reports\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\Adobe\Flash Player\AssetCache\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Microsoft\Windows\INetCache\Content.IE5\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Microsoft\Windows\INetCache\Low\Content.IE5*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Microsoft\Terminal Server Client\Cache\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Microsoft\Windows\Temporary Internet Files\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Microsoft\SkyDrive\logs\*.log" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Microsoft\SkyDrive\logs\*.etl" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Microsoft.Bing_*\AC\Microsoft\CryptnetUrlCache\Content\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Microsoft.Bing_*\AC\Microsoft\CryptnetUrlCache\MetaData\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Microsoft.Bing_*\AC\INetCache\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Microsoft.Bing_*\AC\INetCookies\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Microsoft.Bing_*\AC\INetHistory\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Microsoft.Bing_*\AC\AppCache\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Microsoft.Bing_*\AC\Temp\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Microsoft.Bing_*\AC\Microsoft\Internet Explorer\DOMStore\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Packages\Microsoft.Bing_*\AC\PRICache\*_sync.dac" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Packages\Microsoft.Bing_*\TempState\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\MicrosoftEdge\Cookies\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\INetCookies\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\MicrosoftEdge\Cookies\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!001\INetCookies\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!001\MicrosoftEdge\Cookies\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!001\MicrosoftEdge\User\Default\DOMStore\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!002\INetCookies\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!002\MicrosoftEdge\Cookies\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!002\MicrosoftEdge\User\Default\DOMStore\*" 2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\SUPERAntiSpyware.com\SUPERAntiSpyware\Logs\*.log" 2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\SUPERAntiSpyware.com\SUPERAntiSpyware\Logs\*.dmp" 2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\SUPERAntiSpyware.com\SUPERAntiSpyware\Logs\*.SDB" 2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\SUPERAntiSpyware.com\SUPERAntiSpyware\AppLogs\*.log" 2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\SUPERAntiSpyware.com\SUPERAntiSpyware\AppLogs\*.dmp" 2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\SUPERAntiSpyware.com\SUPERAntiSpyware\AppLogs\*.SDB" 2>NUL
		del /F /S /Q "%%x\Appdata\Roaming\SUPERAntiSpyware.com\SUPERAntiSpyware\AppLogs\*.SDB" 2>NUL
		del /F /S /Q "%%x\Appdata\Local\Apple Computer\Safari\Cache.db" 2>NUL

	)
)
:: Cleanup System Files
del /F /S /Q "%ProgramData%\AVG2012\Log\*.log" 2>NUL
del /F /S /Q "%ProgramData%\AVG2012\scanlogs\*.log" 2>NUL
del /F /S /Q "%ProgramData%\AVG2012\update\backup\*" 2>NUL
del /F /S /Q "%ProgramData%\AVG2012\Emc\Log\*.log*" 2>NUL
del /F /S /Q "%ProgramData%\Malwarebytes\Malwarebytes Anti-Malware\Logs\*.xml*" 2>NUL
del /F /S /Q "%ProgramData%\Malwarebytes\Malwarebytes Anti-Malware\Quarantine\*" 2>NUL
del /F /S /Q "%ProgramData%\Microsoft\Windows Defender\Scans\History\Results\Quick\*" 2>NUL
del /F /S /Q "%ProgramData%\Microsoft\Windows Defender\Scans\History\Results\Resource\*" 2>NUL
del /F /S /Q "%ProgramData%\Microsoft\Windows Defender\Support\*.log" 2>NUL
del /F /S /Q "%ProgramData%\Microsoft\Windows\WER\ReportQueue\*" 2>NUL
del /F /S /Q "%ProgramData%\Microsoft\Windows\WER\ReportArchive\*" 2>NUL

:: Clean up Misc Log files
del /F /S /Q "%SystemDrive%\Windows\Logs\CBS\*.log" 2>NUL
del /F /S /Q "%SystemDrive%\Windows\Logs\CBS\*.cab" 2>NUL
del /F /S /Q "%SystemDrive%\Windows\Logs\DISM\*.log" 2>NUL
del /F /S /Q "%SystemDrive%\Windows\Logs\DISM\*.cab" 2>NUL

:: Clean up memory dump files
del /F /S /Q "%SystemDrive%\Windows\MEMORY.DMP" 2>NUL
del /F /S /Q "%SystemDrive%\Windows\Minidump\*.dmp" 2>NUL

:: This empties all recycle bins on Windows 7 and up
rmdir /s /q %SystemDrive%\$Recycle.Bin
:: This empties all recycle bins on Windows XP and Server 2003
rmdir /s /q %SystemDrive%\RECYCLER

echo Finished Cleaning!
timeout /t 5
DEL "%~f0"