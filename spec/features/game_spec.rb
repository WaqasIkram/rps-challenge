require "spec_helper"

feature "Playing the game" do
  before do
    visit "/"
    fill_in "name", with: "Paula"
    click_button "Submit"
  end
  scenario "options to pick from rock, paper or scissors" do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "options to pick either, rock, paper or scissors" do
    click_button "Rock"
    expect(page).to have_content "You picked Rock!"
    # expect(page).to have_content "Paper"
    # expect(page).to have_content "Scissors"
  end

end
