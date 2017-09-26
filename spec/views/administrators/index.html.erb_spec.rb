require 'rails_helper'

RSpec.describe "administrators/index", type: :view do
  before(:each) do
    assign(:administrators, [
      Administrator.create!(
        :name => "Name",
        :email => "Email",
<<<<<<< HEAD
        :password_digest => "Password Digest",
=======
        :crypted_password => "Crypted Password",
>>>>>>> eb663406f76b632b4afcef86367bd126b942239c
        :salt => "Salt"
      ),
      Administrator.create!(
        :name => "Name",
        :email => "Email",
<<<<<<< HEAD
        :password_digest => "Password Digest",
=======
        :crypted_password => "Crypted Password",
>>>>>>> eb663406f76b632b4afcef86367bd126b942239c
        :salt => "Salt"
      )
    ])
  end

  it "renders a list of administrators" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
<<<<<<< HEAD
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
=======
    assert_select "tr>td", :text => "Crypted Password".to_s, :count => 2
>>>>>>> eb663406f76b632b4afcef86367bd126b942239c
    assert_select "tr>td", :text => "Salt".to_s, :count => 2
  end
end
