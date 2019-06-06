# frozen_string_literal: true

describe '.all' do
  it 'returns a list of bookmarks' do
    prepare_table
    bookmark = Book.all
    expect(bookmark.last.title).to include('GOOGLE')
     expect(bookmark.first.title).to include('ASK JEEVES')
  end
end

describe '.delete' do
  it 'deletes a bookmark from list' do
    prepare_table
    Book.delete('ASK JEEVES')
    bookmark = Book.all
    expect(bookmark).not_to include('ASK JEEVES')
  end
end

