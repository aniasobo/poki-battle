require '././lib/battle-controller'

feature 'testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Enter the ring'
  end

  scenario 'accepts player names and displays them' do
    visit('/playernames')
    fill_in 'player1name', with: 'Gidorah'
    fill_in 'player2name', with: 'Godzilla'
    click_button 'I will allow it!'
    expect(page).to have_content "In the top left corner, we got the featherweight noob Gidorah! Meanwhile, Godzilla, in the bottom right corner, stretching.\nTEST"
  end
end

