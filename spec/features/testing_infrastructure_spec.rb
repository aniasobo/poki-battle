require '././lib/battle-controller'

feature 'testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Test text hello'
  end

  scenario 'accepts player names and displays them' do
    visit('/')
    fill_in 'player1name', with: 'Gidorah'
    fill_in 'player2name', with: 'Godzilla'
    click_button 'Enter the ring'
    expect(page.text).to match(/In the top left corner, we got the featherweight noob Gidorah! Meanwhile, Godzilla, in the bottom right corner, stretching./)
  end

  scenario 'displays players hit points' do
    visit('/')
    fill_in 'player1name', with: 'Gidorah'
    fill_in 'player2name', with: 'Godzilla'
    click_button 'Enter the ring'
    expect(page.text).to match(/Godzilla: 100 Hit Points/)
  end
end

