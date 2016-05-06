class EventsController < ApplicationController

#new method. sets up event and priority on the events new.html and
#gives each event page a unique schedule id
def new
  @schedule = Schedule.find(params[:id])
  @event = @schedule.events.build
  @priority = @schedule.events.build
end

#create method used for forms
def create
  @schedule = Schedule.find(params[:id])
  @event = @schedule.events.new(comment_params1)    #build(params[:events])
  @priority = @schedule.events.new(comment_params2)

  if @event.save
    redirect_to "/schedules/new"   #new_event_path(:id => @schedule.id)
  end


if @priority.save
     #new_event_path(:id => @schedule.id)
end
end

#allows events to be posted
def comment_params1
  params.require(:event).permit(:event)
end

#allows priority to be posted
def comment_params2
  params.require(:event).permit(:priority)
end
end
