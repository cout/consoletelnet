# Microsoft Developer Studio Project File - Name="Telnet" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 5.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=Telnet - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Telnet.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Telnet.mak" CFG="Telnet - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Telnet - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "Telnet - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "Telnet - Win32 Release Static" (based on\
 "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Telnet - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /G5 /MD /W3 /GX /O2 /I "..\resource" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /FR /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib /nologo /subsystem:console /machine:I386
# SUBTRACT LINK32 /debug

!ELSEIF  "$(CFG)" == "Telnet - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /I "..\resource" /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /FR /YX /FD /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /fo"Tnmsg.res" /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib /nologo /subsystem:console /profile /debug /machine:I386

!ELSEIF  "$(CFG)" == "Telnet - Win32 Release Static"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Telnet__"
# PROP BASE Intermediate_Dir "Telnet__"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Telnet__"
# PROP Intermediate_Dir "Telnet__"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G5 /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /FR /YX /FD /c
# ADD CPP /nologo /G5 /MT /W3 /GX /O2 /I "..\resource" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /FR /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib /nologo /subsystem:console /machine:I386
# SUBTRACT BASE LINK32 /debug
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib /nologo /subsystem:console /machine:I386
# SUBTRACT LINK32 /debug

!ENDIF 

# Begin Target

# Name "Telnet - Win32 Release"
# Name "Telnet - Win32 Debug"
# Name "Telnet - Win32 Release Static"
# Begin Group "I/O"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\ansiprsr.cpp
# End Source File
# Begin Source File

SOURCE=..\src\ansiprsr.h
# End Source File
# Begin Source File

SOURCE=..\src\tconsole.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tconsole.h
# End Source File
# Begin Source File

SOURCE=..\src\tncon.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tncon.h
# End Source File
# Begin Source File

SOURCE=..\src\tparams.h
# End Source File
# Begin Source File

SOURCE=..\src\tparser.h
# End Source File
# End Group
# Begin Group "Network"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\telnet.h
# End Source File
# Begin Source File

SOURCE=..\src\tnetwork.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tnetwork.h
# End Source File
# Begin Source File

SOURCE=..\src\ttelhndl.cpp
# End Source File
# Begin Source File

SOURCE=..\src\ttelhndl.h
# End Source File
# End Group
# Begin Group "Main"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\tnclass.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tnclass.h
# End Source File
# Begin Source File

SOURCE=..\src\tnmain.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tnmain.h
# End Source File
# End Group
# Begin Group "Misc"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\tmouse.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tmouse.h
# End Source File
# Begin Source File

SOURCE=..\src\tnclip.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tnclip.h
# End Source File
# Begin Source File

SOURCE=..\src\tnconfig.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tnconfig.h
# End Source File
# Begin Source File

SOURCE=..\src\tnerror.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tnerror.h
# End Source File
# Begin Source File

SOURCE=..\src\tnmisc.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tnmisc.h
# End Source File
# Begin Source File

SOURCE=..\src\tscript.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tscript.h
# End Source File
# Begin Source File

SOURCE=..\src\tscroll.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tscroll.h
# End Source File
# End Group
# Begin Group "Translation"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\src\keytrans.cpp
# End Source File
# Begin Source File

SOURCE=..\src\keytrans.h
# End Source File
# Begin Source File

SOURCE=..\src\stl_bids.h
# End Source File
# Begin Source File

SOURCE=..\src\tcharmap.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tcharmap.h
# End Source File
# Begin Source File

SOURCE=..\src\tkeydef.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tkeydef.h
# End Source File
# Begin Source File

SOURCE=..\src\tkeymap.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tkeymap.h
# End Source File
# Begin Source File

SOURCE=..\src\tmapldr.cpp
# End Source File
# Begin Source File

SOURCE=..\src\tmapldr.h
# End Source File
# End Group
# Begin Group "Resources"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\resource\tnmsg.h
# End Source File
# Begin Source File

SOURCE=..\resource\tnmsg.rc

!IF  "$(CFG)" == "Telnet - Win32 Release"

!ELSEIF  "$(CFG)" == "Telnet - Win32 Debug"

!ELSEIF  "$(CFG)" == "Telnet - Win32 Release Static"

!ENDIF 

# End Source File
# End Group
# Begin Group "Text Files"

# PROP Default_Filter "*.txt"
# Begin Source File

SOURCE=..\doc\00readme.avs
# End Source File
# Begin Source File

SOURCE=..\doc\bugs.txt
# End Source File
# Begin Source File

SOURCE=..\doc\changes.txt
# End Source File
# Begin Source File

SOURCE=..\doc\license.txt
# End Source File
# Begin Source File

SOURCE=..\doc\options.txt
# End Source File
# Begin Source File

SOURCE=..\doc\readme.txt
# End Source File
# Begin Source File

SOURCE=..\doc\ssh.txt
# End Source File
# End Group
# End Target
# End Project
