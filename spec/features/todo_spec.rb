require 'rails_helper'

feature 'Can manage todo items' do
  scenario 'Can create a todo item' do
    visit root_path

    click_link "New Todo"
    fill_in "Description", with: "Do the washing"
    click_button "Create"

    expect(page).to have_content("Successfully created Todo.")
  end

  scenario 'Can complete a todo' do
    @todo = Todo.create(description: "Do the washing")

    visit root_path
    click_link "View existing Todos"

    click_button "Finished"
    expect(page).to have_content("Successfully completed Todo.")
    expect(@todo.reload.completed?).to be_truthy
  end
end
