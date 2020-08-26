class Board

    attr_reader :size

    def initialize(n)
        @grid = Array.new(n) { Array.new(n,:N) }
        @size = n * n
    end

    def [](arr)
        
       r,c = arr
        @grid[r][c]

    end

    def []=(pos,val)
        r,c = pos
        @grid[r][c] = val
    end

    def num_ships
        @grid.flatten.count(:S)
    end

    def attack(pos)
        if self[pos] == :S 
            self[pos] = :H 
            puts 'you sunk my battleship!'
            return true
        else
            self[pos] = :X
            return false
        end
    end

    def place_random_ships
        ships_25 = (0.25 * self.size) + 2.5

        ships_25.to_i.times do |x|
            row = rand(0...@grid.length)
            col = rand(0...@grid.length)
            pos = [row,col]
            self[pos] = :S
        end

    end


  
end
