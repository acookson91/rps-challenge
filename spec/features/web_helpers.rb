
def sign_in
visit('/')
fill_in(:p1, with: 'Andrew')
click_button 'Submit'
end
