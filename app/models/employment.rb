class Employment < ActiveRecord::Base

  belongs_to :mentor

  validates_presence_of :company_name
  validates_presence_of :start_date

end
