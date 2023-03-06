class Question

  def initialize()
    @number1 = rand(1...20)
    @number2 = rand(1...20)
  end

  def ask_question()
    puts "What does #{@number1} plus #{@number2} equal?"
    answer = gets.chomp.to_i
    if answer == @number1 + @number2
      puts "Correct!"
      return true
    
    else
      puts "Wrong!"
      return false
    end
  end


  
  
  
end