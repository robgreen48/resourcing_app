require 'spec_helper'

describe "clients/new" do
  before(:each) do
    assign(:client, stub_model(Client,
      :name => "MyString",
      :email => "MyString",
      :team => "MyString",
      :account_director => 1
    ).as_new_record)
  end

  it "renders new client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clients_path, "post" do
      assert_select "input#client_name[name=?]", "client[name]"
      assert_select "input#client_email[name=?]", "client[email]"
      assert_select "input#client_team[name=?]", "client[team]"
      assert_select "input#client_account_director[name=?]", "client[account_director]"
    end
  end
end
