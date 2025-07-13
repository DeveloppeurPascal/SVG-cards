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
  File last update : 2025-07-13T17:53:14.000+02:00
  Signature : 23ef987fb4ff02f7faa20bfc3401204e4e3a49e3
  ***************************************************************************
*)

unit uDMSVGcards;

interface

uses
  System.SysUtils,
  System.Classes,
  Vcl.BaseImageCollection,
  Vcl.ImageCollection;

type
  TdmSVGcards = class(TDataModule)
    ImageCollection1: TImageCollection;
  private
  public
  end;

var
  dmSVGcards: TdmSVGcards;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
