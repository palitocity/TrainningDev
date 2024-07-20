table 70000 "Student Application Form"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "S/N"; Integer)
        {
            DataClassification = ToBeClassified;

        }

        field(2; "Reg. Number"; code[30])
        {
            DataClassification = ToBeClassified;

        }

        field(3; "First Name"; text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Last Name"; text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(5; "Full Name"; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Home Address"; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(7; Email; Text[100])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;

        }
        field(8; "Mobile Number"; text[100])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }
        field(9; "Reg. Date"; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "State of Origin"; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Local Government Area"; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(12; Nationality; text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Jamb Score"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        // CREATE A NEW RECORD in RESPONSE TO THIS OPTION
        field(14; "Entry Type"; Option)
        {
            OptionCaption = '0 Level,Direct Entry,SDE';
            OptionMembers = "0 Level","Direct Entry","SDE";
        }
        field(15; "CGPA"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(16; "No. Seatings"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(17; "Jamb Reg No."; code[50])
        {
            DataClassification = ToBeClassified;
        }


    }

    keys
    {
        key(Key1; "S/N", "Reg. Number", "Entry Type")
        {
            Clustered = true;
        }

        key(key2; "Jamb Reg No.")
        {

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