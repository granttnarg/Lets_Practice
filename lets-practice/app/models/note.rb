class Note < ApplicationRecord
  belongs_to :song
  # validates :date, presence: true
  # validates :description, presence: true
  # validates :prac_bpm, presence: true
  # validates :rating, presence: true, :inclusion => { :in => 1..5 }
end
