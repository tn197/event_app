class AttendancesController < ApplicationController
  before_action :set_event
  before_action :set_guest
  
  def new
    @attendance = Attendance.new
    @event_schedules = @event.event_schedules
  end
  
  def create
    @attendance = Attendance.new(attendance_params)
    if @attendance.save
      redirect_to shared_event_path(@event.uuid)
    else
      render :new
    end
  end
  
  private
    def set_event
      @event = Event.find(params[:event_id])
    end
    
    def set_guest
      @guest = Guest.find_by(browser_uuid: session[:browser_uuid]) unless user_signed_in?
    end
    
    def attendance_params
      params.require(:attendance).permit(:entry, :comment)
    end
end
