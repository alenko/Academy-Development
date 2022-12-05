report 50100 "CSD Customer List"
{
    Caption = 'CSD Customer List';
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