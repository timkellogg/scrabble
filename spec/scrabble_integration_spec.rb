require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The scrabble path', {:type => :feature}) do
  it('displays a scrabble score after the user enters a scrabble word.') do
    visit('/')
    fill_in('scrabble_word', :with=>"banana")
    click_button('scrabblify!')
    expect(page).to have_content(8)
  end
end
