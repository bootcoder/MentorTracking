require 'rails_helper'

RSpec.describe Location, type: :model do

  it "has a valid factory" do
    expect(build(:location)).to be_valid
  end

  it { should validate_presence_of :time_zone }
  it { should validate_presence_of :name }

  it { should validate_uniqueness_of(:name) }

end
