class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :lake
      t.date :tournament_date
      t.time :start_time, :end_time
      t.belongs_to :season, index: true
      t.timestamps
    end
  end
end
