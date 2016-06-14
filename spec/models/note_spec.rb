require 'rails_helper'

RSpec.describe Note, type: :model do

  it "has a valid factory" do
    expect(build(:note)).to be_valid
  end

  it { should validate_presence_of :body }

end
