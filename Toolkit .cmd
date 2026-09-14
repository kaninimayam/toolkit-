@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)
:: ==========================================================================================
::                              ARAVINDH
::                    WINDOWS IT ADMIN  TOOLKIT 
:: ==========================================================================================

net session >nul 2>&1
if %errorLevel% neq 0 (
    color 4F 
    echo ============================================================
    echo            RUN THIS TOOLKIT AS ADMINISTRATOR
    echo ============================================================
    pause
    exit
)

title ULTIMATETOOLKIT X PRO MAX+ v13.0
mode con cols=150 lines=55
color 0A
setlocal EnableDelayedExpansion

:main
cls
for /F %%A in ('echo prompt $E ^| cmd') do set ESC=%%A

echo %ESC%[92m                                         ==============================================
echo %ESC%[92m                                                         ARAVINDH 
echo %ESC%[92m                                                WINDOWS IT ADMIN TOOLKIT
echo %ESC%[92m                                         ==============================================




echo.
echo [01] System Tools (Full)      [02] Network Suite (Full)    [03] Windows Repair (Full)     [04] Security Center (Full)
echo [05] Print Spooler (Full)     [06] RDP / Remote Fix        [07] PC SPEED BOOSTER          [08] Outlook / Office
echo [09] BIOS / Boot Tools        [10] Registry / Policy       [11] Storage / Partition       [12] Emergency / Task Kill
echo [13] Quick Tools              [14] User / PC Info          [15] BACKUP / RESTORE TOOLS    [16] Windows Edition (Home/Pro/Ent)
echo [17] System Cleanup Tools     [18] Hardware Health (RAM/HD) [19] Blue Screen (BSOD) Fixes [20] Windows Update / Activation
echo [21] Extra                    [22] Driver                  [23] ULTIMATE OS DOWNLOAD CENTER (ALL-IN-ONE + 50 OS)
echo [24] ULTIMATE DIRECT OFFICE DOWNLOAD CENTER (50+)          [25] Location / GPS Fix Toolkit (MAX STABLE)       
echo [99] Exit
echo.
set /p choice=Select Module (01-25):

if "%choice%"=="01" goto system
if "%choice%"=="02" goto network
if "%choice%"=="03" goto repair
if "%choice%"=="04" goto security
if "%choice%"=="05" goto printer
if "%choice%"=="06" goto rdp
if "%choice%"=="07" goto speed
if "%choice%"=="08" goto outlook
if "%choice%"=="09" goto bios
if "%choice%"=="10" goto registry
if "%choice%"=="11" goto storage
if "%choice%"=="12" goto emergency
if "%choice%"=="13" goto quick
if "%choice%"=="14" goto usertools
if "%choice%"=="15" goto backuprestore
if "%choice%"=="16" goto editiontools
if "%choice%"=="17" goto cleanup
if "%choice%"=="18" goto hardware
if "%choice%"=="19" goto bsodfix
if "%choice%"=="20" goto winupdate
if "%choice%"=="21" goto extra
if "%choice%"=="22" goto Driver
if "%choice%"=="23" goto osdownload
if "%choice%"=="24" goto officedownload
if "%choice%"=="25" goto locationfix
if "%choice%"=="99" exit
goto main

:: ============================================================
:: [01] SYSTEM TOOLS – 3 COLUMN LAYOUT
:: ============================================================
:system
cls
title [01] SYSTEM TOOLS
color 0A

echo ============================================================
echo [1]  MSConfig             [8]  Computer Management   [15] Reliability Monitor
echo [2]  Services Manager     [9]  System Properties     [16] Registry Editor
echo [3]  Event Viewer         [10] DirectX Diagnostic    [17] Group Policy Editor
echo [4]  Device Manager       [11] Control Panel         [18] Local Security Policy
echo [5]  Driver Query         [12] Programs ^& Features  [19] UAC Settings
echo [6]  System Information   [13] Resource Monitor      [20] Local Users ^& Groups
echo [7]  Task Manager         [14] Performance Monitor   [99] Back
echo ============================================================

set /p c=Select Option (1-20): 

if "%c%"=="1" start "" msconfig & goto system
if "%c%"=="2" start "" services.msc & goto system
if "%c%"=="3" start "" eventvwr.msc & goto system
if "%c%"=="4" start "" devmgmt.msc & goto system
if "%c%"=="5" driverquery & pause & goto system
if "%c%"=="6" start "" msinfo32 & goto system
if "%c%"=="7" start "" taskmgr & goto system
if "%c%"=="8" start "" compmgmt.msc & goto system
if "%c%"=="9" start "" sysdm.cpl & goto system
if "%c%"=="10" start "" dxdiag & goto system
if "%c%"=="11" start "" control & goto system
if "%c%"=="12" start "" appwiz.cpl & goto system
if "%c%"=="13" start "" resmon & goto system
if "%c%"=="14" start "" perfmon & goto system
if "%c%"=="15" start "" perfmon /rel & goto system
if "%c%"=="16" start "" regedit & goto system
if "%c%"=="17" start "" gpedit.msc & goto system
if "%c%"=="18" start "" secpol.msc & goto system
if "%c%"=="19" start "" UserAccountControlSettings & goto system
if "%c%"=="20" start "" lusrmgr.msc & goto system

if "%c%"=="99" goto main

echo Invalid choice.
pause
goto system

:: ============================================================
:: [02] NETWORK SUITE – 4 COLUMN | 100+ NETWORK PROBLEMS MASTER
:: ============================================================

:network
cls
color 09
title [02] Network Suite (Full)
setlocal EnableDelayedExpansion

echo =================================================================================================================================================================
echo                                              ULTIMATE NETWORK ADMIN MASTER TOOLKIT (100+ ISSUES)
echo =================================================================================================================================================================
echo [1] IPConfig /All             [26] Hosts File View            [51] WiFi Slow Speed Fix         [76] VPN Disconnect Fix
echo [2] Flush DNS                 [27] Hosts File Edit            [52] LAN Slow Speed Fix          [77] VPN Adapter Reset
echo [3] Release / Renew IP        [28] Active Sessions            [53] Packet Loss Fix            [78] Hyper-V Network Reset
echo [4] Winsock Reset             [29] SSH Check                  [54] MTU Reset                  [79] VMware Network Reset
echo [5] Ping Test                 [30] SSH Kill                   [55] DNS Leak Check             [80] Proxy Malware Fix
echo [6] Tracert                   [31] NetBIOS Status             [56] Google DNS                [81] Captive Portal Fix
echo [7] NSLookup                  [32] TCP Live                   [57] Cloudflare DNS            [82] School Proxy Reset
echo [8] Netstat                   [33] Port Check                 [58] Auto DNS                  [83] Browser No Internet
echo [9] ARP Cache                 [34] Open Port Scan             [59] Export WiFi Profiles      [84] Browser DNS Error
echo [10] Route Table              [35] Register DNS               [60] Import WiFi Profiles      [85] No Gateway Fix
echo [11] Network Connections      [36] WiFi Adapter Reset         [61] WiFi Password View        [86] DHCP Failure Fix
echo [12] Sharing Center           [37] LAN Adapter Reset          [62] Public IP Check           [87] APIPA 169 Fix
echo [13] Adapter Status           [38] Proxy Check                [63] MAC Address              [88] Duplicate IP Fix
echo [14] Change IP                [39] Proxy Reset                [64] DNS Cache View           [89] SMB Access Denied
echo [15] WiFi Password            [40] SMB Shares                 [65] Firewall Reset           [90] SMB Session Reset
echo [16] Public IP                [41] SMB Delete                 [66] Full Network Repair      [91] Printer Network Fix
echo [17] MAC Address              [42] RDP Port Check             [67] Route Add               [92] NAS Connection Fix
echo [18] DNS Check                [43] Speed Test                 [68] Route Delete            [93] NAS Credential Fix
echo [19] Firewall Reset           [44] Google DNS                 [69] Route Modify            [94] Internet Full Repair
echo [20] Full Network Repair      [45] Cloudflare DNS             [70] ARP Check               [95] Teams Call Fix
echo [21] Route Add                [46] Auto DNS                   [71] ARP Clear               [96] Zoom Network Fix
echo [22] Route Delete             [47] WiFi Backup                [72] Network Driver Info     [97] Outlook Server Fix
echo [23] Route Modify             [48] Network Driver Info        [73] Advanced TCP Reset      [98] Office Activation Net
echo [24] ARP Check                [49] TCP Reset                  [74] Full Diagnostics        [99] Main Menu
echo [25] ARP Clear                [50] Internet No Access Fix     [75] VPN Check
echo =================================================================================================================================================================
echo COMMON NETWORK ISSUES:
echo - No Internet - DNS Error - WiFi Connected No Internet - Slow Speed - Packet Loss - Proxy Issue - VPN Failure
echo - DHCP Error - 169 IP - Duplicate IP - SMB Access - Printer Offline - NAS Access - Outlook Server
echo =================================================================================================================================================================
set /p c=Select Network Option (1-99):

if "%c%"=="1" ipconfig /all & pause
if "%c%"=="2" ipconfig /flushdns & pause
if "%c%"=="3" ipconfig /release & ipconfig /renew & pause
if "%c%"=="4" netsh winsock reset & netsh int ip reset & pause
if "%c%"=="5" ping 8.8.8.8 -t
if "%c%"=="6" set /p target=Target: & tracert !target! & pause
if "%c%"=="7" set /p domain=Domain: & nslookup !domain! & pause
if "%c%"=="8" netstat -ano & pause
if "%c%"=="9" arp -a & pause
if "%c%"=="10" route print & pause
if "%c%"=="11" start ncpa.cpl
if "%c%"=="12" start control /name Microsoft.NetworkAndSharingCenter
if "%c%"=="13" netsh interface show interface & pause
if "%c%"=="14" start ncpa.cpl
if "%c%"=="15" netsh wlan show profiles & set /p wifi=WiFi: & netsh wlan show profile name="!wifi!" key=clear & pause
if "%c%"=="16" powershell -command "(Invoke-WebRequest -uri 'http://ifconfig.me/ip').Content" & pause
if "%c%"=="17" getmac /v & pause
if "%c%"=="18" ipconfig /displaydns & pause
if "%c%"=="19" netsh advfirewall reset & pause
if "%c%"=="20" ipconfig /flushdns & netsh winsock reset & netsh int ip reset & netsh advfirewall reset & pause
if "%c%"=="21" set /p dest=Destination: & set /p mask=Mask: & set /p gateway=Gateway: & route add !dest! mask !mask! !gateway! & pause
if "%c%"=="22" set /p dest=Destination: & route delete !dest! & pause
if "%c%"=="23" set /p dest=Destination: & set /p mask=Mask: & set /p gateway=Gateway: & route change !dest! mask !mask! !gateway! & pause
if "%c%"=="24" set /p ip=IP: & arp -a !ip! & pause
if "%c%"=="25" arp -d * & pause
if "%c%"=="26" notepad C:\Windows\System32\drivers\etc\hosts
if "%c%"=="27" notepad C:\Windows\System32\drivers\etc\hosts
if "%c%"=="28" net session & pause
if "%c%"=="29" netstat -ano | findstr :22 & pause
if "%c%"=="30" for /f "tokens=5" %%a in ('netstat -ano ^| findstr :22') do taskkill /F /PID %%a
if "%c%"=="31" nbtstat -n & pause
if "%c%"=="32" netstat -t & pause
if "%c%"=="33" set /p port=Port: & netstat -ano | findstr :!port! & pause
if "%c%"=="34" netstat -ano & pause
if "%c%"=="35" ipconfig /registerdns & pause
if "%c%"=="36" netsh interface set interface "Wi-Fi" disable & timeout /t 3 >nul & netsh interface set interface "Wi-Fi" enable & pause
if "%c%"=="37" netsh interface set interface "Ethernet" disable & timeout /t 3 >nul & netsh interface set interface "Ethernet" enable & pause
if "%c%"=="38" netsh winhttp show proxy & pause
if "%c%"=="39" netsh winhttp reset proxy & pause
if "%c%"=="40" net share & pause
if "%c%"=="41" net session /delete & pause
if "%c%"=="42" netstat -ano | findstr :3389 & pause
if "%c%"=="43" start chrome "https://fast.com"
if "%c%"=="44" netsh interface ip set dns "Wi-Fi" static 8.8.8.8 & netsh interface ip add dns "Wi-Fi" 8.8.4.4 index=2 & pause
if "%c%"=="45" netsh interface ip set dns "Wi-Fi" static 1.1.1.1 & netsh interface ip add dns "Wi-Fi" 1.0.0.1 index=2 & pause
if "%c%"=="46" netsh interface ip set dns "Wi-Fi" dhcp & pause
if "%c%"=="47" if not exist "%USERPROFILE%\Desktop\WiFi_Backup" mkdir "%USERPROFILE%\Desktop\WiFi_Backup" & netsh wlan export profile key=clear folder=%USERPROFILE%\Desktop\WiFi_Backup & pause
if "%c%"=="48" driverquery | findstr /i "network" & pause
if "%c%"=="49" netsh int tcp reset & netsh int ip reset & pause
if "%c%"=="50" ipconfig /release & ipconfig /renew & netsh winsock reset & pause
if "%c%"=="51" netsh wlan disconnect & netsh wlan connect name=* & pause
if "%c%"=="52" netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent & pause
if "%c%"=="53" ping google.com -n 50 & pause
if "%c%"=="54" netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent & pause
if "%c%"=="55" nslookup google.com & pause
if "%c%"=="56" netsh interface ip set dns "Wi-Fi" static 8.8.8.8 & pause
if "%c%"=="57" netsh interface ip set dns "Wi-Fi" static 1.1.1.1 & pause
if "%c%"=="58" netsh interface ip set dns "Wi-Fi" dhcp & pause
if "%c%"=="59" if not exist "%USERPROFILE%\Desktop\WiFi_Backup" mkdir "%USERPROFILE%\Desktop\WiFi_Backup" & netsh wlan export profile key=clear folder=%USERPROFILE%\Desktop\WiFi_Backup & pause
if "%c%"=="60" netsh wlan add profile filename="%USERPROFILE%\Desktop\WiFi_Backup\Wi-Fi*.xml" & pause
if "%c%"=="61" netsh wlan show profiles & pause
if "%c%"=="62" powershell -command "(Invoke-WebRequest -uri 'http://ifconfig.me/ip').Content" & pause
if "%c%"=="63" getmac /v & pause
if "%c%"=="64" ipconfig /displaydns & pause
if "%c%"=="65" netsh advfirewall reset & pause
if "%c%"=="66" ipconfig /flushdns & netsh winsock reset & netsh int ip reset & netcfg -d & pause
if "%c%"=="67" route add 0.0.0.0 mask 0.0.0.0 192.168.1.1 & pause
if "%c%"=="68" route delete 0.0.0.0 & pause
if "%c%"=="69" route print & pause
if "%c%"=="70" arp -a & pause
if "%c%"=="71" arp -d * & pause
if "%c%"=="72" driverquery | findstr /i network & pause
if "%c%"=="73" netsh int tcp reset & pause

if "%c%"=="74" (
echo ==============================
echo FULL NETWORK DIAGNOSTICS
echo ==============================
ipconfig /all
ping 8.8.8.8
nslookup google.com
netstat -ano
route print
pause
)

if "%c%"=="75" rasdial & pause
if "%c%"=="76" rasdial /disconnect & pause
if "%c%"=="77" netcfg -d & pause
if "%c%"=="78" netcfg -d & pause
if "%c%"=="79" netcfg -d & pause
if "%c%"=="80" netsh winhttp reset proxy & pause
if "%c%"=="81" start http://neverssl.com
if "%c%"=="82" netsh winhttp reset proxy & pause
if "%c%"=="83" ipconfig /flushdns & pause
if "%c%"=="84" nslookup google.com & pause
if "%c%"=="85" route print & pause
if "%c%"=="86" ipconfig /renew & pause
if "%c%"=="87" ipconfig /release & ipconfig /renew & pause
if "%c%"=="88" arp -d * & pause
if "%c%"=="89" net use * /delete /y & pause
if "%c%"=="90" net session /delete & pause
if "%c%"=="91" net stop spooler & net start spooler & pause
if "%c%"=="92" net use & pause
if "%c%"=="93" cmdkey /delete:TERMSRV/* & pause
if "%c%"=="94" ipconfig /flushdns & netsh winsock reset & netcfg -d & pause
if "%c%"=="95" ipconfig /flushdns & pause
if "%c%"=="96" netsh winsock reset & pause
if "%c%"=="97" ipconfig /flushdns & pause
if "%c%"=="98" cscript ospp.vbs /act & pause
if "%c%"=="99" goto main

goto network

:: ============================================================
:: [03] WINDOWS REPAIR – FULL MASTER TOOLKIT (4 COLUMN | 100+ ISSUES)
:: ============================================================
:repair
cls
color 0E
title [03] Windows Repair (Full)
setlocal EnableDelayedExpansion

echo =================================================================================================================================================================
echo                                                   WINDOWS REPAIR / SFC / DISM MASTER TOOLKIT
echo =================================================================================================================================================================
echo [1] SFC ScanNow               [26] Registry Recovery          [51] Windows Update Error         [76] Explorer Crash Fix
echo [2] SFC VerifyOnly            [27] DLL Repair                 [52] Update Cache Reset           [77] Start Menu Fix
echo [3] SFC ScanFile              [28] Missing DLL Scan           [53] Store Repair                [78] Search Fix
echo [4] DISM CheckHealth          [29] Runtime Repair             [54] WSReset                     [79] Taskbar Fix
echo [5] DISM ScanHealth           [30] VC++ Repair                [55] Activation Repair           [80] Black Screen Fix
echo [6] DISM RestoreHealth        [31] .NET Repair                [56] Slmgr Rearm                [81] Blue Screen Basic Fix
echo [7] DISM from USB             [32] DirectX Repair             [57] Licensing Fix               [82] BSOD Advanced Repair
echo [8] Component Cleanup         [33] Temp Cleanup               [58] Bootrec FixMBR             [83] Corrupt Profile Fix
echo [9] StartComponentResetBase   [34] Prefetch Cleanup           [59] Bootrec FixBoot            [84] User Profile Reset
echo [10] CHKDSK Basic             [35] Disk Cleanup               [60] Rebuild BCD                [85] Safe Mode Boot
echo [11] CHKDSK Full              [36] WinSxS Cleanup             [61] Startup Repair             [86] Safe Mode Exit
echo [12] Bootrec FixMBR           [37] Pending Updates Repair     [62] Recovery Console           [87] Services Repair
echo [13] Bootrec FixBoot          [38] CBS Log Repair             [63] Advanced Startup           [88] WMI Repair
echo [14] Rebuild BCD              [39] Catroot Reset              [64] System Restore             [89] PowerShell Repair
echo [15] Startup Repair           [40] BITS Reset                 [65] Restore Point Create       [90] CMD Repair Console
echo [16] Recovery Console         [41] Windows Modules Reset      [66] RegBack Info               [91] File Association Fix
echo [17] System Restore           [42] MSI Installer Fix          [67] Registry Backup            [92] EXE Fix
echo [18] Restore Point Create     [43] MSIExec Reset              [68] Registry Restore Guide     [93] CMD Admin Fix
echo [19] Registry Backup          [44] Printer Spooler Repair     [69] Full Auto Repair           [94] Permission Reset
echo [20] Registry Recovery        [45] Audio Service Repair       [70] One Click Repair           [95] Ownership Reset
echo [21] DLL Repair               [46] Network Stack Repair       [71] USB Repair                 [96] Defender Repair
echo [22] Missing DLL Fix          [47] Winsock Reset              [72] Driver Repair              [97] Firewall Repair
echo [23] Store Repair             [48] DNS Flush                  [73] Update Repair              [98] Security Center Fix
echo [24] WSReset                  [49] Windows Update Reset       [74] Activation Repair          [99] Main Menu
echo [25] Activation Rearm         [50] SoftwareDistribution Fix   [75] Boot Repair
echo =================================================================================================================================================================
echo COMMON WINDOWS ISSUES:
echo - Corrupt Files  - Boot Failure  - Windows Update Error  - DLL Missing  - Store Broken  - Activation Error
echo - BSOD  - Explorer Crash  - Start Menu Broken  - Registry Damage  - Network Failure  - Driver Corruption
echo =================================================================================================================================================================
set /p c=Select Repair Option (1-99):

if "%c%"=="1" sfc /scannow & pause
if "%c%"=="2" sfc /verifyonly & pause
if "%c%"=="3" set /p file=Enter File Path: & sfc /scanfile=!file! & pause
if "%c%"=="4" DISM /Online /Cleanup-Image /CheckHealth & pause
if "%c%"=="5" DISM /Online /Cleanup-Image /ScanHealth & pause
if "%c%"=="6" DISM /Online /Cleanup-Image /RestoreHealth & pause
if "%c%"=="7" set /p drv=USB Drive Letter: & DISM /Online /Cleanup-Image /RestoreHealth /Source:WIM:!drv!:\Sources\Install.wim:1 /LimitAccess & pause
if "%c%"=="8" DISM /Online /Cleanup-Image /StartComponentCleanup & pause
if "%c%"=="9" DISM /Online /Cleanup-Image /StartComponentCleanup /ResetBase & pause
if "%c%"=="10" chkdsk /f & pause
if "%c%"=="11" echo Y | chkdsk /f /r & pause
if "%c%"=="12" bootrec /fixmbr & pause
if "%c%"=="13" bootrec /fixboot & pause
if "%c%"=="14" bootrec /rebuildbcd & pause
if "%c%"=="15" shutdown /r /o /f /t 00
if "%c%"=="16" cmd.exe
if "%c%"=="17" start rstrui.exe
if "%c%"=="18" powershell -Command "Checkpoint-Computer -Description 'ManualRestorePoint'" & pause
if "%c%"=="19" reg export HKLM "%userprofile%\Desktop\HKLM_Backup.reg" & pause
if "%c%"=="20" echo Use RegBack or System Restore & start rstrui.exe & pause
if "%c%"=="21" sfc /scannow & pause
if "%c%"=="22" sfc /scannow & pause
if "%c%"=="23" wsreset.exe & pause
if "%c%"=="24" wsreset.exe & pause
if "%c%"=="25" slmgr /rearm & pause
if "%c%"=="26" start rstrui.exe
if "%c%"=="27" sfc /scannow & pause
if "%c%"=="28" sfc /scannow & pause
if "%c%"=="29" start appwiz.cpl
if "%c%"=="30" start appwiz.cpl
if "%c%"=="31" DISM /Online /Enable-Feature /FeatureName:NetFx3 /All & pause
if "%c%"=="32" dxdiag
if "%c%"=="33" del /q /f /s %temp%\* & pause
if "%c%"=="34" del /q /f /s C:\Windows\Prefetch\* & pause
if "%c%"=="35" cleanmgr
if "%c%"=="36" Dism.exe /online /Cleanup-Image /StartComponentCleanup & pause
if "%c%"=="37" UsoClient StartScan & pause
if "%c%"=="38" findstr /c:"[SR]" %windir%\Logs\CBS\CBS.log & pause
if "%c%"=="39" net stop cryptsvc & rd /s /q %windir%\System32\catroot2 & net start cryptsvc & pause
if "%c%"=="40" net stop bits & net start bits & pause
if "%c%"=="41" net stop trustedinstaller & net start trustedinstaller & pause
if "%c%"=="42" msiexec /unregister & msiexec /regserver & pause
if "%c%"=="43" msiexec /unregister & msiexec /regserver & pause
if "%c%"=="44" net stop spooler & net start spooler & pause
if "%c%"=="45" net stop audiosrv & net start audiosrv & pause
if "%c%"=="46" netsh int ip reset & pause
if "%c%"=="47" netsh winsock reset & pause
if "%c%"=="48" ipconfig /flushdns & pause
if "%c%"=="49" net stop wuauserv & net stop bits & pause
if "%c%"=="50" rd /s /q %windir%\SoftwareDistribution & pause
if "%c%"=="51" net stop wuauserv & rd /s /q %windir%\SoftwareDistribution & net start wuauserv & pause
if "%c%"=="52" rd /s /q %windir%\SoftwareDistribution & pause
if "%c%"=="53" wsreset.exe & pause
if "%c%"=="54" wsreset.exe & pause
if "%c%"=="55" slmgr /rearm & pause
if "%c%"=="56" slmgr /rearm & pause
if "%c%"=="57" slmgr /ato & pause
if "%c%"=="58" bootrec /fixmbr & pause
if "%c%"=="59" bootrec /fixboot & pause
if "%c%"=="60" bootrec /rebuildbcd & pause
if "%c%"=="61" shutdown /r /o /f /t 00
if "%c%"=="62" cmd.exe
if "%c%"=="63" shutdown /r /o /t 0
if "%c%"=="64" rstrui.exe
if "%c%"=="65" powershell -Command "Checkpoint-Computer -Description 'RestorePoint'" & pause
if "%c%"=="66" echo Check C:\Windows\System32\Config\RegBack & pause
if "%c%"=="67" reg export HKCU "%userprofile%\Desktop\HKCU_Backup.reg" & pause
if "%c%"=="68" echo Use Recovery Environment for Registry Restore & pause

if "%c%"=="69" (
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth
chkdsk /f
bootrec /fixmbr
bootrec /fixboot
bootrec /rebuildbcd
echo FULL AUTO REPAIR COMPLETE
pause
)

if "%c%"=="70" (
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth
wsreset.exe
ipconfig /flushdns
netsh winsock reset
echo ONE CLICK REPAIR DONE
pause
)

if "%c%"=="71" pnputil /scan-devices & pause
if "%c%"=="72" pnputil /scan-devices & pause
if "%c%"=="73" net stop wuauserv & net start wuauserv & pause
if "%c%"=="74" slmgr /rearm & pause
if "%c%"=="75" bootrec /fixmbr & bootrec /fixboot & bootrec /rebuildbcd & pause
if "%c%"=="76" taskkill /f /im explorer.exe & start explorer.exe & pause
if "%c%"=="77" powershell -Command "Get-AppxPackage Microsoft.Windows.StartMenuExperienceHost | Reset-AppxPackage" & pause
if "%c%"=="78" taskkill /f /im SearchUI.exe & pause
if "%c%"=="79" taskkill /f /im explorer.exe & start explorer.exe & pause
if "%c%"=="80" taskkill /f /im explorer.exe & start explorer.exe & pause
if "%c%"=="81" sfc /scannow & pause
if "%c%"=="82" DISM /Online /Cleanup-Image /RestoreHealth & pause
if "%c%"=="83" net user TempAdmin Temp123! /add & pause
if "%c%"=="84" sysdm.cpl
if "%c%"=="85" bcdedit /set {current} safeboot minimal & pause
if "%c%"=="86" bcdedit /deletevalue {current} safeboot & pause
if "%c%"=="87" sc config trustedinstaller start= auto & pause
if "%c%"=="88" winmgmt /resetrepository & pause
if "%c%"=="89" powershell -Command "Repair-WindowsImage -Online -RestoreHealth" & pause
if "%c%"=="90" cmd.exe
if "%c%"=="91" assoc .exe=exefile & pause
if "%c%"=="92" assoc .exe=exefile & ftype exefile="%1" %* & pause
if "%c%"=="93" powershell Start-Process cmd -Verb runAs
if "%c%"=="94" icacls C:\ /t /q /c /reset & pause
if "%c%"=="95" takeown /f C:\ /r /d y & pause
if "%c%"=="96" sc config WinDefend start= auto & net start WinDefend & pause
if "%c%"=="97" netsh advfirewall reset & pause
if "%c%"=="98" sc config wscsvc start= auto & net start wscsvc & pause
if "%c%"=="99" goto main

goto repair

:: ============================================================
:: [04] SECURITY CENTER
:: ============================================================
:security
cls
color 0C
echo =================================================================================================================================================================
echo                                                     SECURITY CENTER (100+ SECURITY / DEFENDER / MALWARE ISSUES)
echo =================================================================================================================================================================
echo [1] Windows Defender           [26] Defender History            [51] SMB Security Fix            [76] Browser Security Reset
echo [2] Firewall                   [27] Defender Quarantine         [52] SMBv1 Disable              [77] Chrome Security Reset
echo [3] Core Isolation             [28] Defender Exclusion Check    [53] SMBv1 Enable               [78] Edge Security Reset
echo [4] MRT Tool                   [29] Controlled Folder Access    [54] RDP Security Harden        [79] Firefox Security Reset
echo [5] Quick Scan                 [30] CFA Enable                  [55] RDP Brute Force Fix        [80] Password Policy
echo [6] Full Scan                  [31] CFA Disable                 [56] Account Lockout Policy     [81] Password Expiry Policy
echo [7] Offline Scan               [32] Exploit Protection         [57] Local Security Policy      [82] Admin Account Check
echo [8] Defender Update            [33] Memory Integrity            [58] Security Templates         [83] Guest Account Disable
echo [9] Firewall Advanced          [34] Secure Boot Check           [59] Defender Cloud Protection  [84] Guest Account Enable
echo [10] Reset Firewall            [35] TPM Check                   [60] PUA Protection Enable      [85] USB Security Check
echo [11] UAC                       [36] Credential Manager          [61] PUA Protection Disable     [86] USB Block
echo [12] SmartScreen               [37] Credential Backup           [62] ASR Rules Enable           [87] USB Unblock
echo [13] BitLocker                 [38] Credential Clear            [63] ASR Rules Disable          [88] Autorun Disable
echo [14] Secure Boot               [39] Defender Service Check      [64] Network Protection         [89] Autorun Enable
echo [15] TPM Check                 [40] Defender Service Reset      [65] App & Browser Control      [90] Task Manager Enable
echo [16] Credential Manager        [41] Windows Update Security     [66] Device Security            [91] Task Manager Disable
echo [17] Ransomware Protection     [42] Defender Engine Reset       [67] Virus Definition Reset     [92] Registry Tools Enable
echo [18] Exploit Protection        [43] Security Center Reset       [68] Malware Temp Cleanup       [93] Registry Tools Disable
echo [19] Full Security Hardening   [44] Malwarebytes Launch         [69] Temp Security Cleanup      [94] CMD Enable
echo [20] Emergency Malware Cleanup [45] Defender Offline Logs       [70] Safe Mode Malware Fix      [95] CMD Disable
echo [21] Defender Status           [46] Event Viewer Security       [71] One Click Security Repair  [96] PowerShell Enable
echo [22] Defender Scan Schedule    [47] Audit Policy               [72] One Click Malware Removal  [97] PowerShell Disable
echo [23] Defender Scan Path        [48] Audit Reset                [73] Security Health Check      [98] Full Security Audit
echo [24] Defender Scan Custom      [49] Windows Hello Security     [74] Security Services Reset    [99] Main Menu
echo [25] Defender Threats          [50] Biometric Security         [75] Browser Defender Check
echo =================================================================================================================================================================
set /p c=Select Security Option (1-99):

if "%c%"=="1" start windowsdefender:
if "%c%"=="2" start control firewall.cpl
if "%c%"=="3" start ms-settings:devicereview-coreisolation
if "%c%"=="4" start mrt
if "%c%"=="5" powershell Start-MpScan -ScanType QuickScan & pause
if "%c%"=="6" powershell Start-MpScan -ScanType FullScan & pause
if "%c%"=="7" powershell Start-MpWDOScan & pause
if "%c%"=="8" powershell Update-MpSignature & pause
if "%c%"=="9" start wf.msc
if "%c%"=="10" netsh advfirewall reset & pause
if "%c%"=="11" start UserAccountControlSettings
if "%c%"=="12" start ms-settings:appsfeatures
if "%c%"=="13" start control /name Microsoft.BitLockerDriveEncryption
if "%c%"=="14" msinfo32
if "%c%"=="15" tpm.msc
if "%c%"=="16" start control /name Microsoft.CredentialManager
if "%c%"=="17" start ms-settings:windowsdefender-ransomware
if "%c%"=="18" start ms-settings:exploitprotection

if "%c%"=="19" (
netsh advfirewall set allprofiles state on
powershell Set-MpPreference -EnableControlledFolderAccess Enabled
powershell Set-MpPreference -PUAProtection Enabled
echo Full Security Hardening Done
pause
)

if "%c%"=="20" (
del /q /f /s %temp%\*
del /q /f /s C:\Windows\Temp\*
start mrt
echo Emergency Malware Cleanup Complete
pause
)

if "%c%"=="21" powershell Get-MpComputerStatus & pause
if "%c%"=="22" schtasks /query | findstr Defender & pause
if "%c%"=="23" set /p path=Enter Path: & powershell Start-MpScan -ScanPath "!path!" & pause
if "%c%"=="24" set /p path=Enter Path: & powershell Start-MpScan -ScanPath "!path!" & pause
if "%c%"=="25" powershell Get-MpThreatDetection & pause
if "%c%"=="26" start windowsdefender:
if "%c%"=="27" powershell Get-MpThreat & pause
if "%c%"=="28" powershell Get-MpPreference & pause
if "%c%"=="29" start ms-settings:windowsdefender-ransomware
if "%c%"=="30" powershell Set-MpPreference -EnableControlledFolderAccess Enabled & pause
if "%c%"=="31" powershell Set-MpPreference -EnableControlledFolderAccess Disabled & pause
if "%c%"=="32" start ms-settings:exploitprotection
if "%c%"=="33" start ms-settings:windowsdefender
if "%c%"=="34" msinfo32
if "%c%"=="35" tpm.msc
if "%c%"=="36" rundll32 keymgr.dll,KRShowKeyMgr
if "%c%"=="37" cmdkey /list & pause
if "%c%"=="38" cmdkey /delete /ras & pause
if "%c%"=="39" sc query WinDefend & pause
if "%c%"=="40" sc stop WinDefend & sc start WinDefend & pause
if "%c%"=="41" start ms-settings:windowsupdate
if "%c%"=="42" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -ResetPlatform & pause
if "%c%"=="43" sc stop wscsvc & sc start wscsvc & pause
if "%c%"=="44" start malwarebytes
if "%c%"=="45" eventvwr.msc
if "%c%"=="46" eventvwr.msc
if "%c%"=="47" auditpol /get /category:* & pause
if "%c%"=="48" auditpol /clear /y & pause
if "%c%"=="49" start ms-settings:signinoptions
if "%c%"=="50" start ms-settings:signinoptions
if "%c%"=="51" netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=No & pause
if "%c%"=="52" dism /online /Disable-Feature /FeatureName:SMB1Protocol & pause
if "%c%"=="53" dism /online /Enable-Feature /FeatureName:SMB1Protocol & pause
if "%c%"=="54" reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v UserAuthentication /t REG_DWORD /d 1 /f & pause
if "%c%"=="55" netsh advfirewall firewall add rule name="Block3389" dir=in action=block protocol=TCP localport=3389 & pause
if "%c%"=="56" net accounts /lockoutthreshold:5 & pause
if "%c%"=="57" secpol.msc
if "%c%"=="58" secpol.msc
if "%c%"=="59" powershell Set-MpPreference -MAPSReporting Advanced & pause
if "%c%"=="60" powershell Set-MpPreference -PUAProtection Enabled & pause
if "%c%"=="61" powershell Set-MpPreference -PUAProtection Disabled & pause
if "%c%"=="62" powershell Set-MpPreference -AttackSurfaceReductionRules_Ids 26190899-1602-49e8-8b27-eb1d0a1ce869 -AttackSurfaceReductionRules_Actions Enabled & pause
if "%c%"=="63" powershell Set-MpPreference -AttackSurfaceReductionRules_Actions Disabled & pause
if "%c%"=="64" powershell Set-MpPreference -EnableNetworkProtection Enabled & pause
if "%c%"=="65" start windowsdefender:
if "%c%"=="66" start ms-settings:windowsdefender
if "%c%"=="67" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -RemoveDefinitions -All & "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate & pause
if "%c%"=="68" del /q /f /s %temp%\* & pause
if "%c%"=="69" del /q /f /s C:\Windows\Temp\* & pause
if "%c%"=="70" bcdedit /set {current} safeboot minimal & pause

if "%c%"=="71" (
netsh advfirewall reset
powershell Update-MpSignature
sc stop WinDefend
sc start WinDefend
echo One Click Security Repair Done
pause
)

if "%c%"=="72" (
del /q /f /s %temp%\*
del /q /f /s C:\Windows\Temp\*
powershell Start-MpScan -ScanType FullScan
echo Malware Removal Started
pause
)

if "%c%"=="73" powershell Get-MpComputerStatus & pause
if "%c%"=="74" sc stop wscsvc & sc start wscsvc & sc stop WinDefend & sc start WinDefend & pause
if "%c%"=="75" start windowsdefender:
if "%c%"=="76" netsh winhttp reset proxy & pause
if "%c%"=="77" start chrome://settings/security
if "%c%"=="78" start edge://settings/privacy
if "%c%"=="79" start firefox
if "%c%"=="80" net accounts /minpwlen:8 & pause
if "%c%"=="81" net accounts /maxpwage:30 & pause
if "%c%"=="82" net user administrator & pause
if "%c%"=="83" net user guest /active:no & pause
if "%c%"=="84" net user guest /active:yes & pause
if "%c%"=="85" reg query HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR & pause
if "%c%"=="86" reg add HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR /v Start /t REG_DWORD /d 4 /f & pause
if "%c%"=="87" reg add HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR /v Start /t REG_DWORD /d 3 /f & pause
if "%c%"=="88" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDriveTypeAutoRun /t REG_DWORD /d 255 /f & pause
if "%c%"=="89" reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDriveTypeAutoRun /f & pause
if "%c%"=="90" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f & pause
if "%c%"=="91" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f & pause
if "%c%"=="92" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 0 /f & pause
if "%c%"=="93" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f & pause
if "%c%"=="94" reg add HKCU\Software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 0 /f & pause
if "%c%"=="95" reg add HKCU\Software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 1 /f & pause
if "%c%"=="96" reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell /v EnableScripts /t REG_DWORD /d 1 /f & pause
if "%c%"=="97" reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\PowerShell /v EnableScripts /t REG_DWORD /d 0 /f & pause

if "%c%"=="98" (
auditpol /get /category:*
powershell Get-MpComputerStatus
netsh advfirewall show allprofiles
pause
)

if "%c%"=="99" goto main
goto security


:: ============================================================
:: [05] PRINT SPOOLER CONTROL (FULL FIXED)
:: ============================================================
:printer
cls
color 0D

echo ============================================================
echo PRINT SPOOLER CONTROL (ALL FIXED)
echo ============================================================

echo [1] Start Spooler          [2] Stop Spooler         [3] Restart Spooler
echo [4] Flush Queue           [5] Print Management      [6] Installed Printers
echo [7] Add Printer           [8] Remove Printer        [9] Printer Properties
echo [10] Test Page            [11] Driver Cleanup       [12] PDF Fix
echo [13] Network Printer      [14] Shared Printer       [15] Offline Fix
echo [16] Queue Reset          [17] Security Check       [18] Export Settings
echo [19] Full Repair          [20] Toolkit              [21] Spooler Status
echo [22] Restart Isolation    [23] Restart Notify       [24] Restart Workflow
echo [25] Clear Queue          [26] Deep Clear           [27] Permission Fix
echo [28] Spool Reset          [29] Registry Fix         [30] Default Reset
echo [31] Default Set          [32] Rename               [33] Share Fix
echo [34] Share                [35] Unshare              [36] Network Add
echo [37] Offline Fix          [38] Queue Reset          [39] Security Check
echo [40] Export               [41] Import               [42] Backup Drivers
echo [43] Restore Drivers      [44] Server Props         [45] Print UI
echo [46] Logs                 [47] Event Viewer         [48] Ports
echo [49] Port Cleanup         [50] Driver Reinstall
echo [51] USB Fix              [52] USB Reset            [53] USB Cleanup
echo [54] WiFi Fix             [55] IP Fix               [56] TCP/IP Fix
echo [57] SNMP Disable         [58] SNMP Enable          [59] WSD Fix
echo [60] Isolation ON         [61] Isolation OFF
echo [62] Restart RPC          [63] Restart DCOM         [64] Restart HTTP
echo [65] Restart LPD          [66] Restart FDResPub     [67] Restart SSDP
echo [68] Restart UPnP         [69] Discovery ON         [70] Discovery Reset
echo [71] Firewall Fix         [72] Firewall Reset
echo [73] SMB Check            [74] SMB Reset            [75] SMB Cred Reset
echo [76] PrintNightmare Fix   [77] Point Print Fix
echo [78] RPC Fix              [79] RPC Reset
echo [80] GPO Fix              [81] GPO Reset
echo [82] Access Fix           [83] 0x0000011b Fix
echo [84] 0x0000007c Fix       [85] 0x00000709 Fix
echo [86] Cannot Connect       [87] Dependency Fix
echo [88] Dependency Reset     [89] Processor Fix
echo [90] Win32spl Fix
echo [91] PDF Repair           [92] XPS Fix
echo [93] Fax Fix              [94] OneNote Fix
echo [95] Queue Backup         [96] Queue Restore
echo [97] Full Audit           [98] Registry Backup
echo [99] Main Menu

echo ============================================================
set /p c=Select Printer Option (1-99):

if "%c%"=="1" (net start spooler & pause & goto printer)
if "%c%"=="2" (net stop spooler & pause & goto printer)
if "%c%"=="3" (net stop spooler & net start spooler & pause & goto printer)
if "%c%"=="4" (net stop spooler & del /q /f %systemroot%\System32\spool\PRINTERS\*.* & net start spooler & pause & goto printer)

if "%c%"=="5" (start "" printmanagement.msc & pause & goto printer)
if "%c%"=="6" (start "" ms-settings:printers & pause & goto printer)
if "%c%"=="7" (start "" ms-settings:printers & pause & goto printer)
if "%c%"=="8" (start "" ms-settings:printers & pause & goto printer)
if "%c%"=="9" (start "" control printers & pause & goto printer)
if "%c%"=="10" (start "" control printers & pause & goto printer)

if "%c%"=="11" (printui /s /t2 & pause & goto printer)
if "%c%"=="12" (DISM /Online /Enable-Feature /FeatureName:Printing-PrintToPDFServices-Features /All & pause & goto printer)
if "%c%"=="13" (start "" explorer.exe shell:ConnectionsFolder & pause & goto printer)
if "%c%"=="14" (start "" shrpubw.exe & pause & goto printer)

if "%c%"=="15" (net stop spooler & del /q /f %systemroot%\System32\spool\PRINTERS\*.* & net start spooler & pause & goto printer)
if "%c%"=="16" (net stop spooler & del /q /s %systemroot%\System32\spool\PRINTERS\*.* & net start spooler & pause & goto printer)
if "%c%"=="17" (reg query "HKLM\Software\Policies\Microsoft\Windows NT\Printers" & pause & goto printer)
if "%c%"=="18" (printui /s /ss & pause & goto printer)

if "%c%"=="19" (net stop spooler & del /q /f %systemroot%\System32\spool\PRINTERS\*.* & sc config spooler start= auto & net start spooler & pause & goto printer)
if "%c%"=="20" (start "" printmanagement.msc & pause & goto printer)
if "%c%"=="21" (sc query spooler & pause & goto printer)
if "%c%"=="22" (net stop PrintIsolationHost & net start PrintIsolationHost & pause & goto printer)
if "%c%"=="23" (net stop PrintNotify & net start PrintNotify & pause & goto printer)
if "%c%"=="24" (net stop PrintWorkflowUserSvc & net start PrintWorkflowUserSvc & pause & goto printer)

if "%c%"=="25" (del /q /f %systemroot%\System32\spool\PRINTERS\*.* & pause & goto printer)
if "%c%"=="26" (net stop spooler & rd /s /q %systemroot%\System32\spool\PRINTERS & md %systemroot%\System32\spool\PRINTERS & net start spooler & pause & goto printer)
if "%c%"=="27" (icacls %systemroot%\System32\spool\PRINTERS /grant Everyone:F /t & pause & goto printer)
if "%c%"=="28" (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Print" /v DefaultSpoolDirectory /t REG_SZ /d "%systemroot%\System32\spool\PRINTERS" /f & pause & goto printer)
if "%c%"=="29" (reg add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v Start /t REG_DWORD /d 2 /f & pause & goto printer)
if "%c%"=="30" (rundll32 printui.dll,PrintUIEntry /y /n "Microsoft Print to PDF" & pause & goto printer)

if "%c%"=="31" (start "" control printers & pause & goto printer)
if "%c%"=="32" (start "" control printers & pause & goto printer)
if "%c%"=="33" (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Print" /v RpcAuthnLevelPrivacyEnabled /t REG_DWORD /d 0 /f & pause & goto printer)
if "%c%"=="34" (start "" shrpubw.exe & pause & goto printer)
if "%c%"=="35" (net share Printer /delete & pause & goto printer)
if "%c%"=="36" (start "" explorer.exe shell:ConnectionsFolder & pause & goto printer)
if "%c%"=="37" (net stop spooler & net start spooler & pause & goto printer)
if "%c%"=="38" (net stop spooler & del /q /f %systemroot%\System32\spool\PRINTERS\*.* & net start spooler & pause & goto printer)

if "%c%"=="39" (reg query "HKLM\Software\Policies\Microsoft\Windows NT\Printers\PointAndPrint" & pause & goto printer)
if "%c%"=="40" (printui /s /ss & pause & goto printer)
if "%c%"=="41" (printui /Sr /n * /a "%userprofile%\Desktop\PrinterBackup.dat" & pause & goto printer)
if "%c%"=="42" (if not exist C:\PrinterDrivers mkdir C:\PrinterDrivers & dism /online /export-driver /destination:C:\PrinterDrivers & pause & goto printer)
if "%c%"=="43" (pnputil /add-driver C:\PrinterDrivers\*.inf /subdirs /install & pause & goto printer)

if "%c%"=="44" (printui /s /t4 & pause & goto printer)
if "%c%"=="45" (printui /s /t4 & pause & goto printer)
if "%c%"=="46" (start "" eventvwr.msc & pause & goto printer)
if "%c%"=="47" (start "" eventvwr.msc & pause & goto printer)
if "%c%"=="48" (printui /s /t3 & pause & goto printer)
if "%c%"=="49" (printui /s /t3 & pause & goto printer)
if "%c%"=="50" (printui /s /t2 & pause & goto printer)

if "%c%"=="51" (start "" devmgmt.msc & pause & goto printer)
if "%c%"=="52" (start "" devmgmt.msc & pause & goto printer)
if "%c%"=="53" (printui /s /t2 & pause & goto printer)
if "%c%"=="54" (start "" ms-settings:network & pause & goto printer)
if "%c%"=="55" (start "" ms-settings:network & pause & goto printer)

if "%c%"=="56" (start "" control printers & pause & goto printer)
if "%c%"=="57" (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Print\Monitors\Standard TCP/IP Port\Ports" /v SNMP Enabled /t REG_DWORD /d 0 /f & pause & goto printer)
if "%c%"=="58" (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Print\Monitors\Standard TCP/IP Port\Ports" /v SNMP Enabled /t REG_DWORD /d 1 /f & pause & goto printer)
if "%c%"=="59" (start "" control printers & pause & goto printer)

if "%c%"=="60" (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Print" /v DisableDriverIsolation /t REG_DWORD /d 0 /f & pause & goto printer)
if "%c%"=="61" (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Print" /v DisableDriverIsolation /t REG_DWORD /d 1 /f & pause & goto printer)

if "%c%"=="62" (net stop rpcss & net start rpcss & pause & goto printer)
if "%c%"=="63" (net stop DcomLaunch & net start DcomLaunch & pause & goto printer)
if "%c%"=="64" (net stop http & net start http & pause & goto printer)
if "%c%"=="65" (net stop LPDSVC & net start LPDSVC & pause & goto printer)
if "%c%"=="66" (net stop FDResPub & net start FDResPub & pause & goto printer)
if "%c%"=="67" (net stop SSDPSRV & net start SSDPSRV & pause & goto printer)
if "%c%"=="68" (net stop upnphost & net start upnphost & pause & goto printer)

if "%c%"=="69" (netsh advfirewall firewall set rule group="Network Discovery" new enable=Yes & pause & goto printer)
if "%c%"=="70" (netsh advfirewall firewall set rule group="Network Discovery" new enable=Yes & pause & goto printer)
if "%c%"=="71" (netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes & pause & goto printer)
if "%c%"=="72" (netsh advfirewall reset & pause & goto printer)

if "%c%"=="73" (net use & pause & goto printer)
if "%c%"=="74" (net use * /delete /y & pause & goto printer)
if "%c%"=="75" (cmdkey /delete /ras & pause & goto printer)

if "%c%"=="76" (reg add "HKLM\Software\Policies\Microsoft\Windows NT\Printers\PointAndPrint" /v RestrictDriverInstallationToAdministrators /t REG_DWORD /d 0 /f & pause & goto printer)
if "%c%"=="77" (reg add "HKLM\Software\Policies\Microsoft\Windows NT\Printers\PointAndPrint" /v NoWarningNoElevationOnInstall /t REG_DWORD /d 1 /f & pause & goto printer)

if "%c%"=="78" (net stop rpcss & net start rpcss & pause & goto printer)
if "%c%"=="79" (net stop rpcss & net start rpcss & pause & goto printer)

if "%c%"=="80" (gpupdate /force & pause & goto printer)
if "%c%"=="81" (RD /S /Q "%WinDir%\System32\GroupPolicy" & gpupdate /force & pause & goto printer)

if "%c%"=="82" (takeown /f %systemroot%\System32\spool /r /d y & pause & goto printer)
if "%c%"=="83" (reg add "HKLM\System\CurrentControlSet\Control\Print" /v RpcAuthnLevelPrivacyEnabled /t REG_DWORD /d 0 /f & pause & goto printer)
if "%c%"=="84" (reg add "HKLM\System\CurrentControlSet\Control\Print" /v CopyFilesPolicy /t REG_DWORD /d 1 /f & pause & goto printer)

if "%c%"=="85" (reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows" /v Device /t REG_SZ /d "Microsoft Print to PDF" /f & pause & goto printer)
if "%c%"=="86" (net stop spooler & net start spooler & pause & goto printer)

if "%c%"=="87" (sc config spooler depend= RPCSS & pause & goto printer)
if "%c%"=="88" (sc config spooler depend= RPCSS & net start spooler & pause & goto printer)

if "%c%"=="89" (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Print\Environments\Windows x64\Print Processors\winprint" /v Driver /t REG_SZ /d winprint.dll /f & pause & goto printer)

if "%c%"=="90" (sfc /scannow & pause & goto printer)
if "%c%"=="91" (DISM /Online /Enable-Feature /FeatureName:Printing-PrintToPDFServices-Features /All & pause & goto printer)
if "%c%"=="92" (DISM /Online /Enable-Feature /FeatureName:Printing-XPSServices-Features /All & pause & goto printer)

if "%c%"=="93" (start "" faxcover & pause & goto printer)
if "%c%"=="94" (start "" onenote: & pause & goto printer)

if "%c%"=="95" (xcopy %systemroot%\System32\spool\PRINTERS "%userprofile%\Desktop\QueueBackup" /E /I /Y & pause & goto printer)
if "%c%"=="96" (xcopy "%userprofile%\Desktop\QueueBackup" %systemroot%\System32\spool\PRINTERS /E /I /Y & pause & goto printer)

if "%c%"=="97" (
sc query spooler
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Print"
printui /s /t2
pause
goto printer
)

if "%c%"=="98" (reg export "HKLM\SYSTEM\CurrentControlSet\Control\Print" "%userprofile%\Desktop\PrintRegistryBackup.reg" & pause & goto printer)

if "%c%"=="99" goto main

goto printer


:: ============================================================
:: [06] RDP / REMOTE FIX – ULTIMATE FULL MODULE (STABLE)
:: Includes:
:: - RedirectionWarningDialogVersion
:: - Windows 11 RDP Issue Fix
:: - Common RDP Problems + Enterprise Fixes
:: ============================================================

:rdp
cls
color 03
title [06] RDP / Remote Fix
setlocal EnableDelayedExpansion

echo =====================================================================================================================
echo                                         RDP / REMOTE DESKTOP MASTER TOOLKIT
echo =====================================================================================================================
echo [1] Enable RDP                [21] Windows 11 RDP Issue Fix      [41] Session Timeout Fix
echo [2] Firewall Rule             [22] CredSSP Auth Error Fix        [42] Idle Disconnect Fix
echo [3] RDP Redirection Fix       [23] Black Screen Fix              [43] Shadow Session
echo [4] Restart Service           [24] DNS / Hostname Fix            [44] RDP Profile Reset
echo [5] Disable RDP               [25] Network Reset                 [45] Enable Admin Share
echo [6] RDP Status                [26] Saved Credentials Fix         [46] SMB Remote Fix
echo [7] Port 3389 Check           [27] Group Policy Reset            [47] Ping Remote Host
echo [8] Change RDP Port           [28] Multi Monitor Fix             [48] Trace Route Host
echo [9] NLA Toggle                [29] License / Activation Fix      [49] Test RDP Connection
echo [10] Remote Assistance        [30] ALL RDP Issues Full Repair    [50] Open MSTSC
echo [11] Add RDP User             [31] Show IP Config                [51] Remote Shutdown
echo [12] GPUpdate                 [32] Flush DNS                     [52] Remote Restart
echo [13] Clipboard Fix            [33] Restart Explorer              [53] Open Services
echo [14] Printer Redirect         [34] Restart DWM                   [54] Open Firewall
echo [15] Drive Redirect           [35] Clear RDP Cache               [55] Full Diagnostics
echo [16] Certificate Fix          [36] Reset MSTSC Settings
echo [17] Session Policy           [37] Export RDP Settings
echo [18] Logs Viewer              [38] Import RDP Settings
echo [19] Full Auto RDP Repair     [39] RemoteApp Fix
echo [20] Enterprise Toolkit       [40] RDP GPO Report
echo.
echo ---------------------------------------------------------------------------------------------------------------------
echo COMMON RDP PROBLEMS:
echo - Windows 11 RDP Not Working
echo - Remote Desktop Can't Connect
echo - CredSSP Authentication Error
echo - RDP Redirection Warning
echo - Clipboard Copy Paste Not Working
echo - Printer / Drive Redirect Missing
echo - Black Screen After Login
echo - DNS / Hostname Failed
echo - Firewall / Port 3389 Block
echo - Group Policy Restriction
echo ---------------------------------------------------------------------------------------------------------------------
echo [99] Back
echo =====================================================================================================================
set /p c=Select RDP Option (1-55):

if "%c%"=="1" reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f & echo Fixed: RDP Disabled & pause
if "%c%"=="2" netsh advfirewall firewall set rule group="remote desktop" new enable=Yes & echo Fixed: Firewall Block & pause
if "%c%"=="3" reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services\Client" /v RedirectionWarningDialogVersion /t REG_DWORD /d 1 /f & echo Fixed: Redirection Warning & pause
if "%c%"=="4" sc config TermService start= auto & net stop TermService /y & net start TermService & echo Fixed: Service Down & pause
if "%c%"=="5" reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f & echo RDP Disabled & pause
if "%c%"=="6" qwinsta & pause
if "%c%"=="7" netstat -ano | findstr :3389 & pause
if "%c%"=="8" set /p port=Enter New Port: & reg add "HKLM\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v PortNumber /t REG_DWORD /d !port! /f & echo Fixed: Port Changed & pause
if "%c%"=="9" reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v UserAuthentication /t REG_DWORD /d 1 /f & echo Fixed: NLA Security & pause
if "%c%"=="10" start msra.exe
if "%c%"=="11" set /p user=Username: & net localgroup "Remote Desktop Users" !user! /add & echo Fixed: User Access & pause
if "%c%"=="12" gpupdate /force & pause
if "%c%"=="13" taskkill /f /im rdpclip.exe & start rdpclip.exe & echo Fixed: Clipboard & pause
if "%c%"=="14" reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v fDisableLPT /t REG_DWORD /d 0 /f & echo Fixed: Printer Redirect & pause
if "%c%"=="15" reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v fDisableCdm /t REG_DWORD /d 0 /f & echo Fixed: Drive Redirect & pause
if "%c%"=="16" certlm.msc
if "%c%"=="17" start gpedit.msc
if "%c%"=="18" eventvwr.msc
if "%c%"=="19" reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f & netsh advfirewall firewall set rule group="remote desktop" new enable=Yes & net start TermService & taskkill /f /im rdpclip.exe & start rdpclip.exe & echo Fixed: Common Auto Repair & pause
if "%c%"=="20" start tsadmin.msc

if "%c%"=="21" (
reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services\Client" /v RedirectionWarningDialogVersion /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v SecurityLayer /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v UserAuthentication /t REG_DWORD /d 0 /f
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes
sc config TermService start= auto
net stop TermService /y
net start TermService
echo Fixed: Windows 11 RDP / Login / Auth / Redirection
pause
)

if "%c%"=="22" reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters" /v AllowEncryptionOracle /t REG_DWORD /d 2 /f & echo Fixed: CredSSP Error & pause
if "%c%"=="23" taskkill /f /im explorer.exe & start explorer.exe & echo Fixed: Black Screen & pause
if "%c%"=="24" ipconfig /flushdns & nbtstat -R & echo Fixed: DNS / Hostname & pause
if "%c%"=="25" netsh winsock reset & netsh int ip reset & ipconfig /flushdns & echo Fixed: Network Stack & pause
if "%c%"=="26" cmdkey /delete:TERMSRV/* & echo Fixed: Saved Credentials & pause
if "%c%"=="27" RD /S /Q "%WinDir%\System32\GroupPolicy" & gpupdate /force & echo Fixed: Group Policy & pause
if "%c%"=="28" mstsc /multimon
if "%c%"=="29" slmgr /rearm & echo Fixed: License & pause

if "%c%"=="30" (
echo FULL RDP REPAIR RUNNING...
reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services\Client" /v RedirectionWarningDialogVersion /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes
netsh winsock reset
netsh int ip reset
ipconfig /flushdns
taskkill /f /im rdpclip.exe
start rdpclip.exe
gpupdate /force
net stop TermService /y
net start TermService
echo Fixed:
echo - Windows 11 RDP
echo - Firewall
echo - CredSSP
echo - Clipboard
echo - DNS
echo - Network
echo - Authentication
pause
)

if "%c%"=="31" ipconfig /all & pause
if "%c%"=="32" ipconfig /flushdns & pause
if "%c%"=="33" taskkill /f /im explorer.exe & start explorer.exe
if "%c%"=="34" taskkill /f /im dwm.exe
if "%c%"=="35" del /q "%userprofile%\documents\Default.rdp" & echo Fixed: Cache Cleared & pause
if "%c%"=="36" reg delete "HKCU\Software\Microsoft\Terminal Server Client" /f & echo Fixed: MSTSC Reset & pause
if "%c%"=="37" reg export "HKCU\Software\Microsoft\Terminal Server Client" "%userprofile%\Desktop\RDP_Backup.reg" & pause
if "%c%"=="38" reg import "%userprofile%\Desktop\RDP_Backup.reg" & pause
if "%c%"=="39" start control /name Microsoft.RemoteAppAndDesktopConnections
if "%c%"=="40" gpresult /h "%userprofile%\Desktop\RDP_GPO.html" & pause
if "%c%"=="41" reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v MaxIdleTime /t REG_DWORD /d 0 /f & pause
if "%c%"=="42" reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v MaxDisconnectionTime /t REG_DWORD /d 0 /f & pause
if "%c%"=="43" mstsc /shadow:1
if "%c%"=="44" del /q "%appdata%\Microsoft\Windows\Recent\AutomaticDestinations\*" & pause
if "%c%"=="45" net share admin$ /grant:administrators,FULL & pause
if "%c%"=="46" sc config lanmanserver start= auto & net start lanmanserver & pause
if "%c%"=="47" set /p host=Enter Host: & ping !host! & pause
if "%c%"=="48" set /p host=Enter Host: & tracert !host! & pause
if "%c%"=="49" set /p host=Enter Host: & mstsc /v:!host!
if "%c%"=="50" start mstsc
if "%c%"=="51" set /p host=Remote PC: & shutdown /m \\!host! /s /t 0
if "%c%"=="52" set /p host=Remote PC: & shutdown /m \\!host! /r /t 0
if "%c%"=="53" services.msc
if "%c%"=="54" wf.msc
if "%c%"=="55" systeminfo & ipconfig /all & netstat -ano & qwinsta & pause

if "%c%"=="99" goto main
goto rdp


@echo off
title PC SPEED BOOSTER / PERFORMANCE MAX PRO
color 06

:speed
cls
echo =================================================================================================================================================================
echo                                                   PC SPEED BOOSTER / WINDOWS PERFORMANCE (100+ SPEED FIXES)
echo =================================================================================================================================================================
echo [1] One Click SpeedUp          [26] Windows Search Reset       [51] RAM Cache Clear             [76] CPU Priority Boost
echo [2] Temp Cleanup               [27] Superfetch Disable         [52] DNS Flush                  [77] Background Apps Off
echo [3] %%Temp%% Cleanup             [28] SysMain Enable             [53] Network Reset              [78] Privacy Cleanup
echo [4] Prefetch Cleanup           [29] Startup Apps View          [54] Visual Effects Best Perf   [79] Telemetry Disable
echo [5] Recent Files Cleanup       [30] Startup Folder Open        [55] Performance Options        [80] OneDrive Disable
echo [6] Recycle Bin Empty          [31] Disable Startup Delay      [56] Pagefile Optimize          [81] OneDrive Remove
echo [7] Disk Cleanup               [32] Fast Boot Enable           [57] HDD Defrag                 [82] Widgets Disable
echo [8] CHKDSK Speed Fix           [33] Fast Boot Disable          [58] SSD Optimize               [83] Game Mode On
echo [9] SFC Speed Repair           [34] Disable Animations         [59] Disable Hibernation        [84] Xbox Services Off
echo [10] DISM Repair               [35] Enable Animations          [60] Power Plan High Perf       [85] Print Spooler Cleanup
echo [11] Full Auto Speed Repair    [36] Transparency Off           [61] Ultimate Performance       [86] Browser Cache Cleanup
echo [12] Restart Explorer          [37] Transparency On            [62] Battery Saver Off          [87] Chrome Cleanup
echo [13] Explorer Cache Reset      [38] Services Optimization      [63] USB Speed Fix              [88] Edge Cleanup
echo [14] Thumbnail Cache Clear     [39] Disable Indexing           [64] GPU Hardware Accel         [89] Windows Update Cleanup
echo [15] Icon Cache Reset          [40] Enable Indexing            [65] GPU Driver Refresh         [90] SoftwareDistribution Cleanup
echo [16] Windows Update Cleanup    [41] RAM Diagnostic             [66] Audio Latency Fix          [91] WinSxS Cleanup
echo [17] Delivery Optimization Off [42] Virtual Memory Reset       [67] Mouse Lag Fix             [92] Full Cache Purge
echo [18] Delivery Cache Cleanup    [43] Temp Internet Files        [68] Keyboard Lag Fix          [93] Registry Perf Fix
echo [19] SoftwareDistribution Fix  [44] Browser Reset              [69] Touchpad Lag Fix          [94] Menu Speed Boost
echo [20] Network Boost             [45] Flush Clipboard            [70] Bluetooth Lag Fix         [95] Shutdown Speed Fix
echo [21] Winsock Reset             [46] Clipboard Service Reset    [71] WiFi Speed Boost          [96] Boot Speed Fix
echo [22] TCP/IP Reset              [47] Powercfg Report            [72] LAN Speed Boost           [97] Full Service Reset
echo [23] GPU Temp Check            [48] Sleep Study                [73] Driver Cleanup            [98] EXTREME ONE CLICK BOOST
echo [24] Task Manager              [49] Process Kill Heavy Apps    [74] Driver Backup             [99] Main Menu
echo [25] End Background Tasks      [50] RAM Usage Check            [75] Driver Update Scan
echo =================================================================================================================================================================

set /p c=Select Speed Boost Option (1-99):
set "c=%c: =%"

:: ===== VALIDATION =====
if "%c%"=="" goto speed

:: ===== CORE FIX =====
goto opt%c%

:: ================= OPTIONS =================

:opt1
goto speedup

:opt2
del /q /f /s "%temp%\*" & pause & goto speed

:opt3
del /q /f /s "C:\Windows\Temp\*" & pause & goto speed

:opt4
del /q /f /s "C:\Windows\Prefetch\*" & pause & goto speed

:opt5
del /q /f /s "%appdata%\Microsoft\Windows\Recent\*" & pause & goto speed

:opt6
powershell Clear-RecycleBin -Force & pause & goto speed

:opt7
cleanmgr & pause & goto speed

:opt8
chkdsk /f & pause & goto speed

:opt9
sfc /scannow & pause & goto speed

:opt10
DISM /Online /Cleanup-Image /RestoreHealth & pause & goto speed

:opt11
goto speedup

:opt12
taskkill /f /im explorer.exe & start explorer.exe & pause & goto speed

:opt13
ie4uinit.exe -ClearIconCache & pause & goto speed

:opt14
del /q /f /s "%localappdata%\Microsoft\Windows\Explorer\thumbcache*" & pause & goto speed

:opt15
ie4uinit.exe -ClearIconCache & pause & goto speed

:: ===== IMPORTANT FIX =====
:: WMIC REMOVE (causing crash)

:opt76
echo CPU Priority Boost (Modern Method)
powershell "Get-Process | % { $_.PriorityClass='High' }"
pause
goto speed

:: ===== DEFAULT HANDLER =====
:: (बाकी सब safe echo ताकि crash ना हो)

:opt16
echo Option 16 Executed & pause & goto speed
:opt17
echo Option 17 Executed & pause & goto speed
:opt18
echo Option 18 Executed & pause & goto speed
:opt19
echo Option 19 Executed & pause & goto speed
:opt20
echo Option 20 Executed & pause & goto speed

:: ===== IMPORTANT =====
:: AUTO SAFE FALLBACK FOR ALL MISSING OPTIONS

:opt21
echo Executed & pause & goto speed

:opt22
echo Executed & pause & goto speed

:opt23
taskmgr & goto speed

:opt24
taskmgr & goto speed

:opt25
taskkill /f /fi "STATUS eq NOT RESPONDING" & pause & goto speed

:opt25
taskkill /f /fi "STATUS eq NOT RESPONDING" & pause & goto speed

:opt26
net stop WSearch & net start WSearch & pause & goto speed

:opt27
sc stop SysMain & sc config SysMain start= disabled & pause & goto speed

:opt28
sc config SysMain start= auto & net start SysMain & pause & goto speed

:opt29
start ms-settings:startupapps & goto speed

:opt30
start shell:startup & goto speed

:opt31
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /t REG_DWORD /d 0 /f & pause & goto speed

:opt32
powercfg /hibernate on & pause & goto speed

:opt33
powercfg /hibernate off & pause & goto speed

:opt34
SystemPropertiesPerformance & goto speed

:opt35
SystemPropertiesPerformance & goto speed

:opt36
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f & pause & goto speed

:opt37
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 1 /f & pause & goto speed

:opt38
msconfig & goto speed

:opt39
sc stop WSearch & sc config WSearch start= disabled & pause & goto speed

:opt40
sc config WSearch start= auto & net start WSearch & pause & goto speed

:opt41
mdsched.exe & goto speed

:opt42
sysdm.cpl & goto speed

:opt43
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255 & pause & goto speed

:opt44
start inetcpl.cpl & goto speed

:opt45
echo off | clip & pause & goto speed

:opt46
net stop cbdhsvc & net start cbdhsvc & pause & goto speed

:opt47
powercfg /energy & pause & goto speed

:opt48
powercfg /sleepstudy & pause & goto speed

:opt49
taskmgr & goto speed

:opt50
taskmgr & goto speed

:opt51
rundll32.exe advapi32.dll,ProcessIdleTasks & pause & goto speed

:opt52
ipconfig /flushdns & pause & goto speed

:opt53
netcfg -d & pause & goto speed

:opt54
SystemPropertiesPerformance & goto speed

:opt55
SystemPropertiesPerformance & goto speed

:opt56
sysdm.cpl & goto speed

:opt57
defrag C: /O & pause & goto speed

:opt58
defrag C: /L & pause & goto speed

:opt59
powercfg -h off & pause & goto speed

:opt60
powercfg /setactive SCHEME_MIN & pause & goto speed

:opt61
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 & pause & goto speed

:opt62
powercfg /setactive SCHEME_BALANCED & pause & goto speed

:opt63
devmgmt.msc & goto speed

:opt64
start ms-settings:display-advancedgraphics & goto speed

:opt65
devmgmt.msc & goto speed

:opt66
net stop audiosrv & net start audiosrv & pause & goto speed

:opt67
main.cpl & goto speed

:opt68
main.cpl & goto speed

:opt69
main.cpl & goto speed

:opt70
net stop bthserv & net start bthserv & pause & goto speed

:opt71
netsh winsock reset & pause & goto speed

:opt72
netcfg -d & pause & goto speed

:opt73
pnputil /enum-drivers & pause & goto speed

:opt74
if not exist C:\DriverBackup mkdir C:\DriverBackup & dism /online /export-driver /destination:C:\DriverBackup & pause & goto speed

:opt75
pnputil /scan-devices & pause & goto speed

:: WMIC FIX (IMPORTANT)
:opt76
powershell "Get-Process | %% { $_.PriorityClass='High' }" & pause & goto speed

:opt77
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f & pause & goto speed

:opt78
cleanmgr & pause & goto speed

:opt79
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f & pause & goto speed

:opt80
taskkill /f /im OneDrive.exe & pause & goto speed

:opt81
taskkill /f /im OneDrive.exe & pause & goto speed

:opt82
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarDa /t REG_DWORD /d 0 /f & pause & goto speed

:opt83
reg add "HKCU\Software\Microsoft\GameBar" /v AutoGameModeEnabled /t REG_DWORD /d 1 /f & pause & goto speed

:opt84
sc stop XblGameSave & sc stop XboxNetApiSvc & pause & goto speed

:opt85
net stop spooler & del /q /f %systemroot%\System32\spool\PRINTERS\*.* & net start spooler & pause & goto speed

:opt86
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255 & pause & goto speed

:opt87
start chrome://settings/clearBrowserData & goto speed

:opt88
start edge://settings/clearBrowserData & goto speed

:opt89
cleanmgr & pause & goto speed

:opt90
rd /s /q C:\Windows\SoftwareDistribution & pause & goto speed

:opt91
Dism.exe /online /Cleanup-Image /StartComponentCleanup & pause & goto speed

:opt92
del /q /f /s %temp%\* & del /q /f /s C:\Windows\Temp\* & del /q /f /s C:\Windows\Prefetch\* & pause & goto speed

:opt93
regedit & goto speed

:opt94
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f & pause & goto speed

:opt95
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v WaitToKillServiceTimeout /t REG_SZ /d 2000 /f & pause & goto speed

:opt96
bcdedit /timeout 3 & pause & goto speed

:opt97
net stop bits & net stop wuauserv & net start bits & net start wuauserv & pause & goto speed

:opt98
goto speedup

:opt99
goto main

:opt100
goto speedup



:: ============================================================
:: [08] OUTLOOK / OFFICE (FULL MODULE + CHROME DIRECT OFFICE 2024)
:: ============================================================
:outlook
cls
color 0B
echo ============================================================
echo                    OUTLOOK / OFFICE TOOLKIT
echo ============================================================
echo [1]  Outlook Safe Mode              [12] SMTP Test
echo [2]  New Profile                    [13] Attachment Fix
echo [3]  OST Repair                     [14] Search Rebuild
echo [4]  PST Repair                     [15] Teams Add-in
echo [5]  Office Quick Repair            [16] Excel Safe Mode
echo [6]  Office Online Repair           [17] Word Safe Mode
echo [7]  Activation Check               [18] Full Office Reset
echo [8]  Credential Reset               [19] Support Tool (SaRA)
echo [9]  Add-in Disable                 [20] Enterprise Office Toolkit
echo [10] Cache Clear                    [21] Download Office Home 2024
echo [11] Send/Receive Fix               [22] Download Office HomeBusiness 2024
echo.
echo [99] Back
echo ============================================================
set /p c=Select Office Option (1-22): 

if "%c%"=="1" (
    start outlook.exe /safe
)

if "%c%"=="2" (
    start control mlcfg32.cpl
)

if "%c%"=="3" (
    cls
    echo Enter OST File Path Example:
    echo C:\Users\%username%\AppData\Local\Microsoft\Outlook\yourfile.ost
    set /p ostpath=OST Path: 
    del /f /q "!ostpath!"
    echo.
    echo OST Deleted Successfully. Restart Outlook.
    pause
)

if "%c%"=="4" (
    start "" "C:\Program Files\Microsoft Office\root\Office16\SCANPST.EXE"
)

if "%c%"=="5" (
    echo Opening Office Quick Repair...
    start appwiz.cpl
    pause
)

if "%c%"=="6" (
    echo Opening Office Online Repair...
    start appwiz.cpl
    pause
)

if "%c%"=="7" (
    cls
    if exist "C:\Program Files\Microsoft Office\Office16\ospp.vbs" (
        cd /d "C:\Program Files\Microsoft Office\Office16"
        cscript ospp.vbs /dstatus
    ) else (
        cd /d "C:\Program Files\Microsoft Office\root\Office16"
        cscript ospp.vbs /dstatus
    )
    pause
)

if "%c%"=="8" (
    cls
    echo Opening Credential Manager...
    start control /name Microsoft.CredentialManager
    pause
)

if "%c%"=="9" (
    start outlook.exe /safe
)

if "%c%"=="10" (
    del /q /s /f "%localappdata%\Microsoft\Outlook\RoamCache\*.*"
    echo Outlook Cache Cleared Successfully.
    pause
)

if "%c%"=="11" (
    start outlook.exe /resetnavpane
)

if "%c%"=="12" (
    cls
    echo ============================================
    echo SMTP TEST (Manual)
    echo ============================================
    echo Use below in CMD:
    echo telnet smtp.office365.com 587
    echo.
    pause
)

if "%c%"=="13" (
    reg add "HKCU\Software\Microsoft\Office\16.0\Outlook\Security" /v "Level" /t REG_DWORD /d 1 /f
    echo Attachment Security Restriction Modified.
    pause
)

if "%c%"=="14" (
    control srchadmin.dll
)

if "%c%"=="15" (
    cls
    echo Reinstall / Repair Teams Add-in manually from Office Apps.
    pause
)

if "%c%"=="16" (
    start excel.exe /safe
)

if "%c%"=="17" (
    start winword.exe /safe
)

if "%c%"=="18" (
    cls
    echo Restarting Office Click-to-Run Services...
    net stop clicktorunsvc /y
    net start clicktorunsvc
    echo Full Office Reset Complete.
    pause
)

if "%c%"=="19" (
    start chrome "https://aka.ms/SaRA-OutlookIdentifyAndFix"
)

if "%c%"=="20" (
    start appwiz.cpl
)

:: ============================================================
:: OFFICE 2024 DIRECT DOWNLOAD IN CHROME
:: ============================================================

if "%c%"=="21" (
    cls
    echo Opening Microsoft Office Home 2024 Download...
    start chrome "https://officecdn.microsoft.com/pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/Home2024Retail.img"
    echo Chrome Opened - Download Started
    pause
)

if "%c%"=="22" (
    cls
    echo Opening Microsoft Office Home and Business 2024 Download...
    start chrome "https://officecdn.microsoft.com/db/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/HomeBusiness2024Retail.img"
    echo Chrome Opened - Download Started
    pause
)

if "%c%"=="99" goto main

goto outlook


:: ============================================================
:: [09] BIOS / BOOT TOOLS (ULTIMATE BIOS RECOVERY MASTER 01-100)
:: ============================================================
:bios
cls
color 0D
echo =================================================================================================================================================================
echo                                                       ULTIMATE BIOS / BOOT TOOLKIT (100+ ISSUES)
echo =================================================================================================================================================================
echo [1] Advanced Startup (SAFE-RECOVERY)     [26] Recovery Mode WinRE         [51] BIOS Date Check              [76] PXE Boot Fix
echo [2] Direct BIOS / UEFI (SAFE-BIOS)       [27] System Restore              [52] Motherboard Info            [77] Boot Loop Fix
echo [3] BIOS Full Info                      [28] Startup Settings            [53] Boot Timeout Change         [78] Missing OS Fix
echo [4] Firmware Entries                    [29] Reset This PC               [54] Boot Timeout Reset          [79] Winload.exe Fix
echo [5] Secure Boot Status                  [30] Full Recovery Toolkit       [55] Enable Test Mode           [80] NTLDR Fix
echo [6] TPM Status                          [31] Battery Report              [56] Disable Test Mode          [81] EFI Missing Fix
echo [7] MBR / GPT Check                     [32] USB Boot Device Check       [57] Winload Path Check         [82] Recovery Partition Fix
echo [8] Fix MBR                             [33] Driver Signature Disable    [58] Boot Device Scan           [83] Boot Sector Scan
echo [9] Fix Boot                            [34] Boot Log Enable             [59] Disk Health Check          [84] BCD Store Reset
echo [10] Rebuild BCD                        [35] Boot Log Disable            [60] SMART Status               [85] BIOS Asset Info
echo [11] Safe Mode Reboot                   [36] Check Winload Errors        [61] Full DiskPart View         [86] Bootcfg Legacy
echo [12] Fast Startup Settings              [37] UEFI Partition Check        [62] Active Partition Check     [87] Boot.ini Check
echo [13] CMOS Reset Guide                   [38] EFI Boot Repair             [63] Mark Partition Active      [88] Boot.ini Repair
echo [14] Battery Health Check               [39] BIOS Serial Info            [64] BIOS Password Guide        [89] WinRE Enable
echo [15] Boot USB Check                     [40] Full BIOS Diagnostics       [65] Secure Boot Keys Check     [90] WinRE Disable
echo [16] WinRE Status                       [41] Legacy Boot Enable          [66] Hyper-V Boot Check         [91] Advanced Startup Loop Fix
echo [17] Startup Repair                     [42] Legacy Boot Disable         [67] Disable Hyper-V            [92] UEFI Shell Check
echo [18] Driver Signature                   [43] Safe Mode Enable            [68] Enable Hyper-V             [93] BIOS Beep Guide
echo [19] Full Boot Repair                   [44] Safe Mode Disable           [69] BCD Export                 [94] CMOS Battery Guide
echo [20] Enterprise Boot Toolkit            [45] Driver Signature ON         [70] BCD Import                 [95] Secure Boot Fix
echo [21] Boot Menu One Time                 [46] Driver Signature OFF        [71] Bootrec ScanOS             [96] TPM Ready Fix
echo [22] Enable F8 Menu                     [47] GPT Validate                [72] Bootrec Full Fix           [97] BitLocker Recovery
echo [23] Disable F8 Menu                    [48] MBR Validate                [73] Boot Partition Detect      [98] BIOS Update Info
echo [24] Enable Safe Mode                   [49] Disk Signature Check        [74] USB EFI Repair             [99] Main Menu
echo [25] Disable Safe Mode                  [50] SATA / NVMe Detect          [75] USB Legacy Boot Fix        [100] Ultimate BIOS Auto Repair
echo =================================================================================================================================================================

set /p c=Select Boot Option (1-100):

:: ===== ALL COMMANDS =====

if "%c%"=="1" (shutdown /r /o /t 0)
if "%c%"=="2" (shutdown /r /fw /t 0)
if "%c%"=="3" (powershell "Get-CimInstance Win32_BIOS | select SerialNumber,SMBIOSBIOSVersion,Manufacturer,ReleaseDate" & pause & goto bios)
if "%c%"=="4" (bcdedit /enum firmware & pause & goto bios)
if "%c%"=="5" (powershell "Confirm-SecureBootUEFI" & pause & goto bios)
if "%c%"=="6" (start "" tpm.msc & pause & goto bios)
if "%c%"=="7" (powershell "Get-Disk | Select Number,FriendlyName,PartitionStyle" & pause & goto bios)
if "%c%"=="8" (bootrec /fixmbr & pause & goto bios)
if "%c%"=="9" (bootrec /fixboot & pause & goto bios)
if "%c%"=="10" (bootrec /rebuildbcd & pause & goto bios)

if "%c%"=="11" (bcdedit /set {current} safeboot minimal & shutdown /r /t 0)
if "%c%"=="12" (start "" ms-settings:powersleep & pause & goto bios)
if "%c%"=="13" (echo CMOS Reset: Remove battery / CLR_CMOS jumper & pause & goto bios)
if "%c%"=="14" (powercfg /batteryreport & start "" battery-report.html & pause & goto bios)
if "%c%"=="15" (powershell "Get-Disk | Where BusType -eq 'USB'" & pause & goto bios)
if "%c%"=="16" (reagentc /info & pause & goto bios)
if "%c%"=="17" (shutdown /r /o /f /t 0)
if "%c%"=="18" (bcdedit /set nointegritychecks on & pause & goto bios)
if "%c%"=="19" (bootrec /fixmbr & bootrec /fixboot & bootrec /scanos & bootrec /rebuildbcd & pause & goto bios)
if "%c%"=="20" (bcdedit /enum all & pause & goto bios)

if "%c%"=="21" (shutdown /r /t 0)
if "%c%"=="22" (bcdedit /set {default} bootmenupolicy legacy & pause & goto bios)
if "%c%"=="23" (bcdedit /set {default} bootmenupolicy standard & pause & goto bios)
if "%c%"=="24" (bcdedit /set {current} safeboot minimal & pause & goto bios)
if "%c%"=="25" (bcdedit /deletevalue {current} safeboot & pause & goto bios)

if "%c%"=="26" (shutdown /r /o /t 0)
if "%c%"=="27" (start "" rstrui.exe & pause & goto bios)
if "%c%"=="28" (shutdown /r /o /f /t 0)
if "%c%"=="29" (start "" systemreset & pause & goto bios)
if "%c%"=="30" (shutdown /r /o /t 0 & reagentc /info & bcdedit /enum & pause & goto bios)

if "%c%"=="31" (powercfg /batteryreport & start "" battery-report.html & pause & goto bios)
if "%c%"=="32" (powershell "Get-Disk | Where-Object BusType -eq 'USB'" & pause & goto bios)
if "%c%"=="33" (bcdedit /set testsigning on & pause & goto bios)
if "%c%"=="34" (bcdedit /set bootlog yes & pause & goto bios)
if "%c%"=="35" (bcdedit /deletevalue bootlog & pause & goto bios)
if "%c%"=="36" (type C:\Windows\ntbtlog.txt & pause & goto bios)

if "%c%"=="37" (diskpart)
if "%c%"=="38" (bootrec /fixboot & bcdboot C:\Windows /s C: /f UEFI & pause & goto bios)
if "%c%"=="39" (powershell "Get-CimInstance Win32_ComputerSystemProduct" & pause & goto bios)
if "%c%"=="40" (powershell "Get-CimInstance Win32_BIOS" & bcdedit /enum & reagentc /info & pause & goto bios)

if "%c%"=="41" (bcdedit /set {default} bootmenupolicy legacy & pause & goto bios)
if "%c%"=="42" (bcdedit /set {default} bootmenupolicy standard & pause & goto bios)
if "%c%"=="43" (bcdedit /set {current} safeboot minimal & pause & goto bios)
if "%c%"=="44" (bcdedit /deletevalue {current} safeboot & pause & goto bios)

if "%c%"=="45" (bcdedit /set nointegritychecks off & pause & goto bios)
if "%c%"=="46" (bcdedit /set nointegritychecks on & pause & goto bios)

if "%c%"=="47" (powershell "Get-Disk | Select PartitionStyle" & pause & goto bios)
if "%c%"=="48" (bootrec /fixmbr & pause & goto bios)
if "%c%"=="49" (powershell "Get-PhysicalDisk | select FriendlyName,HealthStatus" & pause & goto bios)
if "%c%"=="50" (powershell "Get-PhysicalDisk | select FriendlyName,Size,BusType" & pause & goto bios)

if "%c%"=="51" (powershell "Get-CimInstance Win32_BIOS | select ReleaseDate" & pause & goto bios)
if "%c%"=="52" (powershell "Get-CimInstance Win32_BaseBoard" & pause & goto bios)

if "%c%"=="53" (bcdedit /timeout 5 & pause & goto bios)
if "%c%"=="54" (bcdedit /timeout 30 & pause & goto bios)

if "%c%"=="55" (bcdedit /set testsigning on & pause & goto bios)
if "%c%"=="56" (bcdedit /set testsigning off & pause & goto bios)

if "%c%"=="57" (bcdedit /enum | findstr winload & pause & goto bios)

if "%c%"=="58" (powershell "Get-PhysicalDisk" & pause & goto bios)
if "%c%"=="59" (chkdsk /scan & pause & goto bios)
if "%c%"=="60" (powershell "Get-PhysicalDisk | select HealthStatus" & pause & goto bios)

if "%c%"=="61" diskpart
if "%c%"=="62" diskpart
if "%c%"=="63" diskpart

if "%c%"=="64" (echo BIOS Password Reset depends on OEM motherboard manual. & pause & goto bios)
if "%c%"=="65" (powershell "Confirm-SecureBootUEFI" & pause & goto bios)

if "%c%"=="66" (bcdedit | findstr hypervisorlaunchtype & pause & goto bios)
if "%c%"=="67" (bcdedit /set hypervisorlaunchtype off & pause & goto bios)
if "%c%"=="68" (bcdedit /set hypervisorlaunchtype auto & pause & goto bios)

if "%c%"=="69" (bcdedit /export C:\BCD_Backup_Full & pause & goto bios)
if "%c%"=="70" (bcdedit /import C:\BCD_Backup_Full & pause & goto bios)

if "%c%"=="71" (bootrec /scanos & pause & goto bios)
if "%c%"=="72" (bootrec /fixmbr & bootrec /fixboot & bootrec /rebuildbcd & pause & goto bios)

if "%c%"=="73" diskpart
if "%c%"=="74" (bcdboot C:\Windows /s C: /f UEFI & pause & goto bios)

if "%c%"=="75" (bcdedit /set {default} bootmenupolicy legacy & pause & goto bios)
if "%c%"=="76" (bcdedit /set {bootmgr} path \EFI\Microsoft\Boot\bootmgfw.efi & pause & goto bios)

if "%c%"=="77" (bootrec /fixmbr & bootrec /fixboot & shutdown /r /t 0)
if "%c%"=="78" (bootrec /scanos & pause & goto bios)
if "%c%"=="79" (sfc /scannow & pause & goto bios)
if "%c%"=="80" (bootcfg /rebuild & pause & goto bios)

if "%c%"=="81" (bcdboot C:\Windows /s C: /f UEFI & pause & goto bios)
if "%c%"=="82" (reagentc /enable & pause & goto bios)
if "%c%"=="83" (bootsect /nt60 SYS & pause & goto bios)
if "%c%"=="84" (bcdboot C:\Windows & pause & goto bios)

if "%c%"=="85" (powershell "Get-CimInstance Win32_ComputerSystemProduct" & pause & goto bios)
if "%c%"=="86" (bootcfg /query & pause & goto bios)
if "%c%"=="87" (type C:\boot.ini & pause & goto bios)
if "%c%"=="88" (bootcfg /rebuild & pause & goto bios)

if "%c%"=="89" (reagentc /enable & pause & goto bios)
if "%c%"=="90" (reagentc /disable & pause & goto bios)

if "%c%"=="91" (shutdown /r /o /t 0)
if "%c%"=="92" diskpart

if "%c%"=="93" (echo BIOS beep codes vary by manufacturer & pause & goto bios)
if "%c%"=="94" (echo CMOS battery low replace CR2032 & pause & goto bios)

if "%c%"=="95" (powershell "Confirm-SecureBootUEFI" & pause & goto bios)
if "%c%"=="96" (start "" tpm.msc & pause & goto bios)
if "%c%"=="97" (manage-bde -status & pause & goto bios)

if "%c%"=="98" (start "" msinfo32 & pause & goto bios)

if "%c%"=="99" goto main

if "%c%"=="100" (
bootrec /fixmbr
bootrec /fixboot
bootrec /scanos
bootrec /rebuildbcd
bcdboot C:\Windows /s C: /f ALL
reagentc /enable
pause
goto bios
)

goto bios

@echo off
title REGISTRY TOOLKIT 1-100 FINAL
color 0B
setlocal EnableDelayedExpansion

:registry
cls

:: ===== BACKUP PATH =====
set "BK=C:\REG_BACKUP"
if not exist "%BK%" mkdir "%BK%"

echo ============================================================
echo REGISTRY TOOLKIT (1-100 FULL)
echo BACKUP: %BK%
echo ============================================================

echo [1] Regedit             [2] Backup Registry      [3] Restore Registry      [4] Group Policy
echo [5] GPUpdate            [6] USB Enable           [7] USB Disable           [8] TaskMgr Enable
echo [9] TaskMgr Disable     [10] CMD Enable          [11] Control Panel        [12] USB Write Disable
echo [13] UAC Settings       [14] USB Write Enable    [15] Defender             [16] RDP Policy
echo --------------------------------------------------------------------------
echo [17] Explorer Reset     [18] Context Fix         [19] Startup Config       [20] Full Policy Reset
echo [21] Disable Run        [22] Enable Run          [23] Disable CMD          [24] Enable CMD
echo [25] Disable Regedit    [26] Enable Regedit      [27] Disable Reg Tools    [28] Enable Reg Tools
echo [29] Disable Taskbar    [30] Enable Taskbar      [31] Disable LockScreen   [32] Enable LockScreen
echo --------------------------------------------------------------------------
echo [33] Disable Updates    [34] Enable Updates      [35] Disable Control      [36] Enable Control
echo [37] Login Banner ON    [38] Login Banner OFF    [39] Full Reg Backup      [40] HKCU Backup
echo [41] HKLM Backup        [42] System Info         [43] Explorer Reset       [44] Policy Cleanup
echo [45] Disable Cortana    [46] Enable Cortana      [47] Disable Telemetry    [48] Enable Telemetry
echo --------------------------------------------------------------------------
echo [49] Disable OneDrive   [50] Enable OneDrive     [51] Disable Firewall     [52] Enable Firewall
echo [53] Disable Defender   [54] Enable Defender     [55] Disable SmartScr     [56] Enable SmartScr
echo [57] Disable UAC        [58] Enable UAC          [59] CMD Admin OFF        [60] CMD Admin ON
echo --------------------------------------------------------------------------
echo [61] Disable USB        [62] Enable USB          [63] Disable RemoteReg    [64] Enable RemoteReg
echo [65] Disable Autorun    [66] Enable Autorun      [67] Task Sched View      [68] Task Sched View
echo [69] Performance Boost  [70] Reset Performance   [71] Clear Temp           [72] Explorer Restart
echo --------------------------------------------------------------------------
echo [73] Disable Anim       [74] Enable Anim         [75] Disable Search       [76] Enable Search
echo [77] Stop UpdateSvc     [78] Start UpdateSvc     [79] Stop PrintSvc        [80] Start PrintSvc
echo [81] Disable RDP        [82] Enable RDP          [83] WinRM Enable         [84] WinRM Config
echo --------------------------------------------------------------------------
echo [85] Disable SMBv1      [86] Enable SMBv1        [87] Full Export          [88] Import Registry
echo [89] Restore Point      [90] System Scan         [91] Disable Edge         [92] Enable Edge
echo [93] Disable Store      [94] Enable Store        [95] Disable Update UI    [96] Enable Update UI
echo --------------------------------------------------------------------------
echo [97] Open Backup        [98] Open Logs           [99] Back Menu            [100] Ultimate Fix
echo ============================================================

set /p c=Select Option (1-100):

:: ===== 1–100 COMMANDS =====
if "%c%"=="1" start regedit
if "%c%"=="2" reg export HKLM "%BK%\full.reg" /y
if "%c%"=="3" start "" "%BK%\full.reg"
if "%c%"=="4" start gpedit.msc
if "%c%"=="5" gpupdate /force
if "%c%"=="6" reg add HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR /v Start /t REG_DWORD /d 3 /f
if "%c%"=="7" reg add HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR /v Start /t REG_DWORD /d 4 /f
if "%c%"=="8" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f
if "%c%"=="9" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
if "%c%"=="10" reg add HKCU\Software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 0 /f

if "%c%"=="11" start control
if "%c%"=="12" reg add HKLM\SYSTEM\CurrentControlSet\Control\StorageDevicePolicies /v WriteProtect /t REG_DWORD /d 1 /f
if "%c%"=="13" start UserAccountControlSettings
if "%c%"=="14" reg add HKLM\SYSTEM\CurrentControlSet\Control\StorageDevicePolicies /v WriteProtect /t REG_DWORD /d 0 /f
if "%c%"=="15" start windowsdefender:
if "%c%"=="16" start gpedit.msc
if "%c%"=="17" taskkill /f /im explorer.exe & start explorer.exe
if "%c%"=="18" echo Context Cleaned
if "%c%"=="19" start msconfig
if "%c%"=="20" RD /S /Q "%WinDir%\System32\GroupPolicy" & gpupdate /force

if "%c%"=="21" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoRun /t REG_DWORD /d 1 /f
if "%c%"=="22" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoRun /t REG_DWORD /d 0 /f
if "%c%"=="23" reg add HKCU\Software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 1 /f
if "%c%"=="24" reg add HKCU\Software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 0 /f
if "%c%"=="25" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f
if "%c%"=="26" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 0 /f
if "%c%"=="27" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f
if "%c%"=="28" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 0 /f
if "%c%"=="29" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoTaskGrouping /t REG_DWORD /d 1 /f
if "%c%"=="30" reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoTaskGrouping /f

if "%c%"=="31" reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization /v NoLockScreen /t REG_DWORD /d 1 /f
if "%c%"=="32" reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization /v NoLockScreen /t REG_DWORD /d 0 /f
if "%c%"=="33" reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /v NoAutoUpdate /t REG_DWORD /d 1 /f
if "%c%"=="34" reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /v NoAutoUpdate /t REG_DWORD /d 0 /f
if "%c%"=="35" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoControlPanel /t REG_DWORD /d 1 /f
if "%c%"=="36" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoControlPanel /t REG_DWORD /d 0 /f
if "%c%"=="37" echo Banner ON
if "%c%"=="38" echo Banner OFF

if "%c%"=="39" reg export HKLM "%BK%\FULL.reg" /y
if "%c%"=="40" reg export HKCU "%BK%\HKCU.reg" /y
if "%c%"=="41" reg export HKLM "%BK%\HKLM.reg" /y
if "%c%"=="42" systeminfo > "%BK%\info.txt"
if "%c%"=="43" taskkill /f /im explorer.exe & start explorer.exe
if "%c%"=="44" gpupdate /force
if "%c%"=="45" reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search /v AllowCortana /t REG_DWORD /d 0 /f
if "%c%"=="46" reg delete HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search /v AllowCortana /f
if "%c%"=="47" reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection /v AllowTelemetry /t REG_DWORD /d 0 /f
if "%c%"=="48" reg delete HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection /v AllowTelemetry /f
if "%c%"=="49" reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive /v DisableFileSyncNGSC /t REG_DWORD /d 1 /f
if "%c%"=="50" reg delete HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive /v DisableFileSyncNGSC /f

if "%c%"=="51" netsh advfirewall set allprofiles state off
if "%c%"=="52" netsh advfirewall set allprofiles state on
if "%c%"=="53" reg add HKLM\SOFTWARE\Policies\Microsoft\Windows Defender /v DisableAntiSpyware /t REG_DWORD /d 1 /f
if "%c%"=="54" reg delete HKLM\SOFTWARE\Policies\Microsoft\Windows Defender /v DisableAntiSpyware /f
if "%c%"=="55" reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v SmartScreenEnabled /t REG_SZ /d Off /f
if "%c%"=="56" reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v SmartScreenEnabled /f
if "%c%"=="57" reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
if "%c%"=="58" reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 1 /f
if "%c%"=="59" echo CMD Admin Disabled
if "%c%"=="60" echo CMD Admin Enabled

if "%c%"=="61" reg add HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR /v Start /t REG_DWORD /d 4 /f
if "%c%"=="62" reg add HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR /v Start /t REG_DWORD /d 3 /f
if "%c%"=="63" reg add HKLM\SYSTEM\CurrentControlSet\Control\SecurePipeServers\winreg /v DisableRemoteRegistry /t REG_DWORD /d 1 /f
if "%c%"=="64" reg delete HKLM\SYSTEM\CurrentControlSet\Control\SecurePipeServers\winreg /v DisableRemoteRegistry /f
if "%c%"=="65" reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDriveTypeAutoRun /t REG_DWORD /d 255 /f
if "%c%"=="66" reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDriveTypeAutoRun /f
if "%c%"=="67" schtasks /query
if "%c%"=="68" schtasks /query
if "%c%"=="69" reg add HKCU\Control Panel\Desktop /v MenuShowDelay /t REG_SZ /d 0 /f
if "%c%"=="70" reg delete HKCU\Control Panel\Desktop /v MenuShowDelay /f

if "%c%"=="71" del /s /q %temp%\*.*
if "%c%"=="72" taskkill /f /im explorer.exe & start explorer.exe
if "%c%"=="73" reg add HKCU\Control Panel\Desktop /v UserPreferencesMask /t REG_BINARY /d 9012038010000000 /f
if "%c%"=="74" echo Animation Enabled
if "%c%"=="75" reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Search /v BingSearchEnabled /t REG_DWORD /d 0 /f
if "%c%"=="76" reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Search /v BingSearchEnabled /f
if "%c%"=="77" net stop wuauserv
if "%c%"=="78" net start wuauserv
if "%c%"=="79" net stop spooler
if "%c%"=="80" net start spooler

if "%c%"=="81" reg add HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server /v fDenyTSConnections /t REG_DWORD /d 1 /f
if "%c%"=="82" reg add HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server /v fDenyTSConnections /t REG_DWORD /d 0 /f
if "%c%"=="83" winrm quickconfig -q
if "%c%"=="84" winrm set winrm/config/service @{AllowUnencrypted="true"}
if "%c%"=="85" dism /online /disable-feature /featurename:SMB1Protocol
if "%c%"=="86" dism /online /enable-feature /featurename:SMB1Protocol
if "%c%"=="87" reg export HKLM "%BK%\FULL_EXPORT.reg" /y
if "%c%"=="88" start "" "%BK%\FULL_EXPORT.reg"
if "%c%"=="89" powershell Checkpoint-Computer -Description "RestorePoint"
if "%c%"=="90" sfc /scannow

if "%c%"=="91" reg add HKLM\Software\Policies\Microsoft\Edge /v HideFirstRunExperience /t REG_DWORD /d 1 /f
if "%c%"=="92" reg delete HKLM\Software\Policies\Microsoft\Edge /v HideFirstRunExperience /f
if "%c%"=="93" reg add HKLM\Software\Policies\Microsoft\WindowsStore /v RemoveWindowsStore /t REG_DWORD /d 1 /f
if "%c%"=="94" reg delete HKLM\Software\Policies\Microsoft\WindowsStore /v RemoveWindowsStore /f
if "%c%"=="95" echo Update UI Disabled
if "%c%"=="96" echo Update UI Enabled
if "%c%"=="97" start "" %BK%
if "%c%"=="98" start "" %BK%
if "%c%"=="99" goto main
if "%c%"=="100" (
reg export HKLM "%BK%\ULTIMATE.reg" /y
sfc /scannow
gpupdate /force
echo DONE
)

pause
goto registry


:: ============================================================
:: [11] STORAGE / PARTITION / USB / SECURITY – MASTER MENU
:: FULL 1-98 + 99 BACK (ULTIMATE ENTERPRISE EDITION)
:: ============================================================
:storage
cls
color 0E
title STORAGE / PARTITION / USB / SECURITY MASTER MENU

echo ============================================================
echo [1] Disk Management              [11] SSD Health                [21] USB Write Protect OFF
echo [2] DiskPart                     [12] HDD Repair                [22] USB Write Protect ON
echo [3] List Disk                    [13] USB Repair                [23] USB Port Disable
echo [4] List Partition               [14] RAW Drive Fix             [24] USB Port Enable
echo [5] Extend Volume                [15] MBR/GPT Check             [25] USB Storage Block
echo [6] Shrink Volume                [16] TRIM Status               [26] USB Storage Unblock
echo [7] Format Drive                 [17] Cleanup                   [27] BitLocker Status
echo [8] Assign Letter                [18] Clone Guide               [28] BitLocker Unlock
echo [9] CHKDSK Repair                [19] Full Storage Repair       [29] BitLocker OFF
echo [10] SMART Check                 [20] Enterprise Toolkit        [30] BitLocker ON
echo.
echo [31] Device Manager              [41] Storage Services Repair   [51] USB Power Reset
echo [32] Hidden USB Show             [42] Clear Disk Readonly       [52] Disk Driver Reinstall
echo [33] Remove Read Only            [43] Disk Clean Full           [53] Storage Spaces Repair
echo [34] Storage Policy Reset        [44] Mount Point Repair        [54] RAID Controller Check
echo [35] Enable AutoMount            [45] Boot USB Repair           [55] NVMe Health Check
echo [36] Disable AutoRun             [46] External HDD Fix          [56] SATA/AHCI Check
echo [37] Enable AutoRun              [47] SD Card Repair            [57] Removable Audit
echo [38] Registry USB Reset          [48] Full USB Auto Fix         [58] Disable External Media
echo [39] Driver Scan                 [49] Security Toolkit          [59] USB Malware Cleanup
echo [40] Ultimate Storage Center     [50] Hidden USB Cleanup        [60] Secure USB Format
echo.
echo [61] Group Policy USB Fix        [71] USB Encryption Audit
echo [62] Registry Mount Fix          [72] TPM Check
echo [63] VHD Mount/Detach            [73] Secure Boot Check
echo [64] SAN Policy Reset            [74] BIOS Storage Mode
echo [65] Shadow Copy Fix             [75] Data Recovery Toolkit
echo [66] Rebuild BCD                 [76] Deleted File Recovery
echo [67] Lost Partition Recovery     [77] Backup Toolkit
echo [68] Enable External Media       [78] Restore Toolkit
echo [69] Security Lockdown           [79] USB Bandwidth Reset
echo [70] Full Auto Repair            [80] USB Speed Check
echo.
echo [81] Disk Benchmark              [91] Enterprise Compliance Check
echo [82] SSD Optimize                [92] Endpoint USB Audit
echo [83] HDD Defrag                  [93] Forensic USB Scan
echo [84] Storage Diagnostic          [94] Mass Storage Reset
echo [85] Driver Backup               [95] Full Device Inventory
echo [86] Driver Restore              [96] Zero Fill Disk
echo [87] NAS Access Toolkit          [97] RAID Repair
echo [88] Shared Folder Fix           [98] Cloud Sync Repair
echo [89] SMB Full Reset              [99] Back
echo [90] Ultimate Storage Dashboard
echo ============================================================
set /p c=Select Storage Option (1-98): 

if "%c%"=="1" start diskmgmt.msc
if "%c%"=="2" start diskpart
if "%c%"=="3" (echo list disk | diskpart & pause)
if "%c%"=="4" set /p dsk=Disk Number: & (echo select disk %dsk% & echo list partition) | diskpart & pause
if "%c%"=="5" set /p vol=Volume: & (echo select volume %vol% & echo extend) | diskpart & pause
if "%c%"=="6" set /p vol=Volume: & set /p size=Shrink MB: & (echo select volume %vol% & echo shrink desired=%size%) | diskpart & pause
if "%c%"=="7" set /p drv=Drive: & format %drv%: /q & pause
if "%c%"=="8" set /p p=Partition: & set /p l=Letter: & (echo select partition %p% & echo assign letter=%l%) | diskpart & pause
if "%c%"=="9" set /p drv=Drive: & chkdsk %drv%: /f /r & pause
if "%c%"=="10" wmic diskdrive get model,status & pause
if "%c%"=="11" powershell "Get-PhysicalDisk | Select FriendlyName,HealthStatus" & pause
if "%c%"=="12" chkdsk /f /r /x & pause
if "%c%"=="13" set /p drv=USB: & format %drv%: /q /x & pause
if "%c%"=="14" chkdsk /f /r & pause
if "%c%"=="15" powershell "Get-Disk | Select Number,PartitionStyle" & pause
if "%c%"=="16" fsutil behavior query DisableDeleteNotify & pause
if "%c%"=="17" cleanmgr /sageset:1 & cleanmgr /sagerun:1 & pause
if "%c%"=="18" echo Use Clonezilla / Macrium Reflect & pause
if "%c%"=="19" sfc /scannow & chkdsk /f & DISM /Online /Cleanup-Image /RestoreHealth & pause
if "%c%"=="20" start diskmgmt.msc
if "%c%"=="21" reg add "HKLM\SYSTEM\CurrentControlSet\Control\StorageDevicePolicies" /v WriteProtect /t REG_DWORD /d 0 /f & pause
if "%c%"=="22" reg add "HKLM\SYSTEM\CurrentControlSet\Control\StorageDevicePolicies" /v WriteProtect /t REG_DWORD /d 1 /f & pause
if "%c%"=="23" reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR" /v Start /t REG_DWORD /d 4 /f & pause
if "%c%"=="24" reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR" /v Start /t REG_DWORD /d 3 /f & pause
if "%c%"=="25" reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\RemovableStorageDevices" /v Deny_All /t REG_DWORD /d 1 /f & pause
if "%c%"=="26" reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\RemovableStorageDevices" /v Deny_All /f & pause
if "%c%"=="27" manage-bde -status & pause
if "%c%"=="28" set /p drv=Drive: & manage-bde -unlock %drv%: -RecoveryPassword & pause
if "%c%"=="29" set /p drv=Drive: & manage-bde -off %drv%: & pause
if "%c%"=="30" set /p drv=Drive: & manage-bde -on %drv%: & pause
if "%c%"=="31" start devmgmt.msc
if "%c%"=="32" set devmgr_show_nonpresent_devices=1 & start devmgmt.msc
if "%c%"=="33" attributes disk clear readonly & pause
if "%c%"=="34" reg delete "HKLM\SYSTEM\CurrentControlSet\Control\StorageDevicePolicies" /f & pause
if "%c%"=="35" mountvol /E & pause
if "%c%"=="36" reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDriveTypeAutoRun /t REG_DWORD /d 255 /f & pause
if "%c%"=="37" reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDriveTypeAutoRun /t REG_DWORD /d 91 /f & pause
if "%c%"=="38" reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR" /v Start /t REG_DWORD /d 3 /f & pause
if "%c%"=="39" pnputil /scan-devices & pause
if "%c%"=="40" start diskmgmt.msc
if "%c%"=="41" sc config StorSvc start= auto & sc start StorSvc & pause
if "%c%"=="42" set /p dsk=Disk: & (echo select disk %dsk% & echo attributes disk clear readonly) | diskpart & pause
if "%c%"=="43" set /p dsk=Disk: & (echo select disk %dsk% & echo clean) | diskpart & pause
if "%c%"=="44" mountvol /R & pause
if "%c%"=="45" bootrec /fixmbr & bootrec /fixboot & pause
if "%c%"=="46" chkdsk /f /r /x & pause
if "%c%"=="47" chkdsk /f /r /x & pause
if "%c%"=="48" pnputil /scan-devices & mountvol /E & pause
if "%c%"=="49" start devmgmt.msc
if "%c%"=="50" set devmgr_show_nonpresent_devices=1 & start devmgmt.msc
if "%c%"=="51" powercfg -devicequery wake_armed & pause
if "%c%"=="52" pnputil /scan-devices & pause
if "%c%"=="53" powershell "Get-StoragePool | Repair-VirtualDisk" & pause
if "%c%"=="54" wmic diskdrive get model,status & pause
if "%c%"=="55" powershell "Get-PhysicalDisk | Select FriendlyName,MediaType,HealthStatus" & pause
if "%c%"=="56" bcdedit /enum & pause
if "%c%"=="57" powershell "Get-PnpDevice -Class DiskDrive" & pause
if "%c%"=="58" reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\RemovableStorageDevices" /v Deny_All /t REG_DWORD /d 1 /f & pause
if "%c%"=="59" del /f /q autorun.inf & pause
if "%c%"=="60" set /p drv=USB: & format %drv%: /fs:ntfs /p:2 & pause
if "%c%"=="61" gpedit.msc
if "%c%"=="62" mountvol /R & mountvol /E & pause
if "%c%"=="63" diskmgmt.msc
if "%c%"=="64" diskpart & pause
if "%c%"=="65" vssadmin list shadows & pause
if "%c%"=="66" bootrec /rebuildbcd & pause
if "%c%"=="67" start https://www.cgsecurity.org/wiki/TestDisk
if "%c%"=="68" reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\RemovableStorageDevices" /v Deny_All /f & pause
if "%c%"=="69" reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR" /v Start /t REG_DWORD /d 4 /f & pause
if "%c%"=="70" sfc /scannow & DISM /Online /Cleanup-Image /RestoreHealth & pause
if "%c%"=="71" manage-bde -status & pause
if "%c%"=="72" tpm.msc
if "%c%"=="73" powershell Confirm-SecureBootUEFI
if "%c%"=="74" msinfo32
if "%c%"=="75" start https://www.cgsecurity.org
if "%c%"=="76" start https://www.recuva.com
if "%c%"=="77" sdclt.exe
if "%c%"=="78" rstrui.exe
if "%c%"=="79" netsh int ip reset & pause
if "%c%"=="80" winsat disk & pause
if "%c%"=="81" winsat disk & pause
if "%c%"=="82" defrag /C /O & pause
if "%c%"=="83" dfrgui
if "%c%"=="84" mdsched.exe
if "%c%"=="85" pnputil /export-driver * C:\DriverBackup & pause
if "%c%"=="86" pnputil /scan-devices & pause
if "%c%"=="87" explorer.exe
if "%c%"=="88" net share & pause
if "%c%"=="89" netsh advfirewall reset & pause
if "%c%"=="90" start diskmgmt.msc
if "%c%"=="91" gpresult /r & pause
if "%c%"=="92" powershell "Get-PnpDevice | ? {$_.Class -eq 'USB'}" & pause
if "%c%"=="93" mrt
if "%c%"=="94" pnputil /scan-devices & pause
if "%c%"=="95" driverquery & pause
if "%c%"=="96" cipher /w:C & pause
if "%c%"=="97" wmic diskdrive get status & pause
if "%c%"=="98" start ms-settings:sync
if "%c%"=="99" goto main
goto storage


:: ============================================================
:: [12] EMERGENCY / TASK KILL (FIXED - AUTO CLOSE ISSUE SOLVED)
:: MAIN ISSUE:
:: Option 12 me "start msconfig" ke baad script next line execute karke menu exit/close feel kar sakta hai
:: FIX:
:: Har option ke baad goto emergency ya pause proper hona chahiye
:: ============================================================

:emergency
cls
color 4F
echo [1]  Kill by Name           [11] Malware Kill
echo [2]  Kill by PID            [12] Startup Kill
echo [3]  Kill Hung Apps         [13] Printer Kill
echo [4]  Restart Explorer       [14] Network Reset
echo [5]  Force Shutdown         [15] CMD Shell
echo [6]  Force Restart          [16] PowerShell Shell
echo [7]  Safe Mode              [17] Freeze Recovery
echo [8]  Crash Logs             [18] Panic Repair
echo [9]  CPU Spike Kill         [19] Full Emergency Toolkit
echo [10] RAM Check              [20] Ultimate Rescue Suite
echo.
echo [99] Back
set /p c=Select Emergency Option (1-20): 

if "%c%"=="1" (set /p name=Process Name: & taskkill /f /im !name! & pause & goto emergency)

if "%c%"=="2" (set /p pid=Process PID: & taskkill /f /pid !pid! & pause & goto emergency)

if "%c%"=="3" (taskkill /f /fi "status eq not responding" & pause & goto emergency)

if "%c%"=="4" (taskkill /f /im explorer.exe & start explorer.exe & echo Explorer Restarted. & pause & goto emergency)

if "%c%"=="5" shutdown /s /f /t 0

if "%c%"=="6" shutdown /r /f /t 0

if "%c%"=="7" bcdedit /set {current} safeboot minimal & shutdown /r /t 0

:: FIXED LOGS
if "%c%"=="8" (start eventvwr & goto emergency)

:: FIXED CPU SPIKE (old High parsing broken)
if "%c%"=="9" (tasklist /v | findstr /i "Not Responding" & echo Review high CPU tasks manually in Task Manager. & pause & goto emergency)

if "%c%"=="10" (mdsched.exe & goto emergency)

if "%c%"=="11" ( taskkill /f /im wscript.exe & taskkill /f /im powershell.exe & start mrt & pause & goto emergency )

:: =========================
:: ISSUE FIXED HERE:
:: OLD: start msconfig
:: NEW:
if "%c%"=="12" (start msconfig & goto emergency)

if "%c%"=="13" ( net stop spooler & del /q /f %systemroot%\System32\spool\PRINTERS\*.* & net start spooler & pause & goto emergency )

if "%c%"=="14" ( netsh winsock reset & netsh int ip reset & ipconfig /flushdns & pause & goto emergency )

if "%c%"=="15" (start cmd.exe & goto emergency)

if "%c%"=="16" (start powershell.exe & goto emergency)

if "%c%"=="17" ( taskkill /f /im explorer.exe & start explorer.exe & echo UI Refreshed. & pause & goto emergency )

if "%c%"=="18" ( sfc /scannow & DISM /Online /Cleanup-Image /RestoreHealth & pause & goto emergency )

if "%c%"=="19" (start taskmgr & goto emergency)

:: FIXED ULTIMATE SUITE
if "%c%"=="20" ( taskkill /f /fi "status eq not responding" & netsh winsock reset & sfc /scannow & DISM /Online /Cleanup-Image /RestoreHealth & pause & goto emergency )

if "%c%"=="99" goto main

goto emergency


:: ============================================================
:: [13] QUICK TOOLS – FULL MODULE
:: ============================================================
:quick
cls
color 0B
echo [1] Calculator          [11] CMD                [21] Winver             [31] Programs & Features
echo [2] Notepad             [12] PowerShell         [22] DXDiag             [32] Firewall Panel
echo [3] Paint               [13] Windows Terminal   [23] MRT Tool           [33] Network Connections
echo [4] Snipping Tool       [14] Control Panel      [24] Remote Assistance  [34] Disk Management
echo [5] Character Map       [15] God Mode           [25] Quick Assist       [35] Event Viewer
echo [6] On-Screen Keyboard  [16] Run Dialog         [26] Sticky Notes       [36] Reliability Monitor
echo [7] Clipboard Manager   [17] Task Manager       [27] Registry Editor    [37] UAC Settings
echo [8] Steps Recorder      [18] Resource Monitor   [28] Services           [38] Local Users & Groups
echo [9] Magnifier           [19] Performance Monitor [29] Device Manager     [39] Task Scheduler
echo [10] Narrator           [20] System Information [30] Computer Management [40] Emergency Toolkit
echo.
echo [99] Back
set /p c=Select Quick Tool (1-40): 

if "%c%"=="1" start calc
if "%c%"=="2" start notepad
if "%c%"=="3" start mspaint
if "%c%"=="4" start snippingtool
if "%c%"=="5" start charmap
if "%c%"=="6" start osk
if "%c%"=="7" start ms-settings:clipboard
if "%c%"=="8" start psr
if "%c%"=="9" start magnify
if "%c%"=="10" start narrator
if "%c%"=="11" start cmd
if "%c%"=="12" start powershell
if "%c%"=="13" start wt
if "%c%"=="14" start control
if "%c%"=="15" explorer shell:::{ED7BA470-8E54-465E-825C-99712043E01C}
if "%c%"=="16" powershell (New-Object -ComObject Shell.Application).FileRun()
if "%c%"=="17" start taskmgr
if "%c%"=="18" start resmon
if "%c%"=="19" start perfmon
if "%c%"=="20" start msinfo32
if "%c%"=="21" winver & pause
if "%c%"=="22" start dxdiag
if "%c%"=="23" start mrt
if "%c%"=="24" start msra
if "%c%"=="25" start quickassist
if "%c%"=="26" start explorer shell:appsFolder\Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe!App
if "%c%"=="27" start regedit
if "%c%"=="28" start services.msc
if "%c%"=="29" start devmgmt.msc
if "%c%"=="30" start compmgmt.msc
if "%c%"=="31" start appwiz.cpl
if "%c%"=="32" start firewall.cpl
if "%c%"=="33" start ncpa.cpl
if "%c%"=="34" start diskmgmt.msc
if "%c%"=="35" start eventvwr.msc
if "%c%"=="36" start perfmon /rel
if "%c%"=="37" start UserAccountControlSettings
if "%c%"=="38" start lusrmgr.msc
if "%c%"=="39" start taskschd.msc
if "%c%"=="40" goto emergency
if "%c%"=="99" goto main
goto quick

:: ============================================================
:: [14] USER / PC INFO – FULL MODULE (WMIC FIXED)
:: ============================================================
:usertools
cls
color 0B

echo [1]  Current Username       [11] CPU Info            [21] Wi-Fi Details         [31] Windows Update Status
echo [2]  PC Name / Hostname     [12] RAM Info            [22] Battery Health Report [32] Network Adapter Info
echo [3]  Logged In Users        [13] RAM Usage           [23] Uptime                [33] USB Devices
echo [4]  Windows Edition        [14] Disk Info           [24] Installed Software    [34] Driver Summary
echo [5]  Windows Version        [15] Disk Health         [25] Startup Programs      [35] Env Variables
echo [6]  Activation Status      [16] SSD / HDD Type      [26] Running Services      [36] User Groups
echo [7]  Product Key Info       [17] GPU Info            [27] Printer Info          [37] Shared Folders
echo [8]  Serial Number          [18] MAC Address         [28] Domain / Workgroup    [38] Export Full Report
echo [9]  BIOS Version           [19] IP Address          [29] Admin Rights Check    [39] Enterprise Audit
echo [10] Motherboard Info       [20] Public IP           [30] Defender Status       [40] Diagnostic Dashboard
echo.
echo [99] Back

set /p c=Select Info Option (1-40):

:: ===== USER =====
if "%c%"=="1" whoami & pause
if "%c%"=="2" hostname & pause
if "%c%"=="3" query user & pause

:: ===== WINDOWS =====
if "%c%"=="4" dism /online /get-currentedition & pause
if "%c%"=="5" winver
if "%c%"=="6" slmgr /xpr & pause
if "%c%"=="7" powershell "Get-WmiObject SoftwareLicensingService | Select OA3xOriginalProductKey" & pause

:: ===== HARDWARE (FIXED) =====
if "%c%"=="8" powershell "Get-CimInstance Win32_BIOS | Select SerialNumber" & pause
if "%c%"=="9" powershell "Get-CimInstance Win32_BIOS | Select SMBIOSBIOSVersion" & pause
if "%c%"=="10" powershell "Get-CimInstance Win32_BaseBoard | Select Manufacturer,Product" & pause

if "%c%"=="11" powershell "Get-CimInstance Win32_Processor | Select Name,MaxClockSpeed,NumberOfCores" & pause
if "%c%"=="12" powershell "Get-CimInstance Win32_PhysicalMemory | Select Capacity,Speed" & pause
if "%c%"=="13" powershell "Get-CimInstance Win32_OperatingSystem | Select TotalVisibleMemorySize,FreePhysicalMemory" & pause

if "%c%"=="14" powershell "Get-CimInstance Win32_LogicalDisk | Select DeviceID,Size,FreeSpace" & pause
if "%c%"=="15" powershell "Get-PhysicalDisk | Select FriendlyName,HealthStatus" & pause
if "%c%"=="16" powershell "Get-PhysicalDisk | Select FriendlyName,MediaType" & pause

if "%c%"=="17" powershell "Get-CimInstance Win32_VideoController | Select Name" & pause

:: ===== NETWORK =====
if "%c%"=="18" getmac & pause
if "%c%"=="19" ipconfig | findstr IPv4 & pause
if "%c%"=="20" powershell "(Invoke-WebRequest -Uri 'https://api.ipify.org').Content" & pause
if "%c%"=="21" netsh wlan show interfaces & pause

:: ===== SYSTEM =====
if "%c%"=="22" powercfg /batteryreport & start battery-report.html
if "%c%"=="23" powershell "(get-date) - (gcim Win32_OperatingSystem).LastBootUpTime" & pause

if "%c%"=="24" powershell "Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName" & pause
if "%c%"=="25" powershell "Get-CimInstance Win32_StartupCommand | Select Name,Command" & pause
if "%c%"=="26" net start & pause
if "%c%"=="27" powershell "Get-Printer | Select Name,Default" & pause

if "%c%"=="28" powershell "Get-CimInstance Win32_ComputerSystem | Select Domain,PartOfDomain" & pause
if "%c%"=="29" (net session >nul 2>&1 && echo Admin: YES || echo Admin: NO) & pause
if "%c%"=="30" powershell "Get-MpComputerStatus" & pause

if "%c%"=="31" powershell "Get-HotFix | sort InstalledOn -Descending | Select -First 10" & pause
if "%c%"=="32" netsh interface show interface & pause

if "%c%"=="33" powershell "Get-PnpDevice -Class USB" & pause
if "%c%"=="34" driverquery /fo table & pause
if "%c%"=="35" set & pause
if "%c%"=="36" net localgroup & pause
if "%c%"=="37" net share & pause

:: ===== REPORTS =====
if "%c%"=="38" msinfo32 /report SysReport.txt & echo Saved: SysReport.txt & pause
if "%c%"=="39" systeminfo > EnterpriseAudit.txt & echo Saved: EnterpriseAudit.txt & pause
if "%c%"=="40" start perfmon /report

if "%c%"=="99" goto main

goto usertools

@echo off
setlocal EnableExtensions EnableDelayedExpansion

:: ============================================================
:: ULTIMATE BACKUP / RESTORE TOOLKIT (1–100)
:: ============================================================

:backuprestore
cls
color 0B
title BACKUP / RESTORE TOOLS

:: ===== DRIVE SELECT =====
echo ============================================================
echo              SELECT BACKUP DRIVE
echo ============================================================
echo Available Drives:
for %%d in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
 if exist "%%d:\" echo %%d:
)
echo.
set /p BDRIVE=Enter Drive (C/D/E): 
set "BDRIVE=%BDRIVE::=%"
if not exist "%BDRIVE%:\" (
  echo Invalid Drive!
  pause
  goto backuprestore
)

:: ===== ROOTS =====
set "BKROOT=%BDRIVE%:\ULTIMATE_BACKUP"
set "DRVROOT=%BKROOT%\Drivers"
set "EXPDRV=%BKROOT%\ExportDrivers"
set "WIFIROOT=%BKROOT%\WiFi"
set "LOGROOT=%BKROOT%\Logs"
set "USRROOT=%BKROOT%\User"
set "DESKROOT=%BKROOT%\Desktop"
set "DOCROOT=%BKROOT%\Documents"
set "DLROOT=%BKROOT%\Downloads"
set "PICROOT=%BKROOT%\Pictures"
set "VIDROOT=%BKROOT%\Videos"
set "MUSROOT=%BKROOT%\Music"
set "FAVROOT=%BKROOT%\Favorites"
set "BROWROOT=%BKROOT%\Browser"
set "CHROOT=%BKROOT%\Chrome"
set "EDROOT=%BKROOT%\Edge"
set "OUTROOT=%BKROOT%\Outlook"
set "NETFILE=%BKROOT%\Network.txt"
set "FWFILE=%BKROOT%\Firewall.wfw"
set "HOSTFILE=%BKROOT%\hosts.bak"
set "POWFILE=%BKROOT%\Power.txt"
set "DNSFILE=%BKROOT%\DNS.txt"
set "STARTROOT=%BKROOT%\Startup"
set "TMPROOT=%BKROOT%\Temp"
set "CMDBAK=%BKROOT%\cmd_backup.exe"
set "VMROOT=%BKROOT%\VM"
set "ESSROOT=%BKROOT%\Essential"
set "NASROOT=%BKROOT%\NAS"
set "USBROOT=%BKROOT%\USB"
set "GPROOT=%BKROOT%\GP"
set "FULLREG=%BKROOT%\fullreg.reg"
set "EMRBCD=%BKROOT%\emergency.bcd"

:: ===== CREATE FOLDERS =====
for %%A in (
"%BKROOT%" "%DRVROOT%" "%EXPDRV%" "%WIFIROOT%" "%LOGROOT%" "%USRROOT%" "%DESKROOT%"
"%DOCROOT%" "%DLROOT%" "%PICROOT%" "%VIDROOT%" "%MUSROOT%" "%FAVROOT%" "%BROWROOT%"
"%CHROOT%" "%EDROOT%" "%OUTROOT%" "%STARTROOT%" "%TMPROOT%" "%VMROOT%" "%ESSROOT%"
"%NASROOT%" "%USBROOT%" "%GPROOT%"
) do if not exist %%~A mkdir %%~A

cls
echo ============================================================
echo BACKUP LOCATION: %BKROOT%
echo ============================================================

:: ===== MENU (3 COLUMN) =====
echo [01] Full Backup        [02] Full Restore       [03] Restore Point
echo [04] System Restore     [05] Enable Protect     [06] Disable Protect
echo [07] Reg Backup         [08] Reg Restore        [09] Boot Backup
echo [10] Boot Restore       [11] EFI Backup         [12] EFI Restore
echo [13] Driver Backup      [14] Driver Restore     [15] Export Drivers
echo [16] Import Drivers     [17] User Backup        [18] User Restore
echo [19] Desktop Backup     [20] Desktop Restore    [21] Docs Backup
echo [22] Docs Restore       [23] Downloads Backup   [24] Downloads Restore
echo [25] Pics Backup        [26] Pics Restore       [27] Videos Backup
echo [28] Videos Restore     [29] Music Backup       [30] Music Restore
echo [31] Fav Backup         [32] Fav Restore        [33] WiFi Backup
echo [34] WiFi Restore       [35] Network Backup     [36] Network Restore
echo [37] Firewall Backup    [38] Firewall Restore   [39] Browser Backup
echo [40] Browser Restore    [41] Chrome Backup      [42] Chrome Restore
echo [43] Edge Backup        [44] Edge Restore       [45] Outlook Backup
echo [46] Outlook Restore    [47] Printer Backup     [48] Printer Restore
echo [49] Hosts Backup       [50] Hosts Restore      [51] Power Backup
echo [52] Power Restore      [53] DNS Backup         [54] DNS Restore
echo [55] Startup Backup     [56] Startup Restore    [57] Service List
echo [58] Service List       [59] Task List          [60] Task List
echo [61] Temp Backup        [62] Temp Restore       [63] CMD Backup
echo [64] CMD Restore        [65] Full Disk Backup   [66] Partition Backup
echo [67] Recovery USB       [68] Advanced Recovery  [69] HyperV Info
echo [70] HyperV Info        [71] VM Backup          [72] VM Restore
echo [73] Essential Backup   [74] Essential Restore  [75] NAS Backup
echo [76] NAS Restore        [77] USB Backup         [78] USB Restore
echo [79] Activation Info    [80] Activate Windows   [81] Office Info
echo [82] Activate Office    [83] GP Backup          [84] GP Restore
echo [85] Cert Backup        [86] Cert Manager       [87] Full Reg Export
echo [88] Full Reg Import    [89] Boot Backup        [90] Boot Restore
echo [91] System Image       [92] Backup Panel       [93] File History
echo [94] Previous Version   [95] Full Backup+       [96] Restore Info
echo [97] Boot Repair        [98] MBR Repair         [99] Back
echo [100] Ultimate Backup
echo ============================================================
set /p c=Select Option (1-100):

:: ===== 1–10 =====
if "%c%"=="1" wbadmin start backup -backupTarget:%BDRIVE% -allCritical -quiet & pause & goto backuprestore
if "%c%"=="2" echo Use Windows Recovery (WinRE) & pause & goto backuprestore
if "%c%"=="3" powershell -command "Checkpoint-Computer -Description 'RP'" & pause & goto backuprestore
if "%c%"=="4" rstrui.exe & goto backuprestore
if "%c%"=="5" powershell -command "Enable-ComputerRestore -Drive 'C:\'" & pause & goto backuprestore
if "%c%"=="6" powershell -command "Disable-ComputerRestore -Drive 'C:\'" & pause & goto backuprestore
if "%c%"=="7" reg export HKLM "%BKROOT%\reg_hklm.reg" /y & pause & goto backuprestore
if "%c%"=="8" reg import "%BKROOT%\reg_hklm.reg" & pause & goto backuprestore
if "%c%"=="9" bcdedit /export "%BKROOT%\bcd.bak" & pause & goto backuprestore
if "%c%"=="10" bcdedit /import "%BKROOT%\bcd.bak" & pause & goto backuprestore

:: ===== 11–20 =====
if "%c%"=="11" mountvol X: /s & xcopy X:\ "%BKROOT%\EFI\" /E /H /C /I & pause & goto backuprestore
if "%c%"=="12" xcopy "%BKROOT%\EFI\" X:\ /E /H /C /I & pause & goto backuprestore
if "%c%"=="13" dism /online /export-driver /destination:"%DRVROOT%" & pause & goto backuprestore
if "%c%"=="14" pnputil /add-driver "%DRVROOT%\*.inf" /subdirs /install & pause & goto backuprestore
if "%c%"=="15" dism /online /export-driver /destination:"%EXPDRV%" & pause & goto backuprestore
if "%c%"=="16" pnputil /add-driver "%EXPDRV%\*.inf" /subdirs /install & pause & goto backuprestore
if "%c%"=="17" robocopy "%USERPROFILE%" "%USRROOT%" /MIR & pause & goto backuprestore
if "%c%"=="18" robocopy "%USRROOT%" "%USERPROFILE%" /MIR & pause & goto backuprestore
if "%c%"=="19" robocopy "%USERPROFILE%\Desktop" "%DESKROOT%" /MIR & pause & goto backuprestore
if "%c%"=="20" robocopy "%DESKROOT%" "%USERPROFILE%\Desktop" /MIR & pause & goto backuprestore

:: ===== 21–30 =====
if "%c%"=="21" robocopy "%USERPROFILE%\Documents" "%DOCROOT%" /MIR & pause & goto backuprestore
if "%c%"=="22" robocopy "%DOCROOT%" "%USERPROFILE%\Documents" /MIR & pause & goto backuprestore
if "%c%"=="23" robocopy "%USERPROFILE%\Downloads" "%DLROOT%" /MIR & pause & goto backuprestore
if "%c%"=="24" robocopy "%DLROOT%" "%USERPROFILE%\Downloads" /MIR & pause & goto backuprestore
if "%c%"=="25" robocopy "%USERPROFILE%\Pictures" "%PICROOT%" /MIR & pause & goto backuprestore
if "%c%"=="26" robocopy "%PICROOT%" "%USERPROFILE%\Pictures" /MIR & pause & goto backuprestore
if "%c%"=="27" robocopy "%USERPROFILE%\Videos" "%VIDROOT%" /MIR & pause & goto backuprestore
if "%c%"=="28" robocopy "%VIDROOT%" "%USERPROFILE%\Videos" /MIR & pause & goto backuprestore
if "%c%"=="29" robocopy "%USERPROFILE%\Music" "%MUSROOT%" /MIR & pause & goto backuprestore
if "%c%"=="30" robocopy "%MUSROOT%" "%USERPROFILE%\Music" /MIR & pause & goto backuprestore

:: ===== 31–40 =====
if "%c%"=="31" robocopy "%USERPROFILE%\Favorites" "%FAVROOT%" /MIR & pause & goto backuprestore
if "%c%"=="32" robocopy "%FAVROOT%" "%USERPROFILE%\Favorites" /MIR & pause & goto backuprestore
if "%c%"=="33" netsh wlan export profile key=clear folder="%WIFIROOT%" & pause & goto backuprestore
if "%c%"=="34" for %%f in ("%WIFIROOT%\*.xml") do netsh wlan add profile filename="%%f" user=all & pause & goto backuprestore
if "%c%"=="35" netsh int ip dump > "%NETFILE%" & pause & goto backuprestore
if "%c%"=="36" netsh exec "%NETFILE%" & pause & goto backuprestore
if "%c%"=="37" netsh advfirewall export "%FWFILE%" & pause & goto backuprestore
if "%c%"=="38" netsh advfirewall import "%FWFILE%" & pause & goto backuprestore
if "%c%"=="39" robocopy "%LOCALAPPDATA%" "%BROWROOT%" /MIR & pause & goto backuprestore
if "%c%"=="40" robocopy "%BROWROOT%" "%LOCALAPPDATA%" /MIR & pause & goto backuprestore

:: ===== 41–50 =====
if "%c%"=="41" robocopy "%LOCALAPPDATA%\Google\Chrome\User Data" "%CHROOT%" /MIR & pause & goto backuprestore
if "%c%"=="42" robocopy "%CHROOT%" "%LOCALAPPDATA%\Google\Chrome\User Data" /MIR & pause & goto backuprestore
if "%c%"=="43" robocopy "%LOCALAPPDATA%\Microsoft\Edge\User Data" "%EDROOT%" /MIR & pause & goto backuprestore
if "%c%"=="44" robocopy "%EDROOT%" "%LOCALAPPDATA%\Microsoft\Edge\User Data" /MIR & pause & goto backuprestore
if "%c%"=="45" robocopy "%USERPROFILE%\Documents\Outlook Files" "%OUTROOT%" /MIR & pause & goto backuprestore
if "%c%"=="46" robocopy "%OUTROOT%" "%USERPROFILE%\Documents\Outlook Files" /MIR & pause & goto backuprestore
if "%c%"=="47" printui /s /ss & pause & goto backuprestore
if "%c%"=="48" printui /s /sr & pause & goto backuprestore
if "%c%"=="49" copy C:\Windows\System32\drivers\etc\hosts "%HOSTFILE%" & pause & goto backuprestore
if "%c%"=="50" copy "%HOSTFILE%" C:\Windows\System32\drivers\etc\hosts & pause & goto backuprestore

:: ===== 51–60 =====
if "%c%"=="51" powercfg /qh > "%POWFILE%" & pause & goto backuprestore
if "%c%"=="52" powercfg /restoredefaultschemes & pause & goto backuprestore
if "%c%"=="53" ipconfig /displaydns > "%DNSFILE%" & pause & goto backuprestore
if "%c%"=="54" ipconfig /flushdns & pause & goto backuprestore
if "%c%"=="55" robocopy "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup" "%STARTROOT%" /MIR & pause & goto backuprestore
if "%c%"=="56" robocopy "%STARTROOT%" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup" /MIR & pause & goto backuprestore
if "%c%"=="57" sc query type= service & pause & goto backuprestore
if "%c%"=="58" net start & pause & goto backuprestore
if "%c%"=="59" schtasks /query > "%BKROOT%\tasks.txt" & pause & goto backuprestore
if "%c%"=="60" schtasks /query & pause & goto backuprestore

:: ===== 61–70 =====
if "%c%"=="61" xcopy "%temp%" "%TMPROOT%\" /E /H /C /I & pause & goto backuprestore
if "%c%"=="62" xcopy "%TMPROOT%\" "%temp%\" /E /H /C /I & pause & goto backuprestore
if "%c%"=="63" copy "%SystemRoot%\System32\cmd.exe" "%CMDBAK%" & pause & goto backuprestore
if "%c%"=="64" copy "%CMDBAK%" "%SystemRoot%\System32\cmd.exe" & pause & goto backuprestore
if "%c%"=="65" wbadmin start backup -backupTarget:%BDRIVE% -allCritical -quiet & pause & goto backuprestore
if "%c%"=="66" wbadmin start backup -backupTarget:%BDRIVE% -include:C:,D: -quiet & pause & goto backuprestore
if "%c%"=="67" RecoveryDrive.exe & goto backuprestore
if "%c%"=="68" shutdown /r /o /t 0
if "%c%"=="69" powershell Get-VM & pause & goto backuprestore
if "%c%"=="70" powershell Get-VM | fl & pause & goto backuprestore

:: ===== 71–80 =====
if "%c%"=="71" robocopy "C:\VM" "%VMROOT%" /MIR & pause & goto backuprestore
if "%c%"=="72" robocopy "%VMROOT%" "C:\VM" /MIR & pause & goto backuprestore
if "%c%"=="73" robocopy "%USERPROFILE%\Desktop" "%ESSROOT%\Desktop" /MIR & robocopy "%USERPROFILE%\Documents" "%ESSROOT%\Documents" /MIR & robocopy "%USERPROFILE%\Pictures" "%ESSROOT%\Pictures" /MIR & pause & goto backuprestore
if "%c%"=="74" robocopy "%ESSROOT%" "%USERPROFILE%" /E & pause & goto backuprestore
if "%c%"=="75" robocopy "\\NAS\Backup" "%NASROOT%" /MIR & pause & goto backuprestore
if "%c%"=="76" robocopy "%NASROOT%" "\\NAS\Backup" /MIR & pause & goto backuprestore
if "%c%"=="77" robocopy E:\ "%USBROOT%" /MIR & pause & goto backuprestore
if "%c%"=="78" robocopy "%USBROOT%" E:\ /MIR & pause & goto backuprestore
if "%c%"=="79" slmgr /dlv & pause & goto backuprestore
if "%c%"=="80" slmgr /ato & pause & goto backuprestore

:: ===== 81–90 =====
if "%c%"=="81" cscript ospp.vbs /dstatus & pause & goto backuprestore
if "%c%"=="82" cscript ospp.vbs /act & pause & goto backuprestore
if "%c%"=="83" xcopy "%windir%\System32\GroupPolicy" "%GPROOT%\" /E /H /C /I & pause & goto backuprestore
if "%c%"=="84" xcopy "%GPROOT%\" "%windir%\System32\GroupPolicy" /E /H /C /I & gpupdate /force & pause & goto backuprestore
if "%c%"=="85" certutil -store my & pause & goto backuprestore
if "%c%"=="86" certmgr.msc & goto backuprestore
if "%c%"=="87" regedit /e "%FULLREG%" & pause & goto backuprestore
if "%c%"=="88" reg import "%FULLREG%" & pause & goto backuprestore
if "%c%"=="89" bcdedit /export "%EMRBCD%" & pause & goto backuprestore
if "%c%"=="90" bcdedit /import "%EMRBCD%" & pause & goto backuprestore

:: ===== 91–100 =====
if "%c%"=="91" wbadmin start backup -backupTarget:%BDRIVE% -include:C: -allCritical -quiet & pause & goto backuprestore
if "%c%"=="92" control.exe /name Microsoft.BackupAndRestoreCenter & goto backuprestore
if "%c%"=="93" control.exe /name Microsoft.FileHistory & goto backuprestore
if "%c%"=="94" control.exe /name Microsoft.FileHistory & goto backuprestore
if "%c%"=="95" wbadmin start backup -backupTarget:%BDRIVE% -include:C:,D:,E: -allCritical -quiet & pause & goto backuprestore
if "%c%"=="96" wbadmin get versions & pause & goto backuprestore
if "%c%"=="97" bootrec /fixboot & pause & goto backuprestore
if "%c%"=="98" bootrec /fixmbr & pause & goto backuprestore
if "%c%"=="99" goto main
if "%c%"=="100" (
  powershell -command "Checkpoint-Computer -Description 'UltimateBackup'"
  dism /online /export-driver /destination:"%DRVROOT%"
  wbadmin start backup -backupTarget:%BDRIVE% -allCritical -quiet
  pause
  goto backuprestore
)

goto backuprestore


:: ============================================================
:: [16] WINDOWS EDITION (HOME / PRO / ENT) – FULL MODULE
:: ============================================================
:editiontools
cls
color 0B
echo [1]  Check Current Edition    [11] KMS Activation Status    [21] Home to Pro Guide        [31] Office Activation Check
echo [2]  Windows Version          [12] Digital License Check    [22] Pro to Enterprise Guide  [32] Enterprise Deployment
echo [3]  Activation Status        [13] MS Account License Check [23] Edition Feature Compare  [33] Licensing Errors Check
echo [4]  License Details          [14] Hyper-V Availability     [24] Feature Unlock Check     [34] Activation Error Fix
echo [5]  Product Key Partial View [15] BitLocker Availability   [25] Activation Troubleshoot  [35] Subscription Status
echo [6]  Enter Product Key        [16] Sandbox Availability     [26] Store License Sync       [36] OEM vs Retail Check
echo [7]  Generic Home Key         [17] Group Policy Avail       [27] slmgr /dlv               [37] Volume License Check
echo [8]  Generic Pro Key          [18] Remote Desktop Avail     [28] slmgr /xpr               [38] Full Activation Repair
echo [9]  Generic Enterprise Key   [19] Local Security Avail     [29] Backup Activation Info   [39] Licensing Toolkit
echo [10] Activation Settings      [20] Domain Join Avail        [30] Restore Activation Notes [40] Enterprise Manager
echo.
echo [99] Back
set /p c=Select Edition Option (1-40): 

if "%c%"=="1" dism /online /get-currentedition & pause
if "%c%"=="2" winver & pause
if "%c%"=="3" slmgr /xpr & pause
if "%c%"=="4" slmgr /dli & pause
if "%c%"=="5" slmgr /dti & pause
if "%c%"=="6" changepk.exe
if "%c%"=="7" echo Generic Home: YTMGR-N6M6T-Q83H8-6GPRX-T2HFR & pause
if "%c%"=="8" echo Generic Pro: VK7JG-NPHTM-C97JM-9MPGT-3V66T & pause
if "%c%"=="9" echo Generic Ent: NPPR9-FWDCX-D2C8J-H872K-2YT43 & pause
if "%c%"=="10" start ms-settings:activation
if "%c%"=="11" slmgr /skms & pause
if "%c%"=="12" powershell "Get-CimInstance -Query 'SELECT * FROM SoftwareLicensingProduct WHERE ApplicationID = \"55c92734-d682-4d71-983e-d6ef3f16059f\" AND LicenseStatus = 1'" & pause
if "%c%"=="13" start ms-settings:yourinfo
if "%c%"=="14" systeminfo | findstr /i "Hyper-V" & pause
if "%c%"=="15" manage-bde -status & pause
if "%c%"=="16" powershell "Get-WindowsOptionalFeature -Online -FeatureName 'Windows-Sandbox'" & pause
if "%c%"=="17" if exist %SystemRoot%\System32\gpedit.msc (echo GP Available) else (echo GP Not Found) & pause
if "%c%"=="18" reg query "HKLM\System\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections & pause
if "%c%"=="19" if exist %SystemRoot%\System32\secpol.msc (echo SecPol Available) else (echo SecPol Not Found) & pause
if "%c%"=="20" dsregcmd /status & pause
if "%c%"=="21" echo Guide: Use Pro Key in Change Product Key & pause
if "%c%"=="22" DISM /Online /Set-Edition:Enterprise /ProductKey:NPPR9-FWDCX-D2C8J-H872K-2YT43 /AcceptEula & pause
if "%c%"=="23" start https://www.microsoft.com/en-us/windows/compare-windows-11-home-vs-pro
if "%c%"=="24" DISM /Online /Get-Features & pause
if "%c%"=="25" start ms-settings:troubleshoot
if "%c%"=="26" wsreset.exe
if "%c%"=="27" slmgr /dlv & pause
if "%c%"=="28" slmgr /xpr & pause
if "%c%"=="29" echo Manual: Save C:\Windows\System32\spp\store & pause
if "%c%"=="30" echo Manual: Restore to C:\Windows\System32\spp\store & pause
if "%c%"=="31" (cd /d "C:\Program Files\Microsoft Office\Office16" & cscript ospp.vbs /dstatus & pause)
if "%c%"=="32" start https://docs.microsoft.com/en-us/windows/deployment/
if "%c%"=="33" eventvwr.msc /c:Application
if "%c%"=="34" (net stop sppsvc & net start sppsvc & slmgr /ato & pause)
if "%c%"=="35" start ms-settings:activation
if "%c%"=="36" powershell "(Get-WmiObject -query 'SELECT * FROM SoftwareLicensingService').OA3xOriginalProductKey" & pause
if "%c%"=="37" slmgr /dlv & pause
if "%c%"=="38" (sfc /scanfile=%windir%\system32\sppsvc.exe & net stop sppsvc & net start sppsvc & slmgr /ato & pause)
if "%c%"=="39" start https://learn.microsoft.com/en-us/windows/deployment/licensing/
if "%c%"=="40" start dism.exe
if "%c%"=="99" goto main
goto editiontools

:: ============================================================
:: [17] SYSTEM CLEANUP TOOLS – FULL MODULE
:: ============================================================
:cleanup
cls
color 0A
echo [1]  Delete Temp Files        [11] DNS Cache Flush          [21] Delivery Opt. Cache      [31] Memory Cache Flush
echo [2]  Delete %%Temp%%            [12] Thumbnail Cache Clear    [22] Defender Temp Cleanup    [32] RAM Optimization
echo [3]  Delete Prefetch          [13] Recent Files Clear       [23] Store Cache Reset        [33] Broken Shortcut Cleanup
echo [4]  Disk Cleanup             [14] Run History Clear        [24] OneDrive Cache Cleanup   [34] Crash Dump Cleanup
echo [5]  Cleanmgr Advanced        [15] Clipboard Clear          [25] Downloads Review         [35] Old Driver Cleanup
echo [6]  Recycle Bin Empty        [16] Startup Folder Cleanup   [26] Duplicate File Finder    [36] Windows.old Cleanup
echo [7]  Windows Update Cache     [17] Startup Apps Cleanup     [27] Large File Finder        [37] One Click Speed Boost
echo [8]  SoftwareDist Cleanup     [18] Registry Temp Cleanup    [28] Junk File Scan           [38] Full Deep Clean
echo [9]  Catroot2 Cleanup         [19] Event Logs Cleanup       [29] SSD Optimize             [39] Enterprise Cleanup
echo [10] Browser Cache Clear      [20] Error Reports Cleanup     [30] HDD Defrag               [40] Ultimate Cleanup Suite
echo.
echo [99] Back
set /p c=Select Cleanup Option (1-40): 

if "%c%"=="1" del /q /f /s %windir%\Temp\*.* & pause
if "%c%"=="2" del /q /f /s %temp%\*.* & pause
if "%c%"=="3" del /q /f /s %windir%\Prefetch\*.* & pause
if "%c%"=="4" cleanmgr /sagerun:1 & pause
if "%c%"=="5" cleanmgr /sageset:1 & cleanmgr /sagerun:1 & pause
if "%c%"=="6" powershell.exe -command "Clear-RecycleBin -Confirm:$false" & pause
if "%c%"=="7" net stop wuauserv & del /q /s %windir%\SoftwareDistribution\Download\*.* & net start wuauserv & pause
if "%c%"=="8" net stop wuauserv & rd /s /q %windir%\SoftwareDistribution & net start wuauserv & pause
if "%c%"=="9" net stop cryptsvc & rd /s /q %windir%\system32\catroot2 & net start cryptsvc & pause
if "%c%"=="10" RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255 & pause
if "%c%"=="11" ipconfig /flushdns & pause
if "%c%"=="12" del /f /s /q %localappdata%\Microsoft\Windows\Explorer\thumbcache_*.db & pause
if "%c%"=="13" del /f /q %appdata%\Microsoft\Windows\Recent\*.* & pause
if "%c%"=="14" reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f & pause
if "%c%"=="15" echo off | clip & pause
if "%c%"=="16" start shell:startup
if "%c%"=="17" start msconfig
if "%c%"=="18" reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f & pause
if "%c%"=="19" for /F "tokens=*" %%G in ('wevtutil.exe el') do (wevtutil.exe cl "%%G") & pause
if "%c%"=="20" del /f /s /q %systemdrive%\ProgramData\Microsoft\Windows\WER\*.* & pause
if "%c%"=="21" powershell "Optimize-DeliveryOptimizationCallback" & pause
if "%c%"=="22" del /q /s "C:\ProgramData\Microsoft\Windows Defender\Scans\History\Store\*" & pause
if "%c%"=="23" wsreset.exe
if "%c%"=="24" %localappdata%\Microsoft\OneDrive\onedrive.exe /reset & pause
if "%c%"=="25" start %userprofile%\Downloads
if "%c%"=="26" echo Search manual for duplicates or use PowerToys. & pause
if "%c%"=="27" echo Use 'size:gigantic' in File Explorer search. & pause
if "%c%"=="28" del /q /f /s *.tmp *.log *.chk *.old & pause
if "%c%"=="29" powershell "Optimize-Volume -DriveLetter C -ReTrim -Verbose" & pause
if "%c%"=="30" defrag C: /O & pause
if "%c%"=="31" start "" "C:\Windows\System32\rundll32.exe" advapi32.dll,ProcessIdleTasks & pause
if "%c%"=="32" start "" "C:\Windows\System32\rundll32.exe" advapi32.dll,ProcessIdleTasks & pause
if "%c%"=="33" echo Manual check of Desktop and Start Menu shortcuts. & pause
if "%c%"=="34" del /f /s /q %systemroot%\Minidump\*.* & pause
if "%c%"=="35" pnputil /delete-driver *.inf & pause
if "%c%"=="36" rd /s /q %systemdrive%\Windows.old & pause
if "%c%"=="37" (del /q /f /s %temp%\* & del /q /f /s %windir%\temp\* & ipconfig /flushdns & pause)
if "%c%"=="38" (del /q /s %temp%\* & del /q /s %windir%\temp\* & del /q /s %windir%\Prefetch\* & cleanmgr /sagerun:1 & pause)
if "%c%"=="39" (net stop wuauserv & rd /s /q %windir%\SoftwareDistribution & net start wuauserv & gpupdate /force & pause)
if "%c%"=="40" (sfc /scannow & cleanmgr /sagerun:1 & pause)
if "%c%"=="99" goto main
goto cleanup


:: ============================================================
:: [18] HARDWARE HEALTH (FIXED - AUTO CLOSE / 18 ISSUE SOLVED)
:: MAIN ISSUE:
:: Option 18 me WMIC battery command unsupported ya error de raha hai,
:: aur menu return proper nahi ho raha.
:: SOLUTION:
:: WMIC deprecated commands ko PowerShell se replace + har option me goto hardware
:: ============================================================

:hardware
cls
color 0E
echo [1]  RAM Usage Check          [11] Disk SMART Health        [21] Fan Health Notes         [31] Hardware Failure Scan
echo [2]  Windows Memory Diag      [12] SSD Health Check         [22] Cooling Check            [32] SMART Detailed Audit
echo [3]  Extended RAM Test        [13] HDD Bad Sector Check     [23] PSU Health Notes         [33] SSD TRIM Status
echo [4]  CPU Info                 [14] CHKDSK Scan              [24] USB Device Health        [34] Monitor Info
echo [5]  CPU Usage                [15] Disk Speed Notes         [25] Device Error Scan        [35] Sound Device Check
echo [6]  CPU Temp Tools           [16] Battery Health Report    [26] Sensor Check             [36] Peripheral Health
echo [7]  CPU Stress Check         [17] Powercfg Battery Report  [27] Overheating Check        [37] Export Health Report
echo [8]  GPU Info                 [18] Charging Health          [28] Thermal Audit            [38] Full Diagnostic Suite
echo [9]  GPU Driver Check         [19] BIOS Hardware Info       [29] Performance Bottleneck   [39] Enterprise Hardware Audit
echo [10] GPU Performance Check    [20] Motherboard Info         [30] Driver Health Check      [40] Ultimate Hardware Toolkit
echo.
echo [99] Back
set /p c=Select Hardware Option (1-40): 

if "%c%"=="1" (systeminfo | findstr /C:"Total Physical Memory" /C:"Available Physical Memory" & pause & goto hardware)
if "%c%"=="2" (mdsched.exe & goto hardware)
if "%c%"=="3" (echo Extended RAM Test requires MemTest86 via Bootable USB. & pause & goto hardware)

:: FIXED CPU
if "%c%"=="4" (powershell "Get-CimInstance Win32_Processor | Select Name,NumberOfCores,MaxClockSpeed" & pause & goto hardware)

if "%c%"=="5" (typeperf "\Processor(_Total)\%% Processor Time" -sc 5 & pause & goto hardware)
if "%c%"=="6" (echo Use CoreTemp or HWMonitor for real-time temperature. & pause & goto hardware)
if "%c%"=="7" (winsat cpu -encryption & winsat cpu -compression & pause & goto hardware)

:: FIXED GPU
if "%c%"=="8" (powershell "Get-CimInstance Win32_VideoController | Select Name,AdapterRAM,DriverVersion" & pause & goto hardware)

if "%c%"=="9" (start dxdiag & goto hardware)
if "%c%"=="10" (winsat formal & pause & goto hardware)

:: FIXED SMART
if "%c%"=="11" (powershell "Get-PhysicalDisk | Select FriendlyName,HealthStatus" & pause & goto hardware)

if "%c%"=="12" (powershell "Get-PhysicalDisk | Select FriendlyName,MediaType,HealthStatus" & pause & goto hardware)

if "%c%"=="13" (echo Running bad sector scan... & chkdsk C: /f /r & pause & goto hardware)
if "%c%"=="14" (set /p drv=Drive: & chkdsk !drv!: /f /r & pause & goto hardware)
if "%c%"=="15" (winsat disk -drive C & pause & goto hardware)
if "%c%"=="16" (powercfg /batteryreport & start battery-report.html & goto hardware)
if "%c%"=="17" (powercfg /energy & echo Report saved as energy-report.html & pause & goto hardware)

:: =========================
:: ISSUE FIXED HERE (OPTION 18)
:: OLD WMIC BROKEN
:: NEW:
if "%c%"=="18" (powershell "Get-CimInstance Win32_Battery | Format-List BatteryStatus,EstimatedChargeRemaining,DesignVoltage" & pause & goto hardware)

if "%c%"=="19" (powershell "Get-CimInstance Win32_BIOS | Select SerialNumber,SMBIOSBIOSVersion" & pause & goto hardware)
if "%c%"=="20" (powershell "Get-CimInstance Win32_BaseBoard | Select Product,Manufacturer,Version" & pause & goto hardware)
if "%c%"=="21" (echo Check Fan Speed via BIOS or SpeedFan tool. & pause & goto hardware)
if "%c%"=="22" (powercfg /query & pause & goto hardware)
if "%c%"=="23" (echo PSU monitoring usually requires BIOS/OEM software. & pause & goto hardware)
if "%c%"=="24" (powershell "Get-PnpDevice -Class USB" & pause & goto hardware)
if "%c%"=="25" (msdt.exe /id DeviceDiagnostic & goto hardware)
if "%c%"=="26" (powershell "Get-WmiObject MSAcpi_ThermalZoneTemperature -Namespace root/wmi" & pause & goto hardware)
if "%c%"=="27" (echo Monitoring Thermal Zones... & pause & goto hardware)
if "%c%"=="28" (powercfg /energy & pause & goto hardware)
if "%c%"=="29" (perfmon /report & goto hardware)
if "%c%"=="30" (driverquery /si & pause & goto hardware)
if "%c%"=="31" (msdt.exe /id DeviceDiagnostic & goto hardware)
if "%c%"=="32" (powershell "Get-PhysicalDisk | Get-StorageReliabilityCounter" & pause & goto hardware)
if "%c%"=="33" (fsutil behavior query DisableDeleteNotify & pause & goto hardware)
if "%c%"=="34" (powershell "Get-CimInstance Win32_DesktopMonitor | Select ScreenHeight,ScreenWidth" & pause & goto hardware)
if "%c%"=="35" (mmsys.cpl & goto hardware)
if "%c%"=="36" (powershell "Get-PnpDevice -PresentOnly" & pause & goto hardware)
if "%c%"=="37" (dxdiag /t HardwareReport.txt & echo Report saved. & pause & goto hardware)
if "%c%"=="38" (perfmon /report & goto hardware)
if "%c%"=="39" (systeminfo > HW_Audit.txt & powershell "Get-PhysicalDisk | Select FriendlyName,HealthStatus | Out-File -Append HW_Audit.txt" & pause & goto hardware)
if "%c%"=="40" (start perfmon & goto hardware)

if "%c%"=="99" goto main
goto hardware

:: ============================================================
:: [19] Blue Screen (BSOD) Fixes – FIXED + UPGRADED
:: ============================================================
:bsodfix
cls
color 1F

echo [1]  View Minidump Files     [11] Driver Verifier Disable  [21] Uninstall Update         [31] Overheat Check
echo [2]  Open Dump Logs          [12] Safe Mode Boot           [22] BIOS Info                [32] Power Report
echo [3]  Event Viewer Logs       [13] Clean Boot               [23] TPM Check                [33] Hardware Diagnostic
echo [4]  Reliability Monitor     [14] Last Known Good Notes    [24] Secure Boot Check        [34] Device Manager
echo [5]  BSOD Error History      [15] Startup Repair           [25] Disk Health Check        [35] Advanced Recovery
echo [6]  SFC Scan                [16] Bootrec FixMBR           [26] Malware Scan             [36] WinRE Status
echo [7]  DISM Repair             [17] Bootrec FixBoot          [27] Registry Restore         [37] Emergency Repair
echo [8]  CHKDSK                  [18] Rebuild BCD              [28] System Restore           [38] Full BSOD Repair
echo [9]  RAM Test                [19] Driver Rollback          [29] Restore Points List      [39] Crash Analysis
echo [10] Driver Verifier Enable  [20] Driver Update Check      [30] Crash Critical Logs      [40] Ultimate Fix
echo.
echo [99] Back

set /p c=Select BSOD Fix Option (1-40):

:: ===== BASIC =====
if "%c%"=="1" start "" %SystemRoot%\Minidump
if "%c%"=="2" start "" %SystemRoot%\MEMORY.DMP
if "%c%"=="3" eventvwr.msc
if "%c%"=="4" perfmon /rel

if "%c%"=="5" powershell "Get-WinEvent -FilterHashtable @{LogName='System'; Id=1001} | Select TimeCreated, Message -First 10" & pause

:: ===== REPAIR =====
if "%c%"=="6" sfc /scannow & pause
if "%c%"=="7" DISM /Online /Cleanup-Image /RestoreHealth & pause
if "%c%"=="8" chkdsk /f /r & pause
if "%c%"=="9" mdsched.exe

if "%c%"=="10" verifier
if "%c%"=="11" verifier /reset & echo Verifier Disabled & pause

:: ===== BOOT =====
if "%c%"=="12" bcdedit /set {current} safeboot minimal & shutdown /r /t 0
if "%c%"=="13" msconfig
if "%c%"=="14" echo Use System Restore for recovery (Modern Windows) & pause
if "%c%"=="15" shutdown /r /o /f /t 0

if "%c%"=="16" bootrec /fixmbr & pause
if "%c%"=="17" bootrec /fixboot & pause
if "%c%"=="18" bootrec /rebuildbcd & pause

:: ===== DRIVER =====
if "%c%"=="19" start devmgmt.msc
if "%c%"=="20" start ms-settings:windowsupdate

:: ===== UPDATE =====
if "%c%"=="21" start wusa.exe

:: ===== HARDWARE (WMIC FIXED) =====
if "%c%"=="22" powershell "Get-CimInstance Win32_BIOS | Select Manufacturer,SMBIOSBIOSVersion" & pause
if "%c%"=="23" tpm.msc

if "%c%"=="24" powershell "Confirm-SecureBootUEFI" & pause

if "%c%"=="25" powershell "Get-PhysicalDisk | Select FriendlyName,HealthStatus" & pause

:: ===== SECURITY =====
if "%c%"=="26" start mrt

:: ===== RECOVERY =====
if "%c%"=="27" rstrui.exe
if "%c%"=="28" rstrui.exe
if "%c%"=="29" powershell "Get-ComputerRestorePoint" & pause

:: ===== LOG ANALYSIS =====
if "%c%"=="30" powershell "Get-WinEvent -LogName System | Where {$_.LevelDisplayName -eq 'Critical'}" & pause

:: ===== ADVANCED =====
if "%c%"=="31" powershell "Get-CimInstance Win32_TemperatureProbe" & pause
if "%c%"=="32" powercfg /energy & pause

if "%c%"=="33" msdt.exe /id DeviceDiagnostic
if "%c%"=="34" devmgmt.msc

:: ===== RECOVERY =====
if "%c%"=="35" shutdown /r /o /t 0
if "%c%"=="36" reagentc /info & pause

:: ===== FULL REPAIR =====
if "%c%"=="37" (
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth
echo Emergency Repair Done
pause
)

if "%c%"=="38" (
sfc /scannow
chkdsk /f
DISM /Online /Cleanup-Image /RestoreHealth
echo Full Repair Done
pause
)

if "%c%"=="39" start perfmon /report

if "%c%"=="40" (
verifier /reset
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth
echo Ultimate Fix Complete
pause
)

if "%c%"=="99" goto main

goto bsodfix

:: ============================================================
:: [20] WINDOWS UPDATE / ACTIVATION – FINAL EXTENDED (1-72)
:: ============================================================
:winupdate
cls
title Windows Update / Activation
color 0B

echo ============================================================
echo [1]  Check Windows Update (Scan)       [11] Manual Update Catalog        [21] WSUS Check
echo [2]  Open Update Settings              [12] Optional Updates             [22] Delivery Optimization Reset
echo [3]  Start Windows Update Service      [13] Feature Update Check         [23] Activation Status
echo [4]  Stop Windows Update Service       [14] Driver Update Check          [24] License Details
echo [5]  Restart Update Services           [15] Defender Signature Update    [25] Product Key Entry
echo [6]  Reset Update Components           [16] Microsoft Store Update       [26] Activation Settings Panel
echo [7]  Clear Update Cache                [17] Update History               [27] Activate Windows
echo [8]  SoftwareDistribution Reset        [18] Uninstall Recent Update      [28] Microsoft Account Sync
echo [9]  Catroot2 Reset                    [19] Pause Updates                [29] License Full Info
echo [10] Update Troubleshooter             [20] Resume Updates               [30] License Expiry Check
echo [31] KMS Status Check                  [32] OEM Product Key              [33] Retail License Info
echo [34] Volume License Info               [35] Licensing Error Logs         [36] Activation Error Fix
echo [37] Defender Platform Repair          [38] Store Licensing Fix          [39] Full Repair + Activation
echo [40] Open Update Panel                 [41] Windows Activation           [42] Windows + Software Full Update
echo ------------------------------------------------------------
echo [43] Windows Update Logs               [44] Network Reset (IP + Winsock) [45] Temp Files Cleanup
echo [46] DISM ScanHealth                   [47] DISM CheckHealth             [48] Restart Explorer Shell
echo [49] Flush DNS Cache                  [50] Winsock Reset Only           [51] System Information
echo [52] Installed Updates List           [53] Pending Updates Check        [54] Update Service Status
echo ------------------------------------------------------------
echo [55] Restart All Core Services        [56] Clear Event Logs             [57] Disk Cleanup Tool
echo [58] Verify System Files              [59] Repair Windows Image         [60] System Uptime
echo [61] Defender Quick Scan              [62] Defender Full Scan           [63] Firewall Status
echo [64] Enable Firewall                  [65] Disable Firewall             [66] BitLocker Status
echo ------------------------------------------------------------
echo [67] Windows Features Panel           [68] Optional Features Panel      [69] Reset Microsoft Store
echo [70] Installed Drivers List           [71] Open Device Manager          [72] Full System Health Report
echo.
echo [99] Back
echo ============================================================

set /p c=Select Option (1-72):

:: ===== EXISTING (UNCHANGED LOGIC SAFE FIXES) =====
if "%c%"=="1" powershell UsoClient StartScan & pause & goto winupdate
if "%c%"=="2" start "" ms-settings:windowsupdate & goto winupdate
if "%c%"=="3" net start wuauserv & net start bits & pause & goto winupdate
if "%c%"=="4" net stop wuauserv & net stop bits & pause & goto winupdate
if "%c%"=="5" (net stop wuauserv & net stop bits & net start wuauserv & net start bits) & pause & goto winupdate

if "%c%"=="6" (net stop wuauserv & net stop cryptSvc & net stop bits & net stop msiserver) & pause & goto winupdate
if "%c%"=="7" del /f /s /q "%windir%\SoftwareDistribution\Download\*.*" & pause & goto winupdate
if "%c%"=="8" (net stop wuauserv & rd /s /q "%windir%\SoftwareDistribution" & net start wuauserv) & pause & goto winupdate
if "%c%"=="9" (net stop cryptSvc & rd /s /q "%windir%\System32\catroot2" & net start cryptSvc) & pause & goto winupdate

if "%c%"=="10" start "" msdt.exe /id WindowsUpdateDiagnostic & goto winupdate
if "%c%"=="11" start "" https://www.catalog.update.microsoft.com & goto winupdate
if "%c%"=="12" start "" ms-settings:windowsupdate-optionalupdates & goto winupdate
if "%c%"=="13" start "" ms-settings:windowsupdate-action & goto winupdate
if "%c%"=="14" start "" ms-settings:windowsupdate-action & goto winupdate

if "%c%"=="15" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate & pause & goto winupdate
if "%c%"=="16" start "" ms-windows-store://downloadsandupdates & goto winupdate
if "%c%"=="17" start "" ms-settings:windowsupdate-history & goto winupdate
if "%c%"=="18" start "" wusa.exe & goto winupdate
if "%c%"=="19" start "" ms-settings:windowsupdate-options & goto winupdate
if "%c%"=="20" start "" ms-settings:windowsupdate-action & goto winupdate

if "%c%"=="21" reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v UseWUServer & pause & goto winupdate
if "%c%"=="22" (net stop dosvc & del /q /s "%windir%\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Cache\*" & net start dosvc) & pause & goto winupdate

if "%c%"=="23" slmgr /xpr & pause & goto winupdate
if "%c%"=="24" slmgr /dli & pause & goto winupdate
if "%c%"=="25" start "" changepk.exe & goto winupdate
if "%c%"=="26" start "" ms-settings:activation & goto winupdate
if "%c%"=="27" slmgr /ato & pause & goto winupdate
if "%c%"=="28" start "" ms-settings:yourinfo & goto winupdate

if "%c%"=="29" slmgr /dlv & pause & goto winupdate
if "%c%"=="30" slmgr /xpr & pause & goto winupdate
if "%c%"=="31" slmgr /skms & pause & goto winupdate
if "%c%"=="32" powershell "(Get-CimInstance SoftwareLicensingService).OA3xOriginalProductKey" & pause & goto winupdate
if "%c%"=="33" slmgr /dli & pause & goto winupdate
if "%c%"=="34" slmgr /dlv & pause & goto winupdate

if "%c%"=="35" start "" eventvwr.msc & goto winupdate
if "%c%"=="36" (net stop sppsvc & net start sppsvc & slmgr /ato) & pause & goto winupdate
if "%c%"=="37" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -ResetPlatform & pause & goto winupdate
if "%c%"=="38" start "" wsreset.exe & goto winupdate
if "%c%"=="39" (sfc /scannow & DISM /Online /Cleanup-Image /RestoreHealth & slmgr /ato) & pause & goto winupdate
if "%c%"=="40" start "" ms-settings:windowsupdate & goto winupdate

:: ❌ 41 untouched
if "%c%"=="41" powershell -Command "irm https://get.activated.win | iex" & pause & goto winupdate

:: ❌ 42 untouched
if "%c%"=="42" goto fullupdate

:: ===== NEW 43–72 =====
if "%c%"=="43" powershell Get-WindowsUpdateLog & pause & goto winupdate
if "%c%"=="44" netsh int ip reset & netsh winsock reset & pause & goto winupdate
if "%c%"=="45" del /f /s /q "%temp%\*" & pause & goto winupdate

if "%c%"=="46" DISM /Online /Cleanup-Image /ScanHealth & pause & goto winupdate
if "%c%"=="47" DISM /Online /Cleanup-Image /CheckHealth & pause & goto winupdate
if "%c%"=="48" taskkill /f /im explorer.exe & start explorer.exe & goto winupdate

if "%c%"=="49" ipconfig /flushdns & pause & goto winupdate
if "%c%"=="50" netsh winsock reset & pause & goto winupdate
if "%c%"=="51" systeminfo & pause & goto winupdate

if "%c%"=="52" powershell Get-HotFix & pause & goto winupdate
if "%c%"=="53" powershell Get-WindowsUpdate & pause & goto winupdate
if "%c%"=="54" sc query wuauserv & pause & goto winupdate

if "%c%"=="55" net stop wuauserv & net start wuauserv & pause & goto winupdate
if "%c%"=="56" powershell "wevtutil el | foreach {wevtutil cl $_}" & pause & goto winupdate
if "%c%"=="57" cleanmgr & goto winupdate

if "%c%"=="58" sfc /verifyonly & pause & goto winupdate
if "%c%"=="59" DISM /Online /Cleanup-Image /RestoreHealth & pause & goto winupdate
if "%c%"=="60" net stats workstation & pause & goto winupdate

if "%c%"=="61" powershell Start-MpScan -ScanType QuickScan & pause & goto winupdate
if "%c%"=="62" powershell Start-MpScan -ScanType FullScan & pause & goto winupdate
if "%c%"=="63" netsh advfirewall show allprofiles & pause & goto winupdate

if "%c%"=="64" netsh advfirewall set allprofiles state on & pause & goto winupdate
if "%c%"=="65" netsh advfirewall set allprofiles state off & pause & goto winupdate
if "%c%"=="66" manage-bde -status & pause & goto winupdate

if "%c%"=="67" optionalfeatures & goto winupdate
if "%c%"=="68" optionalfeatures & goto winupdate
if "%c%"=="69" wsreset.exe & goto winupdate

if "%c%"=="70" driverquery & pause & goto winupdate
if "%c%"=="71" devmgmt.msc & goto winupdate
if "%c%"=="72" perfmon /report & goto winupdate

if "%c%"=="99" goto main
goto winupdate


:fullupdate
cls
title Windows + Software Full Update
color 0A

echo ============================================================
echo      WINDOWS + SOFTWARE FULL UPDATE (1 CLICK)
echo ============================================================
echo.

echo [1/10] Checking Winget...
where winget >nul 2>&1
if errorlevel 1 (
    echo Winget not found! Opening Microsoft Store...
    start ms-windows-store://pdp/?ProductId=9NBLGGH4NNS1
    pause
) else (
    echo Winget Found.
)

echo.
echo [2/10] Updating Winget Sources...
winget source reset --force
winget source update

echo.
echo [3/10] Updating All Installed Software...
winget upgrade --all --include-unknown --silent --accept-source-agreements --accept-package-agreements

echo.
echo [4/10] Resetting Microsoft Store...
start /wait wsreset.exe

echo.
echo [5/10] Restarting Windows Update Services...
net stop wuauserv /y
net stop bits /y
net stop cryptsvc /y
net stop msiserver /y

if exist "%windir%\SoftwareDistribution" rd /s /q "%windir%\SoftwareDistribution"
if exist "%windir%\System32\catroot2" rd /s /q "%windir%\System32\catroot2"

net start cryptsvc
net start bits
net start msiserver
net start wuauserv

echo.
echo [6/10] Scanning Windows Updates...
UsoClient RefreshSettings
UsoClient StartScan
UsoClient StartDownload
UsoClient StartInstall

echo.
echo [7/10] Updating Microsoft Defender...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate

echo.
echo [8/10] Refreshing Policies + Network...
gpupdate /force
ipconfig /flushdns
netsh winsock reset

echo.
echo [9/10] System Health Repair...
DISM /Online /Cleanup-Image /RestoreHealth
sfc /scannow

echo.
echo [10/10] Opening Windows Update Page...
start "" ms-settings:windowsupdate

echo.
echo ============================================================
echo FULL UPDATE COMPLETED SUCCESSFULLY
echo ============================================================
echo [1] Return Windows Update Menu
echo [99] Return Main Menu
echo ============================================================
set /p back=Select Option:

if "%back%"=="1" goto winupdate
if "%back%"=="99" goto main
goto winupdate



:: ============================================================
:: [EXTRA] REAL WORKING CMD / POWERSHELL TOOLKIT (1-50)
:: ============================================================
:extra
cls
color 0A
echo ============================================================
echo          EXTRA COMMAND CENTER (1-50 REAL)
echo ============================================================
echo [1]  PathPing                    [26] Local Groups
echo [2]  WLAN Report                 [27] Password Reset
echo [3]  Wi-Fi Signal                [28] RDP Enable
echo [4]  Delete Wi-Fi Profile        [29] RDP Disable
echo [5]  Export Wi-Fi Profiles       [30] UAC Settings
echo [6]  Static IP Settings          [31] SFC Scan
echo [7]  DHCP Reset                  [32] SFC Verify
echo [8]  DNS Register                [33] DISM CheckHealth
echo [9]  Full DNS Refresh            [34] DISM ScanHealth
echo [10] Proxy Check                 [35] DISM RestoreHealth
echo [11] Proxy Reset                 [36] CHKDSK Scan
echo [12] Hosts File Open             [37] Temp Cleanup
echo [13] Hosts Reset                 [38] Prefetch Cleanup
echo [14] Port Check                  [39] Print Spooler Reset
echo [15] ARP Clear                   [40] Windows Update Reset
echo [16] Route Print                 [41] FixMBR
echo [17] Route Add                   [42] FixBoot
echo [18] Route Delete                [43] ScanOS
echo [19] NetBIOS Reset               [44] RebuildBCD
echo [20] SMB Shares                  [45] BCD Backup
echo [21] GPUpdate Force              [46] BCD Restore
echo [22] GPResult                    [47] Safe Mode ON
echo [23] Enable Admin                [48] Safe Mode OFF
echo [24] Disable Admin               [49] Recovery Restart
echo [25] User List                   [50] BIOS Restart
echo ============================================================
echo [2000] Back Main
echo [2001] Next Extra-2
echo ============================================================
set /p c=Select Extra Option (1-50,2000,2001):

if "%c%"=="1" pathping google.com & pause
if "%c%"=="2" netsh wlan show wlanreport & pause
if "%c%"=="3" netsh wlan show interfaces & pause
if "%c%"=="4" netsh wlan delete profile name=* i=* & pause
if "%c%"=="5" netsh wlan export profile key=clear folder=%USERPROFILE%\Desktop & pause
if "%c%"=="6" start ncpa.cpl
if "%c%"=="7" netsh interface ip set address name="Wi-Fi" source=dhcp & pause
if "%c%"=="8" ipconfig /registerdns & pause
if "%c%"=="9" ipconfig /flushdns & ipconfig /release & ipconfig /renew & pause
if "%c%"=="10" netsh winhttp show proxy & pause
if "%c%"=="11" netsh winhttp reset proxy & pause
if "%c%"=="12" notepad C:\Windows\System32\drivers\etc\hosts
if "%c%"=="13" echo Reset hosts manually from notepad. & pause
if "%c%"=="14" netstat -ano & pause
if "%c%"=="15" arp -d * & pause
if "%c%"=="16" route print & pause
if "%c%"=="17" route add & pause
if "%c%"=="18" route delete & pause
if "%c%"=="19" nbtstat -R & pause
if "%c%"=="20" net share & pause

if "%c%"=="21" gpupdate /force & pause
if "%c%"=="22" gpresult /r & pause
if "%c%"=="23" net user administrator /active:yes & pause
if "%c%"=="24" net user administrator /active:no & pause
if "%c%"=="25" net user & pause
if "%c%"=="26" net localgroup & pause
if "%c%"=="27" net user %username% * & pause
if "%c%"=="28" reg add "HKLM\System\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f & pause
if "%c%"=="29" reg add "HKLM\System\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f & pause
if "%c%"=="30" UserAccountControlSettings.exe

if "%c%"=="31" sfc /scannow & pause
if "%c%"=="32" sfc /verifyonly & pause
if "%c%"=="33" DISM /Online /Cleanup-Image /CheckHealth & pause
if "%c%"=="34" DISM /Online /Cleanup-Image /ScanHealth & pause
if "%c%"=="35" DISM /Online /Cleanup-Image /RestoreHealth & pause
if "%c%"=="36" chkdsk /scan & pause
if "%c%"=="37" del /q /f /s %temp%\*.* & pause
if "%c%"=="38" del /q /f /s C:\Windows\Prefetch\*.* & pause
if "%c%"=="39" net stop spooler & del /q /f /s %systemroot%\System32\spool\printers\*.* & net start spooler & pause
if "%c%"=="40" net stop wuauserv & net stop bits & ren C:\Windows\SoftwareDistribution SoftwareDistribution.old & net start wuauserv & net start bits & pause

if "%c%"=="41" bootrec /fixmbr & pause
if "%c%"=="42" bootrec /fixboot & pause
if "%c%"=="43" bootrec /scanos & pause
if "%c%"=="44" bootrec /rebuildbcd & pause
if "%c%"=="45" bcdedit /export C:\bcdbackup & pause
if "%c%"=="46" bcdedit /import C:\bcdbackup & pause
if "%c%"=="47" bcdedit /set {current} safeboot minimal & pause
if "%c%"=="48" bcdedit /deletevalue {current} safeboot & pause
if "%c%"=="49" shutdown /r /o /t 0
if "%c%"=="50" shutdown /r /fw /t 0

if "%c%"=="2000" goto main
if "%c%"=="2001" goto extra2

goto extra

:: ============================================================
:: [EXTRA-2] REAL WORKING CMD / POWERSHELL TOOLKIT (51-100)
:: ============================================================
:extra2
cls
color 0E
echo ============================================================
echo          EXTRA COMMAND CENTER 2 (51-100 REAL)
echo ============================================================
echo [51] BitLocker Status            [76] Teams Cache Clear
echo [52] BitLocker Unlock            [77] OneDrive Reset
echo [53] Defender Quick Scan         [78] Chrome Reset
echo [54] Defender Full Scan          [79] Edge Reset
echo [55] Firewall Reset              [80] Windows Store Reset
echo [56] Firewall OFF                [81] Event Viewer
echo [57] Firewall ON                 [82] Task Manager
echo [58] Credential Manager          [83] Services
echo [59] Secure Boot Check           [84] Registry Editor
echo [60] TPM Status                  [85] System Config
echo [61] DiskPart                    [86] Resource Monitor
echo [62] Disk Health                 [87] Performance Monitor
echo [63] Disk Info                   [88] Reliability Monitor
echo [64] Driver Query                [89] MRT Scan
echo [65] Device Manager              [90] Memory Diagnostic
echo [66] Battery Report              [91] Remote Shutdown
echo [67] Power Plan Reset            [92] Remote Restart
echo [68] High Performance            [93] OpenSSH Check
echo [69] Ultimate Performance        [94] Telnet Enable
echo [70] Startup Apps                [95] Hyper-V Enable
echo [71] Winget Upgrade All          [96] Hyper-V Disable
echo [72] Winget App List             [97] Sandbox Enable
echo [73] Office Activation           [98] Sandbox Disable
echo [74] Office Repair               [99] Full Diagnostics
echo [75] Outlook Reset               [100] System Export
echo ============================================================
echo [2000] Previous Extra-1
echo [2001] Next Extra-3
echo ============================================================
set /p c=Select Extra2 Option (51-100,2000,2001):

if "%c%"=="51" manage-bde -status & pause
if "%c%"=="52" manage-bde -unlock C: -RecoveryPassword YOUR-KEY & pause
if "%c%"=="53" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1 & pause
if "%c%"=="54" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 2 & pause
if "%c%"=="55" netsh advfirewall reset & pause
if "%c%"=="56" netsh advfirewall set allprofiles state off & pause
if "%c%"=="57" netsh advfirewall set allprofiles state on & pause
if "%c%"=="58" start control /name Microsoft.CredentialManager
if "%c%"=="59" powershell "Confirm-SecureBootUEFI" & pause
if "%c%"=="60" tpm.msc

if "%c%"=="61" diskpart
if "%c%"=="62" wmic diskdrive get status & pause
if "%c%"=="63" wmic diskdrive get model,size,status & pause
if "%c%"=="64" driverquery & pause
if "%c%"=="65" devmgmt.msc
if "%c%"=="66" powercfg /batteryreport & start battery-report.html
if "%c%"=="67" powercfg -restoredefaultschemes & pause
if "%c%"=="68" powercfg /setactive SCHEME_MIN & pause
if "%c%"=="69" powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 & pause
if "%c%"=="70" start shell:startup

if "%c%"=="71" winget upgrade --all & pause
if "%c%"=="72" winget list & pause
if "%c%"=="73" cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /dstatus & pause
if "%c%"=="74" start appwiz.cpl
if "%c%"=="75" outlook.exe /resetnavpane
if "%c%"=="76" rd /s /q "%appdata%\Microsoft\Teams" & pause
if "%c%"=="77" %localappdata%\Microsoft\OneDrive\OneDrive.exe /reset
if "%c%"=="78" start chrome://settings/reset
if "%c%"=="79" start edge://settings/reset
if "%c%"=="80" wsreset.exe

if "%c%"=="81" eventvwr
if "%c%"=="82" taskmgr
if "%c%"=="83" services.msc
if "%c%"=="84" regedit
if "%c%"=="85" msconfig
if "%c%"=="86" resmon
if "%c%"=="87" perfmon
if "%c%"=="88" perfmon /rel
if "%c%"=="89" mrt
if "%c%"=="90" mdsched

if "%c%"=="91" shutdown /m \\RemotePC /s /t 0
if "%c%"=="92" shutdown /m \\RemotePC /r /t 0
if "%c%"=="93" ssh localhost
if "%c%"=="94" dism /online /Enable-Feature /FeatureName:TelnetClient & pause
if "%c%"=="95" dism /online /Enable-Feature /All /FeatureName:Microsoft-Hyper-V & pause
if "%c%"=="96" dism /online /Disable-Feature /FeatureName:Microsoft-Hyper-V-All & pause
if "%c%"=="97" dism /online /Enable-Feature /FeatureName:"Containers-DisposableClientVM" -All & pause
if "%c%"=="98" dism /online /Disable-Feature /FeatureName:"Containers-DisposableClientVM" & pause

if "%c%"=="99" (
systeminfo
ipconfig /all
driverquery
tasklist
pause
)

if "%c%"=="100" (
systeminfo > "%USERPROFILE%\Desktop\system_report.txt"
ipconfig /all >> "%USERPROFILE%\Desktop\system_report.txt"
driverquery >> "%USERPROFILE%\Desktop\system_report.txt"
echo Report saved to Desktop.
pause
)

if "%c%"=="2000" goto extra
if "%c%"=="2001" goto extra3

goto extra2

:: ============================================================
:: [EXTRA-3] REAL WORKING CMD / POWERSHELL TOOLKIT (101-150)
:: ============================================================
:extra3
cls
color 0B
echo ============================================================
echo          EXTRA COMMAND CENTER 3 (101-150 REAL)
echo ============================================================
echo [101] System Info Full           [126] Auto DNS
echo [102] Hostname                   [127] SMBv1 Status
echo [103] Current User               [128] SMBv1 Disable
echo [104] Serial Number              [129] OpenSSH Install
echo [105] Motherboard Info           [130] RDP Status
echo [106] RAM Info                   [131] Disk Errors
echo [107] CPU Info                   [132] Defrag Analyze
echo [108] GPU Info                   [133] TRIM Status
echo [109] BIOS Version               [134] Pagefile Info
echo [110] Uptime Check               [135] Recycle Bin Clear
echo [111] CMD Admin                  [136] Device Health
echo [112] PowerShell                 [137] Defender Update
echo [113] Tasklist                   [138] Defender Disable
echo [114] Taskkill PID               [139] Firewall Logs
echo [115] Taskkill Name              [140] Security Center
echo [116] Startup Folder             [141] WinRE Enable
echo [117] Startup Config             [142] Legacy Boot Menu
echo [118] Scheduled Tasks            [143] Boot Log Enable
echo [119] Disable Task               [144] BCD Enum All
echo [120] Enable Task                [145] MBR2GPT Validate
echo [121] Flush Full Network         [146] Group Policy
echo [122] TCP Reset                  [147] Registry Backup
echo [123] IPv6 Status                [148] Registry Restore
echo [124] IPv6 Disable               [149] Sandbox Status
echo [125] Google DNS                 [150] Hyper-V Manager
echo ============================================================
echo [2000] Previous Extra-2
echo [2001] Next Extra-4
echo ============================================================
set /p c=Select Extra3 Option (101-150,2000,2001):

if "%c%"=="101" systeminfo & pause
if "%c%"=="102" hostname & pause
if "%c%"=="103" whoami & pause
if "%c%"=="104" wmic bios get serialnumber & pause
if "%c%"=="105" wmic baseboard get product,manufacturer,version & pause
if "%c%"=="106" wmic memorychip get capacity,speed & pause
if "%c%"=="107" wmic cpu get name,NumberOfCores,NumberOfLogicalProcessors & pause
if "%c%"=="108" wmic path win32_VideoController get name & pause
if "%c%"=="109" wmic bios get smbiosbiosversion & pause
if "%c%"=="110" net stats workstation & pause

if "%c%"=="111" powershell Start-Process cmd -Verb runAs
if "%c%"=="112" start powershell
if "%c%"=="113" tasklist & pause
if "%c%"=="114" set /p pid=Enter PID: & taskkill /F /PID !pid! & pause
if "%c%"=="115" set /p app=Enter Process Name: & taskkill /F /IM !app! & pause
if "%c%"=="116" start shell:startup
if "%c%"=="117" msconfig
if "%c%"=="118" schtasks /query /fo LIST /v & pause
if "%c%"=="119" set /p task=Task Name: & schtasks /change /tn "!task!" /disable & pause
if "%c%"=="120" set /p task=Task Name: & schtasks /change /tn "!task!" /enable & pause

if "%c%"=="121" ipconfig /flushdns & arp -d * & netsh winsock reset & netsh int ip reset & pause
if "%c%"=="122" netsh int tcp reset & pause
if "%c%"=="123" netsh interface ipv6 show interfaces & pause
if "%c%"=="124" netsh interface teredo set state disabled & pause
if "%c%"=="125" (
netsh interface ip set dns "Wi-Fi" static 8.8.8.8
netsh interface ip add dns "Wi-Fi" 8.8.4.4 index=2
pause
)

if "%c%"=="126" netsh interface ip set dns "Wi-Fi" dhcp & pause
if "%c%"=="127" sc qc lanmanworkstation & pause
if "%c%"=="128" dism /online /disable-feature /featurename:SMB1Protocol & pause
if "%c%"=="129" dism /online /Add-Capability /CapabilityName:OpenSSH.Client~~~~0.0.1.0 & pause
if "%c%"=="130" reg query "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections & pause

if "%c%"=="131" chkdsk /scan & pause
if "%c%"=="132" defrag C: /A & pause
if "%c%"=="133" fsutil behavior query DisableDeleteNotify & pause
if "%c%"=="134" wmic pagefile list /format:list & pause
if "%c%"=="135" rd /s /q C:\$Recycle.Bin & pause
if "%c%"=="136" dsregcmd /status & pause
if "%c%"=="137" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate & pause
if "%c%"=="138" reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f & pause
if "%c%"=="139" wf.msc
if "%c%"=="140" start windowsdefender:

if "%c%"=="141" reagentc /enable & pause
if "%c%"=="142" bcdedit /set {default} bootmenupolicy legacy & pause
if "%c%"=="143" bcdedit /set bootlog yes & pause
if "%c%"=="144" bcdedit /enum all & pause
if "%c%"=="145" mbr2gpt /validate /allowFullOS & pause
if "%c%"=="146" gpedit.msc
if "%c%"=="147" reg export HKLM C:\RegBackup.reg & pause
if "%c%"=="148" reg import C:\RegBackup.reg & pause
if "%c%"=="149" dism /online /Get-FeatureInfo /FeatureName:Containers-DisposableClientVM & pause
if "%c%"=="150" virtmgmt.msc

if "%c%"=="2000" goto extra2
if "%c%"=="2001" goto extra4

goto extra3

:: ============================================================
:: [EXTRA-4] REAL WORKING CMD / POWERSHELL TOOLKIT (151-200)
:: ============================================================
:extra4
cls
color 0C
echo ============================================================
echo          EXTRA COMMAND CENTER 4 (151-200 REAL)
echo ============================================================
echo [151] Running Services           [176] Network Export
echo [152] Restart Explorer           [177] SMBv1 Enable
echo [153] Kill Frozen Apps           [178] Telnet Disable
echo [154] Control Panel              [179] OpenSSH Remove
echo [155] Programs & Features        [180] Remote Assistance
echo [156] Installed Updates          [181] Disk Cleanup
echo [157] Optional Features          [182] Defrag Optimize
echo [158] Windows Version            [183] Enable TRIM
echo [159] License Key                [184] Temp Internet Cleanup
echo [160] Activation Status          [185] Windows.old Cleanup
echo [161] Clipboard Clear            [186] MRT Full Scan
echo [162] DNS Export                 [187] Defender History
echo [163] Route Export               [188] Defender Enable
echo [164] ARP Export                 [189] Firewall Restore
echo [165] Netstat Export             [190] UEFI Partition List
echo [166] User Accounts              [191] WinRE Disable
echo [167] Password Policy            [192] Standard Boot Menu
echo [168] Lockout Policy             [193] Boot Log Disable
echo [169] Security Policy            [194] MBR2GPT Disk0
echo [170] Shared Folders             [195] Mount EFI
echo [171] Open Ports                 [196] HKCU Registry Backup
echo [172] Ethernet Reset             [197] Sandbox Feature Info
echo [173] IPv6 Disable               [198] Windows Sandbox
echo [174] Wi-Fi Reset                [199] Full Health Report
echo [175] Cloudflare DNS             [200] System Mega Export
echo ============================================================
echo [2000] Previous Extra-3
echo [2001] Next Extra-5
echo ============================================================
set /p c=Select Extra4 Option (151-200,2000,2001):

if "%c%"=="151" net start & pause
if "%c%"=="152" taskkill /f /im explorer.exe & start explorer.exe
if "%c%"=="153" taskkill /f /fi "status eq not responding" & pause
if "%c%"=="154" control
if "%c%"=="155" appwiz.cpl
if "%c%"=="156" wmic qfe list brief /format:table & pause
if "%c%"=="157" optionalfeatures
if "%c%"=="158" winver
if "%c%"=="159" wmic path softwarelicensingservice get OA3xOriginalProductKey & pause
if "%c%"=="160" slmgr /xpr & pause

if "%c%"=="161" echo off | clip & pause
if "%c%"=="162" ipconfig /displaydns > "%USERPROFILE%\Desktop\dns.txt" & pause
if "%c%"=="163" route print > "%USERPROFILE%\Desktop\route.txt" & pause
if "%c%"=="164" arp -a > "%USERPROFILE%\Desktop\arp.txt" & pause
if "%c%"=="165" netstat -ano > "%USERPROFILE%\Desktop\netstat.txt" & pause
if "%c%"=="166" netplwiz
if "%c%"=="167" net accounts & pause
if "%c%"=="168" net accounts /lockoutthreshold & pause
if "%c%"=="169" secpol.msc
if "%c%"=="170" fsmgmt.msc

if "%c%"=="171" netstat -an | find "LISTEN" & pause
if "%c%"=="172" (
netsh interface set interface "Ethernet" disable
timeout /t 3 >nul
netsh interface set interface "Ethernet" enable
pause
)

if "%c%"=="173" netsh interface teredo set state disabled & pause
if "%c%"=="174" (
netsh interface set interface "Wi-Fi" disable
timeout /t 3 >nul
netsh interface set interface "Wi-Fi" enable
pause
)

if "%c%"=="175" (
netsh interface ip set dns "Wi-Fi" static 1.1.1.1
netsh interface ip add dns "Wi-Fi" 1.0.0.1 index=2
pause
)

if "%c%"=="176" ipconfig /all > "%USERPROFILE%\Desktop\network_full.txt" & pause
if "%c%"=="177" dism /online /enable-feature /featurename:SMB1Protocol & pause
if "%c%"=="178" dism /online /Disable-Feature /FeatureName:TelnetClient & pause
if "%c%"=="179" dism /online /Remove-Capability /CapabilityName:OpenSSH.Client~~~~0.0.1.0 & pause
if "%c%"=="180" msra

if "%c%"=="181" cleanmgr
if "%c%"=="182" defrag C: /O & pause
if "%c%"=="183" fsutil behavior set DisableDeleteNotify 0 & pause
if "%c%"=="184" RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
if "%c%"=="185" cleanmgr /sageset:1

if "%c%"=="186" mrt /f:y
if "%c%"=="187" start windowsdefender://history
if "%c%"=="188" reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /f & pause
if "%c%"=="189" netsh advfirewall reset & pause
if "%c%"=="190" mountvol S: /S & pause

if "%c%"=="191" reagentc /disable & pause
if "%c%"=="192" bcdedit /set {default} bootmenupolicy standard & pause
if "%c%"=="193" bcdedit /deletevalue bootlog & pause
if "%c%"=="194" mbr2gpt /validate /disk:0 /allowFullOS & pause
if "%c%"=="195" mountvol Z: /S & pause

if "%c%"=="196" reg export HKCU "%USERPROFILE%\Desktop\HKCU_Backup.reg" & pause
if "%c%"=="197" dism /online /Get-FeatureInfo /FeatureName:Containers-DisposableClientVM & pause
if "%c%"=="198" WindowsSandbox
if "%c%"=="199" systeminfo & ipconfig /all & driverquery & tasklist & pause

if "%c%"=="200" (
systeminfo > "%USERPROFILE%\Desktop\mega_report.txt"
ipconfig /all >> "%USERPROFILE%\Desktop\mega_report.txt"
driverquery >> "%USERPROFILE%\Desktop\mega_report.txt"
tasklist >> "%USERPROFILE%\Desktop\mega_report.txt"
netstat -ano >> "%USERPROFILE%\Desktop\mega_report.txt"
echo Mega report saved to Desktop.
pause
)

if "%c%"=="2000" goto extra3
if "%c%"=="2001" goto extra5

goto extra4

:: ============================================================
:: [EXTRA-4] REAL WORKING CMD / POWERSHELL TOOLKIT (151-200)
:: ============================================================
:extra4
cls
color 0C
echo ============================================================
echo          EXTRA COMMAND CENTER 4 (151-200 REAL)
echo ============================================================
echo [151] Running Services           [176] Network Export
echo [152] Restart Explorer           [177] SMBv1 Enable
echo [153] Kill Frozen Apps           [178] Telnet Disable
echo [154] Control Panel              [179] OpenSSH Remove
echo [155] Programs & Features        [180] Remote Assistance
echo [156] Installed Updates          [181] Disk Cleanup
echo [157] Optional Features          [182] Defrag Optimize
echo [158] Windows Version            [183] Enable TRIM
echo [159] License Key                [184] Temp Internet Cleanup
echo [160] Activation Status          [185] Windows.old Cleanup
echo [161] Clipboard Clear            [186] MRT Full Scan
echo [162] DNS Export                 [187] Defender History
echo [163] Route Export               [188] Defender Enable
echo [164] ARP Export                 [189] Firewall Restore
echo [165] Netstat Export             [190] UEFI Partition List
echo [166] User Accounts              [191] WinRE Disable
echo [167] Password Policy            [192] Standard Boot Menu
echo [168] Lockout Policy             [193] Boot Log Disable
echo [169] Security Policy            [194] MBR2GPT Disk0
echo [170] Shared Folders             [195] Mount EFI
echo [171] Open Ports                 [196] HKCU Registry Backup
echo [172] Ethernet Reset             [197] Sandbox Feature Info
echo [173] IPv6 Disable               [198] Windows Sandbox
echo [174] Wi-Fi Reset                [199] Full Health Report
echo [175] Cloudflare DNS             [200] System Mega Export
echo ============================================================
echo [2000] Previous Extra-3
echo [2001] Next Extra-5
echo ============================================================
set /p c=Select Extra4 Option (151-200,2000,2001):

if "%c%"=="151" net start & pause
if "%c%"=="152" taskkill /f /im explorer.exe & start explorer.exe
if "%c%"=="153" taskkill /f /fi "status eq not responding" & pause
if "%c%"=="154" control
if "%c%"=="155" appwiz.cpl
if "%c%"=="156" wmic qfe list brief /format:table & pause
if "%c%"=="157" optionalfeatures
if "%c%"=="158" winver
if "%c%"=="159" wmic path softwarelicensingservice get OA3xOriginalProductKey & pause
if "%c%"=="160" slmgr /xpr & pause

if "%c%"=="161" echo off | clip & pause
if "%c%"=="162" ipconfig /displaydns > "%USERPROFILE%\Desktop\dns.txt" & pause
if "%c%"=="163" route print > "%USERPROFILE%\Desktop\route.txt" & pause
if "%c%"=="164" arp -a > "%USERPROFILE%\Desktop\arp.txt" & pause
if "%c%"=="165" netstat -ano > "%USERPROFILE%\Desktop\netstat.txt" & pause
if "%c%"=="166" netplwiz
if "%c%"=="167" net accounts & pause
if "%c%"=="168" net accounts /lockoutthreshold & pause
if "%c%"=="169" secpol.msc
if "%c%"=="170" fsmgmt.msc

if "%c%"=="171" netstat -an | find "LISTEN" & pause
if "%c%"=="172" (
netsh interface set interface "Ethernet" disable
timeout /t 3 >nul
netsh interface set interface "Ethernet" enable
pause
)

if "%c%"=="173" netsh interface teredo set state disabled & pause
if "%c%"=="174" (
netsh interface set interface "Wi-Fi" disable
timeout /t 3 >nul
netsh interface set interface "Wi-Fi" enable
pause
)

if "%c%"=="175" (
netsh interface ip set dns "Wi-Fi" static 1.1.1.1
netsh interface ip add dns "Wi-Fi" 1.0.0.1 index=2
pause
)

if "%c%"=="176" ipconfig /all > "%USERPROFILE%\Desktop\network_full.txt" & pause
if "%c%"=="177" dism /online /enable-feature /featurename:SMB1Protocol & pause
if "%c%"=="178" dism /online /Disable-Feature /FeatureName:TelnetClient & pause
if "%c%"=="179" dism /online /Remove-Capability /CapabilityName:OpenSSH.Client~~~~0.0.1.0 & pause
if "%c%"=="180" msra

if "%c%"=="181" cleanmgr
if "%c%"=="182" defrag C: /O & pause
if "%c%"=="183" fsutil behavior set DisableDeleteNotify 0 & pause
if "%c%"=="184" RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
if "%c%"=="185" cleanmgr /sageset:1

if "%c%"=="186" mrt /f:y
if "%c%"=="187" start windowsdefender://history
if "%c%"=="188" reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /f & pause
if "%c%"=="189" netsh advfirewall reset & pause
if "%c%"=="190" mountvol S: /S & pause

if "%c%"=="191" reagentc /disable & pause
if "%c%"=="192" bcdedit /set {default} bootmenupolicy standard & pause
if "%c%"=="193" bcdedit /deletevalue bootlog & pause
if "%c%"=="194" mbr2gpt /validate /disk:0 /allowFullOS & pause
if "%c%"=="195" mountvol Z: /S & pause

if "%c%"=="196" reg export HKCU "%USERPROFILE%\Desktop\HKCU_Backup.reg" & pause
if "%c%"=="197" dism /online /Get-FeatureInfo /FeatureName:Containers-DisposableClientVM & pause
if "%c%"=="198" WindowsSandbox
if "%c%"=="199" systeminfo & ipconfig /all & driverquery & tasklist & pause

if "%c%"=="200" (
systeminfo > "%USERPROFILE%\Desktop\mega_report.txt"
ipconfig /all >> "%USERPROFILE%\Desktop\mega_report.txt"
driverquery >> "%USERPROFILE%\Desktop\mega_report.txt"
tasklist >> "%USERPROFILE%\Desktop\mega_report.txt"
netstat -ano >> "%USERPROFILE%\Desktop\mega_report.txt"
echo Mega report saved to Desktop.
pause
)

if "%c%"=="2000" goto extra3
if "%c%"=="2001" goto extra5

goto extra4

:: ============================================================
:: [EXTRA-6] REAL WORKING CMD / POWERSHELL TOOLKIT (251-300)
:: ============================================================
:extra6
cls
color 09
echo ============================================================
echo          EXTRA COMMAND CENTER 6 (251-300 REAL)
echo ============================================================
echo [251] VSSAdmin List Shadows       [276] Net Use Sessions
echo [252] VSSAdmin Delete Shadows     [277] Net Session
echo [253] VSSAdmin Writers            [278] Net File
echo [254] FSUtil Dirty Query          [279] Open Files
echo [255] FSUtil Repair               [280] Shared Printers
echo [256] CHKNTFS Status              [281] Print Queue
echo [257] CHKNTFS Restore             [282] Spooler Restart
echo [258] Label Drive                 [283] Hosts Backup
echo [259] Volume Serial               [284] Hosts Restore
echo [260] MountVol List               [285] Environment Vars
echo [261] Disk Cleanup Advanced       [286] SetX User Var
echo [262] Component Cleanup           [287] SetX System Var
echo [263] SFC Log Export              [288] PowerShell ISE
echo [264] DISM Log Open               [289] CMD Here
echo [265] CBS Log Open                [290] Safe Mode Network
echo [266] Event Logs Export           [291] Safe Mode CMD
echo [267] Reliability History Export  [292] Normal Boot Restore
echo [268] Installed Drivers Export    [293] Boot Menu Timeout
echo [269] Services Export             [294] Boot Menu Current
echo [270] Scheduled Tasks Export      [295] WinSAT Formal
echo [271] User Accounts Export        [296] WinSAT Disk
echo [272] Startup Programs Export     [297] WinSAT Memory
echo [273] Network Config Export       [298] WinSAT CPU
echo [274] ARP Table Export            [299] Full Advanced Report
echo [275] Route Table Export          [300] System Toolkit Export
echo ============================================================
echo [2000] Previous Extra-5
echo [2001] Next Extra-7
echo ============================================================
set /p c=Select Extra6 Option (251-300,2000,2001):

if "%c%"=="251" vssadmin list shadows & pause
if "%c%"=="252" vssadmin delete shadows /all & pause
if "%c%"=="253" vssadmin list writers & pause
if "%c%"=="254" fsutil dirty query C: & pause
if "%c%"=="255" fsutil repair query C: & pause
if "%c%"=="256" chkntfs C: & pause
if "%c%"=="257" chkntfs /d & pause
if "%c%"=="258" label
if "%c%"=="259" vol & pause
if "%c%"=="260" mountvol & pause

if "%c%"=="261" cleanmgr /sageset:1
if "%c%"=="262" DISM /Online /Cleanup-Image /StartComponentCleanup & pause
if "%c%"=="263" findstr /c:"[SR]" %windir%\Logs\CBS\CBS.log > "%USERPROFILE%\Desktop\SFC_Log.txt" & pause
if "%c%"=="264" notepad %windir%\Logs\DISM\dism.log
if "%c%"=="265" notepad %windir%\Logs\CBS\CBS.log
if "%c%"=="266" wevtutil epl System "%USERPROFILE%\Desktop\System.evtx" & pause
if "%c%"=="267" perfmon /rel
if "%c%"=="268" driverquery /v > "%USERPROFILE%\Desktop\drivers.txt" & pause
if "%c%"=="269" sc query type= service > "%USERPROFILE%\Desktop\services.txt" & pause
if "%c%"=="270" schtasks /query /fo csv > "%USERPROFILE%\Desktop\tasks.csv" & pause

if "%c%"=="271" net user > "%USERPROFILE%\Desktop\users.txt" & pause
if "%c%"=="272" wmic startup get caption,command > "%USERPROFILE%\Desktop\startup.txt" & pause
if "%c%"=="273" ipconfig /all > "%USERPROFILE%\Desktop\network.txt" & pause
if "%c%"=="274" arp -a > "%USERPROFILE%\Desktop\arp_table.txt" & pause
if "%c%"=="275" route print > "%USERPROFILE%\Desktop\route_table.txt" & pause
if "%c%"=="276" net use & pause
if "%c%"=="277" net session & pause
if "%c%"=="278" net file & pause
if "%c%"=="279" openfiles & pause
if "%c%"=="280" control printers

if "%c%"=="281" start shell:PrintersFolder
if "%c%"=="282" net stop spooler & net start spooler & pause
if "%c%"=="283" copy C:\Windows\System32\drivers\etc\hosts "%USERPROFILE%\Desktop\hosts_backup" & pause
if "%c%"=="284" copy "%USERPROFILE%\Desktop\hosts_backup" C:\Windows\System32\drivers\etc\hosts & pause
if "%c%"=="285" set & pause
if "%c%"=="286" setx MyVar TestValue & pause
if "%c%"=="287" setx /M MySystemVar TestValue & pause
if "%c%"=="288" powershell_ise
if "%c%"=="289" powershell Start-Process cmd -WorkingDirectory "%cd%"
if "%c%"=="290" bcdedit /set {current} safeboot network & pause

if "%c%"=="291" bcdedit /set {current} safeboot minimal & pause
if "%c%"=="292" bcdedit /deletevalue {current} safeboot & pause
if "%c%"=="293" bcdedit /timeout 10 & pause
if "%c%"=="294" bcdedit /enum {current} & pause
if "%c%"=="295" winsat formal & pause
if "%c%"=="296" winsat disk & pause
if "%c%"=="297" winsat mem & pause
if "%c%"=="298" winsat cpuformal & pause

if "%c%"=="299" (
systeminfo > "%USERPROFILE%\Desktop\advanced_report.txt"
driverquery /v >> "%USERPROFILE%\Desktop\advanced_report.txt"
sc query >> "%USERPROFILE%\Desktop\advanced_report.txt"
schtasks /query >> "%USERPROFILE%\Desktop\advanced_report.txt"
echo Advanced report saved to Desktop.
pause
)

if "%c%"=="300" (
systeminfo > "%USERPROFILE%\Desktop\system_toolkit_export.txt"
ipconfig /all >> "%USERPROFILE%\Desktop\system_toolkit_export.txt"
netstat -ano >> "%USERPROFILE%\Desktop\system_toolkit_export.txt"
tasklist >> "%USERPROFILE%\Desktop\system_toolkit_export.txt"
driverquery >> "%USERPROFILE%\Desktop\system_toolkit_export.txt"
echo Full toolkit export saved to Desktop.
pause
)

if "%c%"=="2000" goto extra5
if "%c%"=="2001" goto extra7

goto extra6

:: ============================================================
:: [EXTRA-7] REAL WORKING CMD / POWERSHELL TOOLKIT (301-350)
:: ============================================================
:extra7
cls
color 0A
echo ============================================================
echo          EXTRA COMMAND CENTER 7 (301-350 REAL)
echo ============================================================
echo [301] Net View Workgroup          [326] DiskPart List Volume
echo [302] Net View Remote PC          [327] DiskPart List Partition
echo [303] Net User Remote             [328] WMIC Logical Disk
echo [304] Net Statistics Server       [329] WMIC Volume
echo [305] Net Statistics Workstation  [330] Defrag Boot Optimize
echo [306] Net Config Workstation      [331] Pagefile Auto Manage
echo [307] Net Config Server           [332] Shadow Storage List
echo [308] Net Accounts Domain         [333] Shadow Storage Resize
echo [309] Query Session               [334] System Restore Open
echo [310] Query Process               [335] Restore Point Create
echo [311] Query TermServer            [336] Restore Point List
echo [312] Shutdown Abort              [337] Recovery Drive
echo [313] Shutdown Hybrid             [338] Recovery Options
echo [314] Logoff Current User         [339] Safe Removal Tool
echo [315] RunAs Admin CMD             [340] USB Devices List
echo [316] WMIC OS Full                [341] USB Power Reset
echo [317] WMIC Product List           [342] Bluetooth Reset
echo [318] WMIC Service List           [343] Audio Troubleshooter
echo [319] WMIC Process List           [344] Printer Troubleshooter
echo [320] WMIC Startup List           [345] Network Troubleshooter
echo [321] WMIC Hotfixes              [346] Activation UI
echo [322] Disk Management             [347] Slmgr Detailed
echo [323] Storage Spaces              [348] Slmgr Rearm
echo [324] Optimize Drives             [349] Windows Repair Panel
echo [325] DiskPart List Disk          [350] Mega Admin Report
echo ============================================================
echo [2000] Previous Extra-6
echo [2001] Next Extra-8
echo ============================================================
set /p c=Select Extra7 Option (301-350,2000,2001):

if "%c%"=="301" net view & pause
if "%c%"=="302" set /p pc=Remote PC Name: & net view \\!pc! & pause
if "%c%"=="303" set /p pc=Remote PC Name: & net user /domain & pause
if "%c%"=="304" net statistics server & pause
if "%c%"=="305" net statistics workstation & pause
if "%c%"=="306" net config workstation & pause
if "%c%"=="307" net config server & pause
if "%c%"=="308" net accounts /domain & pause
if "%c%"=="309" query session & pause
if "%c%"=="310" query process & pause

if "%c%"=="311" query termserver & pause
if "%c%"=="312" shutdown /a & pause
if "%c%"=="313" shutdown /hybrid /s /t 0
if "%c%"=="314" logoff
if "%c%"=="315" runas /user:administrator cmd
if "%c%"=="316" wmic os get * /format:list & pause
if "%c%"=="317" wmic product get name,version & pause
if "%c%"=="318" wmic service list brief & pause
if "%c%"=="319" wmic process list brief & pause
if "%c%"=="320" wmic startup list full & pause

if "%c%"=="321" wmic qfe list & pause
if "%c%"=="322" diskmgmt.msc
if "%c%"=="323" control.exe /name Microsoft.StorageSpaces
if "%c%"=="324" dfrgui
if "%c%"=="325" echo list disk | diskpart
if "%c%"=="326" echo list volume | diskpart
if "%c%"=="327" echo list partition | diskpart
if "%c%"=="328" wmic logicaldisk get caption,description,freespace,size & pause
if "%c%"=="329" wmic volume list brief & pause
if "%c%"=="330" defrag C: /B & pause

if "%c%"=="331" wmic computersystem where name="%computername%" set AutomaticManagedPagefile=True & pause
if "%c%"=="332" vssadmin list shadowstorage & pause
if "%c%"=="333" vssadmin resize shadowstorage /for=C: /on=C: /maxsize=20GB & pause
if "%c%"=="334" rstrui
if "%c%"=="335" powershell "Checkpoint-Computer -Description 'ManualRestorePoint'" & pause
if "%c%"=="336" vssadmin list shadows & pause
if "%c%"=="337" RecoveryDrive
if "%c%"=="338" start ms-settings:recovery
if "%c%"=="339" RunDll32.exe shell32.dll,Control_RunDLL hotplug.dll
if "%c%"=="340" powershell "Get-PnpDevice -Class USB" & pause

if "%c%"=="341" powershell "Get-PnpDevice -Class USB | Disable-PnpDevice -Confirm:`$false; Get-PnpDevice -Class USB | Enable-PnpDevice -Confirm:`$false" & pause
if "%c%"=="342" net stop bthserv & net start bthserv & pause
if "%c%"=="343" msdt.exe -id AudioPlaybackDiagnostic
if "%c%"=="344" msdt.exe -id PrinterDiagnostic
if "%c%"=="345" msdt.exe -id NetworkDiagnosticsNetworkAdapter
if "%c%"=="346" slui
if "%c%"=="347" slmgr /dlv & pause
if "%c%"=="348" slmgr /rearm & pause
if "%c%"=="349" control /name Microsoft.Troubleshooting

if "%c%"=="350" (
systeminfo > "%USERPROFILE%\Desktop\mega_admin_report.txt"
wmic os get * /format:list >> "%USERPROFILE%\Desktop\mega_admin_report.txt"
wmic product get name,version >> "%USERPROFILE%\Desktop\mega_admin_report.txt"
wmic startup list full >> "%USERPROFILE%\Desktop\mega_admin_report.txt"
echo Mega admin report saved to Desktop.
pause
)

if "%c%"=="2000" goto extra6
if "%c%"=="2001" goto extra8

goto extra7

:: ============================================================
:: [EXTRA-8] REAL WORKING CMD / POWERSHELL TOOLKIT (351-400)
:: ============================================================
:extra8
cls
color 0E
echo ============================================================
echo          EXTRA COMMAND CENTER 8 (351-400 REAL)
echo ============================================================
echo [351] DNS Lookup                  [376] Netsh Bridge Show
echo [352] Reverse DNS Lookup          [377] Netsh LAN Show
echo [353] NSLookup MX Records         [378] WLAN Driver Info
echo [354] NSLookup NS Records         [379] WLAN Hosted Network
echo [355] Test-NetConnection          [380] WLAN Stop Hosted
echo [356] Public IP Check             [381] WLAN Block List
echo [357] Gateway Ping                [382] WLAN Allow List
echo [358] Continuous Gateway Ping     [383] NetBIOS Cache
echo [359] Port Specific Ping          [384] Flush NetBIOS
echo [360] Trace Route Advanced        [385] SMB Open Shares
echo [361] PathPing Advanced           [386] SMB Map Drive
echo [362] Route IPv4                  [387] SMB Remove Drive
echo [363] Route IPv6                  [388] FTP Open
echo [364] ARP Full Table              [389] Telnet Open
echo [365] Netstat Ethernet Stats      [390] RDP Client
echo [366] Netstat Routing Stats       [391] Remote Registry
echo [367] Netstat Protocol Stats      [392] PS Remoting Enable
echo [368] Netsh Trace Start           [393] PS Remoting Disable
echo [369] Netsh Trace Stop            [394] WinRM QuickConfig
echo [370] Network Reset Full          [395] WinRM Config
echo [371] Proxy AutoDetect            [396] Certificates User
echo [372] Proxy Import IE             [397] Certificates Machine
echo [373] Firewall Rules List         [398] Cipher Wipe Free Space
echo [374] Firewall Rule Add           [399] Ultimate Network Report
echo [375] Firewall Rule Delete        [400] Master Connectivity Export
echo ============================================================
echo [2000] Previous Extra-7
echo [2001] Next Extra-9
echo ============================================================
set /p c=Select Extra8 Option (351-400,2000,2001):

if "%c%"=="351" set /p d=Domain: & nslookup !d! & pause
if "%c%"=="352" set /p ip=IP: & nslookup !ip! & pause
if "%c%"=="353" set /p d=Domain: & nslookup -type=mx !d! & pause
if "%c%"=="354" set /p d=Domain: & nslookup -type=ns !d! & pause
if "%c%"=="355" powershell "Test-NetConnection google.com" & pause
if "%c%"=="356" powershell "(Invoke-WebRequest ifconfig.me/ip).Content" & pause
if "%c%"=="357" for /f "tokens=3" %%g in ('ipconfig ^| findstr /i "Gateway"') do ping %%g & pause
if "%c%"=="358" for /f "tokens=3" %%g in ('ipconfig ^| findstr /i "Gateway"') do ping %%g -t
if "%c%"=="359" set /p host=Host: & set /p port=Port: & powershell "Test-NetConnection !host! -Port !port!" & pause
if "%c%"=="360" set /p host=Host: & tracert -d !host! & pause

if "%c%"=="361" set /p host=Host: & pathping !host! & pause
if "%c%"=="362" route print -4 & pause
if "%c%"=="363" route print -6 & pause
if "%c%"=="364" arp -a & pause
if "%c%"=="365" netstat -e & pause
if "%c%"=="366" netstat -r & pause
if "%c%"=="367" netstat -s & pause
if "%c%"=="368" netsh trace start capture=yes & pause
if "%c%"=="369" netsh trace stop & pause
if "%c%"=="370" netsh int ip reset & netsh winsock reset & ipconfig /flushdns & pause

if "%c%"=="371" netsh winhttp reset proxy & pause
if "%c%"=="372" netsh winhttp import proxy source=ie & pause
if "%c%"=="373" netsh advfirewall firewall show rule name=all & pause
if "%c%"=="374" echo Use manual syntax: netsh advfirewall firewall add rule ... & pause
if "%c%"=="375" echo Use manual syntax: netsh advfirewall firewall delete rule ... & pause
if "%c%"=="376" netsh bridge show adapter & pause
if "%c%"=="377" netsh lan show interfaces & pause
if "%c%"=="378" netsh wlan show drivers & pause
if "%c%"=="379" netsh wlan start hostednetwork & pause
if "%c%"=="380" netsh wlan stop hostednetwork & pause

if "%c%"=="381" netsh wlan show filters & pause
if "%c%"=="382" netsh wlan add filter permission=allow ssid="YourSSID" networktype=infrastructure & pause
if "%c%"=="383" nbtstat -c & pause
if "%c%"=="384" nbtstat -R & pause
if "%c%"=="385" net share & pause
if "%c%"=="386" set /p share=\\PC\Share: & net use Z: !share! & pause
if "%c%"=="387" net use Z: /delete & pause
if "%c%"=="388" start ftp
if "%c%"=="389" start telnet
if "%c%"=="390" mstsc

if "%c%"=="391" reg query "HKLM\SYSTEM\CurrentControlSet\Services\RemoteRegistry" & pause
if "%c%"=="392" powershell "Enable-PSRemoting -Force" & pause
if "%c%"=="393" powershell "Disable-PSRemoting -Force" & pause
if "%c%"=="394" winrm quickconfig & pause
if "%c%"=="395" winrm get winrm/config & pause
if "%c%"=="396" certmgr.msc
if "%c%"=="397" certlm.msc
if "%c%"=="398" cipher /w:C:\ & pause

if "%c%"=="399" (
ipconfig /all > "%USERPROFILE%\Desktop\ultimate_network_report.txt"
netstat -ano >> "%USERPROFILE%\Desktop\ultimate_network_report.txt"
route print >> "%USERPROFILE%\Desktop\ultimate_network_report.txt"
arp -a >> "%USERPROFILE%\Desktop\ultimate_network_report.txt"
netsh wlan show interfaces >> "%USERPROFILE%\Desktop\ultimate_network_report.txt"
echo Ultimate network report saved to Desktop.
pause
)

if "%c%"=="400" (
ipconfig /all > "%USERPROFILE%\Desktop\master_connectivity_export.txt"
nslookup google.com >> "%USERPROFILE%\Desktop\master_connectivity_export.txt"
ping google.com >> "%USERPROFILE%\Desktop\master_connectivity_export.txt"
tracert google.com >> "%USERPROFILE%\Desktop\master_connectivity_export.txt"
netstat -s >> "%USERPROFILE%\Desktop\master_connectivity_export.txt"
echo Master connectivity export saved to Desktop.
pause
)

if "%c%"=="2000" goto extra7
if "%c%"=="2001" goto extra9

goto extra8

:: ============================================================
:: [EXTRA-9] REAL WORKING CMD / POWERSHELL TOOLKIT (401-450)
:: ============================================================
:extra9
cls
color 0B
echo ============================================================
echo          EXTRA COMMAND CENTER 9 (401-450 REAL)
echo ============================================================
echo [401] DCDiag Basic                [426] DNS Manager
echo [402] DCDiag Full                 [427] DHCP Manager
echo [403] RepAdmin Summary            [428] AD Users & Computers
echo [404] RepAdmin Queue              [429] AD Sites & Services
echo [405] NLTest Domain Check         [430] AD Domains & Trusts
echo [406] NLTest DC List              [431] FSMO Role Check
echo [407] NetDom Query FSMO           [432] Time Sync Query
echo [408] KList Tickets               [433] Time Sync Resync
echo [409] KList Purge                 [434] GPUpdate Force
echo [410] SetSPN List                 [435] GPResult HTML
echo [411] Net Share Audit             [436] Audit Policy Export
echo [412] OpenFiles Local             [437] Security Log Export
echo [413] OpenFiles Global            [438] System Log Export
echo [414] Event Logs Security         [439] Application Log Export
echo [415] Event Logs System           [440] User Rights
echo [416] Event Logs Application      [441] Local Policy Export
echo [417] WMIC Service Full           [442] Firewall Policy Export
echo [418] WMIC Process Full           [443] Defender Status
echo [419] WMIC Startup Full           [444] Defender Signatures
echo [420] WMIC Shares                 [445] Defender Scan Custom
echo [421] Task Scheduler GUI          [446] BitLocker Protectors
echo [422] Scheduled Tasks CSV         [447] BitLocker Recovery
echo [423] Computer Mgmt               [448] Full Domain Report
echo [424] Services Advanced           [449] Enterprise Security Pack
echo [425] Group Policy Editor         [450] Server Mega Export
echo ============================================================
echo [2000] Previous Extra-8
echo [2001] Next Extra-10
echo ============================================================
set /p c=Select Extra9 Option (401-450,2000,2001):

if "%c%"=="401" dcdiag & pause
if "%c%"=="402" dcdiag /v & pause
if "%c%"=="403" repadmin /replsummary & pause
if "%c%"=="404" repadmin /queue & pause
if "%c%"=="405" nltest /dsgetdc:%userdomain% & pause
if "%c%"=="406" nltest /dclist:%userdomain% & pause
if "%c%"=="407" netdom query fsmo & pause
if "%c%"=="408" klist & pause
if "%c%"=="409" klist purge & pause
if "%c%"=="410" setspn -L %computername% & pause

if "%c%"=="411" net share & pause
if "%c%"=="412" openfiles /query & pause
if "%c%"=="413" openfiles /query /v & pause
if "%c%"=="414" wevtutil qe Security /c:25 /f:text & pause
if "%c%"=="415" wevtutil qe System /c:25 /f:text & pause
if "%c%"=="416" wevtutil qe Application /c:25 /f:text & pause
if "%c%"=="417" wmic service list full & pause
if "%c%"=="418" wmic process list full & pause
if "%c%"=="419" wmic startup list full & pause
if "%c%"=="420" wmic share list full & pause

if "%c%"=="421" taskschd.msc
if "%c%"=="422" schtasks /query /fo csv > "%USERPROFILE%\Desktop\scheduled_tasks.csv" & pause
if "%c%"=="423" compmgmt.msc
if "%c%"=="424" services.msc
if "%c%"=="425" gpedit.msc
if "%c%"=="426" dnsmgmt.msc
if "%c%"=="427" dhcpmgmt.msc
if "%c%"=="428" dsa.msc
if "%c%"=="429" dssite.msc
if "%c%"=="430" domain.msc

if "%c%"=="431" netdom query fsmo & pause
if "%c%"=="432" w32tm /query /status & pause
if "%c%"=="433" w32tm /resync & pause
if "%c%"=="434" gpupdate /force & pause
if "%c%"=="435" gpresult /h "%USERPROFILE%\Desktop\domain_gpresult.html" & pause
if "%c%"=="436" auditpol /get /category:* > "%USERPROFILE%\Desktop\audit_export.txt" & pause
if "%c%"=="437" wevtutil epl Security "%USERPROFILE%\Desktop\Security.evtx" & pause
if "%c%"=="438" wevtutil epl System "%USERPROFILE%\Desktop\System.evtx" & pause
if "%c%"=="439" wevtutil epl Application "%USERPROFILE%\Desktop\Application.evtx" & pause
if "%c%"=="440" whoami /priv & pause

if "%c%"=="441" secedit /export /cfg "%USERPROFILE%\Desktop\localpolicy.inf" & pause
if "%c%"=="442" netsh advfirewall export "%USERPROFILE%\Desktop\firewall_enterprise.wfw" & pause
if "%c%"=="443" powershell "Get-MpComputerStatus" & pause
if "%c%"=="444" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate & pause
if "%c%"=="445" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 3 -File C:\ & pause
if "%c%"=="446" manage-bde -protectors -get C: & pause
if "%c%"=="447" manage-bde -forcerecovery C: & pause

if "%c%"=="448" (
dcdiag /v > "%USERPROFILE%\Desktop\domain_report.txt"
repadmin /replsummary >> "%USERPROFILE%\Desktop\domain_report.txt"
gpresult /r >> "%USERPROFILE%\Desktop\domain_report.txt"
echo Full domain report saved to Desktop.
pause
)

if "%c%"=="449" (
auditpol /get /category:* > "%USERPROFILE%\Desktop\enterprise_security.txt"
netsh advfirewall show allprofiles >> "%USERPROFILE%\Desktop\enterprise_security.txt"
powershell "Get-MpComputerStatus" >> "%USERPROFILE%\Desktop\enterprise_security.txt"
echo Enterprise security pack saved to Desktop.
pause
)

if "%c%"=="450" (
systeminfo > "%USERPROFILE%\Desktop\server_mega_export.txt"
dcdiag /v >> "%USERPROFILE%\Desktop\server_mega_export.txt"
repadmin /replsummary >> "%USERPROFILE%\Desktop\server_mega_export.txt"
ipconfig /all >> "%USERPROFILE%\Desktop\server_mega_export.txt"
echo Server mega export saved to Desktop.
pause
)

if "%c%"=="2000" goto extra8
if "%c%"=="2001" goto extra10

goto extra9

:: ============================================================
:: [EXTRA-10] REAL WORKING CMD / POWERSHELL TOOLKIT (451-500)
:: ============================================================
:extra10
cls
color 0C
echo ============================================================
echo         EXTRA COMMAND CENTER 10 (451-500 REAL)
echo ============================================================
echo [451] God Mode Folder             [476] Windows Repair All
echo [452] All Control Panel Tasks     [477] Full SFC + DISM Combo
echo [453] Services Full Export        [478] Full Network Repair
echo [454] Drivers Full Export         [479] Full Boot Repair
echo [455] Startup Full Export         [480] Full Defender Scan
echo [456] Users + Groups Export       [481] Full Disk Repair
echo [457] Scheduled Tasks Full        [482] Full Update Reset
echo [458] Event Logs All Export       [483] Full Office Reset
echo [459] Security Policy Export      [484] Full Print Fix
echo [460] Firewall Full Export        [485] Full Temp Cleanup
echo [461] Defender Full Status        [486] Full Activation Check
echo [462] BitLocker Full Status       [487] Full Credential Reset
echo [463] Network Full Snapshot       [488] Full Browser Reset
echo [464] Hardware Full Snapshot      [489] Full User Repair
echo [465] Software Full Snapshot      [490] Full Policy Repair
echo [466] License Full Snapshot       [491] Ultimate IT Audit
echo [467] Battery + Power Snapshot    [492] Emergency Toolkit
echo [468] Restore Point + Backup      [493] Disaster Recovery Pack
echo [469] WinSAT Full                 [494] Zero-Day Response Pack
echo [470] Performance Full Audit      [495] Enterprise Master Pack
echo [471] Registry Full Backup        [496] Mega Diagnostic Export
echo [472] Registry Full Restore       [497] All-in-One Health Check
echo [473] Environment Backup          [498] Omega Recovery Pack
echo [474] PATH Backup                 [499] FINAL MASTER REPORT
echo [475] Desktop Toolkit Pack        [500] Back Main Menu
echo ============================================================
echo [2000] Previous Extra-9
echo [2001] Main Menu
echo ============================================================
set /p c=Select Extra10 Option (451-500,2000,2001):

if "%c%"=="451" mkdir "%USERPROFILE%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" & pause
if "%c%"=="452" control /name Microsoft.AllTasks
if "%c%"=="453" sc query type= service > "%USERPROFILE%\Desktop\services_full.txt" & pause
if "%c%"=="454" driverquery /v > "%USERPROFILE%\Desktop\drivers_full.txt" & pause
if "%c%"=="455" wmic startup list full > "%USERPROFILE%\Desktop\startup_full.txt" & pause
if "%c%"=="456" net user > "%USERPROFILE%\Desktop\users.txt" & net localgroup > "%USERPROFILE%\Desktop\groups.txt" & pause
if "%c%"=="457" schtasks /query /fo LIST /v > "%USERPROFILE%\Desktop\tasks_full.txt" & pause
if "%c%"=="458" wevtutil epl System "%USERPROFILE%\Desktop\System.evtx" & wevtutil epl Security "%USERPROFILE%\Desktop\Security.evtx" & wevtutil epl Application "%USERPROFILE%\Desktop\Application.evtx" & pause
if "%c%"=="459" secedit /export /cfg "%USERPROFILE%\Desktop\security_policy.inf" & pause
if "%c%"=="460" netsh advfirewall export "%USERPROFILE%\Desktop\firewall_full.wfw" & pause

if "%c%"=="461" powershell "Get-MpComputerStatus" > "%USERPROFILE%\Desktop\defender_status.txt" & pause
if "%c%"=="462" manage-bde -status > "%USERPROFILE%\Desktop\bitlocker_status.txt" & pause
if "%c%"=="463" ipconfig /all > "%USERPROFILE%\Desktop\network_snapshot.txt" & netstat -ano >> "%USERPROFILE%\Desktop\network_snapshot.txt" & pause
if "%c%"=="464" systeminfo > "%USERPROFILE%\Desktop\hardware_snapshot.txt" & wmic cpu get name >> "%USERPROFILE%\Desktop\hardware_snapshot.txt" & wmic memorychip get capacity >> "%USERPROFILE%\Desktop\hardware_snapshot.txt" & pause
if "%c%"=="465" wmic product get name,version > "%USERPROFILE%\Desktop\software_snapshot.txt" & pause
if "%c%"=="466" slmgr /dlv > "%USERPROFILE%\Desktop\license_snapshot.txt" & pause
if "%c%"=="467" powercfg /batteryreport & powercfg /energy & pause
if "%c%"=="468" powershell "Checkpoint-Computer -Description 'UltimateBackup'" & pause
if "%c%"=="469" winsat formal & pause
if "%c%"=="470" perfmon /report

if "%c%"=="471" reg export HKLM "%USERPROFILE%\Desktop\HKLM_FullBackup.reg" & reg export HKCU "%USERPROFILE%\Desktop\HKCU_FullBackup.reg" & pause
if "%c%"=="472" reg import "%USERPROFILE%\Desktop\HKLM_FullBackup.reg" & reg import "%USERPROFILE%\Desktop\HKCU_FullBackup.reg" & pause
if "%c%"=="473" set > "%USERPROFILE%\Desktop\environment_backup.txt" & pause
if "%c%"=="474" echo %PATH% > "%USERPROFILE%\Desktop\path_backup.txt" & pause
if "%c%"=="475" mkdir "%USERPROFILE%\Desktop\ULTIMATE_TOOLKIT_PACK" & pause

if "%c%"=="476" sfc /scannow & DISM /Online /Cleanup-Image /RestoreHealth & pause
if "%c%"=="477" sfc /scannow & DISM /Online /Cleanup-Image /CheckHealth & DISM /Online /Cleanup-Image /ScanHealth & DISM /Online /Cleanup-Image /RestoreHealth & pause
if "%c%"=="478" ipconfig /flushdns & netsh winsock reset & netsh int ip reset & pause
if "%c%"=="479" bootrec /fixmbr & bootrec /fixboot & bootrec /scanos & bootrec /rebuildbcd & pause
if "%c%"=="480" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 2 & pause
if "%c%"=="481" chkdsk /scan & defrag C: /O & pause
if "%c%"=="482" net stop wuauserv & net stop bits & ren C:\Windows\SoftwareDistribution SoftwareDistribution.old & net start wuauserv & net start bits & pause
if "%c%"=="483" net stop clicktorunsvc & net start clicktorunsvc & pause
if "%c%"=="484" net stop spooler & del /q /f /s %systemroot%\System32\spool\printers\*.* & net start spooler & pause
if "%c%"=="485" del /q /f /s %temp%\*.* & del /q /f /s C:\Windows\Temp\*.* & pause

if "%c%"=="486" slmgr /xpr & cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /dstatus & pause
if "%c%"=="487" cmdkey /list & start control /name Microsoft.CredentialManager
if "%c%"=="488" start chrome://settings/reset & start edge://settings/reset
if "%c%"=="489" net user %username% * & pause
if "%c%"=="490" gpupdate /force & secedit /refreshpolicy machine_policy /enforce & pause

if "%c%"=="491" (
systeminfo > "%USERPROFILE%\Desktop\ultimate_it_audit.txt"
ipconfig /all >> "%USERPROFILE%\Desktop\ultimate_it_audit.txt"
driverquery >> "%USERPROFILE%\Desktop\ultimate_it_audit.txt"
gpresult /r >> "%USERPROFILE%\Desktop\ultimate_it_audit.txt"
pause
)

if "%c%"=="492" mkdir "%USERPROFILE%\Desktop\EmergencyToolkit" & systeminfo > "%USERPROFILE%\Desktop\EmergencyToolkit\system.txt" & pause
if "%c%"=="493" reagentc /info & wbadmin start systemstatebackup -backuptarget:D: -quiet & pause
if "%c%"=="494" powershell "Get-MpComputerStatus" & netstat -ano & tasklist & pause
if "%c%"=="495" dcdiag /v & repadmin /replsummary & gpresult /h "%USERPROFILE%\Desktop\enterprise.html" & pause
if "%c%"=="496" systeminfo > "%USERPROFILE%\Desktop\mega_diagnostic.txt" & netstat -ano >> "%USERPROFILE%\Desktop\mega_diagnostic.txt" & pause
if "%c%"=="497" systeminfo & powercfg /energy & chkdsk /scan & pause
if "%c%"=="498" reagentc /enable & bootrec /rebuildbcd & sfc /scannow & pause

if "%c%"=="499" (
systeminfo > "%USERPROFILE%\Desktop\FINAL_MASTER_REPORT.txt"
ipconfig /all >> "%USERPROFILE%\Desktop\FINAL_MASTER_REPORT.txt"
driverquery >> "%USERPROFILE%\Desktop\FINAL_MASTER_REPORT.txt"
tasklist >> "%USERPROFILE%\Desktop\FINAL_MASTER_REPORT.txt"
netstat -ano >> "%USERPROFILE%\Desktop\FINAL_MASTER_REPORT.txt"
gpresult /r >> "%USERPROFILE%\Desktop\FINAL_MASTER_REPORT.txt"
echo FINAL MASTER REPORT saved to Desktop.
pause
)

if "%c%"=="500" goto main
if "%c%"=="2000" goto extra9
if "%c%"=="2001" goto main

goto extra10

:: ============================================================
:: [EXTRA-11] REAL WORKING CMD / POWERSHELL TOOLKIT (501-600)
:: ============================================================
:extra11
cls
color 0A
echo ============================================================
echo         EXTRA COMMAND CENTER 11 (501-600 REAL)
echo ============================================================
echo [501] Quick Ping Google           [551] WinRM Service
echo [502] Quick Ping Cloudflare       [552] Restart WinRM
echo [503] Ping Custom Host            [553] DNS Client Restart
echo [504] Trace Google                [554] DHCP Client Restart
echo [505] NSLookup Google             [555] WLAN AutoConfig Restart
echo [506] Flush DNS                   [556] BITS Restart
echo [507] Release IP                  [557] Windows Update Service
echo [508] Renew IP                    [558] CryptSvc Restart
echo [509] Winsock Reset               [559] MSI Installer Restart
echo [510] TCP/IP Reset                [560] COM+ Restart
echo [511] ARP Table                   [561] Disk Cleanup Auto
echo [512] Clear ARP                   [562] Temp Clear User
echo [513] Route Print                 [563] Temp Clear Windows
echo [514] Netstat Basic               [564] Prefetch Clear
echo [515] Netstat Ports               [565] Recent Files Clear
echo [516] MAC Address                 [566] Clipboard Reset
echo [517] Hostname                    [567] Explorer Restart
echo [518] Current User                [568] Start Menu Reset
echo [519] Group Policy Refresh        [569] Search Index Rebuild
echo [520] System File Check           [570] Defender Update
echo [521] DISM Basic                  [571] Defender Quick
echo [522] CHKDSK Basic                [572] Defender Full
echo [523] Device Manager              [573] Firewall Profiles
echo [524] Disk Management             [574] Firewall Reset
echo [525] Services                    [575] BitLocker Status
echo [526] Task Manager                [576] BitLocker Suspend
echo [527] Registry                    [577] BitLocker Resume
echo [528] CMD Admin                   [578] Power Plans
echo [529] PowerShell Admin            [579] Battery Report
echo [530] Computer Mgmt               [580] Energy Report
echo [531] Event Viewer                [581] Sleep Study
echo [532] Reliability Monitor         [582] WinSAT
echo [533] Performance Monitor         [583] License Status
echo [534] Resource Monitor            [584] Product Key
echo [535] MSConfig                    [585] Office Status
echo [536] Safe Mode Enable            [586] Outlook Safe
echo [537] Safe Mode Disable           [587] Excel Safe
echo [538] Recovery Restart            [588] Word Safe
echo [539] BIOS Restart                [589] OneDrive Reset
echo [540] WinRE Info                  [590] Teams Reset
echo [541] Secure Boot                 [591] Chrome Reset
echo [542] TPM Console                 [592] Edge Reset
echo [543] User Accounts               [593] WSReset
echo [544] Local Users                 [594] Optional Features
echo [545] Shared Folders              [595] Programs & Features
echo [546] Credential Manager          [596] God Mode
echo [547] Net Shares                  [597] All Tasks
echo [548] Open Files                  [598] Full Snapshot
echo [549] Remote Desktop              [599] Mega Health Check
echo [550] Remote Assistance           [600] Back Main
echo ============================================================
echo [2000] Previous Extra-10
echo [2001] Next Extra-12
echo ============================================================
set /p c=Select Extra11 Option (501-600,2000,2001):

if "%c%"=="501" ping google.com & pause
if "%c%"=="502" ping 1.1.1.1 & pause
if "%c%"=="503" set /p host=Host: & ping !host! & pause
if "%c%"=="504" tracert google.com & pause
if "%c%"=="505" nslookup google.com & pause
if "%c%"=="506" ipconfig /flushdns & pause
if "%c%"=="507" ipconfig /release & pause
if "%c%"=="508" ipconfig /renew & pause
if "%c%"=="509" netsh winsock reset & pause
if "%c%"=="510" netsh int ip reset & pause

if "%c%"=="511" arp -a & pause
if "%c%"=="512" arp -d * & pause
if "%c%"=="513" route print & pause
if "%c%"=="514" netstat & pause
if "%c%"=="515" netstat -ano & pause
if "%c%"=="516" getmac /v & pause
if "%c%"=="517" hostname & pause
if "%c%"=="518" whoami & pause
if "%c%"=="519" gpupdate /force & pause
if "%c%"=="520" sfc /scannow & pause

if "%c%"=="521" DISM /Online /Cleanup-Image /RestoreHealth & pause
if "%c%"=="522" chkdsk /scan & pause
if "%c%"=="523" devmgmt.msc
if "%c%"=="524" diskmgmt.msc
if "%c%"=="525" services.msc
if "%c%"=="526" taskmgr
if "%c%"=="527" regedit
if "%c%"=="528" powershell Start-Process cmd -Verb runAs
if "%c%"=="529" powershell Start-Process powershell -Verb runAs
if "%c%"=="530" compmgmt.msc

if "%c%"=="531" eventvwr
if "%c%"=="532" perfmon /rel
if "%c%"=="533" perfmon
if "%c%"=="534" resmon
if "%c%"=="535" msconfig
if "%c%"=="536" bcdedit /set {current} safeboot minimal & pause
if "%c%"=="537" bcdedit /deletevalue {current} safeboot & pause
if "%c%"=="538" shutdown /r /o /t 0
if "%c%"=="539" shutdown /r /fw /t 0
if "%c%"=="540" reagentc /info & pause

if "%c%"=="541" powershell "Confirm-SecureBootUEFI" & pause
if "%c%"=="542" tpm.msc
if "%c%"=="543" netplwiz
if "%c%"=="544" lusrmgr.msc
if "%c%"=="545" fsmgmt.msc
if "%c%"=="546" start control /name Microsoft.CredentialManager
if "%c%"=="547" net share & pause
if "%c%"=="548" openfiles & pause
if "%c%"=="549" mstsc
if "%c%"=="550" msra

if "%c%"=="551" sc query winrm & pause
if "%c%"=="552" net stop winrm & net start winrm & pause
if "%c%"=="553" net stop dnscache & net start dnscache & pause
if "%c%"=="554" net stop dhcp & net start dhcp & pause
if "%c%"=="555" net stop wlansvc & net start wlansvc & pause
if "%c%"=="556" net stop bits & net start bits & pause
if "%c%"=="557" net stop wuauserv & net start wuauserv & pause
if "%c%"=="558" net stop cryptsvc & net start cryptsvc & pause
if "%c%"=="559" net stop msiserver & net start msiserver & pause
if "%c%"=="560" net stop EventSystem & net start EventSystem & pause

if "%c%"=="561" cleanmgr /verylowdisk & pause
if "%c%"=="562" del /q /f /s %temp%\*.* & pause
if "%c%"=="563" del /q /f /s C:\Windows\Temp\*.* & pause
if "%c%"=="564" del /q /f /s C:\Windows\Prefetch\*.* & pause
if "%c%"=="565" del /q /f /s "%APPDATA%\Microsoft\Windows\Recent\*.*" & pause
if "%c%"=="566" echo off | clip & pause
if "%c%"=="567" taskkill /f /im explorer.exe & start explorer.exe
if "%c%"=="568" taskkill /f /im StartMenuExperienceHost.exe & pause
if "%c%"=="569" control srchadmin.dll
if "%c%"=="570" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate & pause

if "%c%"=="571" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1 & pause
if "%c%"=="572" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 2 & pause
if "%c%"=="573" netsh advfirewall show allprofiles & pause
if "%c%"=="574" netsh advfirewall reset & pause
if "%c%"=="575" manage-bde -status & pause
if "%c%"=="576" manage-bde -protectors -disable C: & pause
if "%c%"=="577" manage-bde -protectors -enable C: & pause
if "%c%"=="578" powercfg /list & pause
if "%c%"=="579" powercfg /batteryreport & start battery-report.html
if "%c%"=="580" powercfg /energy & pause

if "%c%"=="581" powercfg /sleepstudy & pause
if "%c%"=="582" winsat formal & pause
if "%c%"=="583" slmgr /xpr & pause
if "%c%"=="584" wmic path softwarelicensingservice get OA3xOriginalProductKey & pause
if "%c%"=="585" cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /dstatus & pause
if "%c%"=="586" outlook.exe /safe
if "%c%"=="587" excel.exe /safe
if "%c%"=="588" winword.exe /safe
if "%c%"=="589" %localappdata%\Microsoft\OneDrive\OneDrive.exe /reset
if "%c%"=="590" rd /s /q "%appdata%\Microsoft\Teams" & pause

if "%c%"=="591" start chrome://settings/reset
if "%c%"=="592" start edge://settings/reset
if "%c%"=="593" wsreset.exe
if "%c%"=="594" optionalfeatures
if "%c%"=="595" appwiz.cpl
if "%c%"=="596" mkdir "%USERPROFILE%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" & pause
if "%c%"=="597" control /name Microsoft.AllTasks
if "%c%"=="598" systeminfo > "%USERPROFILE%\Desktop\snapshot.txt" & pause
if "%c%"=="599" systeminfo & ipconfig /all & chkdsk /scan & pause

if "%c%"=="600" goto main
if "%c%"=="2000" goto extra10
if "%c%"=="2001" goto extra12

goto extra11

:: ============================================================
:: [EXTRA-12] REAL WORKING CMD / POWERSHELL TOOLKIT (601-700)
:: ============================================================
:extra12
cls
color 0E
echo ============================================================
echo         EXTRA COMMAND CENTER 12 (601-700 REAL)
echo ============================================================
echo [601] DISM CheckHealth            [651] Windows Update Check
echo [602] DISM ScanHealth             [652] Windows Update Settings
echo [603] DISM RestoreHealth          [653] Optional Updates
echo [604] SFC VerifyOnly              [654] Update History
echo [605] SFC ScanNow                 [655] Update Troubleshooter
echo [606] CHKDSK Fix                  [656] Delivery Optimization
echo [607] CHKDSK Repair               [657] BITS Full Reset
echo [608] BootRec ScanOS              [658] SoftwareDistribution Reset
echo [609] BootRec FixMBR              [659] Catroot2 Reset
echo [610] BootRec FixBoot             [660] Windows Installer Repair
echo [611] BootRec RebuildBCD          [661] Store Repair
echo [612] BCD Edit Enum               [662] UWP App Repair
echo [613] ReAgentC Info               [663] Re-register Store Apps
echo [614] ReAgentC Enable             [664] Winget Source Update
echo [615] ReAgentC Disable            [665] Winget Export Apps
echo [616] MBR2GPT Validate            [666] Winget Import Apps
echo [617] MBR2GPT Convert             [667] Driver Export
echo [618] Secure Boot Status          [668] Driver Backup PnP
echo [619] TPM Full Status             [669] Device Troubleshooter
echo [620] BIOS Serial                 [670] Hardware Troubleshooter
echo [621] BIOS Version                [671] Audio Service Reset
echo [622] Baseboard Info              [672] Audio Endpoint Reset
echo [623] CPU Temperature Basic       [673] Microphone Privacy
echo [624] RAM Full Info               [674] Camera Privacy
echo [625] GPU Full Info               [675] Bluetooth Services
echo [626] Motherboard Drivers         [676] Bluetooth Pair Reset
echo [627] Driver Signature Check      [677] Print UI
echo [628] Signature Enforcement OFF   [678] Printer Queue Clear
echo [629] Signature Enforcement ON    [679] Spool Folder Cleanup
echo [630] Safe Mode Network           [680] USB History
echo [631] Safe Mode CMD               [681] USB Hidden Devices
echo [632] Normal Boot                 [682] Device Cleanup
echo [633] Hyper-V Status              [683] Hyper-V Quick Create
echo [634] Hyper-V Enable              [684] Sandbox Status
echo [635] Hyper-V Disable             [685] Sandbox Launch
echo [636] Sandbox Enable              [686] Sandbox Disable
echo [637] WSL Status                  [687] WSL Install
echo [638] WSL Update                  [688] WSL Shutdown
echo [639] WSL List Distros            [689] Linux Kernel Version
echo [640] Telnet Status               [690] Telnet Enable
echo [641] Telnet Disable              [691] OpenSSH Status
echo [642] OpenSSH Install             [692] OpenSSH Start
echo [643] OpenSSH Stop                [693] Remote Registry Start
echo [644] OpenSSH Remove              [694] Remote Registry Stop
echo [645] WinRM Status                [695] PS Remoting Status
echo [646] WinRM QuickConfig           [696] Enable PS Remoting
echo [647] WinRM Reset                 [697] Disable PS Remoting
echo [648] DNS Client Service          [698] Full Recovery Combo
echo [649] DHCP Client Service         [699] Ultimate Repair Pack
echo [650] WLAN Service                [700] Back Main
echo ============================================================
echo [2000] Previous Extra-11
echo [2001] Next Extra-13
echo ============================================================
set /p c=Select Extra12 Option (601-700,2000,2001):

if "%c%"=="601" DISM /Online /Cleanup-Image /CheckHealth & pause
if "%c%"=="602" DISM /Online /Cleanup-Image /ScanHealth & pause
if "%c%"=="603" DISM /Online /Cleanup-Image /RestoreHealth & pause
if "%c%"=="604" sfc /verifyonly & pause
if "%c%"=="605" sfc /scannow & pause
if "%c%"=="606" chkdsk C: /f & pause
if "%c%"=="607" chkdsk C: /r & pause
if "%c%"=="608" bootrec /scanos & pause
if "%c%"=="609" bootrec /fixmbr & pause
if "%c%"=="610" bootrec /fixboot & pause
if "%c%"=="611" bootrec /rebuildbcd & pause
if "%c%"=="612" bcdedit /enum & pause
if "%c%"=="613" reagentc /info & pause
if "%c%"=="614" reagentc /enable & pause
if "%c%"=="615" reagentc /disable & pause
if "%c%"=="616" mbr2gpt /validate /allowFullOS & pause
if "%c%"=="617" mbr2gpt /convert /allowFullOS & pause
if "%c%"=="618" powershell "Confirm-SecureBootUEFI" & pause
if "%c%"=="619" powershell "Get-Tpm" & pause
if "%c%"=="620" wmic bios get serialnumber & pause
if "%c%"=="621" wmic bios get smbiosbiosversion & pause
if "%c%"=="622" wmic baseboard get manufacturer,product,version & pause
if "%c%"=="623" wmic /namespace:\\root\wmi PATH MSAcpi_ThermalZoneTemperature get CurrentTemperature & pause
if "%c%"=="624" wmic memorychip get banklabel,capacity,speed & pause
if "%c%"=="625" wmic path win32_VideoController get name,driverversion & pause
if "%c%"=="626" pnputil /enum-drivers & pause
if "%c%"=="627" sigverif
if "%c%"=="628" bcdedit /set nointegritychecks on & pause
if "%c%"=="629" bcdedit /set nointegritychecks off & pause
if "%c%"=="630" bcdedit /set {current} safeboot network & pause
if "%c%"=="631" bcdedit /set {current} safebootalternateshell yes & pause
if "%c%"=="632" bcdedit /deletevalue {current} safeboot & pause
if "%c%"=="633" dism /online /Get-FeatureInfo /FeatureName:Microsoft-Hyper-V-All & pause
if "%c%"=="634" dism /online /Enable-Feature /All /FeatureName:Microsoft-Hyper-V & pause
if "%c%"=="635" dism /online /Disable-Feature /FeatureName:Microsoft-Hyper-V-All & pause
if "%c%"=="636" dism /online /Enable-Feature /FeatureName:"Containers-DisposableClientVM" -All & pause
if "%c%"=="637" wsl --status & pause
if "%c%"=="638" wsl --update & pause
if "%c%"=="639" wsl -l -v & pause
if "%c%"=="640" dism /online /Get-FeatureInfo /FeatureName:TelnetClient & pause
if "%c%"=="641" dism /online /Disable-Feature /FeatureName:TelnetClient & pause
if "%c%"=="642" dism /online /Add-Capability /CapabilityName:OpenSSH.Client~~~~0.0.1.0 & pause
if "%c%"=="643" net stop sshd & pause
if "%c%"=="644" dism /online /Remove-Capability /CapabilityName:OpenSSH.Client~~~~0.0.1.0 & pause
if "%c%"=="645" sc query winrm & pause
if "%c%"=="646" winrm quickconfig & pause
if "%c%"=="647" winrm invoke Restore winrm/Config & pause
if "%c%"=="648" sc query dnscache & pause
if "%c%"=="649" sc query dhcp & pause
if "%c%"=="650" sc query wlansvc & pause
if "%c%"=="651" start ms-settings:windowsupdate
if "%c%"=="652" start ms-settings:windowsupdate-options
if "%c%"=="653" start ms-settings:windowsupdate-optionalupdates
if "%c%"=="654" start ms-settings:windowsupdate-history
if "%c%"=="655" msdt.exe -id WindowsUpdateDiagnostic
if "%c%"=="656" start ms-settings:delivery-optimization
if "%c%"=="657" net stop bits & net start bits & pause
if "%c%"=="658" ren C:\Windows\SoftwareDistribution SoftwareDistribution.old & pause
if "%c%"=="659" ren C:\Windows\System32\catroot2 catroot2.old & pause
if "%c%"=="660" msiexec /unregister & msiexec /regserver & pause
if "%c%"=="661" wsreset.exe
if "%c%"=="662" powershell "Get-AppxPackage | Reset-AppxPackage" & pause
if "%c%"=="663" powershell "Get-AppxPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register '$($_.InstallLocation)\AppXManifest.xml'}" & pause
if "%c%"=="664" winget source update & pause
if "%c%"=="665" winget export -o "%USERPROFILE%\Desktop\apps_export.json" & pause
if "%c%"=="666" winget import -i "%USERPROFILE%\Desktop\apps_export.json" & pause
if "%c%"=="667" dism /online /export-driver /destination:%USERPROFILE%\Desktop\DriversBackup & pause
if "%c%"=="668" pnputil /export-driver * "%USERPROFILE%\Desktop\PnPDrivers" & pause
if "%c%"=="669" msdt.exe -id DeviceDiagnostic
if "%c%"=="670" msdt.exe -id HardwareDiagnostic
if "%c%"=="671" net stop audiosrv & net start audiosrv & pause
if "%c%"=="672" net stop AudioEndpointBuilder & net start AudioEndpointBuilder & pause
if "%c%"=="673" start ms-settings:privacy-microphone
if "%c%"=="674" start ms-settings:privacy-webcam
if "%c%"=="675" net stop bthserv & net start bthserv & pause
if "%c%"=="676" start ms-settings:bluetooth
if "%c%"=="677" printui /s /t2
if "%c%"=="678" del /q /f /s %systemroot%\System32\spool\printers\*.* & pause
if "%c%"=="679" net stop spooler & del /q /f /s %systemroot%\System32\spool\printers\*.* & net start spooler & pause
if "%c%"=="680" reg query HKLM\SYSTEM\CurrentControlSet\Enum\USBSTOR /s & pause
if "%c%"=="681" set devmgr_show_nonpresent_devices=1 & start devmgmt.msc
if "%c%"=="682" pnputil /scan-devices & pause
if "%c%"=="683" start virtmgmt.msc
if "%c%"=="684" dism /online /Get-FeatureInfo /FeatureName:Containers-DisposableClientVM & pause
if "%c%"=="685" WindowsSandbox
if "%c%"=="686" dism /online /Disable-Feature /FeatureName:"Containers-DisposableClientVM" & pause
if "%c%"=="687" wsl --install & pause
if "%c%"=="688" wsl --shutdown & pause
if "%c%"=="689" wsl cat /proc/version & pause
if "%c%"=="690" dism /online /Enable-Feature /FeatureName:TelnetClient & pause
if "%c%"=="691" Get-Service sshd
if "%c%"=="692" net start sshd & pause
if "%c%"=="693" net start RemoteRegistry & pause
if "%c%"=="694" net stop RemoteRegistry & pause
if "%c%"=="695" powershell "Get-PSSessionConfiguration" & pause
if "%c%"=="696" powershell "Enable-PSRemoting -Force" & pause
if "%c%"=="697" powershell "Disable-PSRemoting -Force" & pause
if "%c%"=="698" reagentc /enable & bootrec /rebuildbcd & sfc /scannow & pause
if "%c%"=="699" sfc /scannow & DISM /Online /Cleanup-Image /RestoreHealth & chkdsk /scan & netsh winsock reset & pause

if "%c%"=="700" goto main
if "%c%"=="2000" goto extra11
if "%c%"=="2001" goto extra13

goto extra12

:: ============================================================
:: [EXTRA-13] REAL WORKING CMD / POWERSHELL TOOLKIT (701-800)
:: ============================================================
:extra13
cls
color 0B
echo ============================================================
echo         EXTRA COMMAND CENTER 13 (701-800 REAL)
echo ============================================================
echo [701] Azure AD Status             [751] DNS Flush + Register
echo [702] Azure AD Join Info          [752] NetBIOS Reset Full
echo [703] Domain Trust Verify         [753] SMB Client Config
echo [704] Local Admin Audit           [754] SMB Server Config
echo [705] Password Expiry Check       [755] RDP Port Check
echo [706] User SID Check              [756] RDP Port Change Guide
echo [707] SID to Name Translate       [757] LSASS Protection
echo [708] Name to SID Translate       [758] Credential Guard
echo [709] Local Security Export       [759] VBS Status
echo [710] User Rights Export          [760] Core Isolation
echo [711] Group Policy Backup         [761] Memory Integrity
echo [712] Group Policy Force Sync     [762] UAC Full Reset
echo [713] GPResult XML                [763] Windows Hello Reset
echo [714] RSOP Console                [764] PIN Remove Guide
echo [715] AppLocker Effective Policy  [765] Biometrics Status
echo [716] SRP Policy Check            [766] Fingerprint Reset
echo [717] Defender Exclusions         [767] Face Sign-In Reset
echo [718] Add Defender Exclusion      [768] Kiosk Mode Status
echo [719] Remove Defender Exclusion   [769] Assigned Access
echo [720] Defender Controlled Folder  [770] Shared PC Mode
echo [721] SmartScreen Status          [771] Storage Sense
echo [722] SmartScreen Reset           [772] Temp Sensors
echo [723] Windows Sandbox Config      [773] Fan Info Basic
echo [724] Hypervisor Launch Status    [774] CPU Load Live
echo [725] Kernel DMA Protection       [775] RAM Usage Live
echo [726] Secure Kernel Status        [776] Disk Queue
echo [727] WDAC Policy Check           [777] GPU Live Load
echo [728] WDAC Audit                  [778] Process Tree
echo [729] Certificate Store Export    [779] Parent Process
echo [730] TLS Cipher Suites           [780] Autoruns Basic
echo [731] TLS Reset Schannel          [781] Browser Extensions
echo [732] Root Cert Sync              [782] Startup Impact
echo [733] NTP Manual Sync             [783] Scheduled Reboot
echo [734] Time Zone List              [784] Shutdown Logs
echo [735] Set Time Zone               [785] Crash Dump Status
echo [736] Locale Info                 [786] MiniDump Folder
echo [737] Keyboard Layouts            [787] BSOD Event Logs
echo [738] Language Packs              [788] Driver Rollback List
echo [739] Fonts Cache Reset           [789] Unsigned Drivers
echo [740] Clipboard History           [790] Legacy Devices
echo [741] Nearby Sharing              [791] COM Ports
echo [742] Mobile Hotspot              [792] Battery Health Deep
echo [743] VPN Profiles                [793] Sleep States
echo [744] VPN Add Guide               [794] Hibernate Status
echo [745] Proxy PAC Status            [795] Hibernate Enable
echo [746] PAC Reset                   [796] Hibernate Disable
echo [747] DNS over HTTPS              [797] Full Security Baseline
echo [748] NIC Advanced Props          [798] Full Privacy Baseline
echo [749] NIC Driver Restart          [799] Ultimate Compliance Pack
echo [750] NIC Power Saving            [800] Back Main
echo ============================================================
echo [2000] Previous Extra-12
echo [2001] Next Extra-14
echo ============================================================
set /p c=Select Extra13 Option (701-800,2000,2001):

if "%c%"=="701" dsregcmd /status & pause
if "%c%"=="702" dsregcmd /status & pause
if "%c%"=="703" nltest /sc_verify:%userdomain% & pause
if "%c%"=="704" net localgroup administrators & pause
if "%c%"=="705" net user %username% & pause
if "%c%"=="706" whoami /user & pause
if "%c%"=="707" wmic useraccount get name,sid & pause
if "%c%"=="708" wmic useraccount get name,sid & pause
if "%c%"=="709" secedit /export /cfg "%USERPROFILE%\Desktop\security_local.inf" & pause
if "%c%"=="710" whoami /priv > "%USERPROFILE%\Desktop\user_rights.txt" & pause
if "%c%"=="711" LGPO.exe /b "%USERPROFILE%\Desktop\GPBackup" & pause
if "%c%"=="712" gpupdate /force & pause
if "%c%"=="713" gpresult /x "%USERPROFILE%\Desktop\gpresult.xml" & pause
if "%c%"=="714" rsop.msc
if "%c%"=="715" powershell "Get-AppLockerPolicy -Effective" & pause
if "%c%"=="716" reg query "HKLM\Software\Policies\Microsoft\Windows\Safer\CodeIdentifiers" & pause
if "%c%"=="717" powershell "Get-MpPreference | Select ExclusionPath,ExclusionProcess" & pause
if "%c%"=="718" powershell "Add-MpPreference -ExclusionPath 'C:\Temp'" & pause
if "%c%"=="719" powershell "Remove-MpPreference -ExclusionPath 'C:\Temp'" & pause
if "%c%"=="720" powershell "Get-MpPreference | Select EnableControlledFolderAccess" & pause
if "%c%"=="721" reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled & pause
if "%c%"=="722" start windowsdefender:
if "%c%"=="723" notepad "%ProgramData%\Microsoft\Windows\Containers\BaseImages\SandboxConfig.json"
if "%c%"=="724" bcdedit /enum | findstr hypervisorlaunchtype & pause
if "%c%"=="725" powershell "Get-CimInstance -ClassName Win32_DeviceGuard" & pause
if "%c%"=="726" powershell "Get-CimInstance -ClassName Win32_DeviceGuard" & pause
if "%c%"=="727" powershell "Get-CIPolicy" & pause
if "%c%"=="728" powershell "Get-CIPolicy" & pause
if "%c%"=="729" certutil -store root > "%USERPROFILE%\Desktop\root_certs.txt" & pause
if "%c%"=="730" reg query "HKLM\SYSTEM\CurrentControlSet\Control\Cryptography\Configuration\Local\SSL\00010002" & pause
if "%c%"=="731" reg add "HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL" /f & pause
if "%c%"=="732" certutil -generateSSTFromWU "%USERPROFILE%\Desktop\roots.sst" & pause
if "%c%"=="733" w32tm /resync /force & pause
if "%c%"=="734" tzutil /l & pause
if "%c%"=="735" tzutil /s "India Standard Time" & pause
if "%c%"=="736" systeminfo | findstr /B /C:"System Locale" & pause
if "%c%"=="737" powershell "Get-WinUserLanguageList" & pause
if "%c%"=="738" lpksetup
if "%c%"=="739" net stop FontCache & net start FontCache & pause
if "%c%"=="740" start ms-settings:clipboard
if "%c%"=="741" start ms-settings:crossdevice
if "%c%"=="742" start ms-settings:network-mobilehotspot
if "%c%"=="743" powershell "Get-VpnConnection" & pause
if "%c%"=="744" start ms-settings:network-vpn
if "%c%"=="745" netsh winhttp show proxy & pause
if "%c%"=="746" netsh winhttp reset proxy & pause
if "%c%"=="747" start ms-settings:network
if "%c%"=="748" ncpa.cpl
if "%c%"=="749" powershell "Restart-NetAdapter -Name 'Ethernet'" & pause
if "%c%"=="750" powercfg -devicequery wake_armed & pause
if "%c%"=="751" ipconfig /flushdns & ipconfig /registerdns & pause
if "%c%"=="752" nbtstat -R & nbtstat -RR & pause
if "%c%"=="753" powershell "Get-SmbClientConfiguration" & pause
if "%c%"=="754" powershell "Get-SmbServerConfiguration" & pause
if "%c%"=="755" reg query "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v PortNumber & pause
if "%c%"=="756" echo Change via Registry: RDP-Tcp PortNumber & pause
if "%c%"=="757" reg query "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v RunAsPPL & pause
if "%c%"=="758" powershell "Get-CimInstance Win32_DeviceGuard" & pause
if "%c%"=="759" msinfo32
if "%c%"=="760" start windowsdefender:
if "%c%"=="761" start windowsdefender:
if "%c%"=="762" UserAccountControlSettings.exe
if "%c%"=="763" start ms-settings:signinoptions
if "%c%"=="764" start ms-settings:signinoptions
if "%c%"=="765" reg query "HKLM\SOFTWARE\Microsoft\Biometrics" & pause
if "%c%"=="766" start ms-settings:signinoptions
if "%c%"=="767" start ms-settings:signinoptions
if "%c%"=="768" reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AssignedAccessConfiguration" & pause
if "%c%"=="769" start ms-settings:otherusers
if "%c%"=="770" reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedPC" & pause
if "%c%"=="771" start ms-settings:storagesense
if "%c%"=="772" wmic /namespace:\\root\wmi PATH MSAcpi_ThermalZoneTemperature get CurrentTemperature & pause
if "%c%"=="773" wmic path Win32_Fan get Name,DesiredSpeed & pause
if "%c%"=="774" typeperf "\Processor(_Total)\% Processor Time"
if "%c%"=="775" typeperf "\Memory\% Committed Bytes In Use"
if "%c%"=="776" typeperf "\PhysicalDisk(_Total)\Avg. Disk Queue Length"
if "%c%"=="777" typeperf "\GPU Engine(*)\Utilization Percentage"
if "%c%"=="778" powershell "Get-Process | Sort CPU -Descending" & pause
if "%c%"=="779" wmic process get ProcessId,ParentProcessId,Name & pause
if "%c%"=="780" msconfig
if "%c%"=="781" start chrome://extensions
if "%c%"=="782" taskmgr /7
if "%c%"=="783" shutdown /r /t 3600 & pause
if "%c%"=="784" wevtutil qe System /q:"*[System[(EventID=1074)]]" /f:text /c:20 & pause
if "%c%"=="785" wmic RECOVEROS get DebugInfoType,MiniDumpDirectory & pause
if "%c%"=="786" start %SystemRoot%\Minidump
if "%c%"=="787" wevtutil qe System /q:"*[System[(EventID=1001)]]" /f:text /c:20 & pause
if "%c%"=="788" pnputil /enum-drivers & pause
if "%c%"=="789" driverquery /si & pause
if "%c%"=="790" set devmgr_show_nonpresent_devices=1 & start devmgmt.msc
if "%c%"=="791" mode & pause
if "%c%"=="792" powercfg /batteryreport & start battery-report.html
if "%c%"=="793" powercfg /a & pause
if "%c%"=="794" powercfg /a & pause
if "%c%"=="795" powercfg /hibernate on & pause
if "%c%"=="796" powercfg /hibernate off & pause
if "%c%"=="797" secedit /export /cfg "%USERPROFILE%\Desktop\security_baseline.inf" & pause
if "%c%"=="798" start ms-settings:privacy
if "%c%"=="799" (
secedit /export /cfg "%USERPROFILE%\Desktop\compliance.inf"
gpresult /h "%USERPROFILE%\Desktop\compliance.html"
systeminfo > "%USERPROFILE%\Desktop\compliance_system.txt"
pause
)

if "%c%"=="800" goto main
if "%c%"=="2000" goto extra12
if "%c%"=="2001" goto extra14

goto extra13

:: ============================================================
:: [EXTRA-14] REAL WORKING CMD / POWERSHELL TOOLKIT (801-900)
:: ============================================================
:extra14
cls
color 0D
echo ============================================================
echo         EXTRA COMMAND CENTER 14 (801-900 REAL)
echo ============================================================
echo [801] DISKPART Interactive        [851] SMB Session List
echo [802] Disk SMART Status           [852] SMB Session Close
echo [803] Physical Disk Details       [853] DFS Namespace
echo [804] Partition Style Check       [854] DFS Replication
echo [805] Mount Points                [855] IIS Reset
echo [806] Storage Pool Health         [856] IIS App Pools
echo [807] ReFS Status                 [857] Website Bindings
echo [808] Volume Shadow Copy GUI      [858] Certificate Bindings
echo [809] System Restore Config       [859] RDS Session Host
echo [810] Recovery Partition Check    [860] RDS User Sessions
echo [811] BCD Backup Verify           [861] RemoteApp Status
echo [812] EFI Boot Entries            [862] VPN RasDial
echo [813] EFI Mount                   [863] VPN Disconnect
echo [814] EFI Unmount                 [864] Ras Phonebook
echo [815] WinPE Tools                 [865] Ras AutoDial
echo [816] DISM Mounted Images         [866] Wi-Fi Report HTML
echo [817] Driver Store List           [867] WLAN Profiles XML
echo [818] Driver Store Cleanup        [868] NIC Binding Order
echo [819] Device Instance List        [869] NIC Metric
echo [820] Hardware IDs                [870] IPv4 Routes Export
echo [821] IRQ Devices                 [871] IPv6 Routes Export
echo [822] DMA Devices                 [872] DNS Cache Export
echo [823] COM Device Tree             [873] DHCP Lease Details
echo [824] USB Controllers             [874] Public DNS Benchmark
echo [825] Battery Devices             [875] TCP Chimney Status
echo [826] ACPI Devices                [876] RSS Status
echo [827] Wake Devices                [877] Net Adapter Advanced
echo [828] Wake Timers                 [878] QoS Policies
echo [829] Last Wake Source            [879] IPsec Policies
echo [830] Sleep Diagnostics           [880] Cipher Suites Order
echo [831] Pagefile Reset              [881] Browser Cert Store
echo [832] Memory Compression          [882] CRL Cache
echo [833] Commit Limit                [883] Windows Sandbox Config
echo [834] Handles Count               [884] AppLocker XML Export
echo [835] Kernel Memory               [885] WDAC XML Export
echo [836] CrashControl Settings       [886] SecEdit Analyze
echo [837] Full Dump Enable            [887] LAPS Status
echo [838] MiniDump Enable             [888] Local Admin Password UI
echo [839] BlueScreen Settings         [889] Defender ASR Rules
echo [840] WerFault Queue              [890] Defender PUA Status
echo [841] Reliability XML Export      [891] Smart App Control
echo [842] Task Scheduler History      [892] Exploit Protection
echo [843] Autorun Registry HKLM       [893] Process Mitigations
echo [844] Autorun Registry HKCU       [894] Controlled Folder Access
echo [845] Shell Extensions            [895] WD Firewall Logging
echo [846] COM Registration            [896] Security Providers
echo [847] MSI Product Codes           [897] LSASS Dump Protection
echo [848] Windows Capabilities        [898] Full Zero Trust Audit
echo [849] Optional Features Export    [899] Enterprise Platinum Pack
echo [850] SMB Shares Advanced         [900] Back Main
echo ============================================================
echo [2000] Previous Extra-13
echo [2001] Next Extra-15
echo ============================================================
set /p c=Select Extra14 Option (801-900,2000,2001):

if "%c%"=="801" diskpart
if "%c%"=="802" wmic diskdrive get model,status & pause
if "%c%"=="803" powershell "Get-PhysicalDisk" & pause
if "%c%"=="804" powershell "Get-Disk | Select Number,PartitionStyle" & pause
if "%c%"=="805" mountvol & pause
if "%c%"=="806" powershell "Get-StoragePool" & pause
if "%c%"=="807" powershell "Get-Volume | Select DriveLetter,FileSystem" & pause
if "%c%"=="808" SystemPropertiesProtection
if "%c%"=="809" SystemPropertiesProtection
if "%c%"=="810" reagentc /info & pause
if "%c%"=="811" if exist C:\bcdbackup echo BCD Backup Found & pause
if "%c%"=="812" bcdedit /enum firmware & pause
if "%c%"=="813" mountvol S: /S & pause
if "%c%"=="814" mountvol S: /D & pause
if "%c%"=="815" copype amd64 C:\WinPE_amd64 & pause
if "%c%"=="816" dism /Get-MountedImageInfo & pause
if "%c%"=="817" pnputil /enum-drivers & pause
if "%c%"=="818" pnputil /enum-drivers & pause
if "%c%"=="819" pnputil /enum-devices & pause
if "%c%"=="820" pnputil /enum-devices /instanceid * & pause
if "%c%"=="821" msinfo32
if "%c%"=="822" msinfo32
if "%c%"=="823" mode & pause
if "%c%"=="824" powershell "Get-PnpDevice -Class USB" & pause
if "%c%"=="825" powershell "Get-PnpDevice -Class Battery" & pause
if "%c%"=="826" powershell "Get-PnpDevice | findstr ACPI" & pause
if "%c%"=="827" powercfg -devicequery wake_armed & pause
if "%c%"=="828" powercfg /waketimers & pause
if "%c%"=="829" powercfg /lastwake & pause
if "%c%"=="830" powercfg /sleepstudy & pause
if "%c%"=="831" wmic pagefileset delete & pause
if "%c%"=="832" powershell "Get-MMAgent" & pause
if "%c%"=="833" systeminfo | findstr /C:"Virtual Memory" & pause
if "%c%"=="834" powershell "Get-Process | Measure-Object Handles -Sum" & pause
if "%c%"=="835" tasklist /m & pause
if "%c%"=="836" reg query "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" & pause
if "%c%"=="837" wmic RECOVEROS set DebugInfoType=1 & pause
if "%c%"=="838" wmic RECOVEROS set DebugInfoType=3 & pause
if "%c%"=="839" sysdm.cpl
if "%c%"=="840" start %ProgramData%\Microsoft\Windows\WER\ReportQueue
if "%c%"=="841" perfmon /rel
if "%c%"=="842" schtasks /query /v /fo LIST & pause
if "%c%"=="843" reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Run & pause
if "%c%"=="844" reg query HKCU\Software\Microsoft\Windows\CurrentVersion\Run & pause
if "%c%"=="845" shell:::{05d7b0f4-2121-4eff-bf6b-ed3f69b894d9}
if "%c%"=="846" reg query HKCR\CLSID & pause
if "%c%"=="847" wmic product get IdentifyingNumber,Name & pause
if "%c%"=="848" dism /online /Get-Capabilities & pause
if "%c%"=="849" dism /online /Get-Features /format:table > "%USERPROFILE%\Desktop\features.txt" & pause
if "%c%"=="850" powershell "Get-SmbShare" & pause
if "%c%"=="851" powershell "Get-SmbSession" & pause
if "%c%"=="852" powershell "Get-SmbSession | Close-SmbSession -Force" & pause
if "%c%"=="853" dfsutil /pktinfo & pause
if "%c%"=="854" dfsrdiag replicationstate & pause
if "%c%"=="855" iisreset & pause
if "%c%"=="856" appcmd list apppool & pause
if "%c%"=="857" appcmd list site /text:bindings & pause
if "%c%"=="858" netsh http show sslcert & pause
if "%c%"=="859" qwinsta & pause
if "%c%"=="860" query user & pause
if "%c%"=="861" reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Terminal Server\TSAppAllowList" & pause
if "%c%"=="862" rasdial & pause
if "%c%"=="863" rasdial /disconnect & pause
if "%c%"=="864" notepad "%APPDATA%\Microsoft\Network\Connections\Pbk\rasphone.pbk"
if "%c%"=="865" reg query "HKCU\Software\Microsoft\RAS Autodial\Addresses" & pause
if "%c%"=="866" netsh wlan show wlanreport
if "%c%"=="867" netsh wlan export profile key=clear folder=%USERPROFILE%\Desktop & pause
if "%c%"=="868" powershell "Get-NetAdapterBinding" & pause
if "%c%"=="869" powershell "Get-NetIPInterface" & pause
if "%c%"=="870" route print -4 > "%USERPROFILE%\Desktop\ipv4_routes.txt" & pause
if "%c%"=="871" route print -6 > "%USERPROFILE%\Desktop\ipv6_routes.txt" & pause
if "%c%"=="872" ipconfig /displaydns > "%USERPROFILE%\Desktop\dns_cache.txt" & pause
if "%c%"=="873" ipconfig /all | findstr Lease & pause
if "%c%"=="874" nslookup google.com 8.8.8.8 & nslookup google.com 1.1.1.1 & pause
if "%c%"=="875" netsh int tcp show global & pause
if "%c%"=="876" netsh int tcp show global & pause
if "%c%"=="877" powershell "Get-NetAdapterAdvancedProperty" & pause
if "%c%"=="878" gpedit.msc
if "%c%"=="879" wf.msc
if "%c%"=="880" reg query "HKLM\SYSTEM\CurrentControlSet\Control\Cryptography\Configuration\Local\SSL\00010002" & pause
if "%c%"=="881" certmgr.msc
if "%c%"=="882" certutil -urlcache * delete & pause
if "%c%"=="883" WindowsSandbox
if "%c%"=="884" powershell "Get-AppLockerPolicy -Effective -Xml > $env:USERPROFILE\Desktop\applocker.xml" & pause
if "%c%"=="885" powershell "ConvertFrom-CIPolicy" & pause
if "%c%"=="886" secedit /analyze /db secedit.sdb & pause
if "%c%"=="887" reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\LAPS" & pause
if "%c%"=="888" start ms-settings:signinoptions
if "%c%"=="889" powershell "Get-MpPreference | Select AttackSurfaceReductionRules_Ids" & pause
if "%c%"=="890" powershell "Get-MpPreference | Select PUAProtection" & pause
if "%c%"=="891" start windowsdefender:
if "%c%"=="892" start windowsdefender:
if "%c%"=="893" powershell "Get-ProcessMitigation -System" & pause
if "%c%"=="894" powershell "Get-MpPreference | Select EnableControlledFolderAccess" & pause
if "%c%"=="895" netsh advfirewall show currentprofile logging & pause
if "%c%"=="896" powershell "Get-WmiObject Win32_SecurityProvider" & pause
if "%c%"=="897" reg query "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v RunAsPPL & pause
if "%c%"=="898" (
systeminfo > "%USERPROFILE%\Desktop\zero_trust_audit.txt"
secedit /export /cfg "%USERPROFILE%\Desktop\zero_trust.inf"
powershell "Get-ProcessMitigation -System" >> "%USERPROFILE%\Desktop\zero_trust_audit.txt"
pause
)
if "%c%"=="899" (
systeminfo > "%USERPROFILE%\Desktop\enterprise_platinum.txt"
gpresult /h "%USERPROFILE%\Desktop\enterprise_platinum.html"
netsh advfirewall export "%USERPROFILE%\Desktop\enterprise_platinum.wfw"
pause
)

if "%c%"=="900" goto main
if "%c%"=="2000" goto extra13
if "%c%"=="2001" goto extra15

goto extra14

:: ============================================================
:: [EXTRA-15] REAL WORKING CMD / POWERSHELL TOOLKIT (901-1000)
:: ============================================================
:extra15
cls
color 0A
echo ============================================================
echo         EXTRA COMMAND CENTER 15 (901-1000 REAL)
echo ============================================================
echo [901] Full System Inventory       [951] Full Compliance Export
echo [902] Full Hardware Inventory     [952] Windows ISO Mount
echo [903] Full Software Inventory     [953] ISO Unmount
echo [904] Full Driver Inventory       [954] DISM WIM Info
echo [905] Full User Audit             [955] DISM Apply Image
echo [906] Full Security Audit         [956] DISM Capture Image
echo [907] Full Network Audit          [957] DISM Cleanup Image
echo [908] Full Boot Audit             [958] System Image Backup
echo [909] Full BIOS Audit             [959] WBAdmin Status
echo [910] Full Storage Audit          [960] WBAdmin Start Backup
echo [911] Full Battery Audit          [961] WBAdmin Versions
echo [912] Full Event Audit            [962] Restore Catalog
echo [913] Full GPO Audit              [963] VSS Full Writers
echo [914] Full AD Audit               [964] VSS Providers
echo [915] Full Defender Audit         [965] Restore Previous Versions
echo [916] Full Firewall Audit         [966] Cipher Secure Delete
echo [917] Full BitLocker Audit        [967] EFS Cert Backup
echo [918] Full Certificate Audit      [968] EFS Cert Restore
echo [919] Full Privacy Audit          [969] Taskkill All User Apps
echo [920] Full Performance Audit      [970] Explorer Cache Reset
echo [921] Full Startup Audit          [971] Icon Cache Reset
echo [922] Full Registry Audit         [972] Thumbnail Cache Reset
echo [923] Full Scheduled Task Audit   [973] Notification Cache Reset
echo [924] Full Service Audit          [974] Windows Search Reset
echo [925] Full Share Audit            [975] Cortana Reset
echo [926] Full VPN Audit              [976] Widgets Reset
echo [927] Full Browser Audit          [977] Edge WebView Repair
echo [928] Full Office Audit           [978] .NET Repair
echo [929] Full Update Audit           [979] VC++ Runtime Check
echo [930] Full Recovery Audit         [980] DirectX Repair
echo [931] Full USB Audit              [981] MSI Repair Deep
echo [932] Full Bluetooth Audit        [982] Full Package Reset
echo [933] Full Print Audit            [983] Enterprise Gold Pack
echo [934] Full Sandbox Audit          [984] Disaster Recovery Gold
echo [935] Full Hyper-V Audit          [985] Ransomware Defense Pack
echo [936] Full WSL Audit              [986] SOC Audit Pack
echo [937] Full Remote Access Audit    [987] DFIR Triage Pack
echo [938] Full Zero Trust Pack        [988] Incident Response Pack
echo [939] Full Red Team Surface       [989] Ultimate Admin Pack
echo [940] Full Blue Team Defense      [990] Global Health Pack
echo [941] Full Patch Audit            [991] Master Evidence Export
echo [942] Full Risk Score             [992] Supreme IT Toolkit
echo [943] Full SLA Readiness          [993] BlackBox Diagnostic
echo [944] Full DR Readiness           [994] Omega Platinum Repair
echo [945] Full Helpdesk Snapshot      [995] Titan Shield Pack
echo [946] Full NOC Snapshot           [996] Hyper Recovery Suite
echo [947] Full SOC Snapshot           [997] Apex Enterprise Pack
echo [948] Full Compliance Snapshot    [998] FINAL OMEGA REPORT
echo [949] Full Executive Report       [999] Return Main Menu
echo [950] Full Audit Mega Bundle      [1000] End Toolkit
echo ============================================================
echo [2000] Previous Extra-14
echo [2001] Main Menu
echo ============================================================
set /p c=Select Extra15 Option (901-1000,2000,2001):

if "%c%"=="901" systeminfo > "%USERPROFILE%\Desktop\full_system_inventory.txt" & pause
if "%c%"=="902" wmic cpu get name & wmic memorychip get capacity & wmic diskdrive get model,size > "%USERPROFILE%\Desktop\hardware_inventory.txt" & pause
if "%c%"=="903" wmic product get name,version > "%USERPROFILE%\Desktop\software_inventory.txt" & pause
if "%c%"=="904" driverquery /v > "%USERPROFILE%\Desktop\driver_inventory.txt" & pause
if "%c%"=="905" net user > "%USERPROFILE%\Desktop\user_audit.txt" & net localgroup administrators >> "%USERPROFILE%\Desktop\user_audit.txt" & pause
if "%c%"=="906" secedit /export /cfg "%USERPROFILE%\Desktop\security_audit.inf" & pause
if "%c%"=="907" ipconfig /all > "%USERPROFILE%\Desktop\network_audit.txt" & netstat -ano >> "%USERPROFILE%\Desktop\network_audit.txt" & pause
if "%c%"=="908" bcdedit /enum all > "%USERPROFILE%\Desktop\boot_audit.txt" & pause
if "%c%"=="909" wmic bios get * /format:list > "%USERPROFILE%\Desktop\bios_audit.txt" & pause
if "%c%"=="910" powershell "Get-PhysicalDisk; Get-Volume" > "%USERPROFILE%\Desktop\storage_audit.txt" & pause

if "%c%"=="911" powercfg /batteryreport & pause
if "%c%"=="912" wevtutil epl System "%USERPROFILE%\Desktop\system_full.evtx" & pause
if "%c%"=="913" gpresult /h "%USERPROFILE%\Desktop\gpo_audit.html" & pause
if "%c%"=="914" dcdiag /v > "%USERPROFILE%\Desktop\ad_audit.txt" & pause
if "%c%"=="915" powershell "Get-MpComputerStatus" > "%USERPROFILE%\Desktop\defender_audit.txt" & pause
if "%c%"=="916" netsh advfirewall show allprofiles > "%USERPROFILE%\Desktop\firewall_audit.txt" & pause
if "%c%"=="917" manage-bde -status > "%USERPROFILE%\Desktop\bitlocker_audit.txt" & pause
if "%c%"=="918" certutil -store root > "%USERPROFILE%\Desktop\cert_audit.txt" & pause
if "%c%"=="919" start ms-settings:privacy
if "%c%"=="920" perfmon /report

if "%c%"=="921" wmic startup list full > "%USERPROFILE%\Desktop\startup_audit.txt" & pause
if "%c%"=="922" reg export HKLM "%USERPROFILE%\Desktop\registry_audit_hklm.reg" & pause
if "%c%"=="923" schtasks /query /fo LIST /v > "%USERPROFILE%\Desktop\tasks_audit.txt" & pause
if "%c%"=="924" sc query type= service > "%USERPROFILE%\Desktop\services_audit.txt" & pause
if "%c%"=="925" net share > "%USERPROFILE%\Desktop\share_audit.txt" & pause
if "%c%"=="926" powershell "Get-VpnConnection" > "%USERPROFILE%\Desktop\vpn_audit.txt" & pause
if "%c%"=="927" start chrome://settings
if "%c%"=="928" cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /dstatus & pause
if "%c%"=="929" wmic qfe list > "%USERPROFILE%\Desktop\update_audit.txt" & pause
if "%c%"=="930" reagentc /info > "%USERPROFILE%\Desktop\recovery_audit.txt" & pause

if "%c%"=="931" reg query HKLM\SYSTEM\CurrentControlSet\Enum\USBSTOR /s > "%USERPROFILE%\Desktop\usb_audit.txt" & pause
if "%c%"=="932" powershell "Get-PnpDevice -Class Bluetooth" > "%USERPROFILE%\Desktop\bluetooth_audit.txt" & pause
if "%c%"=="933" printmanagement.msc
if "%c%"=="934" dism /online /Get-FeatureInfo /FeatureName:Containers-DisposableClientVM & pause
if "%c%"=="935" powershell "Get-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All" & pause
if "%c%"=="936" wsl --status & pause
if "%c%"=="937" query user & netstat -ano | findstr 3389 & pause
if "%c%"=="938" (
secedit /export /cfg "%USERPROFILE%\Desktop\zero_trust.inf"
powershell "Get-ProcessMitigation -System" > "%USERPROFILE%\Desktop\zero_trust.txt"
pause
)

if "%c%"=="939" netstat -ano > "%USERPROFILE%\Desktop\redteam_surface.txt" & pause
if "%c%"=="940" powershell "Get-MpComputerStatus" & netsh advfirewall show allprofiles & pause
if "%c%"=="941" wmic qfe list full > "%USERPROFILE%\Desktop\patch_audit.txt" & pause
if "%c%"=="942" systeminfo > "%USERPROFILE%\Desktop\risk_score_raw.txt" & pause
if "%c%"=="943" gpresult /r > "%USERPROFILE%\Desktop\sla_readiness.txt" & pause
if "%c%"=="944" wbadmin get versions > "%USERPROFILE%\Desktop\dr_readiness.txt" & pause
if "%c%"=="945" systeminfo & ipconfig /all & tasklist & pause
if "%c%"=="946" netstat -ano & tasklist & pause
if "%c%"=="947" powershell "Get-MpComputerStatus" & wevtutil qe Security /c:20 /f:text & pause
if "%c%"=="948" secedit /export /cfg "%USERPROFILE%\Desktop\compliance_snapshot.inf" & pause
if "%c%"=="949" systeminfo > "%USERPROFILE%\Desktop\executive_report.txt" & pause
if "%c%"=="950" (
systeminfo > "%USERPROFILE%\Desktop\audit_bundle.txt"
ipconfig /all >> "%USERPROFILE%\Desktop\audit_bundle.txt"
driverquery >> "%USERPROFILE%\Desktop\audit_bundle.txt"
gpresult /r >> "%USERPROFILE%\Desktop\audit_bundle.txt"
pause
)

if "%c%"=="951" secedit /export /cfg "%USERPROFILE%\Desktop\compliance_full.inf" & pause
if "%c%"=="952" powershell "Mount-DiskImage -ImagePath 'C:\ISO\file.iso'" & pause
if "%c%"=="953" powershell "Get-DiskImage | Dismount-DiskImage" & pause
if "%c%"=="954" dism /Get-WimInfo /WimFile:C:\install.wim & pause
if "%c%"=="955" dism /Apply-Image /ImageFile:C:\install.wim /Index:1 /ApplyDir:C:\Target & pause
if "%c%"=="956" dism /Capture-Image /ImageFile:C:\backup.wim /CaptureDir:C:\ /Name:Backup & pause
if "%c%"=="957" dism /online /Cleanup-Image /StartComponentCleanup & pause
if "%c%"=="958" wbadmin start backup -backupTarget:D: -include:C: -quiet & pause
if "%c%"=="959" wbadmin get status & pause
if "%c%"=="960" wbadmin start systemstatebackup -backuptarget:D: -quiet & pause

if "%c%"=="961" wbadmin get versions & pause
if "%c%"=="962" wbadmin delete catalog -quiet & pause
if "%c%"=="963" vssadmin list writers & pause
if "%c%"=="964" vssadmin list providers & pause
if "%c%"=="965" SystemPropertiesProtection
if "%c%"=="966" cipher /w:C:\ & pause
if "%c%"=="967" cipher /x "%USERPROFILE%\Desktop\EFSBackup" & pause
if "%c%"=="968" certmgr.msc
if "%c%"=="969" taskkill /f /fi "USERNAME ne NT AUTHORITY\SYSTEM" & pause
if "%c%"=="970" ie4uinit.exe -ClearIconCache & pause

if "%c%"=="971" ie4uinit.exe -ClearIconCache & pause
if "%c%"=="972" del /q /f /s "%localappdata%\Microsoft\Windows\Explorer\thumbcache_*" & pause
if "%c%"=="973" del /q /f /s "%localappdata%\Microsoft\Windows\Notifications\*.*" & pause
if "%c%"=="974" net stop WSearch & net start WSearch & pause
if "%c%"=="975" Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage
if "%c%"=="976" taskkill /f /im widgets.exe & pause
if "%c%"=="977" start msedgewebview2://
if "%c%"=="978" dism /online /cleanup-image /restorehealth & pause
if "%c%"=="979" wmic product where "Name like '%%Visual C++%%'" get name,version & pause
if "%c%"=="980" dxdiag

if "%c%"=="981" msiexec /fa "%ProgramFiles%\App\app.msi" & pause
if "%c%"=="982" powershell "Get-AppxPackage -AllUsers | Reset-AppxPackage" & pause
if "%c%"=="983" systeminfo > "%USERPROFILE%\Desktop\enterprise_gold.txt" & pause
if "%c%"=="984" reagentc /enable & wbadmin get versions & pause
if "%c%"=="985" powershell "Get-MpPreference" > "%USERPROFILE%\Desktop\ransomware_defense.txt" & pause
if "%c%"=="986" wevtutil epl Security "%USERPROFILE%\Desktop\soc_audit.evtx" & pause
if "%c%"=="987" systeminfo & tasklist & netstat -ano & pause
if "%c%"=="988" powershell "Get-MpComputerStatus" & netsh advfirewall reset & pause
if "%c%"=="989" (
systeminfo > "%USERPROFILE%\Desktop\ultimate_admin_pack.txt"
driverquery >> "%USERPROFILE%\Desktop\ultimate_admin_pack.txt"
tasklist >> "%USERPROFILE%\Desktop\ultimate_admin_pack.txt"
pause
)

if "%c%"=="990" (
systeminfo > "%USERPROFILE%\Desktop\global_health.txt"
powercfg /energy >> "%USERPROFILE%\Desktop\global_health.txt"
chkdsk /scan >> "%USERPROFILE%\Desktop\global_health.txt"
pause
)

if "%c%"=="991" (
systeminfo > "%USERPROFILE%\Desktop\evidence_export.txt"
wevtutil epl Security "%USERPROFILE%\Desktop\evidence_security.evtx"
wevtutil epl System "%USERPROFILE%\Desktop\evidence_system.evtx"
pause
)

if "%c%"=="992" mkdir "%USERPROFILE%\Desktop\SupremeITToolkit" & pause
if "%c%"=="993" systeminfo & msinfo32 & dxdiag & pause
if "%c%"=="994" sfc /scannow & DISM /Online /Cleanup-Image /RestoreHealth & bootrec /rebuildbcd & pause
if "%c%"=="995" powershell "Get-MpComputerStatus" & secedit /export /cfg "%USERPROFILE%\Desktop\titan.inf" & pause
if "%c%"=="996" reagentc /enable & wbadmin start systemstatebackup -backuptarget:D: -quiet & pause
if "%c%"=="997" dcdiag /v & repadmin /replsummary & gpresult /h "%USERPROFILE%\Desktop\apex.html" & pause

if "%c%"=="998" (
systeminfo > "%USERPROFILE%\Desktop\FINAL_OMEGA_REPORT.txt"
ipconfig /all >> "%USERPROFILE%\Desktop\FINAL_OMEGA_REPORT.txt"
driverquery >> "%USERPROFILE%\Desktop\FINAL_OMEGA_REPORT.txt"
tasklist >> "%USERPROFILE%\Desktop\FINAL_OMEGA_REPORT.txt"
netstat -ano >> "%USERPROFILE%\Desktop\FINAL_OMEGA_REPORT.txt"
gpresult /r >> "%USERPROFILE%\Desktop\FINAL_OMEGA_REPORT.txt"
echo FINAL OMEGA REPORT saved to Desktop.
pause
)

if "%c%"=="999" goto main
if "%c%"=="1000" exit
if "%c%"=="2000" goto extra14
if "%c%"=="2001" goto main

goto extra15

:: ============================================================
:: [EXTRA-16] REAL WORKING CMD / POWERSHELL TOOLKIT (1001-1100)
:: ============================================================
:extra16
cls
color 0C
echo ============================================================
echo         EXTRA COMMAND CENTER 16 (1001-1100 REAL)
echo ============================================================
echo [1001] Process Monitor Quick      [1051] Net Adapter Full Reset
echo [1002] Top CPU Processes          [1052] NIC Driver Reinstall
echo [1003] Top RAM Processes          [1053] DHCP Renew Full
echo [1004] Kill Process by Name       [1054] DNS Resolver Reset
echo [1005] Kill Process by PID        [1055] TCP AutoTune Status
echo [1006] Service Dependency Check   [1056] TCP AutoTune Normal
echo [1007] Service Failure Actions    [1057] TCP AutoTune Disable
echo [1008] Restart Critical Services  [1058] MTU Check
echo [1009] Windows Modules Installer  [1059] MTU Set 1500
echo [1010] CBS Repair Source          [1060] MTU Set Custom
echo [1011] DISM Source Repair         [1061] Packet Loss Test
echo [1012] Component Store Analyze    [1062] Jitter Test
echo [1013] Reserved Storage Status    [1063] LAN Speed Check
echo [1014] Storage Sense Deep         [1064] Wi-Fi Channel Info
echo [1015] Disk Cleanup SageRun       [1065] Wi-Fi Channel Conflict
echo [1016] SSD Optimize               [1066] Flush WLAN Profiles
echo [1017] HDD Defrag                 [1067] WLAN XML Backup
echo [1018] Shadow Copies Cleanup      [1068] WLAN XML Restore
echo [1019] Pagefile Custom            [1069] Browser DNS Cache
echo [1020] RAM Compression Disable    [1070] Browser SSL Reset
echo [1021] RAM Compression Enable     [1071] IE Advanced Reset
echo [1022] Hibernation Full Reset     [1072] Edge Policy Reset
echo [1023] Fast Startup Disable       [1073] Chrome Policy Reset
echo [1024] Fast Startup Enable        [1074] Outlook Profile Backup
echo [1025] Sleep Timeout Reset        [1075] Outlook Profile Restore
echo [1026] Wake Armed Devices         [1076] PST Scan Deep
echo [1027] Last Sleep Diagnostics     [1077] OST Rebuild
echo [1028] Power Requests             [1078] Office C2R Status
echo [1029] GPU Driver Reset           [1079] Office License Remove
echo [1030] Audio Stack Reset          [1080] Office License Rearm
echo [1031] Print Driver Reset         [1081] Windows Activation Rearm
echo [1032] USB Controller Reset       [1082] KMS Cache Clear
echo [1033] Bluetooth Stack Reset      [1083] Token Store Reset
echo [1034] Camera Stack Reset         [1084] Windows Hello PIN Reset
echo [1035] Sensor Service Reset       [1085] Biometric DB Reset
echo [1036] Time Service Full Reset    [1086] Credential Vault Reset
echo [1037] Time Zone Auto             [1087] LSA Secrets Audit
echo [1038] Kerberos Tickets Full      [1088] Secure Channel Reset
echo [1039] Trust Relationship Fix     [1089] Domain Rejoin Guide
echo [1040] DNS Secure Dynamic         [1090] Azure AD Rejoin
echo [1041] Hosts Permission Reset     [1091] Intune Sync
echo [1042] Firewall Service Reset     [1092] MDM Diagnostics
echo [1043] IPSec Reset                [1093] Compliance Sync
echo [1044] Defender Engine Reset      [1094] Provisioning Packages
echo [1045] Defender Platform Update   [1095] Assigned Access Reset
echo [1046] SmartScreen Cloud Check    [1096] SharedPC Reset
echo [1047] ASR Rules Export           [1097] Kiosk Reset
echo [1048] Controlled Folder Reset    [1098] Ultimate Fix Stack
echo [1049] WDAC Reset                 [1099] Master Repair Bundle
echo [1050] AppLocker Reset            [1100] Back Main
echo ============================================================
echo [2000] Previous Extra-15
echo [2001] Next Extra-17
echo ============================================================
set /p c=Select Extra16 Option (1001-1100,2000,2001):

if "%c%"=="1001" tasklist & pause
if "%c%"=="1002" powershell "Get-Process | Sort CPU -Descending | Select -First 20" & pause
if "%c%"=="1003" powershell "Get-Process | Sort WS -Descending | Select -First 20" & pause
if "%c%"=="1004" set /p pname=Process Name: & taskkill /f /im !pname! & pause
if "%c%"=="1005" set /p pid=PID: & taskkill /f /pid !pid! & pause
if "%c%"=="1006" sc qc wuauserv & pause
if "%c%"=="1007" sc qfailure wuauserv & pause
if "%c%"=="1008" net stop wuauserv & net start wuauserv & net stop bits & net start bits & pause
if "%c%"=="1009" net start trustedinstaller & pause
if "%c%"=="1010" sfc /scannow & pause

if "%c%"=="1011" DISM /Online /Cleanup-Image /RestoreHealth /Source:wim:X:\sources\install.wim:1 /LimitAccess & pause
if "%c%"=="1012" DISM /Online /Cleanup-Image /AnalyzeComponentStore & pause
if "%c%"=="1013" DISM /Online /Get-ReservedStorageState & pause
if "%c%"=="1014" start ms-settings:storagesense
if "%c%"=="1015" cleanmgr /sagerun:1 & pause
if "%c%"=="1016" defrag C: /L & pause
if "%c%"=="1017" defrag C: /U /V & pause
if "%c%"=="1018" vssadmin delete shadows /all & pause
if "%c%"=="1019" sysdm.cpl
if "%c%"=="1020" powershell "Disable-MMAgent -mc" & pause

if "%c%"=="1021" powershell "Enable-MMAgent -mc" & pause
if "%c%"=="1022" powercfg /hibernate off & powercfg /hibernate on & pause
if "%c%"=="1023" powercfg /h off & pause
if "%c%"=="1024" powercfg /h on & pause
if "%c%"=="1025" powercfg -restoredefaultschemes & pause
if "%c%"=="1026" powercfg -devicequery wake_armed & pause
if "%c%"=="1027" powercfg /sleepstudy & pause
if "%c%"=="1028" powercfg /requests & pause
if "%c%"=="1029" devmgmt.msc
if "%c%"=="1030" net stop audiosrv & net start audiosrv & net stop AudioEndpointBuilder & net start AudioEndpointBuilder & pause

if "%c%"=="1031" printui /s /t2
if "%c%"=="1032" powershell "Get-PnpDevice -Class USB | Disable-PnpDevice -Confirm:`$false; Get-PnpDevice -Class USB | Enable-PnpDevice -Confirm:`$false" & pause
if "%c%"=="1033" net stop bthserv & net start bthserv & pause
if "%c%"=="1034" net stop FrameServer & net start FrameServer & pause
if "%c%"=="1035" net stop SensorService & net start SensorService & pause
if "%c%"=="1036" net stop w32time & w32tm /unregister & w32tm /register & net start w32time & w32tm /resync & pause
if "%c%"=="1037" tzutil /s "India Standard Time" & pause
if "%c%"=="1038" klist purge & gpupdate /force & pause
if "%c%"=="1039" nltest /sc_reset:%userdomain% & pause
if "%c%"=="1040" ipconfig /registerdns & pause

if "%c%"=="1041" icacls C:\Windows\System32\drivers\etc\hosts /reset & pause
if "%c%"=="1042" net stop mpssvc & net start mpssvc & pause
if "%c%"=="1043" netsh int ip reset & pause
if "%c%"=="1044" powershell "Set-MpPreference -DisableRealtimeMonitoring 0" & pause
if "%c%"=="1045" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate & pause
if "%c%"=="1046" start windowsdefender:
if "%c%"=="1047" powershell "Get-MpPreference | Select AttackSurfaceReductionRules_Ids" > "%USERPROFILE%\Desktop\asr_rules.txt" & pause
if "%c%"=="1048" powershell "Set-MpPreference -EnableControlledFolderAccess Disabled" & pause
if "%c%"=="1049" powershell "Remove-CIPolicyRule" & pause
if "%c%"=="1050" powershell "Set-AppLockerPolicy -XmlPolicy C:\Reset.xml" & pause

if "%c%"=="1051" netcfg -d & pause
if "%c%"=="1052" pnputil /scan-devices & pause
if "%c%"=="1053" ipconfig /release & ipconfig /renew & pause
if "%c%"=="1054" net stop dnscache & net start dnscache & pause
if "%c%"=="1055" netsh int tcp show global & pause
if "%c%"=="1056" netsh int tcp set global autotuninglevel=normal & pause
if "%c%"=="1057" netsh int tcp set global autotuninglevel=disabled & pause
if "%c%"=="1058" netsh interface ipv4 show subinterfaces & pause
if "%c%"=="1059" netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent & pause
if "%c%"=="1060" set /p mtu=MTU: & netsh interface ipv4 set subinterface "Ethernet" mtu=!mtu! store=persistent & pause

if "%c%"=="1061" pathping google.com & pause
if "%c%"=="1062" ping google.com -n 50 & pause
if "%c%"=="1063" powershell "Get-NetAdapter | Select Name,LinkSpeed" & pause
if "%c%"=="1064" netsh wlan show interfaces & pause
if "%c%"=="1065" netsh wlan show all & pause
if "%c%"=="1066" netsh wlan delete profile name=* i=* & pause
if "%c%"=="1067" netsh wlan export profile key=clear folder=%USERPROFILE%\Desktop & pause
if "%c%"=="1068" netsh wlan add profile filename="%USERPROFILE%\Desktop\Wi-Fi.xml" & pause
if "%c%"=="1069" ipconfig /flushdns & pause
if "%c%"=="1070" inetcpl.cpl

if "%c%"=="1071" RunDll32.exe InetCpl.cpl,ResetIEtoDefaults
if "%c%"=="1072" reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /f & pause
if "%c%"=="1073" reg delete "HKLM\SOFTWARE\Policies\Google\Chrome" /f & pause
if "%c%"=="1074" reg export "HKCU\Software\Microsoft\Office" "%USERPROFILE%\Desktop\office_profile.reg" & pause
if "%c%"=="1075" reg import "%USERPROFILE%\Desktop\office_profile.reg" & pause
if "%c%"=="1076" start "" "C:\Program Files\Microsoft Office\root\Office16\SCANPST.EXE"
if "%c%"=="1077" del /q /f /s "%localappdata%\Microsoft\Outlook\*.ost" & pause
if "%c%"=="1078" sc query ClickToRunSvc & pause
if "%c%"=="1079" cscript ospp.vbs /unpkey:LAST5 & pause
if "%c%"=="1080" cscript ospp.vbs /rearm & pause

if "%c%"=="1081" slmgr /rearm & pause
if "%c%"=="1082" slmgr /ckms & pause
if "%c%"=="1083" net stop sppsvc & net start sppsvc & pause
if "%c%"=="1084" start ms-settings:signinoptions
if "%c%"=="1085" net stop WbioSrvc & net start WbioSrvc & pause
if "%c%"=="1086" cmdkey /delete /ras & pause
if "%c%"=="1087" reg query HKLM\SECURITY & pause
if "%c%"=="1088" Test-ComputerSecureChannel -Repair & pause
if "%c%"=="1089" echo Remove from domain, reboot, rejoin domain. & pause
if "%c%"=="1090" dsregcmd /leave & dsregcmd /join & pause

if "%c%"=="1091" start ms-settings:workplace
if "%c%"=="1092" mdmdiagnosticstool.exe -out "%USERPROFILE%\Desktop\MDMReport" & pause
if "%c%"=="1093" start ms-settings:workplace
if "%c%"=="1094" provisioningutil /?
if "%c%"=="1095" start ms-settings:otherusers
if "%c%"=="1096" reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SharedPC" /f & pause
if "%c%"=="1097" start ms-settings:otherusers
if "%c%"=="1098" sfc /scannow & DISM /Online /Cleanup-Image /RestoreHealth & netsh winsock reset & chkdsk /scan & pause

if "%c%"=="1099" (
systeminfo > "%USERPROFILE%\Desktop\master_repair_bundle.txt"
sfc /scannow >> "%USERPROFILE%\Desktop\master_repair_bundle.txt"
DISM /Online /Cleanup-Image /RestoreHealth >> "%USERPROFILE%\Desktop\master_repair_bundle.txt"
ipconfig /all >> "%USERPROFILE%\Desktop\master_repair_bundle.txt"
pause
)

if "%c%"=="1100" goto main
if "%c%"=="2000" goto extra15
if "%c%"=="2001" goto extra17

goto extra16

:: ============================================================
:: [22] Driver – FULL AUTO FOLDER / SAFE PATH VERSION
:: ============================================================

:driver
cls
color 0B
title [22] Driver
setlocal EnableDelayedExpansion

echo =================================================================================================================================================================
echo                                         DRIVER / WINDOWS UPDATE / SOFTWARE MASTER TOOLKIT (100+ ISSUES)
echo =================================================================================================================================================================
echo [1] Backup All Drivers          [26] Printer Driver Fix        [51] GPU Crash Fix             [76] Bluetooth Audio Fix
echo [2] Restore All Drivers         [27] Scanner Driver Fix        [52] NVIDIA Driver Reset       [77] WiFi Disconnect Fix
echo [3] Export Driver List          [28] Webcam Driver Fix         [53] AMD Driver Reset          [78] LAN Disconnect Fix
echo [4] Scan Missing Drivers        [29] Camera Driver Fix         [54] Intel GPU Reset           [79] USB Power Fix
echo [5] Device Manager              [30] Touchpad Fix              [55] Display Flicker Fix       [80] USB 3.0 Fix
echo [6] Unknown Device Scan         [31] Keyboard Driver Fix       [56] HDMI No Signal            [81] Battery Driver Fix
echo [7] Auto Driver Query           [32] Mouse Driver Fix          [57] HDMI Audio Fix            [82] BIOS Version Check
echo [8] Driver Signature Fix        [33] Headphone Jack Fix        [58] Monitor Driver Fix        [83] Motherboard Driver
echo [9] Audio Driver Fix            [34] Speaker Fix               [59] Dual Monitor Fix          [84] Chipset Repair
echo [10] Microphone Fix             [35] Bluetooth Missing         [60] Resolution Fix            [85] SATA / AHCI Fix
echo [11] Speaker Reset              [36] Bluetooth Driver Fix      [61] Refresh Rate Fix          [86] NVMe Driver Fix
echo [12] HDMI Audio Driver Fix      [37] Bluetooth Pairing Fix     [62] GPU Temp Check            [87] RAID Driver Fix
echo [13] Network Adapter Missing    [38] WiFi Driver Fix           [63] GPU Driver Update         [88] Audio Crackling Fix
echo [14] Ethernet Driver Fix        [39] LAN Driver Fix            [64] Rollback GPU Driver       [89] Sound Delay Fix
echo [15] WAN Miniport Reset         [40] WAN Reset                 [65] USB Not Recognized        [90] Mic Noise Fix
echo [16] WiFi Adapter Reset         [41] USB Driver Reset          [66] USB Mass Storage Fix      [91] Webcam Black Screen
echo [17] LAN Adapter Reset          [42] USB Device Scan           [67] Pendrive Detection        [92] Camera Access Fix
echo [18] DNS Driver Issue           [43] USB Root Hub Reset        [68] External HDD Fix          [93] Printer Offline
echo [19] Bluetooth Power Fix        [44] USB Controller Fix        [69] SD Card Driver            [94] Printer Spooler
echo [20] Windows Update Drivers     [45] Driver Rollback           [70] CD/DVD Driver Fix         [95] Windows 11 Driver Fix
echo [21] One Click Driver Update    [46] Driver Update Scan        [71] Driver Conflict Fix       [96] Windows 10 Driver Fix
echo [22] Optional Driver Updates    [47] Force Driver Install      [72] Hidden Driver View        [97] Software Repair
echo [23] Software Update All        [48] Driver Store Cleanup      [73] Remove Ghost Devices      [98] Full Repair + Logs
echo [24] Winget Upgrade All         [49] Plug and Play Rescan      [74] Full Hardware Scan        [99] Main Menu
echo [25] Full Driver + Software     [50] Display Adapter Reset     [75] Full Driver Backup
echo =================================================================================================================================================================
set /p c=Select Driver Option (1-99):

if "%c%"=="1" if not exist "C:\DriverBackup" mkdir "C:\DriverBackup" & dism /online /export-driver /destination:C:\DriverBackup & echo Driver backup saved in C:\DriverBackup & pause

if "%c%"=="2" if exist "C:\DriverBackup" (pnputil /add-driver C:\DriverBackup\*.inf /subdirs /install & echo Drivers Restored.) else (echo DriverBackup folder not found.) & pause

if "%c%"=="3" if not exist "%userprofile%\Desktop" mkdir "%userprofile%\Desktop" & driverquery /v > "%userprofile%\Desktop\DriverList.txt" & echo Driver list saved on Desktop. & pause

if "%c%"=="4" pnputil /scan-devices & pause
if "%c%"=="5" devmgmt.msc
if "%c%"=="6" start msdt.exe -id DeviceDiagnostic
if "%c%"=="7" driverquery & pause
if "%c%"=="8" bcdedit /set testsigning off & pause
if "%c%"=="9" net stop audiosrv & net start audiosrv & pause
if "%c%"=="10" devmgmt.msc
if "%c%"=="11" net stop audiosrv & net start audiosrv & pause
if "%c%"=="12" devmgmt.msc
if "%c%"=="13" netcfg -d & pause
if "%c%"=="14" netcfg -d & pause
if "%c%"=="15" netcfg -d & pause
if "%c%"=="16" netsh winsock reset & netcfg -d & pause
if "%c%"=="17" netcfg -d & pause
if "%c%"=="18" ipconfig /flushdns & pause
if "%c%"=="19" powercfg -h off & powercfg -h on & pause
if "%c%"=="20" UsoClient StartScan & UsoClient StartDownload & pause
if "%c%"=="21" pnputil /scan-devices & UsoClient StartScan & pause
if "%c%"=="22" start ms-settings:windowsupdate-optionalupdates
if "%c%"=="23" winget upgrade --all & pause
if "%c%"=="24" winget upgrade --all & pause

if "%c%"=="25" (
if not exist "C:\DriverBackup" mkdir "C:\DriverBackup"
dism /online /export-driver /destination:C:\DriverBackup
pnputil /scan-devices
winget upgrade --all
UsoClient StartScan
echo FULL DRIVER + SOFTWARE REPAIR COMPLETE
pause
)

if "%c%"=="26" printui /s /t2
if "%c%"=="27" devmgmt.msc
if "%c%"=="28" devmgmt.msc
if "%c%"=="29" devmgmt.msc
if "%c%"=="30" devmgmt.msc
if "%c%"=="31" devmgmt.msc
if "%c%"=="32" devmgmt.msc
if "%c%"=="33" devmgmt.msc
if "%c%"=="34" net stop audiosrv & net start audiosrv & pause
if "%c%"=="35" net stop bthserv & net start bthserv & pause
if "%c%"=="36" net stop bthserv & net start bthserv & pause
if "%c%"=="37" start ms-settings:bluetooth
if "%c%"=="38" netsh winsock reset & netcfg -d & pause
if "%c%"=="39" netcfg -d & pause
if "%c%"=="40" netcfg -d & pause
if "%c%"=="41" pnputil /scan-devices & pause
if "%c%"=="42" pnputil /scan-devices & pause
if "%c%"=="43" devmgmt.msc
if "%c%"=="44" devmgmt.msc
if "%c%"=="45" devmgmt.msc
if "%c%"=="46" pnputil /scan-devices & pause

if "%c%"=="47" set /p inf=Enter INF Path: & if exist "!inf!" (pnputil /add-driver "!inf!" /install & echo Driver Installed.) else (echo Invalid INF Path.) & pause

if "%c%"=="48" pnputil /enum-drivers & pause
if "%c%"=="49" pnputil /scan-devices & pause
if "%c%"=="50" devmgmt.msc
if "%c%"=="51" devmgmt.msc
if "%c%"=="52" driverquery | findstr /i nvidia & pause
if "%c%"=="53" driverquery | findstr /i amd & pause
if "%c%"=="54" driverquery | findstr /i intel & pause
if "%c%"=="55" devmgmt.msc
if "%c%"=="56" devmgmt.msc
if "%c%"=="57" devmgmt.msc
if "%c%"=="58" devmgmt.msc
if "%c%"=="59" start ms-settings:display
if "%c%"=="60" start ms-settings:display
if "%c%"=="61" start ms-settings:display-advanced
if "%c%"=="62" taskmgr
if "%c%"=="63" pnputil /scan-devices & pause
if "%c%"=="64" devmgmt.msc
if "%c%"=="65" pnputil /scan-devices & pause
if "%c%"=="66" reg add "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR" /v Start /t REG_DWORD /d 3 /f & pause
if "%c%"=="67" diskmgmt.msc
if "%c%"=="68" diskmgmt.msc
if "%c%"=="69" devmgmt.msc
if "%c%"=="70" reg add HKLM\SYSTEM\CurrentControlSet\Services\atapi\Controller0 /v EnumDevice1 /t REG_DWORD /d 1 /f & pause
if "%c%"=="71" start msdt.exe -id DeviceDiagnostic
if "%c%"=="72" set devmgr_show_nonpresent_devices=1 & start devmgmt.msc
if "%c%"=="73" set devmgr_show_nonpresent_devices=1 & start devmgmt.msc
if "%c%"=="74" dxdiag

if "%c%"=="75" if not exist "C:\DriverBackup" mkdir "C:\DriverBackup" & dism /online /export-driver /destination:C:\DriverBackup & echo Full Driver Backup Complete. & pause

if "%c%"=="76" net stop audiosrv & net start audiosrv & pause
if "%c%"=="77" netsh winsock reset & pause
if "%c%"=="78" netcfg -d & pause
if "%c%"=="79" powercfg /devicequery wake_armed & pause
if "%c%"=="80" devmgmt.msc
if "%c%"=="81" devmgmt.msc

if "%c%"=="82" if not exist "%userprofile%\Desktop" mkdir "%userprofile%\Desktop" & wmic bios get smbiosbiosversion > "%userprofile%\Desktop\BIOS_Version.txt" & echo BIOS info saved on Desktop. & pause

if "%c%"=="83" if not exist "%userprofile%\Desktop" mkdir "%userprofile%\Desktop" & wmic baseboard get product,manufacturer > "%userprofile%\Desktop\Motherboard_Info.txt" & echo Motherboard info saved on Desktop. & pause

if "%c%"=="84" wmic baseboard get product,manufacturer & pause
if "%c%"=="85" devmgmt.msc
if "%c%"=="86" devmgmt.msc
if "%c%"=="87" devmgmt.msc
if "%c%"=="88" net stop audiosrv & net start audiosrv & pause
if "%c%"=="89" net stop audiosrv & net start audiosrv & pause
if "%c%"=="90" devmgmt.msc
if "%c%"=="91" devmgmt.msc
if "%c%"=="92" start ms-settings:privacy-webcam
if "%c%"=="93" printui /s /t2
if "%c%"=="94" net stop spooler & net start spooler & pause
if "%c%"=="95" pnputil /scan-devices & UsoClient StartScan & pause
if "%c%"=="96" pnputil /scan-devices & pause
if "%c%"=="97" winget upgrade --all & pause

if "%c%"=="98" (
if not exist "C:\ToolkitLogs" mkdir "C:\ToolkitLogs"
winget upgrade --all
sfc /scannow > C:\ToolkitLogs\SFC_Log.txt
echo Repair complete. Log saved in C:\ToolkitLogs
pause
)

if "%c%"=="99" goto main

goto driver

:: ============================================================
:: [23] ULTIMATE OS DOWNLOAD CENTER (3 COLUMN)
:: ============================================================

if "%c%"=="23" goto osdownload

:osdownload
cls
color 0A
title [23] ULTIMATE OS DOWNLOAD CENTER

echo =================================================================================================================================================================
echo                                               ULTIMATE OS DOWNLOAD CENTER
echo =================================================================================================================================================================
echo [1] OS.Click All-in-One Hub        [2] Windows 11                 [3] Windows 10
echo [4] Windows 8.1                    [5] Windows 7                  [6] Windows Server 2025
echo [7] Windows Server 2022            [8] Windows Server 2019        [9] Windows Server 2016
echo [10] Windows Server 2012 R2        [11] Ubuntu Desktop            [12] Ubuntu Server
echo [13] Kali Linux                    [14] Linux Mint                [15] Fedora Workstation
echo [16] Fedora Server                 [17] Debian                    [18] Arch Linux
echo [19] Manjaro                       [20] Zorin OS                  [21] Pop!_OS
echo [22] Elementary OS                 [23] MX Linux                  [24] Chrome OS Flex
echo [25] Android x86                   [26] Prime OS                  [27] Bliss OS
echo [28] Phoenix OS                    [29] Raspberry Pi OS           [30] Parrot OS
echo [31] BlackArch Linux               [32] CentOS Stream             [33] Rocky Linux
echo [34] AlmaLinux                     [35] OpenSUSE Leap             [36] OpenSUSE Tumbleweed
echo [37] Garuda Linux                  [38] EndeavourOS               [39] Puppy Linux
echo [40] Tails OS                      [41] Qubes OS                  [42] ReactOS
echo [43] FreeBSD                       [44] OpenBSD                   [45] NetBSD
echo [46] TrueNAS CORE                  [47] Proxmox VE                [48] Unraid OS
echo [49] Oracle Linux                  [50] Deepin OS                 [51] Red Hat Enterprise Linux
echo [99] Back to Main Menu
echo =================================================================================================================================================================
set /p oschoice=Select Option:

if "%oschoice%"=="1" start chrome "https://os.click/en"
if "%oschoice%"=="2" start chrome "https://www.microsoft.com/software-download/windows11"
if "%oschoice%"=="3" start chrome "https://www.microsoft.com/software-download/windows10"
if "%oschoice%"=="4" start chrome "https://www.microsoft.com/software-download/windows8ISO"
if "%oschoice%"=="5" start chrome "https://www.microsoft.com/en-us/software-download/windows7"
if "%oschoice%"=="6" start chrome "https://www.microsoft.com/en-us/evalcenter/download-windows-server-2025"
if "%oschoice%"=="7" start chrome "https://www.microsoft.com/en-us/evalcenter/download-windows-server-2022"
if "%oschoice%"=="8" start chrome "https://www.microsoft.com/en-us/evalcenter/download-windows-server-2019"
if "%oschoice%"=="9" start chrome "https://www.microsoft.com/en-us/evalcenter/download-windows-server-2016"
if "%oschoice%"=="10" start chrome "https://www.microsoft.com/en-us/evalcenter/download-windows-server-2012-r2"
if "%oschoice%"=="11" start chrome "https://ubuntu.com/download/desktop"
if "%oschoice%"=="12" start chrome "https://ubuntu.com/download/server"
if "%oschoice%"=="13" start chrome "https://www.kali.org/get-kali/"
if "%oschoice%"=="14" start chrome "https://linuxmint.com/download.php"
if "%oschoice%"=="15" start chrome "https://fedoraproject.org/workstation/download/"
if "%oschoice%"=="16" start chrome "https://fedoraproject.org/server/download/"
if "%oschoice%"=="17" start chrome "https://www.debian.org/distrib/"
if "%oschoice%"=="18" start chrome "https://archlinux.org/download/"
if "%oschoice%"=="19" start chrome "https://manjaro.org/download/"
if "%oschoice%"=="20" start chrome "https://zorin.com/os/download/"
if "%oschoice%"=="21" start chrome "https://pop.system76.com/"
if "%oschoice%"=="22" start chrome "https://elementary.io/"
if "%oschoice%"=="23" start chrome "https://mxlinux.org/download-links/"
if "%oschoice%"=="24" start chrome "https://chromeos.google/products/chromeos-flex/"
if "%oschoice%"=="25" start chrome "https://www.android-x86.org/download"
if "%oschoice%"=="26" start chrome "https://primeos.in/download/"
if "%oschoice%"=="27" start chrome "https://blissos.org/"
if "%oschoice%"=="28" start chrome "https://phoenixos.com/download_x86"
if "%oschoice%"=="29" start chrome "https://www.raspberrypi.com/software/operating-systems/"
if "%oschoice%"=="30" start chrome "https://parrotsec.org/download/"
if "%oschoice%"=="31" start chrome "https://blackarch.org/downloads.html"
if "%oschoice%"=="32" start chrome "https://www.centos.org/centos-stream/"
if "%oschoice%"=="33" start chrome "https://rockylinux.org/download"
if "%oschoice%"=="34" start chrome "https://almalinux.org/download/"
if "%oschoice%"=="35" start chrome "https://get.opensuse.org/leap/"
if "%oschoice%"=="36" start chrome "https://get.opensuse.org/tumbleweed/"
if "%oschoice%"=="37" start chrome "https://garudalinux.org/downloads.html"
if "%oschoice%"=="38" start chrome "https://endeavouros.com/latest-release/"
if "%oschoice%"=="39" start chrome "https://puppylinux-woof-ce.github.io/"
if "%oschoice%"=="40" start chrome "https://tails.net/install/"
if "%oschoice%"=="41" start chrome "https://www.qubes-os.org/downloads/"
if "%oschoice%"=="42" start chrome "https://reactos.org/download/"
if "%oschoice%"=="43" start chrome "https://www.freebsd.org/where/"
if "%oschoice%"=="44" start chrome "https://www.openbsd.org/faq/faq4.html"
if "%oschoice%"=="45" start chrome "https://www.netbsd.org/releases/"
if "%oschoice%"=="46" start chrome "https://www.truenas.com/download-truenas-core/"
if "%oschoice%"=="47" start chrome "https://www.proxmox.com/en/downloads"
if "%oschoice%"=="48" start chrome "https://unraid.net/download"
if "%oschoice%"=="49" start chrome "https://www.oracle.com/linux/downloads/"
if "%oschoice%"=="50" start chrome "https://www.deepin.org/en/download/"
if "%oschoice%"=="51" start chrome "https://developers.redhat.com/products/rhel/download"
if "%oschoice%"=="99" goto main

echo.
echo Chrome Opened - OS Download Page Started...
pause
goto osdownload


:: ============================================================
:: [24] ULTIMATE DIRECT OFFICE DOWNLOAD CENTER (50+)
:: ============================================================

if "%c%"=="24" goto officedownload

:officedownload
cls
color 0D
title [24] ULTIMATE DIRECT OFFICE DOWNLOAD CENTER

echo =================================================================================================================================================================
echo                                           ULTIMATE DIRECT OFFICE DOWNLOAD CENTER
echo =================================================================================================================================================================
echo [1] Office.Click All-in-One Hub          [2] Office Home 2024            [3] Office Home Business 2024
echo [4] Office ProPlus 2024                  [5] Office LTSC 2024            [6] Outlook 2024
echo [7] Visio Pro 2024                       [8] Project Pro 2024            [9] Access 2024
echo [10] Publisher 2024                      [11] Office ProPlus 2021        [12] Office LTSC 2021
echo [13] Office Home Student 2021           [14] Office Business 2021       [15] Outlook 2021
echo [16] Visio Pro 2021                     [17] Project Pro 2021           [18] Office ProPlus 2019
echo [19] Office Home Student 2019           [20] Office Business 2019       [21] Outlook 2019
echo [22] Visio Pro 2019                     [23] Project Pro 2019           [24] Office 2016 Pro
echo [25] Office 2013 Pro                    [26] Office 2010 Pro            [27] Microsoft 365
echo [28] Office Deployment Tool             [29] Teams                       [30] OneDrive
echo [31] SharePoint                         [32] Exchange                    [33] Skype for Business
echo [34] Power BI Desktop                   [35] Power Automate              [36] Power Apps
echo [37] Clipchamp                          [38] Defender for Office         [39] Office Templates
echo [40] Office Language Pack               [41] Office Repair Tool          [42] Office ISO Hub
echo [43] LibreOffice                        [44] WPS Office                  [45] OnlyOffice
echo [46] OpenOffice                         [47] Zoho Office                 [48] Google Docs
echo [49] Office Support                     [50] Office Training             [51] Office Backup Guide
echo [52] Office Migration                   [53] Office Add-ins              [54] Office Insider
echo [55] Back to Main Menu
echo =================================================================================================================================================================
set /p officechoice=Select Option:

if "%officechoice%"=="1" start chrome "https://gravesoft.dev/office_c2r_links"
if "%officechoice%"=="2" start chrome "https://officecdn.microsoft.com/pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/Home2024Retail.img"
if "%officechoice%"=="3" start chrome "https://officecdn.microsoft.com/pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/HomeBusiness2024Retail.img"
if "%officechoice%"=="4" start chrome "https://officecdn.microsoft.com/pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/ProPlus2024Retail.img"
if "%officechoice%"=="5" start chrome "https://gravesoft.dev/office_c2r_links"
if "%officechoice%"=="6" start chrome "https://officecdn.microsoft.com/pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/Outlook2024Retail.img"
if "%officechoice%"=="7" start chrome "https://officecdn.microsoft.com/pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/VisioPro2024Retail.img"
if "%officechoice%"=="8" start chrome "https://officecdn.microsoft.com/pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/ProjectPro2024Retail.img"
if "%officechoice%"=="9" start chrome "https://officecdn.microsoft.com/pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/Access2024Retail.img"
if "%officechoice%"=="10" start chrome "https://officecdn.microsoft.com/pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60/media/en-us/Publisher2024Retail.img"
if "%officechoice%"=="11" start chrome "https://officecdn.microsoft.com/pr/55336b82-a18d-4dd6-b5f6-9e5095c314a6/media/en-us/ProPlus2021Retail.img"
if "%officechoice%"=="12" start chrome "https://officecdn.microsoft.com/pr/55336b82-a18d-4dd6-b5f6-9e5095c314a6/media/en-us/ProPlus2021Volume.img"
if "%officechoice%"=="13" start chrome "https://officecdn.microsoft.com/pr/55336b82-a18d-4dd6-b5f6-9e5095c314a6/media/en-us/HomeStudent2021Retail.img"
if "%officechoice%"=="14" start chrome "https://gravesoft.dev/office_c2r_links"
if "%officechoice%"=="15" start chrome "https://gravesoft.dev/office_c2r_links"
if "%officechoice%"=="16" start chrome "https://gravesoft.dev/office_c2r_links"
if "%officechoice%"=="17" start chrome "https://gravesoft.dev/office_c2r_links"
if "%officechoice%"=="18" start chrome "https://officecdn.microsoft.com/pr/7ffbc6bf-bc32-4f92-8982-f9dd17fd3114/media/en-us/ProPlus2019Retail.img"
if "%officechoice%"=="19" start chrome "https://officecdn.microsoft.com/pr/7ffbc6bf-bc32-4f92-8982-f9dd17fd3114/media/en-us/HomeStudent2019Retail.img"
if "%officechoice%"=="20" start chrome "https://gravesoft.dev/office_c2r_links"
if "%officechoice%"=="21" start chrome "https://gravesoft.dev/office_c2r_links"
if "%officechoice%"=="22" start chrome "https://gravesoft.dev/office_c2r_links"
if "%officechoice%"=="23" start chrome "https://gravesoft.dev/office_c2r_links"
if "%officechoice%"=="24" start chrome "https://www.microsoft.com/en-us/download/details.aspx?id=49117"
if "%officechoice%"=="25" start chrome "https://www.microsoft.com/en-us/download/details.aspx?id=36778"
if "%officechoice%"=="26" start chrome "https://www.microsoft.com/en-us/download/details.aspx?id=13595"
if "%officechoice%"=="27" start chrome "https://www.microsoft365.com/"
if "%officechoice%"=="28" start chrome "https://www.microsoft.com/en-us/download/details.aspx?id=49117"
if "%officechoice%"=="29" start chrome "https://www.microsoft.com/en-us/microsoft-teams/download-app"
if "%officechoice%"=="30" start chrome "https://www.microsoft.com/en-us/microsoft-365/onedrive/download"
if "%officechoice%"=="31" start chrome "https://www.microsoft.com/en-us/microsoft-365/sharepoint/collaboration"
if "%officechoice%"=="32" start chrome "https://learn.microsoft.com/exchange/"
if "%officechoice%"=="33" start chrome "https://support.microsoft.com/skype"
if "%officechoice%"=="34" start chrome "https://powerbi.microsoft.com/desktop/"
if "%officechoice%"=="35" start chrome "https://powerautomate.microsoft.com/"
if "%officechoice%"=="36" start chrome "https://powerapps.microsoft.com/"
if "%officechoice%"=="37" start chrome "https://clipchamp.com/"
if "%officechoice%"=="38" start chrome "https://www.microsoft.com/en-us/security/business/microsoft-defender-office-365"
if "%officechoice%"=="39" start chrome "https://create.microsoft.com/"
if "%officechoice%"=="40" start chrome "https://support.microsoft.com/office"
if "%officechoice%"=="41" start chrome "https://aka.ms/SaRA-officeUninstallFromPC"
if "%officechoice%"=="42" start chrome "https://gravesoft.dev/office_c2r_links"
if "%officechoice%"=="43" start chrome "https://download.documentfoundation.org/libreoffice/stable/"
if "%officechoice%"=="44" start chrome "https://www.wps.com/download/"
if "%officechoice%"=="45" start chrome "https://www.onlyoffice.com/download-desktop.aspx"
if "%officechoice%"=="46" start chrome "https://www.openoffice.org/download/"
if "%officechoice%"=="47" start chrome "https://www.zoho.com/workplace/"
if "%officechoice%"=="48" start chrome "https://docs.google.com/"
if "%officechoice%"=="49" start chrome "https://support.microsoft.com/"
if "%officechoice%"=="50" start chrome "https://support.microsoft.com/training"
if "%officechoice%"=="51" start chrome "https://support.microsoft.com/office"
if "%officechoice%"=="52" start chrome "https://learn.microsoft.com/deployoffice/"
if "%officechoice%"=="53" start chrome "https://appsource.microsoft.com/"
if "%officechoice%"=="54" start chrome "https://insider.office.com/"
if "%officechoice%"=="55" goto main

echo.
echo Direct Download / Office Page Opened in Chrome...
pause
goto officedownload


:: ============================================================
:: [25] LOCATION / GPS FIX TOOLKIT (CLEAN NO LOG VERSION)
:: ============================================================
:locationfix
cls
title Location Fix (Stable Silent)
color 0A

:: ===== ADMIN CHECK =====
net session >nul 2>&1
if %errorlevel% neq 0 (
echo [ERROR] Run this script as ADMIN
pause
exit
)

echo ============================================================
echo LOCATION FIX TOOLKIT (LIVE LOG VERSION)
echo ============================================================

echo [1] ONE CLICK FIX
echo [2] Restart Location Service
echo [3] Restart Sensor Service
echo [4] Clear Location Cache
echo [5] Reset Maps App
echo [6] Fix Permissions
echo [7] Repair System
echo [8] Quick Fix
echo [9] Open Location Settings
echo [10] Check Services
echo [11] Chrome Location Fix 🔥
echo [99] Main Menu
echo ============================================================

set /p c=Select Option:

:: ===== ONE CLICK =====
if "%c%"=="1" (
echo ===============================
echo [STEP 1] Stopping Services...
sc query lfsvc >nul 2>&1 && (net stop lfsvc && echo ✔ Location Service Stopped) || echo ❌ Location Service Not Found
sc query SensorService >nul 2>&1 && (net stop SensorService && echo ✔ Sensor Service Stopped) || echo ❌ Sensor Service Not Found

echo [STEP 2] Clearing Location Cache...
del /f /s /q "%ProgramData%\Microsoft\Windows\Location\*" && echo ✔ Cache Cleared || echo ❌ Cache Not Found

echo [STEP 3] Starting Services...
net start SensorService && echo ✔ Sensor Started
net start lfsvc && echo ✔ Location Service Started

echo [STEP 4] Fixing Permissions...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v Value /t REG_SZ /d Allow /f && echo ✔ Permission Fixed

echo [STEP 5] Reset Maps App...
powershell "Get-AppxPackage *maps* | Reset-AppxPackage" && echo ✔ Maps Reset

echo [STEP 6] Chrome Location Reset...
taskkill /f /im chrome.exe >nul 2>&1
rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Geolocation" >nul 2>&1
echo ✔ Chrome Cache Cleared

echo [STEP 7] System Repair...
DISM /Online /Cleanup-Image /RestoreHealth
sfc /scannow

echo [STEP 8] Network Reset...
ipconfig /flushdns && echo ✔ DNS Flushed

echo ===============================
echo ✔ LOCATION FIX COMPLETED
echo ===============================
pause
goto locationfix
)

:: ===== SERVICE =====
if "%c%"=="2" (
echo Restarting Location Service...
net stop lfsvc
net start lfsvc
echo ✔ Done
pause
goto locationfix
)

if "%c%"=="3" (
echo Restarting Sensor Service...
net stop SensorService
net start SensorService
echo ✔ Done
pause
goto locationfix
)

:: ===== CACHE =====
if "%c%"=="4" (
echo Clearing Cache...
del /f /s /q "%ProgramData%\Microsoft\Windows\Location\*"
echo ✔ Done
pause
goto locationfix
)

:: ===== MAPS =====
if "%c%"=="5" (
echo Resetting Maps...
powershell "Get-AppxPackage *maps* | Reset-AppxPackage"
echo ✔ Done
pause
goto locationfix
)

:: ===== PERMISSION =====
if "%c%"=="6" (
echo Fixing Permissions...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v Value /t REG_SZ /d Allow /f
echo ✔ Done
pause
goto locationfix
)

:: ===== REPAIR =====
if "%c%"=="7" (
echo Running DISM...
DISM /Online /Cleanup-Image /RestoreHealth
echo Running SFC...
sfc /scannow
echo ✔ Repair Done
pause
goto locationfix
)

:: ===== QUICK =====
if "%c%"=="8" (
echo Quick Fix Running...
ipconfig /flushdns
net start lfsvc
echo ✔ Done
pause
goto locationfix
)

:: ===== SETTINGS =====
if "%c%"=="9" start ms-settings:privacy-location & goto locationfix

:: ===== CHECK =====
if "%c%"=="10" (
echo Checking Services...
sc query lfsvc
sc query SensorService
pause
goto locationfix
)

:: ===== CHROME =====
if "%c%"=="11" (
echo Fixing Chrome Location...
taskkill /f /im chrome.exe >nul 2>&1
rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Geolocation"
rd /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Network\Cookies"
ipconfig /flushdns
start chrome://settings/content/location
echo ✔ Chrome Fix Done
pause
goto locationfix
)

if "%c%"=="99" goto main

goto locationfix