# Using splat to accept additional arguments
def method(arg_1, arg_2)
  p arg_1
  p arg_2
end

method("a", "b", "c", "d", "e") # ArgumentError: wrong number of arguments (given 5, expected 2)

#  if we want our method to have the ability to accept at least two arguments with potentially more, we can add a splat parameter.
def method(arg_1, arg_2, *other_args)
  p arg_1         # "a"
  p arg_2         # "b"
  p other_args    # ["c", "d", "e"]
end

method("a", "b", "c", "d", "e")

# If we pass in exactly two arguments, then other_args will be an empty array:
def method(arg_1, arg_2, *other_args)
    p arg_1         # "a"
    p arg_2         # "b"
    p other_args    # []
end

method("a", "b")


# Using splat to decompose an array

# We can also use splat to decompose or unpack elements of an array. Let's say we had an array containing some elements, but we wanted each individual element to become an argument:
def greet(first_name, last_name)
    p "Hey " + first_name + ", your last name is " + last_name
end

names = ["grace", "hopper"]
greet(names)    # ArgumentError: wrong number of arguments (given 1, expected 2)

# We can use a splat to unpack this array:
def greet(first_name, last_name)
    p "Hey " + first_name + ", your last name is " + last_name
end

names = ["Grace", "Hopper"]
greet(*names)    # => "Hey Grace, your last name is Hopper"

# We can imagine * as removing the brackets around an array
arr_1 = ["a", "b"]
arr_2 = ["d", "e"]
arr_3 = [ *arr_1, "c", *arr_2 ]
p arr_3 # => ["a", "b", "c", "d", "e"]


# Using splat to decompose a hash

# We can use a double splat (**) to perform a similar unpacking of a hash's key-value pairs. Double splat will only work with hashes where the keys are symbols:
old_hash = { a: 1, b: 2 }
new_hash = { **old_hash, c: 3 }
p new_hash # => {:a=>1, :b=>2, :c=>3}