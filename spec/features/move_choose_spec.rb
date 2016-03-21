feature 'Move' do
  scenario 'Player selects there move' do
    sign_in
    click_button("Rock")
    expect(page).to have_content "Rock"
  end
end
