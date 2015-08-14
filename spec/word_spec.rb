require('rspec')
require('word')
require('definition')
require('example_sentence')

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
	describe('#find_definition') do
		it('finds a definition based on its string') do
			test_word = Word.new("abdicate")
			test_word.add()
			test_definition = Definition.new("Verb", "to renounce or relinquish a throne, right or claim")
			test_word.add_definition(test_definition)
			expect(test_word.find_definition("to renounce or relinquish a throne, right or claim")).to(eq(test_definition))
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
	describe('#add_example') do
		it('adds an example sentence to a definition') do
			test_definition = Definition.new("Adj", "Outrageously bad")
			test_example = ExampleSentence.new("We'll keep a low profile and limit any negative publicity to really egregious errors.")
			test_definition.add_example(test_example)
			expect(test_definition.examples()).to(eq([test_example]))
		end
	end
	describe('#clear_examples') do
		it('clears all example sentences of a definition') do
			test_definition = Definition.new("Adj", "Outrageously bad")
			test_example = ExampleSentence.new("We'll keep a low profile and limit any negative publicity to really egregious errors.")
			test_definition.add_example(test_example)
			test_definition.clear_examples()
			expect(test_definition.examples()).to(eq([]))
		end
	end
end

describe(ExampleSentence) do
	describe('#sentence') do
		it('returns the example sentence') do
			test_example = ExampleSentence.new("We'll keep a low profile and limit any negative publicity to really egregious errors.")
			expect(test_example.sentence()).to(eq("We'll keep a low profile and limit any negative publicity to really egregious errors."))
		end
	end
end

