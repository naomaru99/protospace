class Prototypes::NewestController < ApplicationController
  def index
    @prototypes = Prototype.order("prototypes.created_at desc").eager_load(:thumbnails, :user).page(params[:page])
  end
end
