class Location < ActiveRecord::Base

  has_many :mentors
  has_many :shifts
  has_many :admins

  validates_presence_of :time_zone
  validates_presence_of :name

  validates_uniqueness_of  :name

end
