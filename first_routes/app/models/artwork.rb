class Artwork < ApplicationRecord
  validates :image_url, [:title, :artist_id], uniqueness: true
  
  belongs_to :artist,
    foreign_key: :artist_id,
    class_name: 'User'
end