table 75107 Student
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Matric Number"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "First Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if ("First Name" <> '') and ("Last Name" <> '') then "Full Name" := "First Name" + ' ' + "Last Name";
            end;
        }

        field(3; "Last Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if ("First Name" <> '') and ("Last Name" <> '') then "Full Name" := "First Name" + ' ' + "Last Name";
            end;
        }
        field(4; Age; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                Validate(Faculty);
            end;
        }
        field(5; Sex; Option)
        {
            OptionMembers = ,Male,Female,None;
            OptionCaption = ',Male,Female,None';
        }

        field(6; Faculty; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Faculty;
            trigger OnValidate()
            var
                FacultyRec: Record Faculty;
            begin

                if xRec.Faculty <> Rec.Faculty then Message('Stay one place now');

                if FacultyRec.Get(Faculty) then begin
                    if Age < FacultyRec."Eligible Age" then Error('Sorry you are not eligible.');
                end else
                    Message('else condition triggered ');
            end;
        }
        field(7; Department; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Department where(Faculty = field(Faculty));
        }
        field(8; "Full Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }

    }

    keys
    {
        key(Key1; "Matric Number")
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
    var
        noSeriesMgt: Codeunit "No. Series";
    begin
        if "Matric Number" = '' then begin
            "Matric Number" := noSeriesMgt.GetNextNo('student');
        end
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