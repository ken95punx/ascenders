require 'rails_helper'

RSpec.describe "administrators/show", type: :view do
  before(:each) do
    @administrator = assign(:administrator, Administrator.create!(
      :name => "Name",
      :email => "Email",
      :password_digest => "Password Digest",
      :salt => "Salt"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/Salt/)
  end
end
