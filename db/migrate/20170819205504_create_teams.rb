class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
			t.integer :country_id, null: false
			t.integer :event_id, null: false
			t.string :gender, null: false

      t.timestamps
    end
		add_index :teams, [:country_id, :event_id], unique: true
  end
end
