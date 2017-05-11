class Message < ApplicationRecord
  belongs_to :user
  has_many :comments
  belongs_to :category
  mount_uploader :cover, CoverUploader

  validates_integrity_of  :cover
  validates_processing_of :cover

  private
  def cover_size_validation
    errors[:cover] << "should be less than 500KB" if cover.size > 0.5.megabytes
  end

end
