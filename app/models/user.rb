class User < ApplicationRecord
  # adding validation to the username and bio
  validates :username, presence: true, uniqueness: true, length: {in: 3..10}, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  validates :bio, presence: true, length: {maximum: 500}
end
