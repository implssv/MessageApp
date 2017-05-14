class Message < ApplicationRecord
  include SearchCop

  mount_uploader :cover, CoverUploader

  search_scope :search do
    attributes :title, :description
  end

  belongs_to :user
  has_many :comments
  belongs_to :category

end
