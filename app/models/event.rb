class Event < ApplicationRecord
	before_validation :downcase_names

	validates :name, :gender, :date, presence: true
	validates :gender, inclusion: {in: %w(f m)}
	validates :name, uniqueness: {scope: :gender}

	belongs_to :gold_medal, polymorphic: true, optional: true
	belongs_to :silver_medal, polymorphic: true, optional: true
	belongs_to :bronze_medal, polymorphic: true, optional: true

	private
	def downcase_names
		@@downcase_attributes.call(self, [:gender, :name])
	end
	
end
