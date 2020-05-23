echo off
title %deftitle%
net session >NUL 2>&1

if %errorlevel% neq 0 (

    echo WARNING: Some of the programs requires administrator rights 
	echo This batch program will still continue and run as regular user
	
	    pause
		set adminrights=noadmin
		goto preboot
		)
echo INFO: Administrator user detected!
echo This batch program will run in administrator mode
set adminrights=admin
pause
echo off
cls
goto preboot
rem LEGEND:
rem 1. BASIC COMMANDS:
rem CD: Displays the name of or changes the current directory.
rem CLS: Clears the screen.
rem COLOR: Sets the default console foreground and background colors.
rem ECHO: Displays messages, or turns command echoing on or off.
rem DATE: Displays or sets the date.
rem EXIT: Quits the CMD.EXE program (command interpreter).
rem TIME: Displays or sets the system time.
rem TITLE: Sets the window title for a CMD.EXE session.
cls
rem 2. CRITICAL COMPONENTS THAT RUN THE SCRIPT:
rem ATTRIB: Displays or changes file attributes.
rem DEL: Deletes one or more files.
rem DIR: Displays a list of files and subdirectories in a directory.
rem GOTO: Directs the Windows command interpreter to a labeled line in a 
rem batch program.
rem IF: Performs conditional processing in batch programs.
rem MOVE: Moves one or more files from one directory to another directory.
rem POPD: Restores the previous value of the current directory saved by 
rem PUSHD.
rem PUSHD: Saves the current directory then changes it.
rem RMDIR: Removes a directory.
rem SET: Displays, sets, or removes Windows environment variables.
rem TASKKILL: Kill or stop a running process or application.
rem VOL: Displays a disk volume label and serial number.
rem XCOPY: Copies files and directory trees.
cls

rem You can add custom options for your script
rem Pre-intro of the script

:preboot
echo off
cls
set deftitle=Command Prompt
set progtitle=HugotAV ULTRA Edition
set progver=5.1 (Git 4.1)
color f0
cd %cd%
pushd %cd%
cls
Title CedPRO %progtitle% %progver% - PRE-KILLING MODE
taskkill /f /im C:\Windows\System32\wscript.exe /t
taskkill /f /im C:\Windows\System32\cscript.exe /t
TASKKILL /F /IM wscript.exe /T
TASKKILL /F /IM cscript.exe /T
TASKKILL /F /IM winmgr.exe /T
goto boot

rem This is your startup screen
:boot
cls
Title CedPRO %progtitle% %progver% - STARTING SCRIPT
cls
date /t
time /t
echo Make sure use this on External Devices only!
echo.
echo.
echo.
echo This is running DUMB if this have been run through ADMIN mode
echo.
echo CedMIX Productions
echo.
echo Presents:
echo.
echo CedPRO Hugot Batch Virus REMOVER %progver%
echo The most trusted batch script virus remover with hugot lines
echo Copyright (c) CedMIX PRODUCTIONS 2016-2018
echo.
echo CedMIX Productions Agreement
echo This can be distributed through the GPL 2.0 license
echo That means this an OPEN SOURCE and can be distributed
echo freely without any charges and any modification of your
echo own will NOT Guarantee your warranty due to misconfigured
echo code in your script.
echo.
echo Contact me:
echo email: tg15ced.paltep@gmail.com
echo Social Media (just search): Cedie Paltep
echo.
echo PRESS ANYTHING TO CONTINUE!!!!
pause
goto license

rem loads GPL 2.0
:license
cls
Title CedPRO %progtitle% %progver% - License Agreement
echo Use the SCROLL bar to read license
echo. 
echo  Please note!
echo DUE TO THIS BATCH PROGRAM IS LITERALLY FREE OF CHARGE, THERE IS NO WARRANTY
ECHO FOR THE PROGRAM, TO THE EXTENT PERMITTED BY LAW.
ECHO CEDMIX PRODUCTIONS WILL HAVE NO ADDITONAL CORRECTION NEEDED IN CASE YOU NEED
ECHO TO CUSTOMIZE IT FOR YOUR OWN PERSONAL USE.
echo.
echo.
choice /c YN /m "Do you agree to the license?"
if errorlevel 1 goto chkdir
if errorlevel 2 goto devs
cls

rem Checks if you're running on the C:\Users and C:\Windows\System32 directory
:chkdir
Title CedPRO %progtitle% %progver% - Checking runtime directory
echo Checking your directory to make sure you arn't running this in the C:\Users directory
echo This will prevent you from deleting icons by accident
for /f %%i in ('dir %cd%^|find "%systemdrive%"') do set sosstop=stopme&& set vardir=home
for /f %%i in ('dir %cd%^|find "%systemdrive%\Users\%username%"') do set sosstop=stopme&& set vardir=home
for /f %%i in ('dir %cd%^|find "%systemdrive%\Windows"') do set sosstop=stopme&& set vardir=home
if "%vardir%"=="home" (goto stopnow) ^
else (goto osdetection)


