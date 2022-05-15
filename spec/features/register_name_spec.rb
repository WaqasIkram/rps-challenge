require "spec_helper"

feature "Registering name" do
  scenario "it registers and shows player's name" do
    visit "/"
    fill_in "name", with: "Paula"
    click_button "Submit"
    # save_and_open_page
    expect(page).to have_content "Paula"
  end
end