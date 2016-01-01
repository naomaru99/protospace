class PrototypesController < ApplicationController
  before_action :get_prototype, only: [:edit, :update, :destroy]

  def index
  end
  def new
    @prototype = Prototype.new
    @prototype.thumbnails.build
  end

  def show
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
    params.require(:prototype).permit(:title, :concept, :catchcopy, :tag1, :tag2, :tag3, thumbnails_attributes: [:image, :property]).merge(user_id: current_user.id)
  end

  def update_params
    params.require(:prototype).permit(:title, :concept, :catchcopy, :tag1, :tag2, :tag3, thumbnails_attributes: [:image, :property, :id]).merge(user_id: current_user.id)
  end
end
