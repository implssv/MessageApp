class Message < ApplicationRecord
  belongs_to :user
  has_many :comments
  belongs_to :categories
end
