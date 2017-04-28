# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Team.create(name: "Group 1")

User.create(email:"Ali@email.com",password:"12345",name: "Ali", image_url:"https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-1/p240x240/14718765_10107245015278123_1453619577380225262_n.jpg?oh=e4f195ce976f639f617faf7649069fcb&oe=59862E51")
User.create(email:"Maria@email.com",password:"12345",name: "Maria", image_url:"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQUSrX6ZTApwNEJAx3KdyAG6svGzZ4I712XqZu6AbzGekcAm4EOszYhKg")

Task.create(name:"Gym",frequency:"Daily",completeness_level:"Finished!",cycles:0,completed:0,user_id:1)
Task.create(name:"Tanning",frequency:"Weekly",completeness_level:"Finished!",cycles:0,completed:0,user_id:1)
Task.create(name:"Laundry",frequency:"Weekly",completeness_level:"Still Need to Start",cyles:0,completed:0,user_id:1)
Task.create(name:"Clean bathroom",frequency:"Weekly", completeness_level:"Still Need to Start",cyles:0,completed:0,user_id:1)
Task.create(name:"Homework",frequency:"Daily",completeness_level:"Almost Done",cycles:0,completed:0,user_id:1)
Task.create(name:"Walk the dog",frequency:"Daily",completeness_level:"Finished!",cyles:0,completed:0,user_id:1)
Task.create(name:"Hang paintings",frequency:"Once",completeness_level:"Still Need to Start",cycles:0,completed:0,user_id:2)
Task.create(name:"Wash dishes",frequency:"Weekly",completeness_level:"Finished!",cycles:0,completed:0,user_id:2)
Task.create(name:"Laundry",frequency:"Weekly",completeness_level:"Still Need to Start",cyles:0,completed:0,user_id:2)
Task.create(name:"Vacuum",frequency:"Weekly", completeness_level:"Still Need to Start",cyles:0,completed:0,user_id:2)
Task.create(name:"Change kitty litter",frequency:"Weekly",completeness_level:"Finished!",cycles:0,completed:0,user_id:2)
Task.create(name:"Swiffer",frequency:"Weekly",completeness_level:"Finished!",cyles:0,completed:0,user_id:2)

Comment.create(content:"Bronze AF",task_id:2)
Comment.create(content: "Need more detergent",task_id:3)
Comment.create(content:"Sux", task_id:5)
Comment.create(content:"Change filter", task_id:10)
