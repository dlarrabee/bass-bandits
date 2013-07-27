require 'spec_helper'

describe Season do
  it { should validate_presence_of(:year) }
  it { should have_many(:tournaments) }
end
