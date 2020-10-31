class PagesController < ActionController::Base
    def home
      @posts = Post.all
    end
end
