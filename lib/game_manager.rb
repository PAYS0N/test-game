# frozen_string_literal: true

module DungeonIdleGame
  # class that runs game ticks
  class GameManager
    def initialize
      @gameover = false
      @num = 0
    end

    def play_game
      do_game_tick until @gameover
    end

    def do_game_tick
      sleep(1.0 / 30.0)
      update_game
      display_game
    end

    def update_game
      @num += 1
      @gameover = true if @num == 1000
    end

    def display_game
      puts "number: #{@num}"
    end
  end
end
