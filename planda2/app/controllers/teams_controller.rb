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
    @tasks=Task.where(:team_id => params[:id])
    @dayTasks=@tasks.where(:frequency => "Daily")
    @weekTasks=@tasks.where(:frequency => "Weekly")
    @onceTasks=@tasks.where(:frequency => "Once")

    @dayTasksToDo=@dayTasks.where.not(:completeness_level =>"Done")
    @dayTasksDone=@dayTasks.where(:completeness_level =>"Done")
    @weekTasksToDo=@weekTasks.where.not(:completeness_level =>"Done")
    @weekTasksDone=@weekTasks.where(:completeness_level =>"Done")
    @onceTasksToDo=@onceTasks.where.not(:completeness_level =>"Done")
    @onceTasksDone=@onceTasks.where(:completeness_level =>"Done")

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
    team=Team.find(params[:team_id])
    team.destroy
    redirect_to "/teams"
  end

end
