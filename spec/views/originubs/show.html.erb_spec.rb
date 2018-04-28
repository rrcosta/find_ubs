require 'rails_helper'

RSpec.describe "originubs/show", type: :view do
  before(:each) do
    @originub = assign(:originub, Originub.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Neighborhood/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Tel/)
    expect(rendered).to match(/Dsc Estrut Fisic Ambiencia/)
    expect(rendered).to match(/Dsc Adap Defic Fisic Idosos/)
    expect(rendered).to match(/Dsc Equipamentos/)
    expect(rendered).to match(/Dsc Medicamentos/)
  end
end
