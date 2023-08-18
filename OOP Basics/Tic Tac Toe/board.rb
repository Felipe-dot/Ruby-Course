class Board 
    board = Array.new(3) {Array.new(3)}

    def clean_board_game(board)
        for r in 0...board.length do
            for c in 0...board.length do
                board[r][c] = "";
            end
        end
    end 

    def show_board_game(board)
        for r in 0...board.length do
            for c in 0...board.length do
                print "[ #{board[r][c]} ]"
            end b
            puts 
        end 
    end 

end 
