# This method is a nice illustration as to what lambdas different to 
# Procs. 
# For starters there is no lambda class just a lambda flavoured version of a Proc.
# Lambdas require explicit creation and, unlike Procs, when 'return'ed
# only exit their code block not the method in which they sit.

def return_test
	l = lambda { return }
	l.call
	puts "Still here!"
	p = Proc.new { return }
	p.call
	puts "You won't see this message!"
end
return_test
#=> Still here!

# In this case the Proc exits the method 'return_test'
# However if this was a top-level Proc then a fatal error results.

# Finally lambdas don't like being called with the wrong number of 
# arguments.

# Lambda literal constructor ("stubby lambda")
# DOESN'T take placeholder parameters in pipes in the code block.
lam = ->(x,y) { x * y }


