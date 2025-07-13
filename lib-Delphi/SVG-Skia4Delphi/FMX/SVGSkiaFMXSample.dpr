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
  File last update : 2025-07-13T18:21:00.000+02:00
  Signature : acf59f7945caaa86e77d7ca08afd265dada64dca
  ***************************************************************************
*)

program SVGSkiaFMXSample;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMX.Skia,
  fMain in 'fMain.pas' {Form4},
  uSVGCardsDelphi12WithSkia in '..\uSVGCardsDelphi12WithSkia.pas',
  Olf.Skia.SVGToBitmap in '..\Olf.Skia.SVGToBitmap.pas';

{$R *.res}

begin
  GlobalUseSkia := True;
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
