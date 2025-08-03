//---------------------------------------------------------------------------

#ifndef fMainH
#define fMainH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.VirtualImage.hpp>
#include "uDmSVGCards.h"
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// Composants g�r�s par l'EDI
	TButton *btnPrevious;
	TButton *btnNext;
	TVirtualImage *VirtualImage1;
	void __fastcall btnPreviousClick(TObject *Sender);
	void __fastcall btnNextClick(TObject *Sender);
private:	// D�clarations utilisateur
public:		// D�clarations utilisateur
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
