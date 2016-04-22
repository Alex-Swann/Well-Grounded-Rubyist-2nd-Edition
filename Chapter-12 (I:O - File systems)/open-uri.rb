require 'open-uri'
rubypage = open("http://rubycentral.org")
puts rubypage.gets
#=> <!doctype html>
puts rubypage.gets
#=> <html lang="en">

