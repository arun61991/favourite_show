class User < ApplicationRecord
  has_many :watchlists
  has_many :favorites
  has_many :favorite_shows, through: :favorites, source: :favorited, source_type: 'Show'
  has_many :shows, through: :favorites, source: :favorited, source_type: 'Show'

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true

  has_secure_password

  
end
