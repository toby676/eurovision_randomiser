class CountriesController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    Country.new(
      country_name: params['country_name'],
      flag_asset_url: params['flag_asset_url'],
      congratulations: params['congratulations'],
      rehearsal_link: params['rehearsal_link'],
    ).save
  end
end
