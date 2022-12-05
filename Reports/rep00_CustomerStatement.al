report 50101 "CSD Customer Statement"
{
    Caption = 'CSD Customer Statement';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = Simple;

    dataset
    {
        dataitem(Customer; Customer)
        {
            RequestFilterFields = "No.", Name, "Salesperson Code";
            DataItemTableView = sorting("No.");

            column(No_; "No.")
            {
                IncludeCaption = true;
            }
            column(Name; Name)
            {
                IncludeCaption = true;
            }
            column(City; City)
            {
                IncludeCaption = true;
            }
            column(Country_Region_Code; "Country/Region Code")
            {
                IncludeCaption = true;
            }
            column(Last_Date_Modified; "Last Date Modified")
            {
                IncludeCaption = true;
            }
            column(Balance__LCY_; "Balance (LCY)")
            {
                IncludeCaption = true;
            }
            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                DataItemLink = "Source No." = field("No.");
                DataItemTableView = sorting("Source Type", "Source No.", "Item No.", "Variant Code", "Posting Date") where("Source Type" = const(Customer));

                column(Item_No_; "Item No.")
                {
                    IncludeCaption = true;
                }
                column(Description; Description)
                {
                    IncludeCaption = true;
                }
                column(Unit_of_Measure_Code; "Unit of Measure Code")
                {
                    IncludeCaption = true;
                }
                column(Quantity; Quantity)
                {
                    IncludeCaption = true;
                }
                column(Sales_Amount__Actual_; "Sales Amount (Actual)")
                {
                    IncludeCaption = true;
                }
                column(Cost_Amount__Actual_; "Cost Amount (Actual)")
                {
                    IncludeCaption = true;
                }

            }

        }
        dataitem("Company Information"; "Company Information")
        {
            column(Picture; Picture)
            {

            }
            column(CompanyName; CompanyName())
            {

            }
        }
    }

    rendering
    {
        layout(Simple)
        {
            Type = RDLC;
            LayoutFile = './Layouts/CustomerList.rdl';
        }
    }

    labels
    {
        ReportCap = 'Customer List';
        OfCap = 'of';
        TotalCap = 'Total';
        PageCap = 'Page';
    }
}