class UserPost < ApplicationRecord
  validates :content, presence:true
  mount_uploader :memo_picture1, PictureUploader
  mount_uploader :memo_picture2, PictureUploader
end
