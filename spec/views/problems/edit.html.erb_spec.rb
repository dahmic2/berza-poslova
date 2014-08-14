require 'spec_helper'

describe "problems/edit" do
  before(:each) do
    @problem = assign(:problem, stub_model(Problem,
      :title => "MyString",
      :content => "MyString",
      :user => "MyString",
      :category => "MyString",
      :status => "MyString",
      :additional => "MyString"
    ))
  end

  it "renders the edit problem form" do
    render

    assert_select "form[action=?][method=?]", problem_path(@problem), "post" do
      assert_select "input#problem_title[name=?]", "problem[title]"
      assert_select "input#problem_content[name=?]", "problem[content]"
      assert_select "input#problem_user[name=?]", "problem[user]"
      assert_select "input#problem_category[name=?]", "problem[category]"
      assert_select "input#problem_status[name=?]", "problem[status]"
      assert_select "input#problem_additional[name=?]", "problem[additional]"
    end
  end
end
