require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :content => "MyString",
      :user => "MyString",
      :problem => "MyString",
      :additional => "MyString",
      :likes => 1,
      :dislikes => 1
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do
      assert_select "input#comment_content[name=?]", "comment[content]"
      assert_select "input#comment_user[name=?]", "comment[user]"
      assert_select "input#comment_problem[name=?]", "comment[problem]"
      assert_select "input#comment_additional[name=?]", "comment[additional]"
      assert_select "input#comment_likes[name=?]", "comment[likes]"
      assert_select "input#comment_dislikes[name=?]", "comment[dislikes]"
    end
  end
end
