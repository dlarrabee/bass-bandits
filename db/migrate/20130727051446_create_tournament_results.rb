class CreateTournamentResults < ActiveRecord::Migration
  def change
    create_table :tournament_results do |t|
      t.belongs_to :member, index: true
      t.belongs_to :tournament, index: true
      t.decimal :weight
      t.integer :fish_count

      t.timestamps
    end
  end
end
