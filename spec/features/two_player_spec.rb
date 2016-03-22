feature '2 player' do
  scenario 'Someone wants to enter two names' do
    visit('/')
    fill_in(:player1, with: 'Andrew')
    fill_in(:player2, with: 'Ben')
    click_button 'Multiplayer yo'
    expect(page).to have_content "Andrew's go"
  end
end
