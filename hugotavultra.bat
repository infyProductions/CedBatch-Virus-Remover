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
set progtitle=HugotAV ULTRA Edition
set progver=4.6 (Git 3.3)
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
Title CedPRO %progtitle% %progver% - GNU GPL 2.0
echo Use the SCROLL bar to read license
echo. 
echo                    GNU GENERAL PUBLIC LICENSE
echo   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
echo.
echo  0. This License applies to any program or other work which contains
echo a notice placed by the copyright holder saying it may be distributed
echo under the terms of this General Public License.  The "Program", below,
echo refers to any such program or work, and a "work based on the Program"
echo means either the Program or any derivative work under copyright law:
echo that is to say, a work containing the Program or a portion of it,
echo either verbatim or with modifications and/or translated into another
echo language.  (Hereinafter, translation is included without limitation in
echo the term "modification".)  Each licensee is addressed as "you".
echo.
echo Activities other than copying, distribution and modification are not
echo covered by this License; they are outside its scope.  The act of
echo running the Program is not restricted, and the output from the Program
echo is covered only if its contents constitute a work based on the
echo Program (independent of having been made by running the Program).
echo Whether that is true depends on what the Program does.
echo.
echo  1. You may copy and distribute verbatim copies of the Program's
echo source code as you receive it, in any medium, provided that you
echo conspicuously and appropriately publish on each copy an appropriate
echo copyright notice and disclaimer of warranty; keep intact all the
echo notices that refer to this License and to the absence of any warranty;
echo and give any other recipients of the Program a copy of this License
echo along with the Program.
echo.
echo You may charge a fee for the physical act of transferring a copy, and
echo you may at your option offer warranty protection in exchange for a fee.
echo.
echo  2. You may modify your copy or copies of the Program or any portion
echo of it, thus forming a work based on the Program, and copy and
echo distribute such modifications or work under the terms of Section 1
echo above, provided that you also meet all of these conditions:
echo.
echo    a) You must cause the modified files to carry prominent notices
echo    stating that you changed the files and the date of any change.
echo.
echo    b) You must cause any work that you distribute or publish, that in
echo    whole or in part contains or is derived from the Program or any
echo    part thereof, to be licensed as a whole at no charge to all third
echo    parties under the terms of this License.
echo.
echo    c) If the modified program normally reads commands interactively
echo    when run, you must cause it, when started running for such
echo    interactive use in the most ordinary way, to print or display an
echo    announcement including an appropriate copyright notice and a
echo    notice that there is no warranty (or else, saying that you provide
echo    a warranty) and that users may redistribute the program under
echo    these conditions, and telling the user how to view a copy of this
echo    License.  (Exception: if the Program itself is interactive but
echo    does not normally print such an announcement, your work based on
echo    the Program is not required to print an announcement.)
echo.
echo These requirements apply to the modified work as a whole.  If
echo identifiable sections of that work are not derived from the Program,
echo and can be reasonably considered independent and separate works in
echo themselves, then this License, and its terms, do not apply to those
echo sections when you distribute them as separate works.  But when you
echo distribute the same sections as part of a whole which is a work based
echo on the Program, the distribution of the whole must be on the terms of
echo this License, whose permissions for other licensees extend to the
echo entire whole, and thus to each and every part regardless of who wrote it.
echo.
echo Thus, it is not the intent of this section to claim rights or contest
echo your rights to work written entirely by you; rather, the intent is to
echo exercise the right to control the distribution of derivative or
echo collective works based on the Program.
echo.
echo In addition, mere aggregation of another work not based on the Program
echo with the Program (or with a work based on the Program) on a volume of
echo a storage or distribution medium does not bring the other work under
echo the scope of this License.
echo.
echo  3. You may copy and distribute the Program (or a work based on it,
echo under Section 2) in object code or executable form under the terms of
echo Sections 1 and 2 above provided that you also do one of the following:
echo.
echo    a) Accompany it with the complete corresponding machine-readable
echo    source code, which must be distributed under the terms of Sections
echo    1 and 2 above on a medium customarily used for software interchange; or,
echo.
echo    b) Accompany it with a written offer, valid for at least three
echo    years, to give any third party, for a charge no more than your
echo    cost of physically performing source distribution, a complete
echo    machine-readable copy of the corresponding source code, to be
echo    distributed under the terms of Sections 1 and 2 above on a medium
echo    customarily used for software interchange; or,
echo.
echo    c) Accompany it with the information you received as to the offer
echo    to distribute corresponding source code.  (This alternative is
echo    allowed only for noncommercial distribution and only if you
echo    received the program in object code or executable form with such
echo    an offer, in accord with Subsection b above.)
echo.
echo The source code for a work means the preferred form of the work for
echo making modifications to it.  For an executable work, complete source
echo code means all the source code for all modules it contains, plus any
echo associated interface definition files, plus the scripts used to
echo control compilation and installation of the executable.  However, as a
echo special exception, the source code distributed need not include
echo anything that is normally distributed (in either source or binary
echo form) with the major components (compiler, kernel, and so on) of the
echo operating system on which the executable runs, unless that component
echo itself accompanies the executable.
echo.
echo If distribution of executable or object code is made by offering
echo access to copy from a designated place, then offering equivalent
echo access to copy the source code from the same place counts as
echo distribution of the source code, even though third parties are not
echo compelled to copy the source along with the object code.
echo.
echo   4. You may not copy, modify, sublicense, or distribute the Program
echo except as expressly provided under this License.  Any attempt
echo otherwise to copy, modify, sublicense or distribute the Program is
echo void, and will automatically terminate your rights under this License.
echo However, parties who have received copies, or rights, from you under
echo this License will not have their licenses terminated so long as such
echo parties remain in full compliance.
echo.
echo   5. You are not required to accept this License, since you have not
echo signed it.  However, nothing else grants you permission to modify or
echo distribute the Program or its derivative works.  These actions are
echo prohibited by law if you do not accept this License.  Therefore, by
echo modifying or distributing the Program (or any work based on the
echo Program), you indicate your acceptance of this License to do so, and
echo all its terms and conditions for copying, distributing or modifying
echo the Program or works based on it.
echo.
echo   6. Each time you redistribute the Program (or any work based on the
echo Program), the recipient automatically receives a license from the
echo original licensor to copy, distribute or modify the Program subject to
echo these terms and conditions.  You may not impose any further
echo restrictions on the recipients' exercise of the rights granted herein.
echo You are not responsible for enforcing compliance by third parties to
echo this License.
echo.
echo   7. If, as a consequence of a court judgment or allegation of patent
echo infringement or for any other reason (not limited to patent issues),
echo conditions are imposed on you (whether by court order, agreement or
echo otherwise) that contradict the conditions of this License, they do not
echo excuse you from the conditions of this License.  If you cannot
echo distribute so as to satisfy simultaneously your obligations under this
echo License and any other pertinent obligations, then as a consequence you
echo may not distribute the Program at all.  For example, if a patent
echo license would not permit royalty-free redistribution of the Program by
echo all those who receive copies directly or indirectly through you, then
echo the only way you could satisfy both it and this License would be to
echo refrain entirely from distribution of the Program.
echo.
echo If any portion of this section is held invalid or unenforceable under
echo any particular circumstance, the balance of the section is intended to
echo apply and the section as a whole is intended to apply in other
echo circumstances.
echo.
echo It is not the purpose of this section to induce you to infringe any
echo patents or other property right claims or to contest validity of any
echo such claims; this section has the sole purpose of protecting the
echo integrity of the free software distribution system, which is
echo implemented by public license practices.  Many people have made
echo generous contributions to the wide range of software distributed
echo through that system in reliance on consistent application of that
echo system; it is up to the author/donor to decide if he or she is willing
echo to distribute software through any other system and a licensee cannot
echo impose that choice.
echo.
echo This section is intended to make thoroughly clear what is believed to
echo be a consequence of the rest of this License.
echo.
echo   8. If the distribution and/or use of the Program is restricted in
echo certain countries either by patents or by copyrighted interfaces, the
echo original copyright holder who places the Program under this License
echo may add an explicit geographical distribution limitation excluding
echo those countries, so that distribution is permitted only in or among
echo countries not thus excluded.  In such case, this License incorporates
echo the limitation as if written in the body of this License.
echo.
echo  9. The Free Software Foundation may publish revised and/or new versions
echo of the General Public License from time to time.  Such new versions will
echo be similar in spirit to the present version, but may differ in detail to
echo address new problems or concerns.
echo.
echo Each version is given a distinguishing version number.  If the Program
echo specifies a version number of this License which applies to it and "any
echo later version", you have the option of following the terms and conditions
echo either of that version or of any later version published by the Free
echo Software Foundation.  If the Program does not specify a version number of
echo this License, you may choose any version ever published by the Free Software
echo Foundation.
echo.
echo  10. If you wish to incorporate parts of the Program into other free
echo programs whose distribution conditions are different, write to the author
echo to ask for permission.  For software which is copyrighted by the Free
echo Software Foundation, write to the Free Software Foundation; we sometimes
echo make exceptions for this.  Our decision will be guided by the two goals
echo of preserving the free status of all derivatives of our free software and
echo of promoting the sharing and reuse of software generally.
echo.
echo                            NO WARRANTY
echo.
echo  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
echo FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
echo OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
echo PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED
echo OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
echo MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS
echo TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
echo PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
echo REPAIR OR CORRECTION.
echo.
echo   12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
echo WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
echo REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
echo INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING
echo OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED
echo TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY
echo YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER
echo PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
echo POSSIBILITY OF SUCH DAMAGES.
echo.
echo                     END OF TERMS AND CONDITIONS.
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
echo If no errors, Press any key to start Hugot Plus...
pause
goto chkdir

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
echo If no errors, Press any key to start Hugot Plus...
pause
goto chkdir

