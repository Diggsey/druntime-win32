/***********************************************************************\
*                                ntdll.d                                *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*             Translated from MinGW API for MS-Windows 3.10             *
*                           by Stewart Gordon                           *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module core.sys.windows.ntdll;
nothrow:

private import core.sys.windows.w32api;

// http://www.matcode.com/undocwin.h.txt
static assert (_WIN32_WINNT_ONLY,
	"core.sys.windows.ntdll is available only if version WindowsNTonly, WindowsXP, "
	"Windows2003 or WindowsVista is set");


enum SHUTDOWN_ACTION {
	ShutdownNoReboot,
	ShutdownReboot,
	ShutdownPowerOff
}

extern (Windows) uint NtShutdownSystem(SHUTDOWN_ACTION Action);
