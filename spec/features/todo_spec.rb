require 'rails_helper'

feature 'Can manage todo items' do
  scenario 'Can create a todo item' do
    visit root_path

    click_link "New Todo"
    fill_in "Description", with: "Do the washing"
    click_link "Create"

    expect(page).to have_content("Successfully created Todo.")
  end
end
