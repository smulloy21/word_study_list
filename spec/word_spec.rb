require('rspec')
require('word')
require('definition')

describe(Word) do
	before() do
		Word.clear()
	end

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
	describe('#add_definition') do
		it('adds a definition to an instance of word') do
			test_word = Word.new("abdicate")
			test_word.add()
			test_definition = Definition.new("Verb", "to renounce or relinquish a throne, right or claim")
			test_word.add_definition(test_definition)
			expect(test_word.define()).to(eq([test_definition]))
		end
	end
	describe('#clear_definitions') do
		it('clears the list of definitions of a word') do
			test_word = Word.new("abdicate")
			test_word.add()
			test_definition = Definition.new("Verb", "to renounce or relinquish a throne, right or claim")
			test_word.add_definition(test_definition)
			test_word.clear_definitions()
			expect(test_word.define()).to(eq([]))
		end
	end
end

describe(Definition) do
	describe('#define') do
		it('returns the definition') do
			test_definition = Definition.new("Verb", "to renounce or relinquish a throne, right or claim")
			expect(test_definition.define()).to(eq("to renounce or relinquish a throne, right or claim"))
		end
	end
	describe('#type') do
		it('returns the part of speech') do
			test_definition = Definition.new("Verb", "to renounce or relinquish a throne, right or claim")
			expect(test_definition.type()).to(eq("Verb"))
		end
	end
end
