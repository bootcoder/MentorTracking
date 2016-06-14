class Mentor < ActiveRecord::Base
  belongs_to :location
  has_many :employments
  has_many :shifts
  has_many :notes

  before_save :set_employment

  def set_employment
    if self.employments.length > 0
      self.is_employed = true
    else
      self.is_employed = false
    end
    self
  end

end
