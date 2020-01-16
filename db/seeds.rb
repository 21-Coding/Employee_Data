# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
# division_list = [
#   [ "Oak" ],
#   [ "Pine" ],
#   [ "Sycamore" ],
#   [ "Alder" ],
#   [ "Birch" ],
#   [ "Cherry"]
# ]
#
# division_list.each do |div_name|
#   Division.create( div_name: div_name )
# end

Division.destroy_all

50.times do |index|
  Division.create! :div_name => Faker::Job.field
end


p "Created #{Division.count} divisions"

#####


Project.destroy_all

50.times do |index|
  Project.create! :title => Faker::TvShows::RickAndMorty.character
end


p "Created #{Project.count} projects"


# 50.times do |index|
#   divisions = []
#   divisions.push(Division.create!(title: Faker::TvShows::BreakingBad.episode, author: Faker::Superhero.name))
#   divisions
#   rand(3..15).times do |div_name|
#     divisions.each do |division|
#     Question.create! :q1 => Faker::ChuckNorris.fact,
#                      :division_id => division.id
#     end
#   end
# end
#
# p "Created #{Division.count} divisions"
