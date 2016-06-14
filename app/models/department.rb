class Department < ActiveRecord::Base

  has_many :shifts

  validates_uniqueness_of  :name

  validates_presence_of :name
  validates_presence_of :cost_center

end
