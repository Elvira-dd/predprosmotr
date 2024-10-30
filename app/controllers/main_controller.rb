class MainController < ApplicationController
layout "main"
  def index
    @podcast = Podcast.all
  end
end
