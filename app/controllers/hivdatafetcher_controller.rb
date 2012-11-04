class HivdatafetcherController < ApplicationController
	def index
		@hivs = Hiv.all
		@gdps = Gdp.all
		@healthExpenditures = HealthExpenditure.all
		@improvedSanitationFacilities = ImprovedSanitationFacilities.all
		@improvedWaterSources = ImprovedWaterSource.all
		@literacyRates = LiteracyRate.all
		@ruralPopulations = RuralPopulation.all
		@unemploymentRates = UnemploymentRate.all
	end
end
