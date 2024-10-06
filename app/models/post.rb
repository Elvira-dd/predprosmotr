class Post < ApplicationRecord
    belongs_to :issue, optional: true
    has_many :comments, :dependent => :destroy
end
