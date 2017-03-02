require 'spec_helper'

RSpec.feature "initialising battle game with 2 players" do
  scenario "allows players to enter their names and see them" do
    visit "/add_players"
    fill_in("player1", with: "Alice")
    fill_in("player2", with: "Noora")
    click_button("Submit")
    expect(page).to have_text("Alice" && "Noora")
  end
end

RSpec.feature "recording HPs" do
    scenario "shows player 2s HP" do
      visit "/add_players"
      fill_in("player1", with: "Alice")
      fill_in("player2", with: "Noora")
      click_button("Submit")
      expect(page).to have_css("progress[value = '20']")
    end
end
