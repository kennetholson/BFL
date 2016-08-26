require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
16.times do
  Team.create(name: Faker::Company.name, mascot: Faker::Team.creature, num_players: 11)
end



40.times do

  User.create(name: Faker::Internet.user_name, email: Faker::Internet.email, password_digest: "password", captain: false, team_id: 1 + rand(16))

end

#User.create(name: Faker::Internet.user_name, email: Faker::Internet.email, password_hash: #Faker::Internet.password, captain: true, team_id: 2)
#
#10.times do
#  User.create(name: Faker::Internet.user_name, email: Faker::Internet.email, password_hash: #Faker::Internet.password, captain: false, team_id: 2)
#end
#
#User.create(name: Faker::Internet.user_name, email: Faker::Internet.email, password_hash: #Faker::Internet.password, captain: true, team_id: 3)
#
#10.times do
#  User.create(name: Faker::Internet.user_name, email: Faker::Internet.email, password_hash: #Faker::Internet.password, captain: false, team_id: 3)
#end
#
#User.create(name: Faker::Internet.user_name, email: Faker::Internet.email, password_hash: #Faker::Internet.password, captain: true, team_id: 4)
#
#10.times do
#  User.create(name: Faker::Internet.user_name, email: Faker::Internet.email, password_hash: #Faker::Internet.password, captain: false, team_id: 4)
#end


4.times do
  Game.create( location: "Hicksville, Kentucky", date: "08/27/2016", time: "8:00")
end

4.times do
  Game.create( location: "Hicksville, Arkansas", date: "09/03/2016", time: "8:00")
end

4.times do
  Game.create( location: "Hicksville, Ohio", date: "09/10/2016", time: "8:00")
end

4.times do
  Game.create( location: "Hicksville, New York", date: "09/17/2016", time: "8:00")
end

4.times do
  Game.create( location: "Atlanta, Georgia", date: "10/01/2016", time: "8:00")
end

4.times do
  Game.create( location: "San Francisco, California", date: "10/08/2016", time: "8:00")
end

20.times do
  Stat.create( num_throw: rand(10), num_catches: rand(10), points: rand(10), distance_ran: rand(50), user_id: 1 + rand(20))
end

Ranking.create( win: 2, lose: 2, tie: 0, team_id: 1)
Ranking.create( win: 2, lose: 1, tie: 1, team_id: 2)
Ranking.create( win: 3, lose: 1, tie: 0, team_id: 3)
Ranking.create( win: 4, lose: 0, tie: 0, team_id: 4)





