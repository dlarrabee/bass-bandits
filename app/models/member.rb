class Member < ActiveRecord::Base
  validates_presence_of :first_name, :last_name
  has_many :tournament_results

  def display_name
    "#{first_name} #{last_name}"
  end
end
