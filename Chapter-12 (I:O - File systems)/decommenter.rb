module DeCommenter
	def self.decomment (infile, outfile, comment_re = /.*#/ )
		infile.each do |inline|
			if  inline =~ comment_re
				if inline =~ /\A\s*#/
					outfile.puts 
				else
					inline = inline.scan(/.*(?=\s*#)/)[0]
					outfile.print inline 
				end
			else
				outfile.print inline 
			end
		end
	end
end