rem PLEASE STOP RIGHT HERE!
:stopnow
cls
Title CedPRO %progtitle% %progver% - Warning: CRITICAL DIRECTORY DETECTED!
echo It is NOT advisable to run this in %cd% because your DESKTOP icons/Windows files will be modified/deleted by accident
echo Exiting batch program....
pause
goto devs


rem Detects what OS you have
:osdetection
cls
for /f %%i in ('ver^|find "5.1."') do set OS=Windows XP&& set osrecognized=1
for /f %%i in ('ver^|find "5.2."') do set OS=Windows 2003&& set osrecognized=1
for /f %%i in ('ver^|find "6.0."') do set OS=Windows Vista&& set osrecognized=1
for /f %%i in ('ver^|find "6.1."') do set OS=Windows 7&& set osrecognized=1
for /f %%i in ('ver^|find "6.2."') do set OS=Windows 8&& set osrecognized=1
for /f %%i in ('ver^|find "6.3."') do set OS=Windows 8.1&& set osrecognized=2
for /f %%i in ('ver^|find "10."')  do set OS=Windows 10&& set osrecognized=2
if "%osrecognized%"=="2" (goto chkupdatemetro) ^
else (goto chkupdatelegacy)

rem Updater for windows 8.x /10
:chkupdatemetro
cls
Title CedPRO %progtitle% %progver% - Checking updates (Windows 8.x/10 mode)
echo Checking updates from %computername%
echo Checking D:\Batch_files\hugotavultra.bat
if exist "D:\Batch_files\hugotavultra.bat" (goto updatetimemetro) ^
else (goto notexist)

:updatetimemetro
cls
Title CedPRO %progtitle% %progver% - Copying update... (Windows 8.x/10 mode)
echo Copying update...
xcopy D:\Batch_files\hugotavultra.bat "%cd%" /q
Title CedPRO %progtitle% %progver% - Update Complete (Windows 8.x/10 mode)
echo Update complete!
echo You need to restart to apply changes...
echo Close this window and open it again
echo If no errors, Press any key to start HugotAV...
pause
goto fakestart_0

rem Updater for Windows 7 and lower
:chkupdatelegacy
cls
Title CedPRO %progtitle% %progver% - Checking updates (LEGACY mode)
echo Checking updates from %computername%
echo Checking D:\Batch_files\hugotavultra.bat
if exist "D:\Batch_files\hugotavultra.bat" (goto updatelegacy) ^
else (goto notexist)

:updatelegacy
cls
Title CedPRO %progtitle% %progver% - Copying update... (LEGACY mode)
echo Copying update...
xcopy D:\Batch_files\hugotavultra.bat %cd% /q
Title CedPRO %progtitle% %progver% - Update Complete (LEGACY mode)
echo Update complete!
echo You need to restart to apply changes...
echo Close this window and open it again
echo If no errors, Press any key to start HugotAV...
pause
goto fakestart_0

rem If that your update directory dosn't exist
:notexist
cls
Title CedPRO %progtitle% %progver% - UNAVAILABLE!
echo Sorry, update can't be found on current system...
echo Please try again later...
echo Anyways, you can still use it!
echo Press any key to Hugot Plus...
pause
goto fakestart_0

rem This two line code will have the loop started
:fakestart_0
cls
goto start_code

rem Start of the code
:start_code
Title CedPRO %progtitle% %progver% - Notice
cls
echo NOTICE:
echo This virus remover has bugs... Please proceed with caution.
ECHO Do NOT run on C:\Users\%username% as it removes shortcuts (THAT MEANS DESKTOP ICONS)!
echo.
echo What's new:
echo. 
echo A. NOW HAD GUI! (Options, see below)
echo 1. Had the option to choose to Check and Repair the external drive (USER OPTION)
echo.
echo 2. Scan drive for Viruses (e.g. Shortcuts and autoplay issues)
echo.
echo 3. Defrag (administrator rights required!) [now autodetects whether the user runs on higher permissions]
echo.
echo 4. Exit this batch program
echo.
echo B. NOW HAD C:\Users and C:\Windows DETECTION!
echo That means:
echo 1. Detects that specific location (C:\Users and C:\Windows)
echo.
echo 2. Prevents it from deleting your desktop icons
echo.
echo 3. Automatically stops if that directory is detected
echo.
echo C. Defragger is now included
echo.
echo It means you can actually defrag your usb device/external HDD/SDD drive by choosing the correct settings
echo.
echo Windows 10 exclusive:
echo.
echo It includes trim, proper disk optimization and more!
pause
cls
goto veradmin

