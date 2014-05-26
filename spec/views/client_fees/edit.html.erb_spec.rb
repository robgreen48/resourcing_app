require 'spec_helper'

describe "client_fees/edit" do
  before(:each) do
    @client_fee = assign(:client_fee, stub_model(ClientFee,
      :fee => 1,
      :client_id => 1,
      :month => ""
    ))
  end

  it "renders the edit client_fee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", client_fee_path(@client_fee), "post" do
      assert_select "input#client_fee_fee[name=?]", "client_fee[fee]"
      assert_select "input#client_fee_client_id[name=?]", "client_fee[client_id]"
      assert_select "input#client_fee_month[name=?]", "client_fee[month]"
    end
  end
end
