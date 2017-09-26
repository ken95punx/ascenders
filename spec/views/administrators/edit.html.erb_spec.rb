require 'rails_helper'

RSpec.describe "administrators/edit", type: :view do
  before(:each) do
    @administrator = assign(:administrator, Administrator.create!(
      :name => "MyString",
      :email => "MyString",
<<<<<<< HEAD
      :password_digest => "MyString",
=======
      :crypted_password => "MyString",
>>>>>>> eb663406f76b632b4afcef86367bd126b942239c
      :salt => "MyString"
    ))
  end

  it "renders the edit administrator form" do
    render

    assert_select "form[action=?][method=?]", administrator_path(@administrator), "post" do

      assert_select "input[name=?]", "administrator[name]"

      assert_select "input[name=?]", "administrator[email]"

<<<<<<< HEAD
      assert_select "input[name=?]", "administrator[password_digest]"
=======
      assert_select "input[name=?]", "administrator[crypted_password]"
>>>>>>> eb663406f76b632b4afcef86367bd126b942239c

      assert_select "input[name=?]", "administrator[salt]"
    end
  end
end
