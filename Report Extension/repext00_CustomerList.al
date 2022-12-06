reportextension 50100 "CSD Customer List" extends "Customer - List"
{

    dataset
    {
        add(Customer)
        {
            column(CSD_Shoe_Size; "CSD Shoe Size")
            {
                IncludeCaption = true;
            }
            column(CSD_Weight; "CSD Weight")
            {
                IncludeCaption = true;
            }
        }
    }


    requestpage
    {
        layout
        {
            addfirst(Content)
            {
                group("CSD Options")
                {
                    Caption = 'Options';
                    field(ShowDetails; ShowDetails)
                    {
                        ApplicationArea = All;
                    }


                }
            }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = './Layouts/CustomerList2.rdl';
        }
    }
    var
        ShowDetails: Boolean;

    trigger OnPostReport()
    var
        EndMessageTxt: Label 'SOMETHING', Comment = 'Gives message';
    begin


    end;
}