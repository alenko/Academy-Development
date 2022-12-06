tableextension 50105 "Sales Rec" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50105; "Customer List Printed by"; Text[50])
        {
            Editable = false;
        }
        field(50106; "Customer List Printed the"; Date)
        {
            Editable = false;
        }

    }

    var
        myInt: Integer;
}