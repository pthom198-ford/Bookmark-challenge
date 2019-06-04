# frozen_string_literal: true

require 'pg'

class Book
  # attr_reader :bookmarks

  def self.all
    connection = if ENV['RACK_ENV'] == 'test'
                   PG.connect(dbname: 'bookmark_manager_test')
                 else
                   PG.connect(dbname: 'bookmark_manager')
               end
    result = connection.exec('SELECT * FROM bookmarks;')
    result.map { |bookmark| bookmark['title'] }
   #  urls = []
   #    result = connection.exec('SELECT * FROM bookmarks;')
   #    result.map { |bookmark|
   #   url = []
   #   url << bookmark['url']
   #   url << bookmark['title']
   #   urls << url }
   end

   # <a href=<&=url%><%=title></a>
   # <% @bookmark.each do |url|%>
   #  <a href="<%=url[0]%>"><%=url[1]%></a>
   # <% end%>

  def self.add(bookmark, title)
    connection = if ENV['RACK_ENV'] == 'test'
                   PG.connect(dbname: 'bookmark_manager_test')
                 else
                   PG.connect(dbname: 'bookmark_manager')
               end
    connection.exec("INSERT INTO bookmarks (url, title) VALUES ('#{bookmark}','#{title}')")
  end
end