rem checks admin rights
:veradmin
cls
if "%adminrights%"=="admin" (goto option_admin) ^
else (goto option_noadmin)

rem admin mode
:option_admin
cls
Title CedPRO %progtitle% %progver% - Select option! (admin)
echo Now choose what you want to do. 
echo 1) Repair EXTERNAL DRIVE (Chkdisk)
echo 2) Start Scan and remove shortcuts (if ran, it may cause system instability)
echo 3) Defrag external device (administrator rights required)
echo 4) Exit this batch program
set input=
set /p input= Choice: 
if %input%==1 goto checkdisk if NOT goto fakestart_0
if %input%==2 goto chvol if NOT goto fakestart_0
if %input%==3 goto defrag if NOT goto fakestart_0
if %input%==4 goto Devs if NOT goto fakestart_0
Title CedPRO %progtitle% %progver% - Checking Volume
goto chvol


:option_noadmin
cls
Title CedPRO %progtitle% %progver% - Select option! (non-admin)
echo Now choose what you want to do. 
echo NOTE: NO DEFRAG COMMAND
echo 1) Repair EXTERNAL DRIVE (Chkdisk)
echo 2) Start Scan remove shortcuts (if ran, it may cause system instability)
echo 3) Exit this batch program
set input=
set /p input= Choice: 
if %input%==1 goto checkdisk if NOT goto fakestart_0
if %input%==2 goto chvol if NOT goto fakestart_0
if %input%==3 goto Devs if NOT goto fakestart_0
Title CedPRO %progtitle% %progver% - Checking Volume
goto chvol

rem Defrag command
:defrag
for /f %%i in ('ver^|find "10."')  do set OS=Windows 10&& set osrecognized=3
if "%osrecognized%"=="3" (goto defrag1) ^
else (goto defrag2)
rem Defrag for Windows 10
:defrag1
Title CedPRO %progtitle% %progver% - Select method defrag (Windows 10 mode)
echo Select defragging method!
echo 1) Hard Disk MODE
echo 2) SDD MODE
set dmethod=
set /p demethod= Select method:
if %demethod%==1 goto HDD if NOT goto defrag
if %demethod%==2 goto SDD if NOT goto defrag
rem HDD defrag
:HDD
Title CedPRO %progtitle% %progver% - Defragger (HDD mode)
echo Defragging HDD...
defrag %cd% /u /v
echo DISK checking complete
pause
goto veradmin
rem SDD defrag
:SDD
cls
Title CedPRO %progtitle% %progver% - Defragger (SDD mode) (select option)
echo Select SDD defragging method!
echo 1) Trim (recommended for SSD)
echo 2) Optimized defrag  (recommended for USB drives)
set sddmethod=
set /p sddemethod= Select method:
if %sddemethod%==1 goto trim if NOT goto SSD
if %sddemethod%==2 goto ofrag if NOT goto SSD
:trim
rem trim method
cls
Title CedPRO %progtitle% %progver% - Defragger (SDD mode) (Trim mode)
defrag %cd% /l
echo DISK checking complete
pause
goto veradmin
:ofrag
rem optimized defrag for usb drives
cls
Title CedPRO %progtitle% %progver% - Defragger (SDD mode) (Optimized USB mode)
defrag %cd% /u /v /o
echo DISK checking complete
pause
goto veradmin
rem Defrag for Windows 7 and lower
:defrag2
cls
Title CedPRO %progtitle% %progver% - Defragger (LEGACY MODE)
echo defragging...
defrag %cd% /u /v
echo DISK checking complete
pause
goto veradmin

rem Loads the Check Disk Command
:checkdisk
Title CedPRO %progtitle% %progver% - Checking Disk
echo Checking EXTERNAL DEVICE...
chkdsk
echo DISK checking complete
pause
goto veradmin


rem Checks volume's label and serial number
:chvol
cls
Title CedPRO %progtitle% %progver% - Verifying Device
echo Checking External Device......
echo.
echo.
echo.
echo Please wait while verifying your volume label and serial number.....
vol
echo Volume Verification complete.
pause
Title CedPRO %progtitle% %progver% - Welcome
goto hi

