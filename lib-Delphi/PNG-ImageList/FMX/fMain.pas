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
  File last update : 2025-07-13T18:33:46.000+02:00
  Signature : 01ab4483fc0ce4a4a1f91954db8ad7100583973b
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
  FMX.ImgList,
  udmSVGcards,
  FMX.Controls.Presentation,
  FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Glyph1: TGlyph;
    btnPrev: TButton;
    btnNext: TButton;
    procedure btnPrevClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnNextClick(Sender: TObject);
begin
  if Glyph1.ImageIndex < dmSVGcards.ImageList.Count - 1 then
    Glyph1.ImageIndex := Glyph1.ImageIndex + 1
  else
    Glyph1.ImageIndex := 0;
end;

procedure TForm1.btnPrevClick(Sender: TObject);
begin
  if Glyph1.ImageIndex > 0 then
    Glyph1.ImageIndex := Glyph1.ImageIndex - 1
  else
    Glyph1.ImageIndex := dmSVGcards.ImageList.Count - 1;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Glyph1.ImageIndex := 0;
end;

initialization

{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := true;
{$ENDIF}

end.
