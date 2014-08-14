require 'spec_helper'

describe "problems/index" do
  before(:each) do
    assign(:problems, [
      stub_model(Problem,
        :title => "Title",
        :content => "Content",
        :user => "User",
        :category => "Category",
        :status => "Status",
        :additional => "Additional"
      ),
      stub_model(Problem,
        :title => "Title",
        :content => "Content",
        :user => "User",
        :category => "Category",
        :status => "Status",
        :additional => "Additional"
      )
    ])
  end

  it "renders a list of problems" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Additional".to_s, :count => 2
  end
end
