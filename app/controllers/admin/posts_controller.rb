class Admin::PostsController < ApplicationController
    load_and_authorize_resource
  
    # GET /posts or /posts.json
    def index
      @posts = Post.all
    end
end