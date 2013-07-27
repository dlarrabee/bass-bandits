require 'spec_helper'

describe Member do
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:first_name) }
  it { should have_many(:tournament_results) }

  it "should create the proper display name" do
    expect(Member.create(first_name: 'bob', last_name: 'bobbyson').display_name).to eq("bob bobbyson")
  end
end
