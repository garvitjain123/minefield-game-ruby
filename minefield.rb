class Minefield
    attr_accessor(:grid_height, :grid_length, :grid)

    def initialize(grid_height = 4, grid_length = 4)
        @grid_height = grid_height
        @grid_length = grid_length
        @grid = Array.new(grid_height) {Array.new(grid_length) { "-" } }
    end

    def print()
        for row in @grid
            puts Array(row).join(" ")
        end
    end

    def set_mines(mine_count)
        # Set Mines
        if mine_count > @grid_height*@grid_length
            puts "Enter number of mines less than or equal total number of cells in grid"
            return false
        else
            # Arm mines
            current_mines = 0
            while current_mines < mine_count
                set_single_mine()
                current_mines += 1
            end
        end
        return true
    end

    def set_single_mine
        random_seed_y = rand(@grid_length)
        random_seed_x = rand(@grid_height)

        while @grid[random_seed_x][random_seed_y] != "-"
            random_seed_y = rand(@grid_length)
            random_seed_x = rand(@grid_height)
        end

        @grid[random_seed_x][random_seed_y] = "m"
    end

    def count_nearby_misses()
        # Count nearby mines
        for x in 0..(@grid_height - 1)
            for y in 0..(@grid_length - 1)
                if @grid[x][y] != "m"
                    @grid[x][y] = calculate_around_mines(x, y)
                end
            end
        end
    end

    def calculate_around_mines(x, y)
        mines_around = 0
        mines_check = [[-1,0], [1, 0], [0, -1], [0, 1], [-1, -1], [1, -1], [-1, 1], [1, 1]]
        for mine in mines_check
            if (x + mine[0]) >= @grid_height or (y + mine[1]) >= @grid_length
                next
            elsif  (x + mine[0]) < 0 or (y + mine[1]) < 0
                next
            elsif @grid[x + mine[0]][y + mine[1]] == "m"
                mines_around += 1
            end
        end
        return mines_around

    end

end