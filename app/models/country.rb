class Country < ApplicationRecord
	has_many :athletes
	has_many :teams

	before_validation :downcase_names

	validates :name, :abbreviated_name, presence: true
	validates :name, uniqueness: true
	validates :abbreviated_name, uniqueness: true
	validates :abbreviated_name, length: {is: 3}



	private
	def downcase_names
		@@downcase_attributes.call(self, [:name, :abbreviated_name, :common_name])
	end
	
end
