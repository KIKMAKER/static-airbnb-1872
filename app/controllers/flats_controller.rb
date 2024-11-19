require "open-uri"

class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.parse(url).read)
    # @flats = Flat.all
    # @flats = Flat.where(country: "ZA")

  end

  def show
    @flat = Flat.find(145)
  end

end
