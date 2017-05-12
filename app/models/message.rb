class Message < ApplicationRecord
  belongs_to :user
  has_many :comments
  belongs_to :category
  mount_uploader :cover, CoverUploader

end
