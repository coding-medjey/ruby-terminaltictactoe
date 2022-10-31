require "colorize"
require "./logic.rb"

puts "1.Start Game "
puts "2.Exit Game "
print "Give the option: "

options = gets.chomp

def board 
  board = []
  for i in 1..3
    board.push(["*","*","*"])
  end
  return board
end


#print board

def printBoard(area)
 boardArea = ""
 for i in 0..2
   result = ""
   for j in 0..2
     result += " "+area[i][j] +" "
   end
   puts result
 end
  #print boardArea
end

#printBoard(board())

def changeEl(arr,row,col,symbol)
  for i in 0..2
    for j in 0..2
      if (row == i && col == j)
      arr[i][j] = symbol
      end
    end  
  end 
  return arr
end

def winningLogic(board,symbol,i)
    if verticalLogic(board,symbol,i) === true || horizantalLogic(board,symbol,i) == true || interSectingLogicA(board,symbol) == true || interSectingLogicB(board,symbol) == true
      return true
    end
end
#printBoard(changeEl(board(),1,1,"X"))
 
#=begin

if options == "1"
  list = board()
  playerSymbol = 0
  for i in 0..Float::INFINITY
    print "Choose Your Row :"
    row1 = gets.chomp
    print "Chose your Col :"
    col1 = gets.chomp
    if playerSymbol == 0
      playerSymbol = 1
      if list[row1.to_i][col1.to_i] == "O" || list[row1.to_i][col1.to_i] == "X"
        puts "It's Working"
        print "Choose Your Row :"
        row1 = gets.chomp
        print "Chose your Col :"
        col1 = gets.chomp
      end
      printBoard(changeEl(list,row1.to_i,col1.to_i,"O".blue))
      for i in 0..2
       if winningLogic(list,"O",i) == true
         puts "\nO is won\n "
         return
       end 
      end
    elsif playerSymbol == 1
      playerSymbol = 0
      if list[row1.to_i][col1.to_i] == "O" || list[row1.to_i][col1.to_i] == "X"
        print "Choose Your Row :"
        row1 = gets.chomp
        print "Chose your Col :"
        col1 = gets.chomp
      end
      printBoard(changeEl(list,row1.to_i,col1.to_i,"X".yellow))
      for j in 0..2
         if winningLogic(list,"X",j) == true
          puts "\nX is won\n "
          return
         end 
      end
    end
  end 
elsif options == "2"
  puts "Thanks For Playing"
end

#=end


