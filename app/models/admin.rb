class Admin < ActiveRecord::Base

  belongs_to :location

  has_many :notes
  has_many :shifts

  validates_presence_of :email
  validates_presence_of :github_handle

  validates_uniqueness_of  :email
  validates_uniqueness_of  :github_handle

end
