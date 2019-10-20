class Passenger
  def initialize(info)
    @info = info
    @driver = false
  end

  def name
    @info[:name]
  end

  def age
    @info[:age]
  end

  def adult?
    return true if self.age >= 18
    false
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end




end
