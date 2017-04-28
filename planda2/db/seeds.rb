# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.destroy_all
Comment.destroy_all


Task.create(name:"Gym",frequency:"Daily",completeness_level:0,user_id:1)
Task.create(name:"Clean Bathroom",frequency:"Weekly",completeness_level:0,user_id:1)
Task.create(name:"Tanning",frequency:"Daily",completeness_level:0,user_id:1)
Task.create(name:"Laundry",frequency:"Weekly",completeness_level:0,user_id:1)
Task.create(name:"Homework",frequency:"Daily",completeness_level:0,user_id:1)
Task.create(name:"Walk the Dog",frequency:"Daily",completeness_level:0,user_id:1)
Comment.create(content:"OVERDONE",task_id:3)
