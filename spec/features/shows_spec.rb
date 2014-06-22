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

  scenario 'User can update a show from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a show'
    fill_in 'Name', with: 'Game of Thrones'
    fill_in 'Day', with: 'Sunday'
    click_on 'Add show'
    expect(page).to have_content 'Game of Thrones'
    expect(page).to have_content 'Sunday'
    click_on 'Game of Thrones'
    expect(page).to have_content 'Game of Thrones'
    expect(page).to have_content 'Sunday'
    click_on 'Edit'
    fill_in 'Name', with: 'True Blood'
    fill_in 'Day', with: 'Monday'
    click_on 'Update show'
    expect(page).to have_content 'True Blood'
    expect(page).to have_content 'Monday'
    expect(page).to_not have_content 'Game of Thrones'
    expect(page).to_not have_content 'Sunday'
  end
end