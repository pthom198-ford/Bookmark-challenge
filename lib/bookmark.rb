class Book

attr_reader :bookmarks


  def self.all
    @bookmarks = [
        'www.bbc.co.uk',
        'www.facebook.com',
        'www.github.com'
        ]
  end
end
