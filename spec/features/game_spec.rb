require "spec_helper"

feature "Playing the game" do
  PLAY_NUM = 221563

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
  end

  scenario "Game choses 'Rock'" do
    click_button "Rock"
    message = find(:css, "#opponent").text
    expect(possible_messages).to include message
  end

  scenario "options to pick randomly from rock, paper or scissors" do
    srand(PLAY_NUM)
    click_button "Rock"
    expect(page).to have_content "Opponent picked Scissors!"
  end

  def possible_messages
    [:rock, :paper, :scissors].map { |shape| "Opponent picked #{shape.to_s.capitalize}!" }
  end

end
