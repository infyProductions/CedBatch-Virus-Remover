echo off
title %deftitle%
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
set progtitle=HugotAV
set progver=3.5 (Git 2.0)
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
echo Copyright (c) CedMIX PRODUCTIONS 2016-2017
echo.
echo This program is free software; you can redistribute it and/or modify
echo it under the terms of the GNU General Public License as published by
echo the Free Software Foundation; either version 3 of the License, or
echo (at your option) any later version.
echo.
echo This program is distributed in the hope that it will be useful,
echo but WITHOUT ANY WARRANTY; without even the implied warranty of
echo MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
echo GNU General Public License for more details.
echo.
echo You should have received a copy of the GNU General Public License along
echo with this program; if not, write to the Free Software Foundation, Inc.,
echo 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
echo.
echo Contact me:
echo email: tg15ced.paltep@gmail.com
echo Social Media (just search): Cedie Paltep
echo.
echo PRESS ANYTHING TO CONTINUE!!!!
pause
goto license

rem loads GPL 3.0
:license
cls
Title CedPRO %progtitle% %progver% - GNU LGPL 3.0 (2007)
echo Use the SCROLL bar to read license
echo                  GNU LESSER GENERAL PUBLIC LICENSE
echo                       Version 3, 29 June 2007
echo.
echo  Copyright (C) 2007 Free Software Foundation, Inc. "<http://fsf.org/>"
echo  Everyone is permitted to copy and distribute verbatim copies
echo  of this license document, but changing it is not allowed.
echo.
echo.
echo  This version of the GNU Lesser General Public License incorporates
echo the terms and conditions of version 3 of the GNU General Public
echo License, supplemented by the additional permissions listed below.
echo.
echo  0. Additional Definitions.
echo.
echo  As used herein, "this License" refers to version 3 of the GNU Lesser
echo General Public License, and the "GNU GPL" refers to version 3 of the GNU
echo General Public License.
echo.
echo  "The Library" refers to a covered work governed by this License,
echo other than an Application or a Combined Work as defined below.
echo.
echo  An "Application" is any work that makes use of an interface provided
echo by the Library, but which is not otherwise based on the Library.
echo Defining a subclass of a class defined by the Library is deemed a mode
echo of using an interface provided by the Library.
echo.
echo  A "Combined Work" is a work produced by combining or linking an
echo Application with the Library.  The particular version of the Library
echo with which the Combined Work was made is also called the "Linked
echo Version".
echo.
echo  The "Minimal Corresponding Source" for a Combined Work means the
echo Corresponding Source for the Combined Work, excluding any source code
echo for portions of the Combined Work that, considered in isolation, are
echo based on the Application, and not on the Linked Version.
echo.
echo   The "Corresponding Application Code" for a Combined Work means the
echo object code and/or source code for the Application, including any data
echo and utility programs needed for reproducing the Combined Work from the
echo Application, but excluding the System Libraries of the Combined Work.
echo.
echo  1. Exception to Section 3 of the GNU GPL.
echo.
echo  You may convey a covered work under sections 3 and 4 of this License
echo without being bound by section 3 of the GNU GPL.
echo.
echo   2. Conveying Modified Versions.
echo.
echo  If you modify a copy of the Library, and, in your modifications, a
echo facility refers to a function or data to be supplied by an Application
echo that uses the facility (other than as an argument passed when the
echo facility is invoked), then you may convey a copy of the modified
echo version:
echo.
echo   a) under this License, provided that you make a good faith effort to
echo   ensure that, in the event an Application does not supply the
echo   function or data, the facility still operates, and performs
echo   whatever part of its purpose remains meaningful, or
echo.
echo   b) under the GNU GPL, with none of the additional permissions of
echo   this License applicable to that copy.
echo.
echo  3. Object Code Incorporating Material from Library Header Files.
echo.
echo  The object code form of an Application may incorporate material from
echo a header file that is part of the Library.  You may convey such object
echo code under terms of your choice, provided that, if the incorporated
echo material is not limited to numerical parameters, data structure
echo layouts and accessors, or small macros, inline functions and templates
echo (ten or fewer lines in length), you do both of the following:
echo.
echo   a) Give prominent notice with each copy of the object code that the
echo   Library is used in it and that the Library and its use are
echo   covered by this License.
echo.
echo   b) Accompany the object code with a copy of the GNU GPL and this license
echo   document.
echo
echo  4. Combined Works.
echo.
echo  You may convey a Combined Work under terms of your choice that,
echo taken together, effectively do not restrict modification of the
echo portions of the Library contained in the Combined Work and reverse
echo engineering for debugging such modifications, if you also do each of
echo the following:
echo.
echo   a) Give prominent notice with each copy of the Combined Work that
echo   the Library is used in it and that the Library and its use are
echo   covered by this License.
echo.
echo   b) Accompany the Combined Work with a copy of the GNU GPL and this license
echo   document.
echo.
echo   c) For a Combined Work that displays copyright notices during
echo   execution, include the copyright notice for the Library among
echo   these notices, as well as a reference directing the user to the
echo   copies of the GNU GPL and this license document.
echo.
echo   d) Do one of the following:
echo.
echo       0) Convey the Minimal Corresponding Source under the terms of this
echo       License, and the Corresponding Application Code in a form
echo       suitable for, and under terms that permit, the user to
echo       recombine or relink the Application with a modified version of
echo       the Linked Version to produce a modified Combined Work, in the
echo       manner specified by section 6 of the GNU GPL for conveying
echo       Corresponding Source.
echo.
echo       1) Use a suitable shared library mechanism for linking with the
echo       Library.  A suitable mechanism is one that (a) uses at run time
echo       a copy of the Library already present on the user's computer
echo       system, and (b) will operate properly with a modified version
echo       of the Library that is interface-compatible with the Linked
echo       Version.
echo
echo   e) Provide Installation Information, but only if you would otherwise
echo   be required to provide such information under section 6 of the
echo   GNU GPL, and only to the extent that such information is
echo   necessary to install and execute a modified version of the
echo   Combined Work produced by recombining or relinking the
echo   Application with a modified version of the Linked Version. (If
echo   you use option 4d0, the Installation Information must accompany
echo   the Minimal Corresponding Source and Corresponding Application
echo   Code. If you use option 4d1, you must provide the Installation
echo   Information in the manner specified by section 6 of the GNU GPL
echo   for conveying Corresponding Source.)
echo.
echo  5. Combined Libraries.
echo.
echo  You may place library facilities that are a work based on the
echo Library side by side in a single library together with other library
echo facilities that are not Applications and are not covered by this
echo License, and convey such a combined library under terms of your
echo choice, if you do both of the following:
echo.
echo   a) Accompany the combined library with a copy of the same work based
echo   on the Library, uncombined with any other library facilities,
echo   conveyed under the terms of this License.
echo.
echo   b) Give prominent notice with the combined library that part of it
echo   is a work based on the Library, and explaining where to find the
echo   accompanying uncombined form of the same work.
echo.
echo  6. Revised Versions of the GNU Lesser General Public License.
echo.
echo  The Free Software Foundation may publish revised and/or new versions
echo of the GNU Lesser General Public License from time to time. Such new
echo versions will be similar in spirit to the present version, but may
echo differ in detail to address new problems or concerns.
echo.
echo  Each version is given a distinguishing version number. If the
echo Library as you received it specifies that a certain numbered version
echo of the GNU Lesser General Public License "or any later version"
echo applies to it, you have the option of following the terms and
echo conditions either of that published version or of any later version
echo published by the Free Software Foundation. If the Library as you
echo received it does not specify a version number of the GNU Lesser
echo General Public License, you may choose any version of the GNU Lesser
echo General Public License ever published by the Free Software Foundation.
echo.
echo  If the Library as you received it specifies that a proxy can decide
echo whether future versions of the GNU Lesser General Public License shall
echo apply, that proxy's public statement of acceptance of any version is
echo permanent authorization for you to choose that version for the
echo Library.
echo.
choice /c YN /m "Do you agree to the license?"
if errorlevel 1 goto osdetection
if errorlevel 2 goto devs
cls
goto osdetection

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

