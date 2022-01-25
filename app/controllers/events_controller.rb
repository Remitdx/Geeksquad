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
    @van = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(params_event)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

   private

  def params_event
    params.require(:event).permit(:debut, :fin, :description, :lieu)
  end

end