rem If that your update directory dosn't exist
:notexist
cls
Title CedPRO %progtitle% %progver% - UNAVAILABLE!
echo Sorry, update can't be found on current system...
echo Please try again later...
echo Anyways, you can still use it!
echo Press any key to Hugot Plus...
pause
goto chkdir

rem Checks if you're running on the C:\Users and C:\Windows\System32 directory
:chkdir
Title CedPRO %progtitle% %progver% - Checking runtime directory
echo Checking your directory to make sure you arn't running this in the C:\Users directory
echo This will prevent you from deleting icons by accident
for /f %%i in ('dir %cd%^|find "C:\Users\%username%"') do set sosstop=stopme&& set vardir=home
for /f %%i in ('dir %cd%^|find "C:\Windows"') do set sosstop=stopme&& set vardir=home
if "%vardir%"=="home" (goto stopnow) ^
else (goto start_code)


rem PLEASE STOP RIGHT HERE!
:stopnow
cls
Title CedPRO %progtitle% %progver% - Warning: CRITICAL DIRECTORY DETECTED!
echo It is NOT advisable to run this in %cd% because your DESKTOP icons/Windows files will be modified/deleted by accident
echo Exiting batch program....
pause
goto devs


rem This two line code will have the loop started
:fakestart_0
cls
goto start_code

