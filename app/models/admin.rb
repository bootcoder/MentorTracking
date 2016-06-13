class Admin < ActiveRecord::Base
  belongs_to :location
  has_many :notes
  has_many :shifts
end
