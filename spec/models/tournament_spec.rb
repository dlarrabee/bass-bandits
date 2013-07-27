require 'spec_helper'

describe Tournament do
  it { should validate_presence_of(:lake) }
  it { should validate_presence_of(:tournament_date) }
  it { should validate_presence_of(:start_time) }
  it { should validate_presence_of(:end_time) }
  it { should validate_presence_of(:season) }
  it { should belong_to(:season) }
  it { should have_many(:tournament_results) }

  it "should return the proper to_s value"do
    expect(Tournament.new(tournament_date: Date.parse("2013-01-01"), lake: 'lake cool').to_s).to eq("Jan 01 lake cool")
  end

end
