class ParticipantsController < ApplicationController
  def create
    @participants = Participant.where(event_id: params[:event_id])
    already_here = false
    @participants.each do |participant|
      if participant.user == current_user
        already_here = true
      end
    end
    if already_here
      redirect_to event_path(params[:event_id]), notice: "Vous êtes déja inscrit !"
    else
      Participant.create!(event_id: params[:event_id].to_i, user: current_user)
      redirect_to event_path(params[:event_id]), notice: "Vous avez été ajouté !"
    end
  end

  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy
    redirect_to event_path(@participant.event)
  end
end
