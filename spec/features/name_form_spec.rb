feature 'Name' do
  scenario 'Enter name to play' do
    sign_in
    expect(page).to have_content("Hey! Andrew")
  end
end
