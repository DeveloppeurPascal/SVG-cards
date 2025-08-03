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
__published:	// Composants gérés par l'EDI
	TImageCollection *ImageCollection1;
private:	// Déclarations utilisateur
public:		// Déclarations utilisateur
	__fastcall TDmSVGCards(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDmSVGCards *DmSVGCards;
//---------------------------------------------------------------------------
#endif
