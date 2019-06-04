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
    result.map { |bookmark| bookmark['url'] }
end

  def self.add(bookmark)
    connection = if ENV['RACK_ENV'] == 'test'
                   PG.connect(dbname: 'bookmark_manager_test')
                 else
                   PG.connect(dbname: 'bookmark_manager')
               end
    connection.exec("INSERT INTO bookmarks (url) VALUES ('#{bookmark}')")
  end
end
