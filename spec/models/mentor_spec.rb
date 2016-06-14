require 'rails_helper'

RSpec.describe Mentor, type: :model do

  it "has a valid factory" do
    expect(build(:mentor)).to be_valid
  end

  it { should validate_presence_of :name }
  it { should validate_presence_of :phone }
  it { should validate_presence_of :email }
  it { should validate_presence_of :img_url }
  it { should validate_presence_of :github_handle }
  it { should validate_presence_of :cohort }
  it { should validate_presence_of :address }
  it { should validate_presence_of :dbc_start }

  it { should validate_uniqueness_of(:phone) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_uniqueness_of(:img_url) }
  it { should validate_uniqueness_of(:github_handle) }

end
