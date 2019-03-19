# Default Arugments
# Let's make num an optional parameter.
# By default, num will have the value of 1
def repeat(message, num=1)
    message * num
end

p repeat("hi") # => "hi"
p repeat("hi", 3) # => "hihihi"

def great(first_name, last_name = nil)
  no_last_name = 'Doe'

  if last_name.nil?
    "Hi #{first_name} #{no_last_name}"
   else
    "Hi #{first_name} #{last_name}"
   end
end

p great('Peter')
p great('John', 'Dell')


# Option Hashes
# If you have a method that accepts a hash as an argument, you can omit the braces when passing in the hash:

def method(hash)
    p hash  # {"location"=>"SF", "color"=>"red", "size"=>100}
end

method({"location"=>"SF", "color"=>"red", "size"=>100})

# this also works:
method("location"=>"SF", "color"=>"red", "size"=>100)