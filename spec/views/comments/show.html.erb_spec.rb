require 'spec_helper'

describe "comments/show" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :content => "Content",
      :user => "User",
      :problem => "Problem",
      :additional => "Additional",
      :likes => 1,
      :dislikes => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Problem/)
    expect(rendered).to match(/Additional/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
