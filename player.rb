class Player
    def initialize(name)
        @name = name
    end

    def guess
        puts "Please enter a letter."
        user_input = gets.chomp
    end
end