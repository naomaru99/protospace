class TagsController < ApplicationController
  def show
    @prototypes = Prototype.tagged_with(params[:id]).page(params[:page])
  end

  def index
    @tags = ActsAsTaggableOn::Tag.most_used(20)
  end
end
