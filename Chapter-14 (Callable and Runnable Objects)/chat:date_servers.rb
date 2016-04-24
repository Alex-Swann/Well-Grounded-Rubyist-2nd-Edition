# DATE SERVERS

# single call example
require 'socket'
s = TCPServer.new(1949)
conn = s.accept
conn.puts "Hi. Here's the date."
conn.puts `date`
conn.close
s.close

# mutliple call example
require 'socket'
s = TCPServer.new(1949)
while true
	conn = s.accept
	conn.puts "Hi. Here's the date."
	conn.puts `date`
	conn.close
end

# you can even use this to send information to the server for a single user
require 'socket'
s = TCPServer.new(1949)
while true
	conn = s.accept
	conn.print "Hi! What's your name? "
	name = conn.gets.chomp
	conn.puts "Hi, #{name}. Here's the date."
	conn.puts `date`
	conn.close
end

# And here is where you combine the above example with threading in 
# order to enable this being accessed by multiple users at the same
# time.
require 'socket'
s = TCPServer.new(1949)
while (conn = s.accept)
	Thread.new(conn) do |c|
		conn = s.accept
		conn.print "Hi! What's your name? "
		name = conn.gets.chomp
		conn.puts "Hi, #{name}. Here's the date."
		conn.puts `date`
		conn.close
	end
end


# in this example this script is saved to the file dateserver.rb
# and is run in a console.
# from there another console is opened and run the command
# `telnet localhost [port number]` in this case port number is `1949`



# *****************
# CHAT SERVERS

require 'socket'
def welcome(chatter)
	chatter.print "Welcome! Please enter your name: "
	chatter.readline.chomp
end
def broadcast(message, chatters)
	chatters.each do |chatter|
		chatter.puts message
	end
end
s = TCPServer.new(3939)
 	chatters = []
while (chatter = s.accept)
 	Thread.new(chatter) do |c|
	 	name = welcome(chatter)
	 	broadcast("#{name} has joined", chatters)
	 	chatters << chatter
	 	begin
	 		loop do
	 			line = c.readline
	 			broadcast("#{name}: #{line}", chatters)
	 		end
	 	rescue EOFError
	 		c.close
	 		chatters.delete(c)
	 		broadcast("#{name} has left", chatters)
 		end
 	end
end



