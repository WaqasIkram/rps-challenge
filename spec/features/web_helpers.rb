def enter_name_and_submit
  visit "/"
  fill_in "player_name", with: "Paula"
  click_button "Submit"
  click_button "Born Ready!"

end