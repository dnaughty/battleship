require_relative "board"
require_relative "player"

class Battleship

    attr_reader :board, :player

    def initialize(len)
        @player = Player.new
        @board = Board.new(len)
        @remaining_misses = @board.size / 2

    end

    def start_game
        @board.place_random_ships
        puts @board.num_ships
        puts @board.print
    end

    def lose?
        if @remaining_misses <= 0
            print 'you lose'
            return true
        else
            return false
        end

    end

    def win?
        if @board.num_ships == 0
            puts 'you win'
            return true
        else
            return false
        end
    end

    def game_over?
        return true if win? == true || lose? == true

        return false

    end

    def turn
        target = @player.get_move
        if @board.attack(target) == false
            puts @remaining_misses -= 1
        end
        @board.print
        

    end

end
