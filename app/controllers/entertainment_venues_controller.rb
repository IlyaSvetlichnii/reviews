class EntertainmentVenuesController < ApplicationController
  def index
  	@entertainment_venues = EntertainmentVenue.all
  end

  def show
  	@entertainment_venue = EntertainmentVenue.find(params[:id])
  end

  def new
  end
end
