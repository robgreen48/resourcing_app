require 'spec_helper'

describe "holidays/show" do
  before(:each) do
    @holiday = assign(:holiday, stub_model(Holiday,
      :days_off => 1,
      :user_id => 2,
      :month => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(//)
  end
end
