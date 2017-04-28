class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
  end

  def destroy
    Comment.destroy(params[:id])
    redirect_to "/"
  end
end
