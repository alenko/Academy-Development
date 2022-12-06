codeunit 50100 "CSD Install"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    var
        Cust: Record Customer;
        Counter: Integer;
    begin
        if Cust.FindSet() then
            repeat
                Cust."CSD Weight" := Random(1) * 125;
                Counter += 1;
                Cust."CSD Shoe Size" := Counter;
                Cust.Modify();
            until Cust.Next() = 0;
    end;

    var
        myInt: Integer;
}