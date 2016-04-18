=begin

/^\s*#/  ^ beginning of line (finds whitespace and then hash tag)
/\.$/  	 $ end of line (finds '.' from end of line)
\A beginning of string
\z end of string
\Z end of string except new line character(\n)
\b word boundary (e.g. finds word in string "!!!word***")

end