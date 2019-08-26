class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :games
  mount_uploader :photo, PhotoUploader
  # messageable = this Class can use mailboxer gem
  acts_as_messageable
end
