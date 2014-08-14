require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "MyString",
      :surname => "MyString",
      :username => "MyString",
      :password => "MyString",
      :email => "MyString",
      :role => "MyString",
      :stars => 1,
      :profile => "MyString",
      :picture => "MyString",
      :additional => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_surname[name=?]", "user[surname]"
      assert_select "input#user_username[name=?]", "user[username]"
      assert_select "input#user_password[name=?]", "user[password]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_role[name=?]", "user[role]"
      assert_select "input#user_stars[name=?]", "user[stars]"
      assert_select "input#user_profile[name=?]", "user[profile]"
      assert_select "input#user_picture[name=?]", "user[picture]"
      assert_select "input#user_additional[name=?]", "user[additional]"
    end
  end
end
