class EntertainmentVenuesController < ApplicationController
  def index
    @places = EntertainmentVenue.paginate(page: params[:page])
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
    @entertainment_venue = EntertainmentVenue.new
  end

  def create
    @entertainment_venue = EntertainmentVenue.new(entertainment_venue_params)
    if @entertainment_venue.save
      redirect_to root_path
    else
    
    end
  end

  private

  def entertainment_venue_params
    params.require(:entertainment_venue).permit(:title, :description, :accord, :user_id, :category_id, :image_id)
  end 
end
