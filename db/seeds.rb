# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'json'
User.delete_all
JSON.parse(open("#{Rails.root}/doc/admins.json").read).each do |stuff|
	User.create(stuff)
end

Gdp.delete_all
JSON.parse(open("#{Rails.root}/doc/gdp.json").read).each do |stuff|
   Gdp.create(stuff)
end

HealthExpenditure.delete_all
JSON.parse(open("#{Rails.root}/doc/healthExpenditure.json").read).each do |stuff|
   HealthExpenditure.create(stuff)
end

ImprovedSanitationFacilities.delete_all
JSON.parse(open("#{Rails.root}/doc/improvedSanitationFacilities.json").read).each do |stuff|
   ImprovedSanitationFacilities.create(stuff)
end

ImprovedWaterSource.delete_all
JSON.parse(open("#{Rails.root}/doc/improvedWaterSource.json").read).each do |stuff|
   ImprovedWaterSource.create(stuff)
end

LiteracyRate.delete_all
JSON.parse(open("#{Rails.root}/doc/literacyRate.json").read).each do |stuff|
   LiteracyRate.create(stuff)
end

Hiv.delete_all
JSON.parse(open("#{Rails.root}/doc/hiv.json").read).each do |stuff|
   Hiv.create(stuff)
end

RuralPopulation.delete_all
JSON.parse(open("#{Rails.root}/doc/ruralPopulation.json").read).each do |stuff|
   RuralPopulation.create(stuff)
end

UnemploymentRate.delete_all
JSON.parse(open("#{Rails.root}/doc/unemploymentRate.json").read).each do |stuff|
   UnemploymentRate.create(stuff)
end