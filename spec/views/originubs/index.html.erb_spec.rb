require 'rails_helper'

RSpec.describe "originubs/index", type: :view do
  before(:each) do
    assign(:originubs, [
      Originub.create!(
        :latitude => 2.5,
        :longitude => 3.5,
        :cod_munic => 4,
        :cod_cnes => 5,
        :name => "Name",
        :address => "Address",
        :neighborhood => "Neighborhood",
        :city => "City",
        :tel => "Tel",
        :dsc_estrut_fisic_ambiencia => "Dsc Estrut Fisic Ambiencia",
        :dsc_adap_defic_fisic_idosos => "Dsc Adap Defic Fisic Idosos",
        :dsc_equipamentos => "Dsc Equipamentos",
        :dsc_medicamentos => "Dsc Medicamentos"
      ),
      Originub.create!(
        :latitude => 2.5,
        :longitude => 3.5,
        :cod_munic => 4,
        :cod_cnes => 5,
        :name => "Name",
        :address => "Address",
        :neighborhood => "Neighborhood",
        :city => "City",
        :tel => "Tel",
        :dsc_estrut_fisic_ambiencia => "Dsc Estrut Fisic Ambiencia",
        :dsc_adap_defic_fisic_idosos => "Dsc Adap Defic Fisic Idosos",
        :dsc_equipamentos => "Dsc Equipamentos",
        :dsc_medicamentos => "Dsc Medicamentos"
      )
    ])
  end

  it "renders a list of originubs" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Neighborhood".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Dsc Estrut Fisic Ambiencia".to_s, :count => 2
    assert_select "tr>td", :text => "Dsc Adap Defic Fisic Idosos".to_s, :count => 2
    assert_select "tr>td", :text => "Dsc Equipamentos".to_s, :count => 2
    assert_select "tr>td", :text => "Dsc Medicamentos".to_s, :count => 2
  end
end
