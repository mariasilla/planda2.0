class GroupingsController < ApplicationController

  def create
    @grouping = Grouping.new
    Grouping.create(user_id: current_user[:id],
      team_id: find(params[:chosen_team])
    redirect_to "/teams"
  end

  def destroy
    @grouping = Grouping.where(:team_id params[:id]).find(:user_id current_user)
    @grouping.destroy_all
    redirect_to "/teams"
  end

end

