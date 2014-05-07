require 'spec_helper'

describe "planned_hours/index" do
  before(:each) do
    assign(:planned_hours, [
      stub_model(PlannedHour,
        :number => 1,
        :client_id => 2,
        :user_id => 3
      ),
      stub_model(PlannedHour,
        :number => 1,
        :client_id => 2,
        :user_id => 3
      )
    ])
  end

  it "renders a list of planned_hours" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
