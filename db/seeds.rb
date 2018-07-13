# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'programme.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    t = Programme.new
    t.heat_number = row['heat_id']
    t.helmet_colour = row['helmet_colour']
    t.rider = row['rider']
    t.gate_one = row['gate_one']
    t.gate_two = row['gate_two']
    t.save
    puts "#{t.heat_number}, #{t.helmet_colour} saved"
end
puts "There are now #{Programme.count} rows in the programme table"


csv_text = File.read(Rails.root.join('lib', 'seeds', 'team.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    t = Team.new
    t.rider = row['rider']
    t.team_name = row['team_name']
    t.save
    puts "#{t.rider}, #{t.team_name} saved"
end
puts "There are now #{Team.count} rows in the team table"
