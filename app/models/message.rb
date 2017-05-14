class Message < ApplicationRecord
  include SearchCop

  has_attached_file :cover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "https://robohash.org/noimage"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/

  search_scope :search do
    attributes :title, :description
  end

  belongs_to :user
  has_many :comments
  belongs_to :category

end
