dobler = Proc.new { |n| n * 2 }
p dobler.call(6)

is_even = Proc.new { |n| n.even? ? true : false }

p is_even.call(3)

def add_and_proc(num_1, num_2, prc)
  sum = num_1 + num_2
  prc.call(sum)
end

doubler = Proc.new { |num| num * 2 }
p add_and_proc(1, 4, doubler)

square = Proc.new { |n| n * n }
p add_and_proc(2, 5, square)










def procs(a,b,&pro)
  sum = a + b
end

sum = Proc.new { |n| n + n}
p procs(2,2)