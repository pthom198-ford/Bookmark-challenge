

def truncate
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec('TRUNCATE bookmarks')
end

def prepare_table
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://askjeeves.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://google.com');")
end
