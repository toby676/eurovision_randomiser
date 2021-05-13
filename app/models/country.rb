class Country
  include Mongoid::Document
  include Mongoid::Timestamps

  field :country_name, type: String
  field :flag_asset_url, type: String
  field :congratulations, type: String
  field :rehearsal_link, type: String
  field :taken, type: Boolean, default: false
end
