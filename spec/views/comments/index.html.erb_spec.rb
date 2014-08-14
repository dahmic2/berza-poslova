require 'spec_helper'

describe "comments/index" do
  before(:each) do
    assign(:comments, [
      stub_model(Comment,
        :content => "Content",
        :user => "User",
        :problem => "Problem",
        :additional => "Additional",
        :likes => 1,
        :dislikes => 2
      ),
      stub_model(Comment,
        :content => "Content",
        :user => "User",
        :problem => "Problem",
        :additional => "Additional",
        :likes => 1,
        :dislikes => 2
      )
    ])
  end

  it "renders a list of comments" do
    render
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Problem".to_s, :count => 2
    assert_select "tr>td", :text => "Additional".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
