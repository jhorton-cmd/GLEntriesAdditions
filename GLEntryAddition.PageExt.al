pageextension 50250 "GLEntryAdditionExt" extends "General Ledger Entries"
{
    layout
    {
        addlast(Control1)
        {
            field("Customer Salesperson Code"; SalespersonCode)
            {
                ApplicationArea = All;
                Caption = 'Salesperson Code';
                Editable = false;
            }
            field("Customer Lifecycle Manager"; LifecycleManagerCode)
            {
                ApplicationArea = All;
                Caption = 'Lifecycle Manager';
                Editable = false;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        Clear(SalespersonCode);
        Clear(LifecycleManagerCode);

        if Rec."Source Type" <> Rec."Source Type"::Customer then
            exit;

        if not Customer.Get(Rec."Source No.") then
            exit;

        SalespersonCode := Customer."Salesperson Code";
        LifecycleManagerCode := Customer."Lifecycle Manager";
    end;

    var
        Customer: Record Customer;
        LifecycleManagerCode: Code[20];
        SalespersonCode: Code[20];
}
