describe '.all' do
  it 'returns a list of bookmarks' do
    bookmark = Book.all
    expect(bookmark).to include("http://askjeeves.com")
    expect(bookmark).to include("http://www.makersacademy.com")
    expect(bookmark).to include("http://google.com")
  end
end
