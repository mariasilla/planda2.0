class GroupingsController < ApplicationController

  def create
    @grouping = Grouping.new
    Grouping.create(
      user_id: current_user[:id],
      team_id: params[:chosen_team]
      )
    redirect_to "/teams"
  end

  def destroy
    Grouping.destroy(params[:id])
    redirect_to "/teams"
  end

end

