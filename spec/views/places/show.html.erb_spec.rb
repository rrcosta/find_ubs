require 'rails_helper'

RSpec.describe "places/show", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      :name => "Name",
      :address => "Address",
      :latitude => 2.5,
      :longitude => 3.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
  end
end
