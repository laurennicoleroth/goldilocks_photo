class Photo < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader 
  validates :title, presence: true #make sure photo has a title
end
