page 75132 "Faculty List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Faculty;


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Faculty Code"; Rec."Faculty Code")
                {
                    ApplicationArea = All;
                    NotBlank = true;
                    ShowMandatory = true;

                }
                field("Faculty Name"; Rec."Faculty Name")
                {
                    ApplicationArea = All;
                    NotBlank = true;
                    ShowMandatory = true;

                }
                field("Eligible Age"; Rec."Eligible Age")
                {
                    ApplicationArea = All;
                    NotBlank = true;
                    ShowMandatory = true;
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