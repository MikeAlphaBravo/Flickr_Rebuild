class Photo < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :photos

  validates :title, :presence => true
  validates :image, :presence => true
end
