class Timer
  #write your code here
  attr_accessor :seconds
  
  def initialize
  	@seconds = 0
  end

  def time_string 
  	instr = Time.at(@seconds)-3600
  	sec = instr.strftime("%H:%M:%S")
  end

end

