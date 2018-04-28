# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_04_28_152239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "originubs", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.integer "cod_munic"
    t.integer "cod_cnes"
    t.string "name"
    t.string "address"
    t.string "neighborhood"
    t.string "city"
    t.string "tel"
    t.string "dsc_estrut_fisic_ambiencia"
    t.string "dsc_adap_defic_fisic_idosos"
    t.string "dsc_equipamentos"
    t.string "dsc_medicamentos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
