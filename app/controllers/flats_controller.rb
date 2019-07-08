require "open-uri"

class FlatsController < ApplicationController

	def index
		get_flats
	end

	def show
		get_flats
		@the_flat = @flats.find {|flat| flat["id"] == params[:id].to_i}
	end

	private

	def get_flats
		url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
		@flats = JSON.parse(open(url).read)
	end
end