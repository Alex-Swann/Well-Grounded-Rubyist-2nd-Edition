
# how to list global and local variables

x = 1
p local_variables
#=> [:x]

p global_variables.sort
#=>[:$!, :$", :$$, :$&, :$', :$*, :$+, :$,, :$-0, :$-F, :$-I, :$-K, :$-W, :$-a, :$-d, :$-i, :$-l, :$-p, :$-v, :$-w, :$., :$/, :$0, :$1, :$2, :$3, :$4, :$5, :$6, :$7, :$8, :$9, :$:, :$;, :$<, :$=, :$>, :$?, :$@, :$DEBUG, :$FILENAME, :$KCODE, :$LOADED_FEATURES, :$LOAD_PATH, :$PROGRAM_NAME, :$SAFE, :$VERBOSE, :$\, :$_, :$`, :$stderr, :$stdin, :$stdout, :$~]


=begin
The global variable list includes globals like $: (the library load path, also available as
$LOAD_PATH), $~ (the global MatchData object based on the most recent patternmatching
operation), $0 (the name of the file in which execution of the current program
was initiated), $FILENAME (the name of the file currently being executed), and
others. The local variable list includes all currently defined local variables.
=end

# instance_varibles method displays those created within the class
# of the instance object that's been created.
class Person
 	attr_accessor :name, :age
 	def initialize(name)
 		@name = name
 	end
end
david = Person.new("David")
david.age = 55
p david.instance_variables
#=> [:@name, :@age]


=begin
The underscore is a special irb variable: it represents the value of the last expression
evaluated by irb. You can use it to grab values that otherwise will have disappeared:
>> Person.new("David")
=> #<Person:0x000001018ba360 @name="David">
>> david = _
=> #<Person:0x000001018ba360 @name="David">
Now the Person object is bound to the variable david. 
=end
