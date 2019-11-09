class Song < ApplicationRecord
  has_many :notes
  # validates :name, presence: true
  # validates :artist, presence: true, uniqueness: true
  # validates :date_uploaded, presence: true
  mount_uploader :photo, PhotoUploader
end
