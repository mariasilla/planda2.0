class CommentsController < ApplicationController

  before_action :authenticate_user!

  def create
    Comment.create(
      content: params[:content],
      task_id: params[:task_id])
    redirect_to (:back)
  end

  def destroy
    Comment.destroy(params[:id])
    redirect_to (:back)
  end

end