rem Start of the code
:start_code
Title CedPRO %progtitle% %progver% - Warning
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
echo 3. Defrag (administrator rights required!)
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
Title CedPRO %progtitle% %progver% - Select option!
echo Now choose what you want to do. 
echo 1) Repair EXTERNAL DRIVE (Chkdisk)
echo 2) Start Scan and Exploit EXTERMINATION
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

rem Defrag command
:defrag
if "%osrecognized%"=="2" (goto defrag1) ^
else (goto defrag2)
rem Defrag for Windows 8.x/10
:defrag1
Title CedPRO %progtitle% %progver% - Select method defrag (Windows 8.x/10 mode)
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
goto start_code
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
goto start_code
:ofrag
rem optimized defrag for usb drives
cls
Title CedPRO %progtitle% %progver% - Defragger (SDD mode) (Optimized USB mode)
defrag %cd% /u /v /o
echo DISK checking complete
pause
goto start_code
rem Defrag for Windows 7 and lower
:defrag2
cls
Title CedPRO %progtitle% %progver% - Defragger (LEGACY MODE)
echo defragging...
defrag %cd% /u /v
echo DISK checking complete
pause
goto start_code

rem Loads the Check Disk Command
:checkdisk
Title CedPRO %progtitle% %progver% - Checking Disk
echo Checking EXTERNAL DEVICE...
chkdsk
echo DISK checking complete
pause
goto start_code


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
echo  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo  ++                              P R O M O T I O N  !                        ++
echo  ++                                                                          ++
echo  ++                 ***         NAGKATULUYAN NA KAYO!          ***           ++
echo  ++                                 (Joke lang)                          ++
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
echo  ++                            (YES Walang FOREVER!)                            ++
echo  ++                             (Char LANG!)                                ++
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
