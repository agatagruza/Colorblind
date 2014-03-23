//---------------------------------------------------------------------------

#ifndef Daltonista_cppH
#define Daltonista_cppH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Mask.hpp>
//---------------------------------------------------------------------------
class TFormDaltonista : public TForm
{
__published:	// IDE-managed Components
        TGroupBox *GroupBoxWyniki;
        TLabeledEdit *LabeledEditPunkty;
        TLabeledEdit *LabeledEditGapa;
        TShape *ShapeZielony;
        TShape *ShapeZolty;
        TShape *ShapeCzerwony;
        TShape *ShapeNiebieski;
        TShape *ShapeRozowy;
        TShape *ShapeBlekitny;
        TShape *Shape;
        TTimer *TimerZegar;
        TButton *ButtonStart;
        TEdit *EditStart;
        void __fastcall ButtonStartClick(TObject *Sender);
        void __fastcall TimerZegarTimer(TObject *Sender);
        void __fastcall ShapeZielonyMouseDown(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
        __fastcall TFormDaltonista(TComponent* Owner);
		TShape *Kolor;
};
//---------------------------------------------------------------------------
extern PACKAGE TFormDaltonista *FormDaltonista;
//---------------------------------------------------------------------------
#endif
