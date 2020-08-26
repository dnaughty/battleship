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


  
end
