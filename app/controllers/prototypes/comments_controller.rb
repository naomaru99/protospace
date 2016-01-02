class Prototypes::CommentsController < ApplicationController

  before_action :authenticate_user!, only: [:create]
  before_action :get_prototype

  def create
    @prototype.comments.create(comments_params)
    @comments = @prototype.comments
  end

  private
  def comments_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id)
  end
  def get_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end

end
