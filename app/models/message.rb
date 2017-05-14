class Message < ApplicationRecord
  include SearchCop

  search_scope :search do
    attributes :title, :description
  end

  belongs_to :user
  has_many :comments
  belongs_to :category

end
