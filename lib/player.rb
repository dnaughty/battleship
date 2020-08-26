class Player

    def get_move

        print 'enter a position with coordinates separated with a space like `4 7`'
        input = gets.chomp
        
        narr = []
        input.split(",").each do |x|
            narr << x.to_i
        end

        narr
       


    end


end
