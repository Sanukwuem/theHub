class SchedulesController < ApplicationController
  def index  #front page for schedules
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
    @schedules = Schedule.all
  end

#  def show
  #  @schedule = Schedule.find(params[:id]) #schedule/id page
 #end

  def create
    @schedule = Schedule.new(comment_params)
    if @schedule.save
      redirect_to "/schedules/new" #new_schedule_path

    #else
      #render 'new'
    end
end

def edit
  @schedule = Schedule.find(params[:id])
end

def update
  @schedule =
Schedule.find(params[:id])
  if
@schedule.update_attributes(schedule_params)
    redirect_to(:action => 'show', :id => @schedule.id)
  else
    render 'edit'
  end
  end

  def comment_params
    params.require(:schedule).permit(:name)
  end


  private
    def schedule_params
params.require(:schedule).permit(:name)
end

end
