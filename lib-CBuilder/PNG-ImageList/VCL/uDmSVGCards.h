//---------------------------------------------------------------------------

#ifndef uDmSVGCardsH
#define uDmSVGCardsH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.BaseImageCollection.hpp>
#include <Vcl.ImageCollection.hpp>
//---------------------------------------------------------------------------
class TDmSVGCards : public TDataModule
{
__published:	// Composants g�r�s par l'EDI
	TImageCollection *ImageCollection1;
private:	// D�clarations utilisateur
public:		// D�clarations utilisateur
	__fastcall TDmSVGCards(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDmSVGCards *DmSVGCards;
//---------------------------------------------------------------------------
#endif
