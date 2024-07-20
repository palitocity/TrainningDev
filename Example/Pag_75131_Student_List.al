page 75131 "Student List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Student;
    CardPageId = "Student Profile";
    Editable = false;


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Matric Number"; Rec."Matric Number")
                {

                }
                field("First Name"; Rec."First Name")
                {

                }
                field("Last Name"; Rec."Last Name")
                {

                }
                field("Full Name"; Rec."Full Name")
                {

                }
                field(Age; Rec.Age)
                {

                }
                field(Faculty; Rec.Faculty)
                {

                }
                field(Department; Rec.Department)
                {

                }
            }
        }
        area(Factboxes)
        {

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
}