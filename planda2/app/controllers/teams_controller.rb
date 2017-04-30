class TeamsController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = current_user
    @teams = @user.teams
  end

  def show
    @team=Team.find(params[:id])
    @users = @team.users
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
