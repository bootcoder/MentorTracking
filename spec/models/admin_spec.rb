require 'rails_helper'

RSpec.describe Admin, type: :model do

  it "has a valid factory" do
    expect(build(:admin)).to be_valid
  end

  it { should validate_presence_of :email }
  it { should validate_presence_of :github_handle }
  it { should validate_uniqueness_of(:email) }
  it { should validate_uniqueness_of(:github_handle) }

end

