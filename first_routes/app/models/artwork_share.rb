class ArtworkShare < ApplicationRecord
  validates :viewer_id, :artwork_id [:artwork_id, :viewer_id], uniqueness: true
  
  belongs_to :user,
  foreign_key: :viewer_id,
  class_name: :User 
  
  belongs_to :artwork,
  foreign_key: :artwork_id,
  class_name: :Artwork
end
