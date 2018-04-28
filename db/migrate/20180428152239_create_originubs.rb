class CreateOriginubs < ActiveRecord::Migration[5.2]
  def change
    create_table :originubs do |t|
      t.float :latitude
      t.float :longitude
      t.integer :cod_munic
      t.integer :cod_cnes
      t.string :name
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :tel
      t.string :dsc_estrut_fisic_ambiencia
      t.string :dsc_adap_defic_fisic_idosos
      t.string :dsc_equipamentos
      t.string :dsc_medicamentos

      t.timestamps
    end
  end
end
