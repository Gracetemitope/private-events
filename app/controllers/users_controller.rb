class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @created_events = current_user.privates
    @user_past_events = current_user.attending_events.past
    @user_upcoming_events = current_user.attending_events.upcoming
    @past_events = Private.past
    @future_events = Private.upcoming
  end
end
