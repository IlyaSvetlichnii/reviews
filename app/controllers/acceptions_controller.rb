class AcceptionsController < ApplicationController
  def accept
    @user = User.find(params[:format])
    @user.status = 'active'
    @user.save
    redirect_to :back
  end

  def reject
    @user = User.find(params[:format])
    @user.status = 'denied'
    @user.save
    redirect_to admin_rejecteds_path
  end

  def active_status
    @entertainment_venue =  EntertainmentVenue.find(params[:format])
    @entertainment_venue.status = 'active'
    @entertainment_venue.save
    redirect_to :back
  end 
 
  def not_active_status
    @entertainment_venue =  EntertainmentVenue.find(params[:format])
    @entertainment_venue.status = 'notactive'
    @entertainment_venue.save
    redirect_to :back
  end
end
