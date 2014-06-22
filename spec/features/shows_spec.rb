require 'spec_helper'

feature 'CRUD shows' do
  scenario 'User can create a list of shows' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a show'
    fill_in 'Name', with: 'Game of Thrones'
    fill_in 'Day', with: 'Sunday'
    click_on 'Add show'
    expect(page).to have_content 'Game of Thrones'
    expect(page).to have_content 'Sunday'
  end
end