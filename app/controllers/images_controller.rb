class ImagesController < ApplicationController
	def new
      @images = Image.new
    end

    def create
      @entertainment_venue = EntertainmentVenue.find(params[:entertainment_venue_id])
      @image = @entertainment_venue.images.create(image_params)

      if @image.save
        redirect_to :back, notice: 'Your image was successfully posted!'
      else
        redirect_to :back, notice: "Your image wasn't posted!"
      end
    end

    private

    def image_params
      params.require(:image).permit(:picture)
    end
end
