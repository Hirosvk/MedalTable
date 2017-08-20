class RemoveIndexEvents < ActiveRecord::Migration[5.1]
  def change
		remove_index :events, column: :name
		add_index :events, [:name, :gender], unique: true
  end
end
