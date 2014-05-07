require 'spec_helper'

describe "planned_hours/new" do
  before(:each) do
    assign(:planned_hour, stub_model(PlannedHour,
      :number => 1,
      :client_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new planned_hour form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", planned_hours_path, "post" do
      assert_select "input#planned_hour_number[name=?]", "planned_hour[number]"
      assert_select "input#planned_hour_client_id[name=?]", "planned_hour[client_id]"
      assert_select "input#planned_hour_user_id[name=?]", "planned_hour[user_id]"
    end
  end
end
