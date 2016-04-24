require 'socket'
s = TCPServer.new(1948)
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