class GroupingsController < ApplicationController

  def show
  end

  def index
    redirect_to "/teams"
  end

  def create
    @grouping = Grouping.new
    Grouping.create(
      user_id: current_user[:id],
      team_id: params[:chosen_team]
      )
    redirect_to "/teams"
  end

  def destroy
    @grouping = Grouping.find_by(:user_id=>current_user.id,:team_id=>params[:team_id])
    @grouping.destroy
    # unless @grouping.destroy()
    #   pp @grouping.errors
    # end

    redirect_to "/teams"
  end

end

