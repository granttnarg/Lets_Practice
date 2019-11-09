class Picture < ApplicationRecord
  belongs_to :song
  mount_uploader :photo, PhotoUploader
end
