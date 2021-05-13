class Person
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :country_id, type: String
end
