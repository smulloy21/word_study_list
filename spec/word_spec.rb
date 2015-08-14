require('rspec')
require('word')

describe(Word) do
	describe('#name') do
		it('returns the word') do
			test_word = Word.new("abdicate")
			expect(test_word.name()).to(eq("abdicate"))
		end
	end
	describe('#add') do
		it('adds the word to the list of words') do
			test_word = Word.new("abdicate")
			test_word.add()
			expect(Word.all()).to(eq([test_word]))
		end
	end
end