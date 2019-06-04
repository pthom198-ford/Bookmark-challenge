# frozen_string_literal: true

feature 'to get to homepage' do
  scenario 'to display string Hello World' do
    visit('/')
    expect(page).to have_content('Hello World!')
  end
end

feature 'viewing bookmarks' do
  scenario 'view bookmarks on page' do
    truncate
    prepare_table
    visit('/bookmarks')
    expect(page).to have_content('http://askjeeves.com')
  end
end

feature 'adding a new bookmark' do
  scenario 'user provides name/url and saves address to list' do
    truncate
    prepare_table
    visit('/bookmarks')
    fill_in 'url', with: 'http://www.zoinks.com'
    click_button 'add'
    expect(page).to have_content('http://www.zoinks.com')
  end
end
