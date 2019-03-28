class User
  attr_reader :first_name, :last_name

   def initialize(first_name, last_name)
    @first_name, @last_name = first_name, last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

class Admin < User
   def initialize(first_name, last_name)
    super(first_name, last_name)
  end
end
