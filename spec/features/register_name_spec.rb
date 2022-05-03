feature "registering name" do
  scenario "it registers and shows player's name" do
    visit "/"
    fill_in "name", with: "Paula"
    click_button "Submit"
    expect(page).to have_content "Paula"
  end
end