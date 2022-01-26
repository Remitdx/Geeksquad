class EventsController < ApplicationController
  def index
    @events = Event.all
    @event = Event.new() # empty shell for simple form new in index
    @events_dates = @events.map do |event|
      {
        from: event.debut,
        to:   event.fin
      }
    end
  end

  def show
    @event = Event.find(params[:id])
    @participants = Participant.where(event_id: params[:id])
  end

  def create
    @event = Event.new(params_event)
    if @event.save
      redirect_to events_path, notice: "Event créé!"
      Participant.create!(event_id: @event.id, user: current_user)
    else
      render :new
    end
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
