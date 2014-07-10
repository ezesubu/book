class Venue
  include Mongoid::Document
  belongs_to :company
  has_many :field

  field :name, type: String
  field :about, type: String
  field :site, type: String
  field :email, type: String
  field :phone, type: Integer
  field :address1, type: String
  field :addres2, type: String
  field :city, type: String
  field :state, type: String
  field :country, type: String
  field :geopos, type: String
  field :facebook, type: String
  field :twitter, type: String
  field :instagram, type: String
  field :youtube, type: String
end
