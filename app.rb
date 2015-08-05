require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')

get('/') do
  erb(:index)
end

get('/scrabble') do
  @scrabble_word = params.fetch('scrabble_word').scrabble()
  erb(:scrabble)
end
