require 'rails_helper'

RSpec.describe "originubs/edit", type: :view do
  before(:each) do
    @originub = assign(:originub, Originub.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :cod_munic => 1,
      :cod_cnes => 1,
      :name => "MyString",
      :address => "MyString",
      :neighborhood => "MyString",
      :city => "MyString",
      :tel => "MyString",
      :dsc_estrut_fisic_ambiencia => "MyString",
      :dsc_adap_defic_fisic_idosos => "MyString",
      :dsc_equipamentos => "MyString",
      :dsc_medicamentos => "MyString"
    ))
  end

  it "renders the edit originub form" do
    render

    assert_select "form[action=?][method=?]", originub_path(@originub), "post" do

      assert_select "input[name=?]", "originub[latitude]"

      assert_select "input[name=?]", "originub[longitude]"

      assert_select "input[name=?]", "originub[cod_munic]"

      assert_select "input[name=?]", "originub[cod_cnes]"

      assert_select "input[name=?]", "originub[name]"

      assert_select "input[name=?]", "originub[address]"

      assert_select "input[name=?]", "originub[neighborhood]"

      assert_select "input[name=?]", "originub[city]"

      assert_select "input[name=?]", "originub[tel]"

      assert_select "input[name=?]", "originub[dsc_estrut_fisic_ambiencia]"

      assert_select "input[name=?]", "originub[dsc_adap_defic_fisic_idosos]"

      assert_select "input[name=?]", "originub[dsc_equipamentos]"

      assert_select "input[name=?]", "originub[dsc_medicamentos]"
    end
  end
end
