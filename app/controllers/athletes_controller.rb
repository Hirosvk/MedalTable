class AthletesController < ApplicationController

	def index
		@athletes = Athletes.all
	end

	def new
		@countries = Country.all
	end

	def create
		new_athlete = Athlete.new(athlete_params)
		if new_athlete.errors.valid?
			flash[:error_msg] = 'Invalid athlete info'
		else
			new_athletes.save
		end
	end

	private
	def athlete_params
		params.require(:athletes).permit(:first_name, :last_name, :country_id)
	end

end
