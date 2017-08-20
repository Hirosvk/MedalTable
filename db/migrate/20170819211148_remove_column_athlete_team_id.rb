class RemoveColumnAthleteTeamId < ActiveRecord::Migration[5.1]
  def change
		remove_column :athletes, :team_id
  end
end
