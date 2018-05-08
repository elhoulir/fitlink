require 'rails_helper'

RSpec.describe "gyms/new", type: :view do
  before(:each) do
    assign(:gym, Gym.new(
      :name => "MyString",
      :description => "MyText",
      :abn => "MyString",
      :address => "MyString",
      :contact_number => "MyString",
      :image_data => "MyText",
      :user => nil
    ))
  end

  it "renders new gym form" do
    render

    assert_select "form[action=?][method=?]", gyms_path, "post" do

      assert_select "input[name=?]", "gym[name]"

      assert_select "textarea[name=?]", "gym[description]"

      assert_select "input[name=?]", "gym[abn]"

      assert_select "input[name=?]", "gym[address]"

      assert_select "input[name=?]", "gym[contact_number]"

      assert_select "textarea[name=?]", "gym[image_data]"

      assert_select "input[name=?]", "gym[user_id]"
    end
  end
end
