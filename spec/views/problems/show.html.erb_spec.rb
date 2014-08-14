require 'spec_helper'

describe "problems/show" do
  before(:each) do
    @problem = assign(:problem, stub_model(Problem,
      :title => "Title",
      :content => "Content",
      :user => "User",
      :category => "Category",
      :status => "Status",
      :additional => "Additional"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Additional/)
  end
end
