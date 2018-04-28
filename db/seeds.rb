# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

puts 'Carregando informacoes sobre UBS.....'
puts 'Obs: Este procedimento pode demorar'

csv_text = File.read('db/planilha_ubs/ubs.csv')
csv = CSV.parse(csv_text, :headers => true)

csv.each do |row|
  Originub.create!(
    latitude:  row.to_hash['vlr_latitude'],
    longitude: row.to_hash['vlr_longitude'],
    cod_munic: row.to_hash['cod_munic'],
    cod_cnes:  row.to_hash['cod_cnes'],
    name:      row.to_hash['nom_estab'],
    address:   row.to_hash['dsc_endereco'],
    neighborhood: row.to_hash['dsc_bairro'],
    city: row.to_hash['dsc_cidade'],
    tel: row.to_hash['dsc_telefone'],
    dsc_estrut_fisic_ambiencia: row.to_hash['dsc_estrut_fisic_ambiencia'],
    dsc_adap_defic_fisic_idosos: row.to_hash['dsc_adap_defic_fisic_idosos'],
    dsc_equipamentos: row.to_hash['dsc_equipamentos'],
    dsc_medicamentos: row.to_hash['dsc_medicamentos']
  )
end

puts 'Informacoes carregadas com sucesso'

