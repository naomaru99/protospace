class Thumbnail < ActiveRecord::Base
  belongs_to :prototype

  mount_uploader :image, ThumbnailUploader
  enum property: %i(main sub)
end
