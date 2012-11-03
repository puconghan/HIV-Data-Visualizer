class HivdatafetcherController < ApplicationController
	def index
		@gdp = Gdp.all
	end
end
