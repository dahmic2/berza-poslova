require 'spec_helper'

describe "comments/edit" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :content => "MyString",
      :user => "MyString",
      :problem => "MyString",
      :additional => "MyString",
      :likes => 1,
      :dislikes => 1
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do
      assert_select "input#comment_content[name=?]", "comment[content]"
      assert_select "input#comment_user[name=?]", "comment[user]"
      assert_select "input#comment_problem[name=?]", "comment[problem]"
      assert_select "input#comment_additional[name=?]", "comment[additional]"
      assert_select "input#comment_likes[name=?]", "comment[likes]"
      assert_select "input#comment_dislikes[name=?]", "comment[dislikes]"
    end
  end
end
