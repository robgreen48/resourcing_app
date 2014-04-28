require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "MyString",
      :email => "MyString",
      :team => "MyString",
      :speciality => "MyString",
      :normal_hours => 1,
      :admin => false,
      :line_manager => 1
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_team[name=?]", "user[team]"
      assert_select "input#user_speciality[name=?]", "user[speciality]"
      assert_select "input#user_normal_hours[name=?]", "user[normal_hours]"
      assert_select "input#user_admin[name=?]", "user[admin]"
      assert_select "input#user_line_manager[name=?]", "user[line_manager]"
    end
  end
end
