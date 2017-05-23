# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Team.destroy_all
User.destroy_all
Task.destroy_all
Comment.destroy_all

Team.create(name: "Shoebill")
Team.create(name: "Ada")


User.create(email:"Ali@email.com",password:"123456",name: "Ali")
User.create(email:"Maria@email.com",password:"123456",name: "Maria")

Task.create(name:"Gym",frequency:"Daily",completeness_level:"Finished!",cycles:0,completed:0,user_id:1,team_id:1)
Task.create(name:"Tanning",frequency:"Weekly",completeness_level:"Finished!",cycles:0,completed:0,user_id:1,team_id:1)
Task.create(name:"Laundry",frequency:"Weekly",completeness_level:"Still Need to Start",cycles:0,completed:0,user_id:1,team_id:1)
Task.create(name:"Clean bathroom",frequency:"Weekly", completeness_level:"Still Need to Start",cycles:0,completed:0,user_id:1,team_id:1)
Task.create(name:"Homework",frequency:"Daily",completeness_level:"Almost Done",cycles:0,completed:0,user_id:1,team_id:1)
Task.create(name:"Walk the dog",frequency:"Daily",completeness_level:"Finished!",cycles:0,completed:0,user_id:1,team_id:1)
Task.create(name:"Hang paintings",frequency:"Once",completeness_level:"Still Need to Start",cycles:0,completed:0,user_id:2,team_id:2)
Task.create(name:"Wash dishes",frequency:"Weekly",completeness_level:"Finished!",cycles:0,completed:0,user_id:2,team_id:2)
Task.create(name:"Laundry",frequency:"Weekly",completeness_level:"Still Need to Start",cycles:0,completed:0,user_id:2,team_id:2)
Task.create(name:"Vacuum",frequency:"Weekly", completeness_level:"Still Need to Start",cycles:0,completed:0,user_id:2,team_id:2)
Task.create(name:"Change kitty litter",frequency:"Weekly",completeness_level:"Finished!",cycles:0,completed:0,user_id:2,team_id:2)
Task.create(name:"Swiffer",frequency:"Weekly",completeness_level:"Finished!",cycles:0,completed:0,user_id:2,team_id:2)

Comment.create(content:"Bronze AF",task_id:2)
Comment.create(content: "Need more detergent",task_id:3)
Comment.create(content:"Sux", task_id:5)
Comment.create(content:"Change filter", task_id:10)

Grouping.create(user_id:1, team_id:1)
Grouping.create(user_id:2, team_id:2)
Grouping.create(user_id:2, team_id:1)
