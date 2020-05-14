require 'rails_helper'

RSpec.describe "places/edit", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      :name => "MyString",
      :address => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders the edit place form" do
    render

    assert_select "form[action=?][method=?]", place_path(@place), "post" do

      assert_select "input[name=?]", "place[name]"

      assert_select "input[name=?]", "place[address]"

      assert_select "input[name=?]", "place[latitude]"

      assert_select "input[name=?]", "place[longitude]"
    end
  end
end
