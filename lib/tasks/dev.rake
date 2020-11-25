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
names = ["Pat", "Nico", "Jelani"]
User.destroy_all
20.times do |count|
    user = User.new
    user.first_name = Faker::Name.first_name
    user.username = user.first_name + count.to_s
    user.email = user.first_name + "@gmail.com"
    user.last_name = Faker::Name.last_name
    user.password = "password"
    user.save
end

    





end


