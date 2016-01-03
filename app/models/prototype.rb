class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :thumbnails, dependent: :delete_all
  has_many :comments
  has_many :likes, dependent: :delete_all

  accepts_nested_attributes_for :thumbnails
  paginates_per 8
end
