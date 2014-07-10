class Field
  include Mongoid::Document

  belongs_to :venue
  
  field :name, type: String
  field :description, type: String
  mount_uploader :picture, FieldImgUploader
  field :reservation_unit, type: String
  field :teams_capacity, type: String
  field :people_capacity, type: String

end
