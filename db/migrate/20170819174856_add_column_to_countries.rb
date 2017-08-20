class AddColumnToCountries < ActiveRecord::Migration[5.1]
  def change
		add_column :countries, :abbreviated_name, :string
		add_column :countries, :common_name, :string, null: true

		add_index :countries, :abbreviated_name, length: 3
  end
end
