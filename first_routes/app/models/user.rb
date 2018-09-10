class User < ApplicationRecord
  validates :username, uniqueness: true, null: false 
end