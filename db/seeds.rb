# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'json'
#.delete_all
#JSON.parse(open("#{Rails.root}/doc/admins.json").read).each do |stuff|
#	User.create(stuff)
#end
User.create(:username => 'puconghan', :email => 'tx2569@columbia.edu', :priority => "high", :basedcountry => "Moon", :password => 'administrator', :password_confirmation => 'administrator')
User.create(:username => 'nanzhuwang', :email => 'nz2260@columbia.edu', :priority => "high", :basedcountry => "Moon", :password => 'administrator', :password_confirmation => 'administrator')
User.create(:username => 'taocheng', :email => 'ph2369@columbia.edu', :priority => "high", :basedcountry => "Moon", :password => 'administrator', :password_confirmation => 'administrator')
User.create(:username => 'shujianbu', :email => 'sb3331@columbia.edu', :priority => "high", :basedcountry => "Moon", :password => 'administrator', :password_confirmation => 'administrator')
