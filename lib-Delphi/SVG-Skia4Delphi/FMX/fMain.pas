(* C2PP
  ***************************************************************************

  SVG Cards

  SVG Files (c) David Bellot
  Delphi projects (c) Patrick PREMARTIN

  This project and its content is distributed under LGPL license.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
  DEALINGS IN THE SOFTWARE.

  ***************************************************************************

  Project site :
  https://github.com/DeveloppeurPascal/SVG-cards

  ***************************************************************************
  File last update : 2025-07-13T18:33:22.000+02:00
  Signature : 02812069729c3ecd5294c7454b9f36fdf7a9a800
  ***************************************************************************
*)

unit fMain;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Objects,
  FMX.Controls.Presentation,
  FMX.StdCtrls;

type
  TForm4 = class(TForm)
    btnPrev: TButton;
    btnNext: TButton;
    Image1: TImage;
    procedure Image1Resized(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FCurrentImageIndex: integer;
    procedure SetCurrentImageIndex(const Value: integer);
  protected
    procedure UpdateCardImage;
  public
    property CurrentImageIndex: integer read FCurrentImageIndex
      write SetCurrentImageIndex;
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

uses
  uSVGCardsDelphi12WithSkia;

procedure TForm4.btnNextClick(Sender: TObject);
begin
  if CurrentImageIndex < TSVGCards.Count - 1 then
    CurrentImageIndex := CurrentImageIndex + 1
  else
    CurrentImageIndex := 0;
end;

procedure TForm4.btnPrevClick(Sender: TObject);
begin
  if CurrentImageIndex > 0 then
    CurrentImageIndex := CurrentImageIndex - 1
  else
    CurrentImageIndex := TSVGCards.Count - 1;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  CurrentImageIndex := 0;
end;

procedure TForm4.Image1Resized(Sender: TObject);
begin
  UpdateCardImage;
end;

procedure TForm4.SetCurrentImageIndex(const Value: integer);
begin
  if (FCurrentImageIndex < 0) or (FCurrentImageIndex > TSVGCards.Count - 1) then
    FCurrentImageIndex := 0;
  FCurrentImageIndex := Value;
  UpdateCardImage;
end;

procedure TForm4.UpdateCardImage;
begin
  Image1.Bitmap.Assign(TSVGCards.Bitmap(TSVGCardsIndex(FCurrentImageIndex),
    Image1.Width, Image1.Height, Image1.Bitmap.bitmapscale));
end;

initialization

{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := true;
{$ENDIF}

end.
