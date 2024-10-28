class Post < ApplicationRecord
    belongs_to :issue, optional: true
    belongs_to :user 
    has_many :comments, :dependent => :destroy
end
