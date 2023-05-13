class RankingsController < ApplicationController
  def index
    @ranking = Post.ranking
  end
end
