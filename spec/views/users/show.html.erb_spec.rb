require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "Name",
      :surname => "Surname",
      :username => "Username",
      :password => "Password",
      :email => "Email",
      :role => "Role",
      :stars => 1,
      :profile => "Profile",
      :picture => "Picture",
      :additional => "Additional"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Surname/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Profile/)
    expect(rendered).to match(/Picture/)
    expect(rendered).to match(/Additional/)
  end
end
