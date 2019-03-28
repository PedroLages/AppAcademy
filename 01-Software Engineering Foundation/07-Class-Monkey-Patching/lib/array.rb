# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    self.empty? ? nil : self.max - self.min
  end

  def average
    return nil if self.empty?
    self.sum / (self.size * 1.0)
  end

  def median
    return nil if self.empty?

    middle_index = self.size / 2

    if self.size.odd?
      return self.sort[middle_index]
    else
      first_ele = self.sort[middle_index]
      last_ele = self.sort[middle_index - 1]
      return (first_ele + last_ele) / 2.0
    end
  end

  def counts
    count = Hash.new(0)
    self.each { |ele| count[ele] += 1 }

    count
  end

  def my_count(item)
    counter = 0
    self.each { |ele| counter += 1 if ele == item }
    counter
  end

  def my_index(val)
    self.each_with_index { |ele, i| return i if ele == val }
    nil
  end

  def my_uniq
    elements = {}
    self.each { |ele| elements[ele] = true }
    elements.keys
  end

  def my_transpose
    transposed = []

    self.each_with_index do |ele1, idx1|
      row = []

      self.each_with_index do |ele2, idx2|
        row << self[idx2][idx1]
      end

      transposed << row
    end

    transposed
  end
end