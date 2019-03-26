arrNum = [1, 3, 9, 5, 2]
arrChar = ['a', 'b', 'c', 'd']

p arrNum.map(&:odd?)
p arrChar.select(&:upcase)

arrChar.map do |char|
  puts "This is the map #{char.upcase}"
end