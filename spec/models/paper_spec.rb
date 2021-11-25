require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should have an empty author_list created" do
    @maz =Paper.new(title: "COMPUTING MACHINERY AND INTELLIGENCE", venue: "Mind 49: 433-460", year: 1950)
    expect(@maz.authors).to be_valid
  end
end
