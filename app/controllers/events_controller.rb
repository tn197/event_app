class EventsController < ApplicationController
  before_action :set_event, only: [:edit, :show, :update, :destroy]
    
  def index
      @events = current_user.events.all
  end
  
  def new
      @event = current_user.events.build
  end
  
  def show
  end
  
  def edit
  end
  
  def create
      @event = current_user.events.build(event_params)
      if @event.save
          flash[:success] = "成功！"
          redirect_to @event
      else
          render 'new'
      end
  end
  
  def destroy
      @event.destroy!
      redirect_to root_url
  end
  
  def update
      if @event.update_attributes(event_params)
          flash[:success] = "更新！"
          redirect_to @event
      else
          render 'edit'
      end
  end
  
  
  private
  
    def set_event
        @event = current_user.events.find(params[:id])
    end  
    
    def event_params
        params.require(:event).permit(:title, :content, :targrt_at)
    end
end
