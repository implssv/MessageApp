class Message < ApplicationRecord
  belongs_to :user
  has_many :comments
  belongs_to :category
  mount_uploader :cover, CoverUploader

  #attr_accessor :cover

  # after_save :save_cover_image, if:cover
  #
  #
  # def save_cover_image
  #   filename = cover.original_filename
  #   folder = "public/messages/#{id}/cover"
  #
  #   FileUtils::mkdir_p folder
  # 
  #   f = File.open File.join(folder, filename), "wb"
  #   f.write cover.read()
  #   f.close
  #
  #   self.cover = nil
  #   update cover_filename: filename
  # end

end
