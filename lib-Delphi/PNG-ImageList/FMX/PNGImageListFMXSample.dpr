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
  File last update : 2025-07-13T18:01:02.000+02:00
  Signature : 8016d84b4758b9c628eefa4b67841cc1d40b0f92
  ***************************************************************************
*)

program PNGImageListFMXSample;

uses
  System.StartUpCopy,
  FMX.Forms,
  fMain in 'fMain.pas' {Form1},
  udmSVGcards in 'udmSVGcards.pas' {dmSVGcards: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmSVGcards, dmSVGcards);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
