# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

  contactList = ContactList.create([{list_name: "Work"}, {list_name: "School"}, {list_name: "Family and friends"}])

  contacts = Contact.create([
      {name: "Fulano", phone_number: "+55 83 99999-9999", contact_lists_id: contactList[0].id, phone_type: "mobile"},
      {name: "Sicrano", phone_number: "+55 81 99999-9999", contact_lists_id: contactList[1].id, phone_type: "fixed"},
      {name: "Beltrano", phone_number: "+55 82 99999-9999", contact_lists_id: contactList[2].id, phone_type: "mobile"},])
