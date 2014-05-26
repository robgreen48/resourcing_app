require 'spec_helper'

describe "client_fees/show" do
  before(:each) do
    @client_fee = assign(:client_fee, stub_model(ClientFee,
      :fee => 1,
      :client_id => 2,
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
