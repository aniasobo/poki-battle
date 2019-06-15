require '././lib/battle-controller'

feature 'testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Test text hello'
  end

  scenario 'accepts player names and displays them' do
    sign_in_and_play
    expect(page.text).to match(/In the top left corner, we got the featherweight noob Gidorah! Meanwhile, Godzilla, in the bottom right corner, stretching./)
  end

  scenario 'displays players hit points' do
    sign_in_and_play
    expect(page.text).to match(/Godzilla HIT POINTS: 100/)
  end

  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_link('Gidorah: FIGHT!') 
    expect(page.text).to match(/Godzilla takes a hit from Gidorah/)
  end
end

feature 'testing player battle' do
  scenario 'displays affected hit points' do
    sign_in_and_play
    click_link('Gidorah: FIGHT!') 
    expect(page.text).not_to match(/Godzilla HIT POINTS: 100/)
    expect(page.text).to match(/Godzilla HIT POINTS: 90/)
  end
end


