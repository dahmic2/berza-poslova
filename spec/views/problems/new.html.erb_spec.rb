require 'spec_helper'

describe "problems/new" do
  before(:each) do
    assign(:problem, stub_model(Problem,
      :title => "MyString",
      :content => "MyString",
      :user => "MyString",
      :category => "MyString",
      :status => "MyString",
      :additional => "MyString"
    ).as_new_record)
  end

  it "renders new problem form" do
    render

    assert_select "form[action=?][method=?]", problems_path, "post" do
      assert_select "input#problem_title[name=?]", "problem[title]"
      assert_select "input#problem_content[name=?]", "problem[content]"
      assert_select "input#problem_user[name=?]", "problem[user]"
      assert_select "input#problem_category[name=?]", "problem[category]"
      assert_select "input#problem_status[name=?]", "problem[status]"
      assert_select "input#problem_additional[name=?]", "problem[additional]"
    end
  end
end
