class Location < ActiveRecord::Base
  has_many :mentors
  has_many :shifts
  has_many :admins
end
