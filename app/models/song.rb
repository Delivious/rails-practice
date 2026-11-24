class Song < ApplicationRecord
    has_one_attached :featured_image 
    has_one_attached :featured_audio
end
