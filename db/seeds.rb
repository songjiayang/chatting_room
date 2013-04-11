#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Room.destroy_all
10.times do |index|
		Room.create({title:"room with id #{index+1}",description:"the description of room-#{index+1}"})
end

Category.destroy_all
Category.create({name:'糗事'})
Category.create({name:'学习'})
Category.create({name:'发现'})
Category.create({name:'无聊'})

Room.update_all({category_id:Category.first.id})



