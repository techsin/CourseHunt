# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cats = ['Design', "Rails", "Javascript", "Css", "Mobile", "Technology", "DevOps", "Startup"]
cats.each { |x| 
	Category.create(tag: x )
}

