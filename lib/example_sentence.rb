class ExampleSentence
	define_method(:initialize) do |sentence|
		@sentence = sentence
	end
	define_method(:sentence) do
		@sentence
	end
end