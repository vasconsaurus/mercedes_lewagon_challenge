require 'open-uri'
# test request:
# /museums?lat=52.494857&lng=13.437641


class MuseumsController < ApplicationController
  def search
    lat, lng = params.values_at(:lat, :lng)
    url = "https://api.mapbox.com/geocoding/v5/mapbox.places/museum.json?type=poi&proximity=#{lng},#{lat}&access_token=#{ENV['MAPBOX_URL']}"

    url_response = JSON.parse(URI.open(url).read)
    features = url_response["features"]

    museums_per_code = {}
    features.each do |feature|
      code = feature["context"][0]["text"]
      name = feature["text"]
      museums_per_code[code] = [] if museums_per_code[code].blank?
      museums_per_code[code] << name
    end

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
