# Symbols
#  In Ruby, we can denote a symbol using a colon (:) before writing characters.
#  Where a string is wrapped in quotes, a symbol just has a leading colon.
#  Both strings and symbols contain many characters, but they are not equivalent.
str = "hello"   # the string
sym = :hello    # the symbol

p str.length    # => 5
p sym.length    # => 5

p str[1]        # => "e"
p sym[1]        # => "e"

p str == sym    # => false
# a string is different from a symbol!


# Symbols are Immutable
# The most apparent difference between strings and symbols is that strings are
# mutable, while symbols are immutable. This means that string can be "changed",
# but a symbol can never be "changed":
str = "hello"
sym = :hello

str[0] = "x"
sym[0] = "x"

p str   # => "xello"
p sym   # => :hello

# Under the hood, each time we reference a literal string, Ruby will allocate
# a piece of our machine's memory to store that string. More memory
# must always be allocated for  a new string, even if it is a duplicate value,
# because strings are mutable!
"hello".object_id   # => 70233443667980
"hello".object_id   # => 70233443606440
"hello".object_id   # => 70233443438700

# If we don't intend to mutate the string, we can use a symbol to save some memory. A symbol value will be stored in exactly one memory location:
:hello.object_id    # => 2899228
:hello.object_id    # => 2899228
:hello.object_id    # => 2899228

# Symbols as hash keys
# We'll see the preference of using of symbols in a few places in Ruby. For now, one common way to a symbol is as the key in a hash:
bootcamp = {
  :name=>"App Academy",
  :color=>"red",
  :locations=>["NY", "SF", "ONLINE"]
}
p bootcamp # => {:name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"]}
p bootcamp[:color]   #=> "red

# When initializing a hash with symbol keys, Ruby offers a shortcut. We can drop the rocket (=>) and move the colon (:) to the right of the symbol:
bootcamp = {
  name:"App Academy",
  color:"red",
  locations:["NY", "SF", "ONLINE"]
}
<<<<<<< HEAD
p bootcamp  # => {:name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"]}
p bootcamp[:color]   #=> "red"
=======
p bootcamp # => {:name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"]}
p bootcamp[:color]   #=> "red
>>>>>>> 11df224d58a62c297bb9c7f30144a86c3dd916ec
