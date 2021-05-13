class PersonController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    name = params['name'].downcase
    person = Person.find_or_create_by(name: name)

    unless person.country_id
      country_id = person.country_id = Country.where(taken: false).sample.id
      country = Country.find(country_id)
      country.taken = true
      country.save
      person.save
    end

    redirect_to controller: 'person', action: 'index', name: person.name
  end

  def index
    person = Person.find_by(name: params[:name])
    @name = person.name.capitalize
    @country = Country.find(person.country_id)
  end
end
