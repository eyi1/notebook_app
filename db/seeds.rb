# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# users = User.create(
#     {
#         name: "EJ",
#         email_string: "ej@ej.com",
#         password: "eunjeong"
#     },
#     {
#         name: "nina",
#         email_string: "nina@nina.com",
#         password: "ninasong"
#     },
#     {
#         name: "isrra",
#         email_string: "isrra@isrra.com",
#         password: "issrakang"
#     }
# )

# notebooks = Notebook.create(
#     [
#         {
#             name: "Daily Journal",
#             user_id: 1
#         }, 
#         {
#             name: "Science",
#             user_id: 2
#         },
#         {
#             name: "Meal Plans",
#             User_id: 3
#         }
#     ])

#     notes = Note.create(
#     [
#         {
#             title: "Today is about",
#             content: "Gratitude",
#             notebook_id: 1
#         }, 
#         {
#             title: "Physics chapter one",
#             content: "Force means blah blah",
#             notebook_id: 2
#         },
#         {
#             title: "Food",
#             content: "breakfast, lunch, dinner",
#             notebook_id: 3
#         }
#     ])

User.create(name: "nina", email_string: "nina@nina.com", password: "nina123")
User.create(name: "isra", email_string: "isra@nina.com", password: "isra123")
User.create(name: "mary", email_string: "mary@mary.com", password: "mary123")
# User.create(name: "mimi", email_string: "mimi@mimi.com", password: "mimi123")
# User.create(name: "ralph", email_string: "ralph@ralph.com", password: "ralph123")

Notebook.create(name: "daily notebook", user_id:"1")
Notebook.create(name: "meal notebook", user_id:"2")
Notebook.create(name: "travel notebook", user_id:"3")
Notebook.create(name: "cooking book", user_id:"1")

Note.create(title:"Today", content:"Today was blah blah", notebook_id:"1")
Note.create(title:"Breakfast", content:"Oatmeal blah blah", notebook_id:"2")
Note.create(title:"Croatia Itinerary", content:"Croatia things blah blah", notebook_id:"3")
Note.create(title:"Kimchi: how to", content:"Kimchi recipe was blah blah", notebook_id:"4")