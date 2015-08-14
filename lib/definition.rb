class Definition
	define_method(:initialize) do |type, definition|
		@type = type
		@definition = definition
	end
	define_method(:define) do
		@definition
	end
	define_method(:type) do
		@type
	end
end