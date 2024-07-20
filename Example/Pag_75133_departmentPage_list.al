page 75133 "Department List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Department;


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Dep Code"; Rec."Dep Code")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;

                }
                field("Dep Name"; Rec."Dep Name")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field(Faculty; Rec.Faculty)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
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