class MuseumsController < ApplicationController
  def search
    coordinates = validate_params(params[:lat], params[:lng])
  end

  private

  def validate_params(lat, lng)
  end

  def fetch_museums_data(lat, lng)
  end

  def parse_museums_data(data)
  end

end
