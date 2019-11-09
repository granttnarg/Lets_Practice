class Song < ApplicationRecord
  has_many :notes
  has_many :pictures, dependent: :destroy
  # validates :name, presence: true
  # validates :artist, presence: true, uniqueness: true
  # validates :date_uploaded, presence: true
  mount_uploader :photo, PhotoUploader
  mount_uploader :sheet_music, PhotoUploader
end
