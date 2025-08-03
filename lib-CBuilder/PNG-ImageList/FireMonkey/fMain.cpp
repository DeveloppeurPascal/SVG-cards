//---------------------------------------------------------------------------

#include <fmx.h>
#pragma hdrstop

#include "fMain.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.fmx"
TfrmMain* frmMain;
//---------------------------------------------------------------------------
__fastcall TfrmMain::TfrmMain(TComponent* Owner) : TForm(Owner)
{
	Glyph1->ImageIndex = 0;
}
//---------------------------------------------------------------------------
void __fastcall TfrmMain::btnPrevClick(TObject* Sender)
{
	if (Glyph1->ImageIndex > 0) {
		Glyph1->ImageIndex = Glyph1->ImageIndex - 1;
	} else {
		Glyph1->ImageIndex = Glyph1->Images->Count - 1;
	}
}
//---------------------------------------------------------------------------
void __fastcall TfrmMain::btnNextClick(TObject* Sender)
{
	if (Glyph1->ImageIndex < Glyph1->Images->Count - 1) {
		Glyph1->ImageIndex = Glyph1->ImageIndex + 1;
	} else {
		Glyph1->ImageIndex = 0;
	}
}
//---------------------------------------------------------------------------

