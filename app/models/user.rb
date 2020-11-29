# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  first_name      :string
#  last_name       :string
#  password_digest :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password
  #validations
  validates(:username, { :length => { :minimum => 3, :maximum => 10 } })
  validates(:username, { :presence => true })
  validates(:username, { :uniqueness => { :case_sensitive => true } })
  validates(:last_name, { :presence => true })
  validates(:first_name, { :presence => true })  

  #direct associations - allows you do write [user].rides to show all rides
  has_many(:rides, { :class_name => "Ride", :foreign_key => "user_id", :dependent => :destroy })

end
