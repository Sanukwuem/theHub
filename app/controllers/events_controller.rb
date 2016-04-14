class EventsController < ApplicationController

def new
  @schedule = Schedule.find(params[:id])
  @event = @schedule.events.build
end

def create
  @schedule = Schedule.find(params[:id])
  @event = @schedule.events.new(comment_params1)    #build(params[:events])

  if @event.save
    redirect_to "/schedules/new"   #new_event_path(:id => @schedule.id)
  end
end


def comment_params1
  params.require(:event).permit(:event)
end
end
