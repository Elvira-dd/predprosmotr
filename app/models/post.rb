class Post < ApplicationRecord
    belongs_to :issue
    belongs_to :podcast
    belongs_to :user 
    has_many :comments, :dependent => :destroy
end
