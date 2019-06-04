feature 'to get to homepage' do
  scenario 'to display string Hello World' do
    visit('/')
    expect(page).to have_content("Hello World!")
  end
end

feature 'viewing bookmarks' do
  scenario 'view bookmarks on page' do
    truncate
    prepare_table
    visit('/bookmarks')
    expect(page).to have_content("http://askjeeves.com")
  end
end
