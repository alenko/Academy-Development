tableextension 50100 "CSD Customer" extends Customer
{
    fields
    {
        field(50100; "CSD Shoe Size"; Decimal)
        {
            Caption = 'Shoe Size';
            DataClassification = AccountData;
        }
        field(50101; "CSD Weight"; Decimal)
        {
            Caption = 'Weight';
            DataClassification = AccountData;
        }
    }
}