rem Updater for Windows (tm) Metro Edition
:chkupdatemetro
cls
Title CedPRO %progtitle% %progver% - Checking updates (Windows 10 mode)
echo Checking updates from %computername%
echo Checking D:\Batch_files\hugotav.bat
if exist "D:\Batch_files\hugotav.bat" (goto updatetimemetro) ^
else (goto notexist)

:updatetimemetro
cls
Title CedPRO %progtitle% %progver% - Copying update... (Windows 10 mode)
echo Copying update...
xcopy D:\Batch_files\hugotav.bat "%cd%" /q
Title CedPRO %progtitle% %progver% - Update Complete (Windows 10 mode)
echo Update complete!
echo You need to restart to apply changes...
echo Close this command prompt and open the batch file again.
echo Press any key to start Hugot Plus...
pause
goto warn

rem Updater for legacy versions of Windows (tm)
:chkupdatelegacy
cls
Title CedPRO %progtitle% %progver% - Checking updates (LEGACY mode)
echo Checking updates from %computername%
echo Checking D:\Batch_files\%progtitle%.bat
if exist "D:\Batch_files\%progtitle%.bat" (goto updatelegacy) ^
else (goto notexist)

:updatelegacy
cls
Title CedPRO %progtitle% %progver% - Copying update... (LEGACY mode)
echo Copying update...
xcopy D:\Batch_files\hugotav.bat %cd% /q
Title CedPRO %progtitle% %progver% - Update Complete (LEGACY mode)
echo Update complete!
echo You need to restart to apply changes...
echo Close this command prompt and open the batch file again.
echo Press any key to start Hugot Plus...
pause
goto warn

