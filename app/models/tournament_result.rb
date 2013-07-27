class TournamentResult < ActiveRecord::Base
  validates_presence_of :member, :tournament, :weight
  belongs_to :member
  belongs_to :tournament
end
