//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Daltonista_cpp.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormDaltonista *FormDaltonista;
//---------------------------------------------------------------------------
__fastcall TFormDaltonista::TFormDaltonista(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFormDaltonista::ButtonStartClick(TObject *Sender)
{
                LabeledEditPunkty->Tag=0;
                LabeledEditPunkty->Text=0;
                LabeledEditGapa->Tag=0;
                LabeledEditGapa->Text=0;
                Shape->Brush->Color=clWhite;
                if(!TryStrToInt(EditStart->Text,EditStart->Tag)||EditStart->Tag<1)
                {
                  MessageDlg("Bledne dane",mtError,TMsgDlgButtons()<<mbOK,0);
                  EditStart->Text=20;
                }
                else
                {
                  TimerZegar->Enabled=(TimerZegar->Enabled==false);
                  if(TimerZegar->Enabled)
                  {
                    ButtonStart->Caption="Stop";
                    EditStart->ReadOnly=true;
                  }
                  else
                  {
                    ButtonStart->Caption="Start";
                    EditStart->ReadOnly=false;
                  }
                }
}
//---------------------------------------------------------------------------
void __fastcall TFormDaltonista::TimerZegarTimer(TObject *Sender)
{
                if(TimerZegar->Tag==0)
                  LabeledEditGapa->Tag+=1;
                EditStart->Tag-=1;
                if(EditStart->Tag<1)
                {
                  TimerZegar->Enabled=false;
                  EditStart->ReadOnly=false;
                  ButtonStart->Caption="Start";
                }
                Kolor->Enabled=true;
                LabeledEditPunkty->Text=IntToStr(LabeledEditPunkty->Tag);
                LabeledEditGapa->Text=IntToStr(LabeledEditGapa->Tag);
                randomize();
                ButtonStart->Tag=random(6);
                if(Tag==ButtonStart->Tag)
                  Tag=(Tag+1)%6;
                else
                  Tag=ButtonStart->Tag;
                switch(Tag)
                {
                      case 0:
                             Shape->Brush->Color=ShapeZielony->Brush->Color;
                             break;
                      case 1:
                             Shape->Brush->Color=ShapeZolty->Brush->Color;
                             break;
                      case 2:
                             Shape->Brush->Color=ShapeCzerwony->Brush->Color;
                             break;
                      case 3:
                             Shape->Brush->Color=ShapeNiebieski->Brush->Color;
                             break;
                      case 4:
                             Shape->Brush->Color=ShapeRozowy->Brush->Color;
                             break;
                      case 5:
                             Shape->Brush->Color=ShapeBlekitny->Brush->Color;
                             break;
                }
                TimerZegar->Tag=0;
}
//---------------------------------------------------------------------------
void __fastcall TFormDaltonista::ShapeZielonyMouseDown(TObject *Sender,
      TMouseButton Button, TShiftState Shift, int X, int Y)
{
                Kolor=dynamic_cast<TShape*>(Sender);
                Kolor->Enabled=false;
                if(Kolor->Brush->Color==Shape->Brush->Color)
                {
                  LabeledEditPunkty->Tag+=1;
                  TimerZegar->Tag=1;
                }
                else
                {
                  LabeledEditGapa->Tag+=1;
                  EditStart->Tag-=1;
                }
}
//---------------------------------------------------------------------------
void __fastcall TFormDaltonista::FormCreate(TObject *Sender)
{
                Kolor=new TShape(this);
                Kolor->Parent=this;
                Kolor->Visible=false;
}
//---------------------------------------------------------------------------

void __fastcall TFormDaltonista::FormClose(TObject *Sender,
      TCloseAction &Action)
{
                Kolor->Free();
}
//---------------------------------------------------------------------------


