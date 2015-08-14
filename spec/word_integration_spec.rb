require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the add a word path', {:type => :feature}) do 
	it('adds a word to the word list on the home page') do
		visit('/')
		fill_in('new_word', :with => 'abdicate')
		click_button('Add Word')
		expect(page).to have_content('abdicate')
	end
end
describe('the clear words path', {:type => :feature}) do 
	it('clears the word list on the home page') do
		visit('/')
		fill_in('new_word', :with => 'abdicate')
		click_button('Add Word')
		click_button('Clear All')
		expect(page).to have_no_content('abdicate')
	end
end