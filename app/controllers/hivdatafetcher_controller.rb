require 'country_iso_translater'

class GoogleVisualizationMapFormat
	attr_accessor :name, :value, :displayname
end

class HivdatafetcherController < ApplicationController
	def index
		@hivs = Hiv.all(:year => "2005")
		@data_pack = Array.new
		@hivs.each do |h|
			t = GoogleVisualizationMapFormat.new
			begin
				t.displayname = SunDawg::CountryIsoTranslater.translate_iso3166_alpha3_to_name(h.country)
				t.name = SunDawg::CountryIsoTranslater.translate_iso3166_name_to_alpha2(t.displayname)
				if h.value.nil?
					t.value = 0
				else
					t.value = h.value
				end
				@data_pack.push(t)
				rescue SunDawg::CountryIsoTranslater::NoCountryError
#puts(h.country)
			end
puts(t.displayname)
puts(t.value)
		end


   		respond_to do |format|
    	 		format.html # index.html.erb
    			format.json { render json: @data_pack }
   		end
	end

	def whatever

		@gdps = Gdp.all
		@healthExpenditures = HealthExpenditure.all
		@improvedSanitationFacilities = ImprovedSanitationFacilities.all
		@improvedWaterSources = ImprovedWaterSource.all
		@literacyRates = LiteracyRate.all
		@ruralPopulations = RuralPopulation.all
		@unemploymentRates = UnemploymentRate.all


	end
end
