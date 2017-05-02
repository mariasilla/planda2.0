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
    @teamCycles = Task.where(:team_id => params[:id]).sum('cycles')
    @teamCompletions = Task.where(:team_id => params[:id]).sum('completed')

    if @teamCycles>0
      @teamCompletionRate = @teamCompletions/@teamCycles
    else
      @teamCompletionRate=0
    end
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
