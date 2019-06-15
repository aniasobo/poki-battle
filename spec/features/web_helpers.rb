def sign_in_and_play
  visit('/')
  fill_in 'player1name', with: 'Gidorah'
  fill_in 'player2name', with: 'Godzilla'
  click_button 'Enter the ring'
end
