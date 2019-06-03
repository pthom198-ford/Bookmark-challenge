require 'sinatra/base'
require './lib/bookmark'

class Bookmark < Sinatra::Application
  get '/' do
    "Hello World!"
  end

  get '/bookmarks' do
    @bookmark = Book.all
    erb :bookmark
  end


end
