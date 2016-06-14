require 'rails_helper'

RSpec.describe Employment, type: :model do

  it "has a valid factory" do
    expect(build(:employment)).to be_valid
  end

  it { should validate_presence_of :company_name }
  it { should validate_presence_of :start_date }

end
