require 'open-uri'

class MuseumsController < ApplicationController
  def search
    lat, lng = params.values_at(:lat, :lng)
    url = "https://api.mapbox.com/geocoding/v5/mapbox.places/museum.json?type=poi&proximity=#{lng},#{lat}&access_token=#{ENV['MAPBOX_URL']}"

    url_response = JSON.parse(URI.open(url).read)
    byebug
  end

  private

  def validate_params(lat, lng)
  end

  def fetch_museums_data(lat, lng)
  end

  def parse_museums_data(data)
  end

end
