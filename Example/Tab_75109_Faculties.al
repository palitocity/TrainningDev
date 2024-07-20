table 75109 Faculty
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Faculty Code"; code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Faculty Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Eligible Age"; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Faculty Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}