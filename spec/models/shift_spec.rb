require 'rails_helper'

RSpec.describe Shift, type: :model do

  it "has a valid factory" do
    expect(build(:shift)).to be_valid
  end

  it { should validate_presence_of :start_time }
  it { should validate_presence_of :end_time }

end
