table 75108 Department
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Dep Code"; code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Dep Name"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Faculty; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Faculty;

        }
    }

    keys
    {
        key(Key1; "Dep Code")
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