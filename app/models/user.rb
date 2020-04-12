class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :prefectures_users
  has_many :prefectures, through: :prefectures_users
  
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, uniqueness: true
end
