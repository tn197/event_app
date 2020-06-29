class GuestsController < ApplicationController
  before_action :set_event
  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    browser_uuid = SecureRandom.uuid
    session[:brousew_uuid] = browser_uuid
    @guest.browser_uuid = brouser_uuid
    if @guest.save
      redirect_to @event
    else
      render :new
    end
  end
  
  private
    def set_event
      @event = Event.find(params[:event_id])
    end
    
    def guest_params
      params.require(:guest).permit(:name, :comment, :email)
    end
end
