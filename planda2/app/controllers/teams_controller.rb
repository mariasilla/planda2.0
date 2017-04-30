class TeamsController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
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
  end

  def destroy
    Grouping.where(:team_id =>params[:id]).destroy_all
    Team.destroy(params[:id])
    redirect_to "/"
  end
end
