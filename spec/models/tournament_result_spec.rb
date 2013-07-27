require 'spec_helper'

describe TournamentResult do
  it { should validate_presence_of(:member) }
  it { should validate_presence_of(:tournament) }
  it { should validate_presence_of(:weight) }
  it { should belong_to(:tournament) }
  it { should belong_to(:member) }
end
