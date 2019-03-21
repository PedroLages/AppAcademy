
def bubble_sort(array)
  sorted = false

  while !sorted
    sorted = true

    (0...array.size - 1).each do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
  end

  array
end

array = %w[1 5 2 3 0 8 5]

p sort(array)