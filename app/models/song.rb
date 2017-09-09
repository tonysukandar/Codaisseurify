class Song < ApplicationRecord
  belongs_to :artist

  validates :song_name, presence: true
  validates :release_year, presence: true, inclusion: { in: 1900..Date.today.year }
end
