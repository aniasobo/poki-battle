require '././lib/battle-controller'

feature 'testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Enter the ring'
  end
end