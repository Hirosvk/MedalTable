class CreateAthletes < ActiveRecord::Migration[5.1]
  def change
    create_table :athletes do |t|
			t.string :first_name, null: false
			t.string :last_name, null: false
			t.string :display_name
			t.string :gender, null: false

			t.integer :event_id
			t.integer :country_id
			t.integer :team_id

      t.timestamps
    end
		add_index :athletes,  :event_id
		add_index :athletes,  :country_id
		add_index :athletes,  :team_id
  end
end
