# frozen_string_literal: true

def truncate
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec('TRUNCATE bookmarks')
end

def prepare_table
  connection = PG.connect(dbname: 'bookmark_manager_test')
  Book.add('http://askjeeves.com')
  Book.add('http://www.makersacademy.com')
  Book.add('http://google.com')
end
