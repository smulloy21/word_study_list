class Word
	@@word_list = []
	define_method(:initialize) do |word|
		@word = word
		@id = @@word_list.length + 1
		@definition = []
	end
	define_method(:name) do
		@word
	end
	define_singleton_method(:all) do
		@@word_list
	end
	define_method(:add) do
		@@word_list.push(self)
	end
	define_singleton_method(:clear) do
		@@word_list = []
	end
	define_method(:id) do
		@id
	end
	define_singleton_method(:find) do |id|
		found_word = nil
		@@word_list.each() do |word|
			if word.id() == id
				found_word = word
			end
		end
		found_word
	end
	define_method(:add_definition) do |definition|
		@definition.push(definition)
	end
	define_method(:define) do
		@definition
	end
	define_method(:clear_definitions) do
		@definition = []
	end
	define_method(:find_definition) do |definition|
		found_definition = nil
		@definition.each() do |spot|
			if spot.define() == definition
				found_definition = spot
			end
		end
		found_definition
	end
end
