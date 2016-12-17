class EntertainmentVenuesController < ApplicationController
  def index
    @categories = Category.all
  	@entertainment_venues = EntertainmentVenue.all
  	  if params[:search]
	    @entertainment_venues = EntertainmentVenue.search(params[:search]).order("created_at DESC")
	  else
	    @entertainment_venues = EntertainmentVenue.all.order('created_at DESC')
	  end
  end

  def show
  	@entertainment_venue = EntertainmentVenue.find(params[:id])
  end

  def new
  end
end
