class Definition
	define_method(:initialize) do |type, definition|
		@type = type
		@definition = definition
		@examples = []
	end
	define_method(:define) do
		@definition
	end
	define_method(:type) do
		@type
	end
	define_method(:one_line) do
		one_line = ""
		one_line += "(" + @type + ") : " + @definition
	end
	define_method(:add_example) do |example|
		@examples.push(example)
	end
	define_method(:examples) do
		@examples
	end
	define_method(:clear_examples) do
		@examples = []
	end
end
