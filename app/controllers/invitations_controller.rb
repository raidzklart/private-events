class InvitationsController < ApplicationController

  def index
  end
  def new
    @invitation = Invitation.new
    @event = Event.find(params[:event_id])
    @guest = @event.guests.build
  end

  def create
    @user = User.find_by_email(params[:invitation][:guests][:guest_email])
    @event = Event.find(params[:event_id])
    @invitation = Invitation.new({:event_id => @event.id, :guest_id => @user.id})
    if @invitation.save
      redirect_to @event, notice: 'Guest was successfully added.'
    else
      render :new
    end
  end

  private

  def invitation_params
    params.require(:invitations).permit(:event_id, :guest_id)
  end
end
