class Prototype < ActiveRecord::Base
  has_many :thumbnails

  accepts_nested_attributes_for :thumbnails
  paginates_per 8
end
