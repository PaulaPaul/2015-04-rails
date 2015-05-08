class Song < ActiveRecord::Base
    belongs_to :artist
    validates :artist_id, :name, presence: true
end
