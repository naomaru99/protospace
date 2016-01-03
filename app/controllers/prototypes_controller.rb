class PrototypesController < ApplicationController
  before_action :get_prototype, only: [:show, :edit, :update, :destroy]

  def index
  end
  def new
    @prototype = Prototype.new
    @prototype.thumbnails.build
  end

  def show
    @comments = @prototype.comments
    @comment = Comment.new
    @likes = Like.where(prototype_id: params[:id])
    @like = Like.find_by(user_id: current_user.id, prototype_id: params[:id]) if user_signed_in?
  end

  def create
    @prototype = Prototype.new(create_params)
    @prototype.save
    redirect_to :root
  end

  def edit
    @prototype.thumbnails.build
  end

  def update
    @prototype.update(update_params)
    redirect_to :root
  end

  def destroy
    @prototype.destroy
    redirect_to :root
  end


  private

  def get_prototype
    @prototype = Prototype.find(params[:id])
  end

  def create_params
    tag_list = params[:tag_list].join(",")
    params.require(:prototype).permit(:title, :concept, :catchcopy, :tag1, :tag2, :tag3, thumbnails_attributes: [:image, :property]).merge(user_id: current_user.id, tag_list: tag_list)
  end

  def update_params
    tag_list = params[:tag_list].join(",")
    params.require(:prototype).permit(:title, :concept, :catchcopy, :tag1, :tag2, :tag3, thumbnails_attributes: [:image, :property, :id]).merge(user_id: current_user.id, tag_list: tag_list)
  end
end
