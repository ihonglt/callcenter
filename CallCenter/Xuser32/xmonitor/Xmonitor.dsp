# Microsoft Developer Studio Project File - Name="Xmonitor" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=Xmonitor - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Xmonitor.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Xmonitor.mak" CFG="Xmonitor - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Xmonitor - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Xmonitor - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/CallCenter/Xuser32/Xmonitor", XBDAAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Xmonitor - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "XMONITOR_EXPORTS" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "..\\" /I "..\Xuserface" /I "..\..\Common" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_WINDLL" /D "_AFXDLL" /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "NDEBUG"
# ADD RSC /l 0x804 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 Winmm.lib Ws2_32.lib Strmiids.lib strmbase.lib Xuserface.lib /nologo /dll /machine:I386 /nodefaultlib:"LIBCMT" /out:"../Xmonitor.dll" /libpath:"..\Xuserface\Debug"
# SUBTRACT LINK32 /nodefaultlib

!ELSEIF  "$(CFG)" == "Xmonitor - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "XMONITOR_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I "..\\" /I "..\Xuserface" /I "..\..\Common" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_WINDLL" /D "_AFXDLL" /Yu"stdafx.h" /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x804 /d "_DEBUG"
# ADD RSC /l 0x804 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 Winmm.lib Ws2_32.lib Strmiids.lib strmbasd.lib Xuserface.lib /nologo /dll /debug /machine:I386 /nodefaultlib:"LIBCMTD" /out:"../Xmonitor.dll" /pdbtype:sept /libpath:"..\Xuserface\Debug"
# SUBTRACT LINK32 /map /nodefaultlib

!ENDIF 

# Begin Target

# Name "Xmonitor - Win32 Release"
# Name "Xmonitor - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\Common\buffer.cpp
# End Source File
# Begin Source File

SOURCE=.\ctrlcoolheaderbar.cpp
# End Source File
# Begin Source File

SOURCE=.\ctrlnetworkchild.cpp
# End Source File
# Begin Source File

SOURCE=.\CtrlNetworkThumb.cpp
# End Source File
# Begin Source File

SOURCE=.\DlgBlacklst.cpp
# End Source File
# Begin Source File

SOURCE=.\dllmain.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Common\md5.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Common\Packet.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Common\PacketBase.cpp
# End Source File
# Begin Source File

SOURCE=.\stdafx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\WndMonitor.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Common\xml.cpp
# End Source File
# Begin Source File

SOURCE=.\Xmonitor.def
# End Source File
# Begin Source File

SOURCE=.\Xmonitor.rc
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\Common\buffer.h
# End Source File
# Begin Source File

SOURCE=.\ctrlcoolheaderbar.h
# End Source File
# Begin Source File

SOURCE=.\ctrlnetworkchild.h
# End Source File
# Begin Source File

SOURCE=.\CtrlNetworkThumb.h
# End Source File
# Begin Source File

SOURCE=.\DlgBlacklst.h
# End Source File
# Begin Source File

SOURCE=..\..\Common\Packet.h
# End Source File
# Begin Source File

SOURCE=.\Resource.h
# End Source File
# Begin Source File

SOURCE=.\stdafx.h
# End Source File
# Begin Source File

SOURCE=.\WndMonitor.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\res\china.ico
# End Source File
# Begin Source File

SOURCE=.\res\MenuBar.bmp
# End Source File
# Begin Source File

SOURCE=.\res\Monitor.ico
# End Source File
# Begin Source File

SOURCE=.\res\panelmark.bmp
# End Source File
# Begin Source File

SOURCE=.\res\TaskPanel.ico
# End Source File
# End Group
# Begin Source File

SOURCE=.\res\Default.xml
# End Source File
# Begin Source File

SOURCE=.\res\Definitions.xml
# End Source File
# Begin Source File

SOURCE=.\res\Ring.wav
# End Source File
# End Target
# End Project
