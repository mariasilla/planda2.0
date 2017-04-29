class TeamsController < ApplicationController
 before_action :authenticate_user!

  def index
  end

  def show
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team=Team.find(params[:id])
    @team.update(name: params[:name], frequency: params[:frequency], completeness_level: params[:completeness_level])
       redirect_to "/team"
  end

  def new
    @team = Team.new
  end

  def create
    @user = current_user[:id]
    @team = Team.create(name: params[:team_name])
    Grouping.create(user_id: current_user[:id],
      team_id: @team[:id])
    redirect_to "/teams"
  end

  def destroy
    Team.destroy(params[:id])
    redirect_to "/"
  end
end

