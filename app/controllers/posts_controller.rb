class PostsController < ApplicationController
  protect_from_forgery with: :exception

  def show
    rddt_response = JSON.load(open("https://www.reddit.com/r/#{params[:subs]}.json")).deep_symbolize_keys

    @posts = rddt_response[:data][:children]
  end
end
