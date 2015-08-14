require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
require('pry')
also_reload('lib/**/*.rb')

get('/') do 
	@words = Word.all()
	erb(:index)
end

post('/new_word') do
	@new_word = Word.new(params.fetch('new_word'))
	@new_word.add()
	redirect('/')
end