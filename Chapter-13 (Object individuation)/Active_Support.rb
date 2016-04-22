# run 'gem install activesupport ' to install it to system
require 'active_support'
require 'active_support/core_ext'

p "person".pluralize

p "dr_dolittle".titleize

# alias can be used to pass-through methods and not overwide
# Ruby core methods. For the keyword example the naming is precise.
# it is 'alias __old_[method name]__ [method name]' 

class String
	alias __old_reverse__ reverse
	def reverse
		$stderr.puts "Reversing a string!"
		__old_reverse__
	end
end
puts "David".reverse

=begin 2 different naming conventions for alias

class String
 alias __old_reverse__ reverse
end

class String
 alias_method :__old_reverse__, :reverse
end

=end

p Time.now.to_s(:db)

p Time.now.to_s(:rfc822)
