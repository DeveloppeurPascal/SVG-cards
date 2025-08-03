//---------------------------------------------------------------------------

#ifndef UDmSVGCards
#define UDmSVGCards
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <FMX.ImgList.hpp>
#include <System.ImageList.hpp>
//---------------------------------------------------------------------------
class TDmSVGCards : public TDataModule
{
__published:
	TImageList *ImageList;
private:
public:
	__fastcall TDmSVGCards(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDmSVGCards *DmSVGCards;
//---------------------------------------------------------------------------
#endif
