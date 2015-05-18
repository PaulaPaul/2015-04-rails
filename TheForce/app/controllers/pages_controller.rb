class PagesController < ApplicationController
  require 'open-uri'
  require 'json'

  def home
  end

# Here we pull the real-time info from SWAPI.COM, and put it in a hash. 
# Copy and paste the URL and get familiar with what data is in there.
  def planets
    data = JSON.parse(open("http://swapi.co/api/planets").read)
    @results = data["results"]
  end

  def spaceships
    data = JSON.parse(open("http://swapi.co/api/starships").read)
    @results = data["results"]
  end

  def vehicles
    data = JSON.parse(open("http://swapi.co/api/vehicles").read)
    @results = data["results"]
  end

  def people
    data = JSON.parse(open("http://swapi.co/api/people").read)
    @results = data["results"]
  end

  def films
    data = JSON.parse(open("http://swapi.co/api/films").read)
    @results = data["results"]
  end

  def species
    data = JSON.parse(open("http://swapi.co/api/species").read)
    @results = data["results"]
  end
end
