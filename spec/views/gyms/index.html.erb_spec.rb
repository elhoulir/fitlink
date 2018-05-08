require 'rails_helper'

RSpec.describe "gyms/index", type: :view do
  before(:each) do
    assign(:gyms, [
      Gym.create!(
        :name => "Name",
        :description => "MyText",
        :abn => "Abn",
        :address => "Address",
        :contact_number => "Contact Number",
        :image_data => "MyText",
        :user => nil
      ),
      Gym.create!(
        :name => "Name",
        :description => "MyText",
        :abn => "Abn",
        :address => "Address",
        :contact_number => "Contact Number",
        :image_data => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of gyms" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Abn".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Number".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
