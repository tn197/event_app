class SharedEventsController < ApplicationController
    before_action :set_shared_event, only: [:show, :edit, :update]
    
    def show
    end
    
    def edit 
    end
    
    def attendance
    end
    
    def update
        if @shared_ivent.update_attributes(event_params)
            redirect_to @shared_event
        else
            render 'edit'
        end
    end

    private
        def set_shared_event
            @shared_event = Event.find_by!(params[:uuid])
        end
        
        def shared_event_params
            params.require(:event).permit(:title, :content, :target_at)
        end
end
