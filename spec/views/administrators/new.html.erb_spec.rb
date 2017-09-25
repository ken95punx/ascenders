require 'rails_helper'

RSpec.describe "administrators/new", type: :view do
  before(:each) do
    assign(:administrator, Administrator.new(
      :name => "MyString",
      :email => "MyString",
      :password_digest => "MyString",
      :salt => "MyString"
    ))
  end

  it "renders new administrator form" do
    render

    assert_select "form[action=?][method=?]", administrators_path, "post" do

      assert_select "input[name=?]", "administrator[name]"

      assert_select "input[name=?]", "administrator[email]"

      assert_select "input[name=?]", "administrator[password_digest]"

      assert_select "input[name=?]", "administrator[salt]"
    end
  end
end
