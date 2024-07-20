page 75130 "Student Profile"
{
    PageType = Card;
    SourceTable = Student;
    UsageCategory = Documents;

    layout
    {
        area(Content)
        {
            group(GeneralInformation)
            {
                Caption = 'Student Profile';
                field("Matric Number"; Rec."Matric Number")
                {
                    Editable = false;
                    ApplicationArea = all;
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = all;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = all;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = all;
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = all;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field(Faculty; Rec.Faculty)
                {
                    ApplicationArea = all;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = all;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}