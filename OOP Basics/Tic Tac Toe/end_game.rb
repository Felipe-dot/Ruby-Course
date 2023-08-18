class EndGame

    def has_a_winner?(board) 
        X_SYMBOL = "X"
        O_SYMBOL  = "O"

        point = 0

        for r in 0...board.length do
            if board[r][0].eql?(X_SYMBOL) && board[r][1].eql?(X_SYMBOL) && board[r][2].eql?(X_SYMBOL)
                puts "O jogador 1 ganhou"
                point = 3
            elseif board[r][0].eql?(O_SYMBOL) && board[r][1].eql?(O_SYMBOL) && board[r][2].eql?(O_SYMBOL)
                puts "O jogador 2 ganhou"
                point = 3 
            end 
        end 
        
        for c in 0...board.length do
            if board[0][c].eql?(X_SYMBOL) && board[1][c].eql?(X_SYMBOL) && board[2][c].eql?(X_SYMBOL)
                puts "O jogador 1 ganhou"
                point = 3
            elseif board[0][c].eql?(O_SYMBOL) && board[1][c].eql?(O_SYMBOL) && board[2][c].eql?(O_SYMBOL)
                puts "O jogador 2 ganhou"
                point = 3 
            end 
        end 

        if board[0][0].eql?(X_SYMBOL) && board[1][1].eql?(X_SYMBOL) && board[2][2].eql?(X_SYMBOL)
            puts "O jogador 1 ganhou"
            point = 3
        elseif board[0][0].eql?(O_SYMBOL) && board[1][1].eql?(O_SYMBOL) && board[2][2].eql?(O_SYMBOL)
            puts "O jogador 2 ganhou"
            point = 3  
        end 

        if board[2][1].eql?(X_SYMBOL) && board[1][1].eql?(X_SYMBOL) && board[0][2].eql?(X_SYMBOL) 
            puts "O jogador 1 ganhou"
            point = 3
        elseif  board[2][1].eql?(O_SYMBOL) && board[1][1].eql?(O_SYMBOL) && board[0][2].eql?(O_SYMBOL) 
            puts "O jogador 2 ganhou"
            point = 3 
        end 

        if point == 3
            true 
        else  
            false
    end 

end 