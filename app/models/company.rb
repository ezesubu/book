class Company
  include Mongoid::Document
  has_many :venues 

  field :contact_name, type: String
  field :phone, type: Integer
  field :address, type: String
  field :address2, type: String
  field :city, type: String
  field :State, type: String
  field :country, type: String
  field :website, type: String
  field :email, type: String
  field :bank, type: String
  field :account_type, type: Integer
  field :account_number, type: Integer
  field :Plan_description, type: String
  field :Agreement_conditions, type: String
end
