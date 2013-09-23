# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'generating some weight measurements'
dates = (1.month.ago.to_date..Date.today).map{ |date| date.strftime('%F') }
30.times do
  time = DateTime.parse(dates.sample)
  WeightMeasurement.create({
    value: Random.rand(208..240).round(2),
    unit: 'lbs',
    created_at: time,
    updated_at: time
  })
end
