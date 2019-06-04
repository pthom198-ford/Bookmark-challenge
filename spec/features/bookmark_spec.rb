# frozen_string_literal: true

feature 'to get to homepage' do
  scenario 'to display string Hello World' do
    visit('/')
    expect(page).to have_content('Hello World!')
  end
end

feature 'viewing bookmarks' do
  scenario 'view bookmarks on page' do
    prepare_table
    visit('/bookmarks')
    expect(page).to have_content('ASK JEEVES')
  end


  scenario 'user provides title with url and saves to list' do
    prepare_table
    visit('bookmarks')
    fill_in 'title', with: 'ZOINKS'
    fill_in 'url', with: 'http://www.zoinks.com'
    click_button 'add'
    expect(page).to have_content('ZOINKS')
  end
end
