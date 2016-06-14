require 'rails_helper'

RSpec.describe Department, type: :model do

  it "has a valid factory" do
    expect(build(:department)).to be_valid
  end

  it { should validate_presence_of :name }
  it { should validate_presence_of :cost_center }

  it { should validate_uniqueness_of(:name) }

end
