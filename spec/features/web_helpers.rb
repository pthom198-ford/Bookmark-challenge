# frozen_string_literal: true

def prepare_table
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec('TRUNCATE bookmarks')
  Book.add('http://askjeeves.com', 'ASK JEEVES')
  Book.add('http://www.makersacademy.com', 'MAKERS')
  Book.add('http://google.com', 'GOOGLE')
end