rem This where the magic happens (working end)
:hi
cls
echo.
echo.
echo  Recommend for use in any PORTABLE STORAGE DEVICES (e.g USB DEVICES)
echo.
echo  If this file is on your Desktop it will badly affect to your Desktop Icons !!!
echo  *Your shortcuts in your desktop*
echo.
echo.
echo.
pause
Title CedPRO %progtitle% %progver% - Initializing cleanup
goto rmcrap


rem This will be your custom filter for malicious files
:rmcrap
cls
echo Clensing process will take few seconds..........
echo Please wait..........
echo.
echo.
echo.
echo Removing Bloatware,Shortcuts,Everything
del Drive.bat
del xuhjvihhox.vbs
del *lnk
del fypuas.exe
del fypuasx.exe
del AutoIT3.exe
del *lnk
del dekstop.ini
rd Skypee
del *lnk
goto autorun

rem Searches for autorun.inf
:autorun
if exist "%cd%\autorun.inf" (goto loadinf) ^
else (goto noinf)

rem Loads the contents of autorun.inf
:loadinf
title CedPRO %progtitle% %progver% - Verify autorun.inf
attrib -s -r autorun.inf /s /d
cls
echo Loading contents of autorun.inf:
type autorun.inf
echo.
echo Are you sure do you want to delete this file?
del /p autorun.inf
echo Action completed successfully!
pause
goto killall

rem skips if the autorun.inf dosn't exist
:noinf
title CedPRO %progtitle% %progver% - NO autorun.inf
echo SORRY! THIS FILE (autorun.inf) DOES NOT EXIST!
pause
goto killall

rem This will KILL programs of your choice
:killall
title CedPRO %progtitle% %progver% - Killing RIDICULOUS malware
cls
echo Killing unessary bloatware
taskkill /f /im C:\Windows\System32\wscript.exe /t
taskkill /f /im C:\Windows\System32\cscript.exe /t
TASKKILL /F /IM wscript.exe /T
TASKKILL /F /IM cscript.exe /T
TASKKILL /F /IM winmgr.exe /T
goto verify

rem Check if one of your files are malicious or not
:verify
title CedPRO %progtitle% %progver% - Verify us files!
cls
echo Verify if these are your files or viruses
echo Javascripts:
dir /w *js
echo.
echo Visual Basic Scripts:
dir /w *vbs
echo.
echo Batch files
dir /w *bat
echo.
echo Command lines
dir /w *cmd
echo Executable files
dir /w *exe
pause
goto unhide

rem This will unhide your files
:unhide
Title CedPRO %progtitle% %progver% - Unhiding files
cls
echo  Removing CRAPWARE...    Complete.
echo.
echo.
echo.
echo  Changing properties to be shown in explorer......
echo  This process will take few minutes..........
echo.
echo  Please wait.........
attrib /s /d -s -h -r *.*
attrib +h "$RECYCLE.BIN"
Title CedPRO %progtitle% %progver% - Unhide Complete!
goto done

rem Actions are complete
:done
cls
echo  CedPRO %progtitle% %progver% Virus Remover finishes its Job.........
echo.
echo  Your Storage Device is OK now
echo.
echo  Check your USB device for unknown files and folders.
echo  If there are weird files/folders, delete them.
echo.
echo Note:
echo Check your Windows' Startup in MSCONFIG (7 and below) or TASKMGR (8.x and up)
echo Try to DISABLING any weird or malicious startup items (if any)
echo If you KNOW where the viruses hide.....
echo DELETE THEM FROM EXTICTION!!!!!
echo Preventing them from spreading to other devices
echo.
echo  Cleaning Process Complete.
echo.
echo  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo  ++                                 TASK COMPLETE                                    ++
echo  ++                                                                                  ++
echo  ++                    *** Storage Media is Ready to Go! ***                        ++
echo  ++            (Thank goodness you never deleted System32 and SysWow64)              ++
echo  ++      (Because if you're such a moron, you will never ever believe forever!)      ++
echo  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
pause
goto devs

rem Future plans for the script!
:devs
Title CedPRO %progtitle% %progver% - Updates SOON!
cls
ECHO M
ECHO O
ECHO R
ECHO E
ECHO.
ECHO U
ECHO P
ECHO D
ECHO A
ECHO T
ECHO E
ECHO S
ECHO.
ECHO C
ECHO O
ECHO M
ECHO I
ECHO N
ECHO G
ECHO.
ECHO S
ECHO O
ECHO O
ECHO N
ECHO !
ECHO.
echo Please update me for further updates...
echo Made by Cedie Paltep (tg15ced.paltep@gmail.com)
echo An OPEN-SOURCED Project to Github
echo Distribute it as FREE OF CHARGE as part of the GPL 2.0
echo Check readme.md in the repository
echo Press any key to exit!
pause
title %deftitle%
cls
