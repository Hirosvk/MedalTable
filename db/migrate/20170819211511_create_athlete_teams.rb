class CreateAthleteTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :athletes_teams, id: false do |t|
			t.integer :athlete_id, null: false
			t.integer :team_id, null: false

      t.timestamps
    end
		add_index :athletes_teams, [:athlete_id, :team_id], unique: true
  end
end
