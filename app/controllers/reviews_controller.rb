class ReviewsController < ApplicationController
    def new
      @reviews = Review.new
    end

    def create
      @entertainment_venue = EntertainmentVenue.find(params[:entertainment_venue_id])
      @review = @entertainment_venue.reviews.create(review_params)

      if @review.save
        redirect_to :back, notice: 'Your review was successfully posted!'
      else
        redirect_to :back, notice: "Your review wasn't posted!"
      end
    end

    private

    def review_params
      params.require(:review).permit(:comment, :service, :food, :interior)
    end

    def find_reviewable
      @reviewable = review.find_by_id(params[:review_id]) if params[:review_id]
      @reviewable = EntertainmentVenue.find_by_id(params[:entertainment_venue_id]) if params[:entertainment_venue_id]
    end
end
