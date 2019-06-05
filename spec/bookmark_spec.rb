# frozen_string_literal: true

describe '.all' do
  it 'returns a list of bookmarks' do
    prepare_table
    bookmark = Book.all
    expect(bookmark[0]).to include('ASK JEEVES')
    expect(bookmark[1]).to include('MAKERS')
    expect(bookmark[2]).to include('GOOGLE')
  end
end
