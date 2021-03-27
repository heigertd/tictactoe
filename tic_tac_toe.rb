class TicTacToe
  def initialize(board)
    @board = board
    @length = board.length
  end

  def length
    puts @board.length
  end

  def winner
    # checks rows for winner
    @board.each do |row|
      if row[0] == 'o'
        if !row.include? 'x'
          if !row.include? " "
            return 'o'
          end
        end
      end

      if row[0] == 'x'
        if !row.include? 'o'
          if !row.include? " "
            return 'x'
          end
        end
      end

      if row[0] == ' '
        
      end
    end
    # checks columns
    i = 0
    until i>@length do
      columns = []
      j = 0
      # puts i
      until j>@length-1 do
        columns.push @board[j][i]
        j += 1
      end

      if columns[0] == 'o'
        if !columns.include? 'x'
          if !columns.include? " "
            return 'o'
          end
        end
      end

      if columns[0] == 'x'
        if !columns.include? 'o'
          if !columns.include? " "
            return 'x'
          end
        end
      end

      if columns == ' '
        
      end
      i += 1

    end

    # checks diagonals
      #top right to bottom left
    x = 0
    top_diagonal = []
    until x > @length-1 do
      top_diagonal.push @board[x][x]
      x += 1
    end
    if top_diagonal[0] == 'o'
      if !top_diagonal.include? 'x'
        if !top_diagonal.include? " "
          return 'o'
        end
      end
    end

    if top_diagonal[0] == 'x'
      if !top_diagonal.include? 'o'
        if !top_diagonal.include? " "
          return 'x'
        end
      end
    end

    if top_diagonal == ' '
      return 'no winner'
    end

    #bottom right to top left
    y = 0
    z = @length-1
    bottom_diagonal = []
    until y > @length-1 do
      bottom_diagonal.push @board[y][z]
      y += 1
      z -= 1
    end
    if bottom_diagonal[0] == 'o'
      if !bottom_diagonal.include? 'x'
        if !bottom_diagonal.include? " "
          return 'o'
        end
      end
    end

    if bottom_diagonal[0] == 'x'
      if !bottom_diagonal.include? 'o'
        if !bottom_diagonal.include? " "
          return 'x'
        end
      end
    end

    if bottom_diagonal == ' '
      
    end

    #draws
    final_board = []
    @board.each do |row|
      if row.include? " "
        final_board.push "unfinished"
      end
      if !row.include? " "
        final_board.push "draw"
      end
    end
    if final_board.include? "unfinished"
      return 'unfinished' 
    else
     return 'draw'    
    end

  end

end