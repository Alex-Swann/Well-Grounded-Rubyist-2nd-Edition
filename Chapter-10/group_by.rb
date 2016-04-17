colors = %w{ red orange york green blue indigo violet}
p colors

p colors.group_by{|color| color.size}
#=> {3=>["red"], 6=>["orange", "indigo", "violet"], 4=>["york", "blue"], 5=>["green"]}