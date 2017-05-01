class TeamsController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = current_user
    @teams = @user.teams
    @all_teams = Team.all
  end

  def show
    @team=Team.find(params[:id])
    @users = @team.users
    @tasks=@team.tasks
  end

  def new
  end

  def create
  end

  def edit
    @task=Team.find(params[:id])
  end

  def update
    @team=Team.find(params[:id])
    @team.update(name: params[:name])
       redirect_to "/teams"
  end


  def destroy
    Grouping.where(:team_id =>params[:id]).destroy_all
    Team.destroy(params[:id])
    redirect_to "/"
  end
end
