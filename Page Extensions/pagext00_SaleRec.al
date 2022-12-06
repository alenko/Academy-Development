pageextension 50105 RecPageExt extends "Sales & Receivables Setup"
{
    layout
    {

        addlast(General)
        {
            field("Customer List Printed by"; Rec."Customer List Printed by")
            {
                ApplicationArea = All;
            }
            field("Customer List Printed the"; Rec."Customer List Printed the")
            {
                ApplicationArea = All;
            }

        }
    }


    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}