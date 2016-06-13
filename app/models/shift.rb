class Shift < ActiveRecord::Base

  belongs_to :department
  belongs_to :mentor
  belongs_to :admin
  belongs_to :location

  enum accepts_mentors: [:employed_mentors, :unemployed_mentors, :all_mentors]

end
