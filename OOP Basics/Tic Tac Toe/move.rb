class Move 
    X_SYMBOL = "X"
    O_SYMBOL  = "O"
    
    def collect_moves(board, r, c, player)
        loop do
            puts "Make a movement:"
            print "Row: "
            r  = gets.chomp
            r = r.to_i  
            print "Column: "
            c = gets.chomp
            c = c.to_i
            break if isValid?(board,r,c)
        end
        if(player.eql?("player_1")) 
            board[r][c] = X_SYMBOL
        else  
            board[r][c] = O_SYMBOL
    end 

    def isValid?(board,r,c)
        if(r > 2 || r < 0 || c > 2 || c < 0)
            puts "Invalid input, Insert a valid input"
            return false 
        end 

        if(board[r][c].eql?(X_SYMBOL) || board[r][c].eql?(O_SYMBOL))
            puts "Invalid input, Insert a valid input"
            return false 
        else  
            return true
    end 

end 