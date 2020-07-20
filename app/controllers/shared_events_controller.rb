class SharedEventsController < ApplicationController
  before_action :set_shared_event, only: [:show, :edit, :update]
  before_action :set_guest
    
  def show
    if !@guest.present? && !user_signed_in?
      redirect_to new_event_guest_path(@shared_event.id)
    end
    @event_schedules = @shared_event.event_schedules
  end
    
  def edit
  end
    
  def update
    if @shared_event.update(event_params)
      redirect_to @shared_event
    else
      render :edit
    end
  end

  private
    def set_shared_event
      @shared_event = Event.find_by!(uuid: params[:uuid])
    end
    
    def set_guest
      @guest = Guest.find_by(browser_uuid: session[:browser_uuid]) unless user_signed_in?
    end
        
    def shared_event_params
      params.require(:event).permit(:title, :content, :target_at)
    end
end
