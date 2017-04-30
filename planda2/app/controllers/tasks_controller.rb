class TasksController < ApplicationController

  before_action :authenticate_user!

  def index
    @tasks=Task.where(user_id: current_user[:id])
  end

  def show
    @task=Task.find(params[:id])
    @comments=Comment.where(task_id: params[:id])
    @compliment = Compliment.new
  end

  def edit
    @task=Task.find(params[:id])
  end

  def update
    @task=Task.find(params[:id])
    @task.update(name: params[:name], frequency: params[:frequency], completeness_level: params[:completeness_level])
    redirect_to "/tasks"
  end

  def new
    @task = Task.new

  end

  def create
    Task.create(name: params[:name],
                frequency: params[:frequency],
                completeness_level: params[:completeness_level],
                user_id: current_user[:id])
    redirect_to "/tasks"
  end

  def destroy
    Task.destroy(params[:id])
    redirect_to "/"
  end

end
