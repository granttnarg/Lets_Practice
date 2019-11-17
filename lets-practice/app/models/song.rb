class Song < ApplicationRecord
  has_many :notes
  # validates :name, presence: true
  # validates :artist, presence: true
  # validates :key, presence: true
  # validates :native_bpm, presence: true
  # validates :time_signature, presence: true
  # validates :photo, presence: true
  # validates :sheet_music, presence: true
  mount_uploader :photo, PhotoUploader
  mount_uploader :sheet_music, PhotoUploader
end
