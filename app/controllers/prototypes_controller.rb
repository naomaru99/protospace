class PrototypesController < ApplicationController
  def index
  end
  def new
    @prototype = Prototype.new
    3.times { @prototype.thumbnails.build }
  end

  def show
  end

  def create
    @prototype = Prototype.new(create_params)
    @prototype.save
    redirect_to :root
  end

  def edit
    @prototype = Prototype.find(params[:id])
    3.times {@prototype.thumbnails.build }
  end

  def update
    Prototype.update(create_params)
  end


  private
  def create_params
    params.require(:prototype).permit(:title, :concept, :catchcopy, :tag1, :tag2, :tag3, thumbnails_attributes: [:image]).merge(user_id: current_user.id)
  end
end
