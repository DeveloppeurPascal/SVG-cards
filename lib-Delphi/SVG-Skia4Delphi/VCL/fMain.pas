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
  File last update : 2025-07-13T18:33:20.000+02:00
  Signature : 9467dabc9ad7d8b09ec004dc175d40cb25bdd7d3
  ***************************************************************************
*)

unit fMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    btnPrev: TButton;
    Image1: TImage;
    btnNext: TButton;
    procedure btnPrevClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
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
  Form3: TForm3;

implementation

{$R *.dfm}

uses
  uSVGCardsDelphi12WithSkia;

procedure TForm3.btnNextClick(Sender: TObject);
begin
  if CurrentImageIndex < TSVGCards.Count - 1 then
    CurrentImageIndex := CurrentImageIndex + 1
  else
    CurrentImageIndex := 0;
end;

procedure TForm3.btnPrevClick(Sender: TObject);
begin
  if CurrentImageIndex > 0 then
    CurrentImageIndex := CurrentImageIndex - 1
  else
    CurrentImageIndex := TSVGCards.Count - 1;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  CurrentImageIndex := 0;
end;

procedure TForm3.FormResize(Sender: TObject);
begin
  UpdateCardImage;
end;

procedure TForm3.SetCurrentImageIndex(const Value: integer);
begin
  if (FCurrentImageIndex < 0) or (FCurrentImageIndex > TSVGCards.Count - 1) then
    FCurrentImageIndex := 0;
  FCurrentImageIndex := Value;
  UpdateCardImage;
end;

procedure TForm3.UpdateCardImage;
begin
  Image1.Picture.Bitmap.Assign
    (TSVGCards.Bitmap(TSVGCardsIndex(FCurrentImageIndex), Image1.Width,
    Image1.Height, 1));
end;

initialization

{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := true;
{$ENDIF}

end.
