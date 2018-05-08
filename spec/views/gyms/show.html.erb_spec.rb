require 'rails_helper'

RSpec.describe "gyms/show", type: :view do
  before(:each) do
    @gym = assign(:gym, Gym.create!(
      :name => "Name",
      :description => "MyText",
      :abn => "Abn",
      :address => "Address",
      :contact_number => "Contact Number",
      :image_data => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Abn/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Contact Number/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
