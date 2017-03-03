def sign_in_and_play
  visit "/add_players"
  fill_in("player1", with: "Alice")
  fill_in("player2", with: "Noora")
  click_button("Submit")
end



# rand on attack
# if 'x', puts 'critial attack'
