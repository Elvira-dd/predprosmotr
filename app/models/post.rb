class Post < ApplicationRecord
    belongs_to :issues, optional: true
    has_many :comments, :dependent => :destroy
end
