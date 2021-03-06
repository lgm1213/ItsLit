require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :phone => "MyString",
      :zip => "MyString",
      :country => "MyString",
      :gender => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_phone[name=?]", "user[phone]"

      assert_select "input#user_zip[name=?]", "user[zip]"

      assert_select "input#user_country[name=?]", "user[country]"

      assert_select "input#user_gender[name=?]", "user[gender]"
    end
  end
end
