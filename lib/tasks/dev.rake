desc "Hydrate the database with some sample data to look at so that developing is easier"
task({ :sample_data => :environment}) do

#  id              :integer          not null, primary key
#  email           :string
#  first_name      :string
#  last_name       :string
#  password_digest :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null

require "faker"
User.destroy_all
100.times do |count|
    user = User.new
    user.first_name = Faker::Name.first_name
    user.username = user.first_name + count.to_s
    user.email = user.first_name + "@gmail.com"
    user.last_name = Faker::Name.last_name
    user.password = "password"
    user.save
end

#  id          :integer          not null, primary key
#  date        :date
#  description :string
#  distance_km :integer
#  minutes     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer

users = User.all
Ride.destroy_all
1001.times do |count|
    ride = Ride.new
    ride.date = Faker::Date.between(from: '2020-07-01', to: '2020-11-24')
    ride.description = Faker::Ancient.hero
    ride.distance_km = rand(10.0..120.0) * 1.111111
    ride.minutes = ride.distance_km * 2.0 * rand(0.8..1.2)
    ride.user_id = users.sample.id
    ride.save
end
    





end


