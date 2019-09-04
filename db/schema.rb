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

ActiveRecord::Schema.define(version: 2019_09_03_132607) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appartements", force: :cascade do |t|
    t.string "livraison"
    t.string "actabilite"
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
    t.string "adresse"
    t.integer "scoring_prix"
    t.integer "scoring_rendement"
    t.integer "scoring_potentiel"
    t.integer "scoring_energie"
    t.integer "scoring_qualite"
    t.integer "scoring_amenagement"
    t.integer "scoring_dynamisme"
    t.integer "scoring_amenites"
    t.integer "scoring_accessibilite"
    t.integer "scoring_equipements"
    t.float "loyer"
    t.float "charges"
  end

  create_table "clients", force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.string "civilite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.float "tmi"
    t.string "image"
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "comparaisons", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "selections", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "appartement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "comparaison", default: false
    t.index ["appartement_id"], name: "index_selections_on_appartement_id"
    t.index ["user_id"], name: "index_selections_on_user_id"
  end

  create_table "simulations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "client_id"
    t.bigint "appartement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "emprunt"
    t.integer "duree"
    t.float "taux_credit"
    t.float "adi"
    t.float "revalo_prix"
    t.float "revalo_loyers"
    t.string "details_simulations", default: [], array: true
    t.float "apport"
    t.float "effort_treso_tot"
    t.float "effort_treso_moyen"
    t.float "benefice_net"
    t.float "economie_impot_tot"
    t.float "loyers_tot"
    t.float "capital_net"
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
  add_foreign_key "selections", "appartements"
  add_foreign_key "selections", "users"
  add_foreign_key "simulations", "appartements"
  add_foreign_key "simulations", "clients"
  add_foreign_key "simulations", "users"
end
