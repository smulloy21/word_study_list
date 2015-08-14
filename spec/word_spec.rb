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
	describe('.clear') do
		it('clears the word list') do
			test_word = Word.new("abdicate")
			test_word.add()
			Word.clear()
			expect(Word.all()).to(eq([]))
		end
	end
	describe('#id') do
		it('returns the id number of a word') do
			test_word = Word.new("abdicate")
			test_word.add()
			expect(test_word.id()).to(eq(1))
		end
	end
	describe('.find') do
		it('finds a word based on its id number') do
			test_word = Word.new("abdicate")
			test_word.add()
			test_word2 = Word.new("incongruous")
			test_word2.add()
			expect(Word.find(test_word2.id())).to(eq(test_word2))
		end
	end
end



