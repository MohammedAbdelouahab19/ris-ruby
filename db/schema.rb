# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_02_10_165444) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conventions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "correspondings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "establishments", force: :cascade do |t|
    t.string "name"
    t.string "default_lang"
    t.string "invoice_number_pattern"
    t.string "receipt_number_pattern"
    t.string "support_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "city_id", null: false
    t.bigint "report_template_id", null: false
    t.index ["city_id"], name: "index_establishments_on_city_id"
    t.index ["report_template_id"], name: "index_establishments_on_report_template_id"
  end

  create_table "examination_options", force: :cascade do |t|
    t.bigint "examination_id"
    t.bigint "modality_option_id"
    t.index ["examination_id"], name: "index_examination_options_on_examination_id"
    t.index ["modality_option_id"], name: "index_examination_options_on_modality_option_id"
  end

  create_table "examinations", force: :cascade do |t|
    t.float "patient_weight"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "patient_id", null: false
    t.bigint "service_id"
    t.bigint "nurse_id"
    t.bigint "reanimator_id"
    t.bigint "corresponding_id"
    t.bigint "convention_id"
    t.bigint "prescriber_id"
    t.bigint "technical_id"
    t.bigint "radiologist_id"
    t.index ["convention_id"], name: "index_examinations_on_convention_id"
    t.index ["corresponding_id"], name: "index_examinations_on_corresponding_id"
    t.index ["nurse_id"], name: "index_examinations_on_nurse_id"
    t.index ["patient_id"], name: "index_examinations_on_patient_id"
    t.index ["prescriber_id"], name: "index_examinations_on_prescriber_id"
    t.index ["radiologist_id"], name: "index_examinations_on_radiologist_id"
    t.index ["reanimator_id"], name: "index_examinations_on_reanimator_id"
    t.index ["service_id"], name: "index_examinations_on_service_id"
    t.index ["technical_id"], name: "index_examinations_on_technical_id"
  end

  create_table "modalities", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modality_option", force: :cascade do |t|
    t.bigint "modality_id"
    t.bigint "modality_option_id"
    t.index ["modality_id"], name: "index_modality_option_on_modality_id"
    t.index ["modality_option_id"], name: "index_modality_option_on_modality_option_id"
  end

  create_table "modality_options", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nurses", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operations", force: :cascade do |t|
    t.string "name"
    t.string "operation_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "resource_id", null: false
    t.index ["resource_id"], name: "index_operations_on_resource_id"
  end

  create_table "organs", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pathologies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pathology_zone_id", null: false
    t.bigint "pathology_category_id", null: false
    t.index ["pathology_category_id"], name: "index_pathologies_on_pathology_category_id"
    t.index ["pathology_zone_id"], name: "index_pathologies_on_pathology_zone_id"
  end

  create_table "pathology_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pathology_zones", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthday"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "city_id", null: false
    t.index ["city_id"], name: "index_patients_on_city_id"
  end

  create_table "prescribers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.string "email"
    t.string "address"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "structure_id", null: false
    t.bigint "speciality_id", null: false
    t.bigint "service_id"
    t.index ["service_id"], name: "index_prescribers_on_service_id"
    t.index ["speciality_id"], name: "index_prescribers_on_speciality_id"
    t.index ["structure_id"], name: "index_prescribers_on_structure_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "unit_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "reanimators", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "direction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "report_pathologies", force: :cascade do |t|
    t.bigint "report_id"
    t.bigint "pathology_id"
    t.index ["pathology_id"], name: "index_report_pathologies_on_pathology_id"
    t.index ["report_id"], name: "index_report_pathologies_on_report_id"
  end

  create_table "report_template_radiologists", force: :cascade do |t|
    t.bigint "report_template_id"
    t.bigint "radiologist_id"
    t.index ["radiologist_id"], name: "index_report_template_radiologists_on_radiologist_id"
    t.index ["report_template_id"], name: "index_report_template_radiologists_on_report_template_id"
  end

  create_table "report_templates", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "room_id", null: false
    t.index ["room_id"], name: "index_report_templates_on_room_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "status"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "examination_id", null: false
    t.index ["examination_id"], name: "index_reports_on_examination_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "role_action", force: :cascade do |t|
    t.bigint "role_id"
    t.bigint "action_id"
    t.index ["action_id"], name: "index_role_action_on_action_id"
    t.index ["role_id"], name: "index_role_action_on_role_id"
  end

  create_table "role_operation", force: :cascade do |t|
    t.bigint "role_id"
    t.bigint "operation_id"
    t.index ["operation_id"], name: "index_role_operation_on_operation_id"
    t.index ["role_id"], name: "index_role_operation_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_key"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_region", force: :cascade do |t|
    t.bigint "room_id"
    t.bigint "region_id"
    t.index ["region_id"], name: "index_room_region_on_region_id"
    t.index ["room_id"], name: "index_room_region_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "ip"
    t.string "application_entity_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "service_id", null: false
    t.bigint "modality_id", null: false
    t.index ["modality_id"], name: "index_rooms_on_modality_id"
    t.index ["service_id"], name: "index_rooms_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "establishment_id"
    t.index ["establishment_id"], name: "index_services_on_establishment_id"
  end

  create_table "settings", force: :cascade do |t|
    t.string "setting_key"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "structures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_organ", force: :cascade do |t|
    t.bigint "test_id"
    t.bigint "organ_id"
    t.index ["organ_id"], name: "index_test_organ_on_organ_id"
    t.index ["test_id"], name: "index_test_organ_on_test_id"
  end

  create_table "tests", force: :cascade do |t|
    t.date "date"
    t.string "status"
    t.boolean "underAnesthesia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "examination_id", null: false
    t.index ["examination_id"], name: "index_tests_on_examination_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "title"
    t.string "phone_number"
    t.string "hl7_code"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workspaces", force: :cascade do |t|
    t.string "api_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "establishments", "cities"
  add_foreign_key "establishments", "report_templates"
  add_foreign_key "examinations", "conventions"
  add_foreign_key "examinations", "correspondings"
  add_foreign_key "examinations", "nurses"
  add_foreign_key "examinations", "patients"
  add_foreign_key "examinations", "prescribers"
  add_foreign_key "examinations", "reanimators"
  add_foreign_key "examinations", "services"
  add_foreign_key "examinations", "users", column: "radiologist_id"
  add_foreign_key "examinations", "users", column: "technical_id"
  add_foreign_key "operations", "resources"
  add_foreign_key "pathologies", "pathology_categories"
  add_foreign_key "pathologies", "pathology_zones"
  add_foreign_key "patients", "cities"
  add_foreign_key "prescribers", "services"
  add_foreign_key "prescribers", "specialities"
  add_foreign_key "prescribers", "structures"
  add_foreign_key "products", "categories"
  add_foreign_key "report_template_radiologists", "users", column: "radiologist_id"
  add_foreign_key "report_templates", "rooms"
  add_foreign_key "reports", "examinations"
  add_foreign_key "rooms", "modalities"
  add_foreign_key "rooms", "services"
  add_foreign_key "services", "establishments"
  add_foreign_key "tests", "examinations"
end
