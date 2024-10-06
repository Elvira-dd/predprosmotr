class Podcast < ApplicationRecord
    has_many :tags
    has_many :issues
end
