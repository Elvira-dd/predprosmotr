class AuthorpageController < ApplicationController
  def index
    @podcasts = Podcast.all
  end
end
