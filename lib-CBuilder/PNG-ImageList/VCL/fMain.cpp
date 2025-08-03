//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "fMain.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1* Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner) : TForm(Owner)
{
    VirtualImage1->ImageIndex = 0;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::btnPreviousClick(TObject* Sender)
{
    if (VirtualImage1->ImageIndex > 0) {
        VirtualImage1->ImageIndex = VirtualImage1->ImageIndex - 1;
    } else {
        VirtualImage1->ImageIndex = VirtualImage1->ImageCollection->Count - 1;
    }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::btnNextClick(TObject* Sender)
{
    if (VirtualImage1->ImageIndex < VirtualImage1->ImageCollection->Count - 1) {
        VirtualImage1->ImageIndex = VirtualImage1->ImageIndex + 1;
    } else {
        VirtualImage1->ImageIndex = 0;
    }
}
//---------------------------------------------------------------------------

