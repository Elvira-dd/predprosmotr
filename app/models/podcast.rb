class Podcast < ApplicationRecord
    has_many :tags
    has_many :issues
    has_many :posts
end
