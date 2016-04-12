p string = "David A. Black"
#=> "David A. Black"
p string.rjust(25)
#=> " David A. Black"
p string.ljust(25)
#=> "David A. Black "
p string.rjust(25,'.')
#=> "...........David A. Black"
p string.rjust(25,'><')
#=> "><><><><><>David A. Black"
p "The middle".center(20, "*")
#=> "*****The middle*****"
#Odd-numbered padding spots are rendered right-heavy:
p "The middle".center(21, "*")
#=> "*****The middle******"
 