class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
			t.string :name, null: false
			t.string :gender, null: false
			t.datetime :date
			t.references :gold_medal, polymorphic: true, index: true
			t.references :silver_medal, polymorphic: true, index: true
			t.references :bronze_medal, polymorphic: true, index: true

      t.timestamps
    end
		add_index :events, :name, unique: true

  end
end
