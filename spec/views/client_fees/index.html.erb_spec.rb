require 'spec_helper'

describe "client_fees/index" do
  before(:each) do
    assign(:client_fees, [
      stub_model(ClientFee,
        :fee => 1,
        :client_id => 2,
        :month => DateTime.new
      ),
      stub_model(ClientFee,
        :fee => 1,
        :client_id => 2,
        :month => DateTime.new
      )
    ])

    @view = DateTime.new
  end

  # it "renders a list of client_fees" do
  #   render
  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   # assert_select "tr>td", :text => 1.to_s, :count => 2
  #   # assert_select "tr>td", :text => 2.to_s, :count => 2
  #   # # assert_select "tr>td", :text => "".to_s, :count => 2
  # end
end
