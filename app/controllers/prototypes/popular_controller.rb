class Prototypes::PopularController < ApplicationController
  def index
    @prototypes = Prototype.page(params[:page]).eager_load(:thumbnails, :user).order("likes_count desc")
  end
end
