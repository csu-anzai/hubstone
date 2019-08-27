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


ActiveRecord::Schema.define(version: 2019_08_27_093809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appartements", force: :cascade do |t|
    t.string "livraison"
    t.boolean "actabilite"
    t.string "ville"
    t.integer "prix"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "lot"
    t.string "etage"
    t.string "typologie"
    t.string "disponibilite"
    t.string "promoteur"
    t.string "logo_promoteur"
    t.integer "departement"
    t.string "nom_programme"
    t.string "image"
  end

  create_table "clients", force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.string "civilite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "simulations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "client_id"
    t.bigint "appartement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appartement_id"], name: "index_simulations_on_appartement_id"
    t.index ["client_id"], name: "index_simulations_on_client_id"
    t.index ["user_id"], name: "index_simulations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "prenom"
    t.string "nom"
    t.string "carte_t"
    t.string "raison_sociale"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clients", "users"
  add_foreign_key "simulations", "appartements"
  add_foreign_key "simulations", "clients"
  add_foreign_key "simulations", "users"
end
