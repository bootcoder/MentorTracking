class Shift < ActiveRecord::Base

  belongs_to :department
  belongs_to :mentor
  belongs_to :admin
  belongs_to :location

  enum accepts_mentors: [:employed_mentors, :unemployed_mentors, :all_mentors]

  enum recurrs_every: [:day, :week, :phase, :stand_alone]

  before_save :set_booked
  before_save :check_mentor_status

  def check_mentor_status
    return true if self.accepts_mentors == 2
    return false if self.accepts_mentors == 0 && self.mentor.is_employed == false
    return false if self.accepts_mentors == 1 && self.mentor.is_employed == true
    true
  end

  def set_booked
    if self.mentor
      self.booked = true
    else
      self.booked = false
    end
    self
  end

end
