class Tournament < ActiveRecord::Base
  validates_presence_of :lake, :tournament_date, :start_time, :end_time, :season

  belongs_to :season
  has_many :tournament_results

  def to_s
    "#{tournament_date.strftime('%b %d')} #{lake}"
  end
end
