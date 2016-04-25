string = "Test string"

p string.methods.grep(/case/).sort
#=> [:casecmp, :downcase, :downcase!, :swapcase, :swapcase!, :upcase, :upcase!]

p string.methods.grep(/.!/).sort
#=> [:capitalize!, :chomp!, :chop!, :delete!, :downcase!, :encode!, :gsub!, :lstrip!, :next!, :reverse!, :rstrip!, :scrub!, :slice!, :squeeze!, :strip!, :sub!, :succ!, :swapcase!, :tr!, :tr_s!, :unicode_normalize!, :upcase!]


# a quick way of discovering which methods using the ! (bang) don't
# have standard bangless counterparts.	
string = "Test string"
def string.surprise!; end

methods = string.methods
bangs = string.methods.grep(/.!/)

unmatched = bangs.reject do |b|
 	methods.include?(b[0..-2].to_sym)
end
if unmatched.empty?
 	puts "All bang methods are matched by non-bang methods."
else
 	puts "Some bang methods have no non-bang partner: "
 	puts unmatched
end 

