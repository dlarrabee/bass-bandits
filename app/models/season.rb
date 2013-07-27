class Season < ActiveRecord::Base
  validates_presence_of :year
  has_many :tournaments

  delegate :to_s, to: :year
end
