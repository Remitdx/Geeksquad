class EventsController < ApplicationController
  def index
    @events = Event.all
    @event = Event.new() # empty shell for simple form in index
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(params_event)
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def edit
    @van = Van.find(params[:id])
  end

  def update
    if current_user
      @van = Van.find(params[:id])
      @van.update(params_van)
      if @van.save
        redirect_to van_path(@van)
      else
        render :new
      end
    else
      redirect_to new_user_session_path
    end
  end

  def destroy
    @van = Van.find(params[:id])
    @van.destroy
    redirect_to vans_path
  end

   private

  def params_event
    params.require(:event).permit(:debut, :fin, :description, :lieu)
  end

end
