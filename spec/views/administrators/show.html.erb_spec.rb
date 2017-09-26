require 'rails_helper'

RSpec.describe "administrators/show", type: :view do
  before(:each) do
    @administrator = assign(:administrator, Administrator.create!(
      :name => "Name",
      :email => "Email",
<<<<<<< HEAD
      :password_digest => "Password Digest",
=======
      :crypted_password => "Crypted Password",
>>>>>>> eb663406f76b632b4afcef86367bd126b942239c
      :salt => "Salt"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
<<<<<<< HEAD
    expect(rendered).to match(/Password Digest/)
=======
    expect(rendered).to match(/Crypted Password/)
>>>>>>> eb663406f76b632b4afcef86367bd126b942239c
    expect(rendered).to match(/Salt/)
  end
end
