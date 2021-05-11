class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @created_events = current_user.privates
    @past_events = current_user.attending_events.past
    @upcoming_events = current_user.attending_events.upcoming
  end
end
# @user_attended_events = @current_user.attending_events.past
