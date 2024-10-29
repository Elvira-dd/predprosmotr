class AboutUsController < ApplicationController
  def index
    @podcasts = Podcast.all
  end
end
