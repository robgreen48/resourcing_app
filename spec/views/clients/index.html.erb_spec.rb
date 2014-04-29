require 'spec_helper'

describe "clients/index" do
  before(:each) do
    assign(:clients, [
      stub_model(Client,
        :name => "Name",
        :email => "Email",
        :team => "Team",
        :account_director => 2
      ),
      stub_model(Client,
        :name => "Name",
        :email => "Email",
        :team => "Team",
        :account_director => 2
      )
    ])
  end

  it "renders a list of clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Team".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
