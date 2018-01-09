puts "Please enter the operation you would like to perform"
puts "Add"
puts "Subtract"
puts "Divide"
puts "Multiply"
@oppChoice = gets.chomp!
puts "Please enter the first number you would like to #{@oppChoice}"
@first_num = gets.chomp.to_i
puts "Please enter the second number you would like to #{@oppChoice}"
@second_num = gets.chomp.to_i
  
oppAdd = :+
oppSub = :-
oppDiv = :/
oppMult = :*

@oppArr = [oppAdd, oppSub, oppDiv, oppMult]

def oppChooser arr
  @oppChoice.capitalize!
  oppFinal =""
  if @oppChoice == "Add"
    oppFinal = arr[0]
  elsif @oppChoice == "Subtract"
    oppFinal = arr[1]
  elsif @oppChoice == "Divide"
    oppFinal = arr[2]
  elsif @oppChoice == "Multiply"
    oppFinal = arr[3]
  else
    puts "You have entered an invalid option and broke the damn thing"
  end
end 



p "The result is #{@first_num.public_send((oppChooser @oppArr), @second_num)}"
