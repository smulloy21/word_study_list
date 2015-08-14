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
	define_method(:one_line) do
		one_line = ""
		one_line += "(" + @type + ") : " + @definition
	end
end
