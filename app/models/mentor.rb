class Mentor < ActiveRecord::Base

  belongs_to :location

  has_many :employments
  has_many :shifts
  has_many :notes

  validates_presence_of :name
  validates_presence_of :phone
  validates_presence_of :email
  validates_presence_of :img_url
  validates_presence_of :github_handle
  validates_presence_of :cohort
  validates_presence_of :address
  validates_presence_of :dbc_start

  validates_uniqueness_of  :phone
  validates_uniqueness_of  :email
  validates_uniqueness_of  :img_url
  validates_uniqueness_of  :github_handle

  before_save :set_employment

  def set_employment
    if self.employments.length > 0
      self.is_employed = true
    else
      self.is_employed = false
    end
    self
  end

  def self.from_omniauth(auth_hash)
    binding.pry
    user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
    user.img_url = auth_hash['info']['image']
    user.save!
    user
  end

end
