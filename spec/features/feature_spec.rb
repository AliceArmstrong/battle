require 'spec_helper'

RSpec.feature "initialising battle game with 2 players" do
  scenario "allows players to enter their names and see them" do
    sign_in_and_play
    expect(page).to have_text("Alice" && "Noora")
  end
end

RSpec.feature "recording HPs" do
    scenario "shows player 2s HP" do
      sign_in_and_play
      expect(page).to have_css("progress[value = '20']")
    end
end

RSpec.feature "recording attack points" do
  scenario "attacks player 2 and gets confirmation" do
    sign_in_and_play
    click_button("Attack Noora")
    attack_player2
    expect(page).to have_text("Player 1 attacked player 2")
  end
end
