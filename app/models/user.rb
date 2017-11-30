class User < ApplicationRecord
  has_many :photos
  has_many :favorites
  has_many :comments, through: :photos

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates :name, :presence => true
  validates :name, :email, uniqueness: true
  validates :email, :presence => true
end
