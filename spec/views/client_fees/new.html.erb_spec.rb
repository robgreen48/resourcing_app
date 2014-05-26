require 'spec_helper'

describe "client_fees/new" do
  before(:each) do
    assign(:client_fee, stub_model(ClientFee,
      :fee => 1,
      :client_id => 1,
      :month => ""
    ).as_new_record)
  end

  it "renders new client_fee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", client_fees_path, "post" do
      assert_select "input#client_fee_fee[name=?]", "client_fee[fee]"
      assert_select "input#client_fee_client_id[name=?]", "client_fee[client_id]"
      assert_select "input#client_fee_month[name=?]", "client_fee[month]"
    end
  end
end
