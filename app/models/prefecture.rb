class Prefecture < ApplicationRecord
  has_many :prefectures_users
  has_many :users, through: :prefectures_users
end
