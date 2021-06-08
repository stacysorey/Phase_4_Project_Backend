# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table "entries", force: :cascade do |t|
#   t.string "title"
#   t.text "description"
#   t.date "date"
#   t.integer "journal_id", null: false
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["journal_id"], name: "index_entries_on_journal_id"
# end
Journal.destroy_all


journal_1 = Journal.create(title: "Journal 1")
journal_2 = Journal.create(title: "Journal 2")
journal_3 = Journal.create(title: "Journal 3")

journal_1.entries.build(
  title: "Entry 1",
  description: "This is the description for entry 1!",
  date: DateTime.now
)

journal_1.entries.build(
  title: "Entry 2",
  description: "This is the description for entry 2!",
  date: Date.today
)

journal_1.entries.build(
  title: "Entry 3",
  description: "This is the description for entry 3!",
  date: Date.today
)

journal_2.entries.build(
  title: "Entry 1",
  description: "This is the description for entry 1!",
  date: Date.today
)

journal_2.entries.build(
  title: "Entry 2",
  description: "This is the description for entry 2!",
  date: Date.today
)

journal_2.entries.build(
  title: "Entry 3",
  description: "This is the description for entry 3!",
  date: Date.today
)

journal_3.entries.build(
  title: "Entry 1",
  description: "This is the description for entry 1!",
  date: Date.today
)

journal_3.entries.build(
  title: "Entry 2",
  description: "This is the description for entry 2!",
  date: Date.today
)

journal_3.entries.build(
  title: "Entry 3",
  description: "This is the description for entry 3!",
  date: Date.today
)

journal_1.save
journal_2.save
journal_3.save