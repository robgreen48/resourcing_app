require 'spec_helper'

describe "holidays/new" do
  before(:each) do
    assign(:holiday, stub_model(Holiday,
      :days_off => 1,
      :user_id => 1,
      :month => ""
    ).as_new_record)
  end

  # it "renders new holiday form" do
  #   render

  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "form[action=?][method=?]", holidays_path, "post" do
  #     assert_select "input#holiday_days_off[name=?]", "holiday[days_off]"
  #     assert_select "input#holiday_user_id[name=?]", "holiday[user_id]"
  #     assert_select "input#holiday_month[name=?]", "holiday[month]"
  #   end
  # end
end
