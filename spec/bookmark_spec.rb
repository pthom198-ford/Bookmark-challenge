# frozen_string_literal: true

describe '.all' do
  it 'returns a list of bookmarks' do
    prepare_table
    bookmark = Book.all
    expect(bookmark).to include('ASK JEEVES')
    expect(bookmark).to include('MAKERS')
    expect(bookmark).to include('GOOGLE')
  end
end
