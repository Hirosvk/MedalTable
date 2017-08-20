class Athlete < ApplicationRecord
	has_and_belongs_to_many :teams
	belongs_to :country

	has_many :gold_medal_events,
						primary_key: :id,
						foreign_key: :gold_medal_id,
						class_name: "Event",
						as: :gold_medal

	has_many :silver_medal_events,
						primary_key: :id,
						foreign_key: :silver_medal_id,
						class_name: "Event",
						as: :silver_medal

	has_many :bronze_medal_events,
						primary_key: :id,
						foreign_key: :bronze_medal_id,
						class_name: "Event",
						as: :bronze_medal
end