rem If that your update directory dosn't exist
:notexist
cls
Title CedPRO %progtitle% %progver% - UNAVAILABLE!
echo Sorry, update can't be found on current system...
echo Please try again later...
echo Anyways, you can still use it!
echo Press any key to Hugot Plus...
pause
goto warn

rem Warning about bugs!
:warn
Title CedPRO %progtitle% %progver% - Warning
cls
ECHO Feeling ko pag nasasaktan:
echo BRAIN:
echo MOVE-ON
echo HEART:
echo HOLD ON
echo TIYAN:
echo KAON
echo.
echo NOTICE:
echo This virus remover has bugs... Please proceed with caution.
ECHO Do NOT run on C:\Users\%username% as it removes shortcuts (THAT MEANS DESKTOP ICONS)!
echo.
echo What's new:
echo *NEW tweaks in the source code
echo *Update from move to robocopy command due to folder copy errors.
echo *Updated License to LGPL 3.0 (2007)
pause
Title CedPRO %progtitle% %progver% - Checking Volume
goto chvol

rem Checks volume's label and serial number
:chvol
cls
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
echo  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo  ++                              P R O M O T I O N  !                        ++
echo  ++                                                                          ++
echo  ++                 ***         NAGKATULUYAN NA KAYO!          ***           ++
echo  ++                               (Naging kayo na!)                          ++
echo  ++                                  (hahahaha)                              ++
echo  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.
echo  Recommend for use in any PORTABLE STORAGE DEVICES (e.g USB DEVICES)
echo.
echo  If this file is on your Desktop it will badly affect to your Desktop Icons !!!
echo  *Your shortcuts in your desktop*
echo.
echo.
echo.
echo  CedPRO Hugot Virus Remover is going to repair your Storage Device...
echo.
pause
Title CedPRO %progtitle% %progver% - Removing ALL PAASANG VIRUSES/WORMS!
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
del "%cd%\Drive\*js
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

remTypes the contents of autorun.inf
:autorun
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
echo.
echo.
echo.
echo When you love someone, you express your feelings to your love one.
echo #SpreadTheLove
echo #Nafall
echo #Nasaktan
echo #Nag move-on
echo #NagingMasaya!
echo.
attrib /s /d -s -h -r *.*
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
echo  ++                                                                          ++
echo  ++                                                                          ++
echo  ++                    *** USB DEVICE is Ready to Go! ***                    ++
echo  ++                            (YES MAY FOREVER!)                            ++
echo  ++                             (ALONE LANG!)                                ++
echo  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
pause
goto msg1

rem NOTE: You can add custom Hugot lines, Quotes or Memes of your choice
:msg1
Title CedPRO %progtitle% %progver% - Thanks for using!
cls
popd
echo Read ME :)
echo Closing traces....
echo.
echo Hi Friend!
echo.
echo #FriendZoned:(
echo.
echo FRIENDZONED is the new BUSTED ;(
echo.
echo NAPAKASAKIT!
echo.
echo HUHUHUHU :(
pause
goto devs

rem Future plans for the script!
:devs
Title CedPRO %progtitle% %progver% - Update coming soon!
cls
ECHO M
ECHO O
ECHO R
ECHO E
ECHO.
ECHO H
ECHO U
ECHO G
ECHO O
ECHO T
ECHO /
ECHO M
ECHO E
ECHO M
ECHO E
ECHO.
ECHO L
ECHO I
ECHO N
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
echo Distribute it as FREE OF CHARGE as part of the LGPL 3.0
echo Check readme.md in the repository
echo Press any key to exit!
pause
title %deftitle%
cls
