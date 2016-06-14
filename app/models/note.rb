class Note < ActiveRecord::Base

  belongs_to :mentor
  belongs_to :admin

  validates_presence_of :body

end
