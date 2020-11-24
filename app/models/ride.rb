# == Schema Information
#
# Table name: rides
#
#  id          :integer          not null, primary key
#  date        :date
#  description :string
#  distance_km :integer
#  time        :time
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class Ride < ApplicationRecord
end
