#ifndef __TNCON_H
#define __TNCON_H

#include "tparams.h"
#include "tnclip.h"
#include "ttelhndl.h"

#define SC_UP   1
#define SC_DOWN 2
#define SC_ESC 0
#define SC_MOUSE 3

#define TNNOCON 0
#define TNPROMPT 1
#define TNSCROLLBACK 2
#define TNSPAWN 3

int telProcessConsole(NetParams *pParams, KeyTranslator &KeyTrans,
					  TConsole &Console, TNetwork &Network, TMouse &Mouse,
					  Tnclip &Clipboard, HANDLE hThread);
WORD scrollkeys ();

// Thomas Briggs 8/17/98
BOOL WINAPI ControlEventHandler(DWORD);

// Bryan Montgomery 10/14/98
void setTNetwork(TNetwork);

#endif