# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150504174642) do

  create_table "datacite_contributors", force: :cascade do |t|
    t.string   "contributorName"
    t.integer  "name_identifier_id"
    t.integer  "resource_id"
    t.integer  "affiliation_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "contributorType"
  end

  create_table "datacite_creators", force: :cascade do |t|
    t.string   "creatorName"
    t.integer  "name_identifier_id"
    t.integer  "resource_id"
    t.integer  "affiliation_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "datacite_dates", force: :cascade do |t|
    t.date     "date"
    t.integer  "dateType",    default: 0
    t.integer  "resource_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "datacite_descriptions", force: :cascade do |t|
    t.text     "description"
    t.integer  "descriptionType", default: 0
    t.integer  "resource_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "datacite_name_identifiers", force: :cascade do |t|
    t.string   "nameIdentifier"
    t.string   "nameIdentifierScheme"
    t.text     "schemeURI"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "datacite_publishers", force: :cascade do |t|
    t.string   "publisher"
    t.integer  "resource_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "datacite_related_identifier_types", force: :cascade do |t|
    t.string   "relatedIdentifierType"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "datacite_related_identifiers", force: :cascade do |t|
    t.string   "relatedIdentifier"
    t.integer  "relatedIdentifierType_id"
    t.integer  "relationType_id"
    t.integer  "resource_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "datacite_relation_types", force: :cascade do |t|
    t.string   "relationType",          default: "0"
    t.string   "relatedMetadataScheme"
    t.text     "schemeURI"
    t.string   "schemeType"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "datacite_subjects", force: :cascade do |t|
    t.string   "subject"
    t.string   "subjectScheme"
    t.text     "subjectURI"
    t.integer  "resource_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
