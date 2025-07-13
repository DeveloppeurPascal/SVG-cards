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
  File last update : 2025-07-13T18:35:08.000+02:00
  Signature : dc795171b2e38cd0eef46756f2d4b1611c93dbb4
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
  System.ImageList,
  Vcl.ImgList,
  Vcl.VirtualImageList,
  uDMSVGcards,
  Vcl.StdCtrls,
  Vcl.VirtualImage;

type
  TForm2 = class(TForm)
    VirtualImage1: TVirtualImage;
    btnPrev: TButton;
    btnNext: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
  private
  public
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnNextClick(Sender: TObject);
begin
  if VirtualImage1.ImageIndex < dmSVGcards.ImageCollection1.Count - 1 then
    VirtualImage1.ImageIndex := VirtualImage1.ImageIndex + 1
  else
    VirtualImage1.ImageIndex := 0;
end;

procedure TForm2.btnPrevClick(Sender: TObject);
begin
  if VirtualImage1.ImageIndex > 0 then
    VirtualImage1.ImageIndex := VirtualImage1.ImageIndex - 1
  else
    VirtualImage1.ImageIndex := dmSVGcards.ImageCollection1.Count - 1;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  VirtualImage1.ImageCollection := dmSVGcards.ImageCollection1;
  VirtualImage1.ImageIndex := 0;
end;

initialization

{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := true;
{$ENDIF}

end.
