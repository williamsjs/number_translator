class SingleDigit
  attr_reader :num

  SINGLES = [ "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine" ]

  #TODO handle zero that occurs into thousands digits
  def initialize(num)
    @num = num == 0 ? "Zero" : SINGLES[num-1]
  end

end
