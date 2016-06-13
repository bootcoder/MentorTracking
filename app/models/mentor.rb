class Mentor < ActiveRecord::Base
  belongs_to :location
  has_many :employments
  has_many :shifts
  has_many :notes
end
