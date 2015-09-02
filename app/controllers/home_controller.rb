require 'open-uri'

class HomeController < ApplicationController
  protect_from_forgery with: :exception

  def index
    rddt_response = JSON.load(open('https://www.reddit.com/r/pics.json')).deep_symbolize_keys

    @posts = rddt_response[:data][:children]
  end
end
