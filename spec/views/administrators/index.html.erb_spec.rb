require 'rails_helper'

RSpec.describe "administrators/index", type: :view do
  before(:each) do
    assign(:administrators, [
      Administrator.create!(
        :name => "Name",
        :email => "Email",
        :password_digest => "Password Digest",
        :salt => "Salt"
      ),
      Administrator.create!(
        :name => "Name",
        :email => "Email",
        :password_digest => "Password Digest",
        :salt => "Salt"
      )
    ])
  end

  it "renders a list of administrators" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Salt".to_s, :count => 2
  end
end
