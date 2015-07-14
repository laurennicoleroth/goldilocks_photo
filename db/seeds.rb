# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
  User.create!(name: Faker::Name.name, password: "totallysecure123")
end

User.all.each do |user|
  3.times do
  	Photo.create!(title: Faker::Lorem.sentence, attachment: Faker::Avatar.image, user_id: user.id)
  end
end