# == Schema Information
#
# Table name: rides
#
#  id          :integer          not null, primary key
#  date        :date
#  description :string
#  distance_km :integer
#  minutes     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class Ride < ApplicationRecord
#validations
validates(:time, { :presence => true })
validates(:distance_km, { :length => { :minimum => 0, :maximum => 100000000 } })
validates(:distance_km, { :presence => true })
validates(:description, { :presence => true })
validates(:date, { :presence => true })

#direct associations
belongs_to(:user, { :required => false, :class_name => "User", :foreign_key => "user_id" })

end
