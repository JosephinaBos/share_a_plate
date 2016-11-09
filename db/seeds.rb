# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(password: "secret", first_name: "joos", last_name: "ephina", address: "somewhere", bank_account: "over the rainbow", bio: "lekker eten lekker")
User.create(password: "secrettt", first_name: "driss", last_name: "france", address: "paris", bank_account: "yes", bio: "tres francais")

Event.create(name: "Refugeat", description: "Dinner for refugees", price: 4, max_guests: 4, event_address: "Somestreet 12", theme: "refugees", user_id: 1)
Event.create(name: "Fuck Trump", description: "Throw food at Trumo", price: 3, max_guests: 1000, event_address: "White House", theme: "refugees", user_id: 1 )
