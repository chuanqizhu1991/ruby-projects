# process of the game

# <1>initialize the game board and create two palyers => <2>get the mark from one player 
# => <3>place the mark => <4>Judge the win or loss => <2>get the mark from antoher player

# variables and methods 
# 1. array represents the state of the game board 
#    [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]
# 2. method that changes the state of each grid
# 3. method that can judge the win or loss
# 4. Person class which stores mark sign, 
# 5. get input from the player

module Judge 
    def wino_0r(arr)
        arr[0].all? "O"
    end
    def wino_1r(arr)
        arr[1].all? "O"
    end
    def wino_2r(arr)
        arr[2].all? "O"
    end
    def wino_0c(arr)
        return arr[0][0]=="O" && arr[0][0]==arr[1][0] && arr[1][0]==arr[2][0]
    end
    def wino_1c(arr)
        return arr[0][1]=="O" && arr[0][1]==arr[1][1] && arr[1][0]==arr[2][1]
    end
    def wino_2c(arr)
        return arr[0][2]=="O" && arr[0][2]==arr[1][2] && arr[1][0]==arr[2][2]
    end
    def wino_1d(arr)
        return arr[0][0]=="O" && arr[0][0]==arr[1][1] && arr[2][2]==arr[1][1]
    end
    def wino_2d(arr)
        return arr[0][2]=="O" && arr[0][2]==arr[1][1] && arr[2][0]==arr[1][1]
    end
    def winx_0r(arr)
        arr[0].all? "X"
    end
    def winx_1r(arr)
        arr[1].all? "X"
    end
    def winx_2r(arr)
        arr[2].all? "X"
    end
    def winx_0c(arr)
        return arr[0][0]=="X" && arr[0][0]==arr[1][0] && arr[1][0]==arr[2][0]
    end
    def winx_1c(arr)
        return arr[0][1]=="X" && arr[0][1]==arr[1][1] && arr[1][0]==arr[2][1]
    end
    def winx_2c(arr)
        return arr[0][2]=="X" && arr[0][2]==arr[1][2] && arr[1][0]==arr[2][2]
    end
    def winx_1d(arr)
        return arr[0][0]=="X" && arr[0][0]==arr[1][1] && arr[2][2]==arr[1][1]
    end
    def winx_2d(arr)
        return arr[0][2]=="X" && arr[0][2]==arr[1][1] && arr[2][0]==arr[1][1]
    end

end

class Board    

    include Judge

def initialize(col_row)
    @col_row = col_row
    @board_arr = Array.new(@col_row,"-"){Array.new(@col_row,"-")}
end

def show_board
    puts "###############"
    puts @board_arr[0][0] + "   " + @board_arr[0][1] + "   " + @board_arr[0][2]
    puts @board_arr[1][0] + "   " + @board_arr[1][1]+ "   " + @board_arr[1][2]
    puts @board_arr[2][0]+ "   " + @board_arr[2][1] + "   " + @board_arr[2][2]

end

def get_mark(mark)
    if mark=="O"
        puts "Plesae place the O mark"
        row = gets.chomp
        col = gets.chomp
        place_mark("O",row,col)
    elsif mark=="X"
        puts "Plesae place the X mark"
        row = gets.chomp
        col = gets.chomp
        place_mark("X",row,col)
    end
end

def place_mark(mark,row,col)
    @board_arr[row.to_i-1][col.to_i-1]=mark
    show_board
    if wino_0c(@board_arr)||wino_1c(@board_arr)||wino_2c(@board_arr)||wino_0r(@board_arr)||wino_1r(@board_arr)||wino_2r(@board_arr)||wino_1d(@board_arr)||wino_2d(@board_arr)
        puts "O wins, game is over"
        return 
    elsif winx_0c(@board_arr)||winx_1c(@board_arr)||winx_2c(@board_arr)||winx_0r(@board_arr)||winx_1r(@board_arr)||winx_2r(@board_arr)||winx_1d(@board_arr)||winx_2d(@board_arr)
        puts "X wins, game is over"
        return 
    end
    if mark=="O"
        get_mark("X")
        
    else
        get_mark("O")
    end
end

end

game1 = Board.new(3)
game1.show_board
game1.get_mark("O")








