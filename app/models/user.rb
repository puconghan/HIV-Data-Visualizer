class User
  include Mongoid::Document
  field :username, type: String
  field :password, type: String
  field :priority, type: String
  field :basedcountry, type: String
  validates_presence_of :username, :password, :basedcountry
  validates_uniqueness_of :username
end
