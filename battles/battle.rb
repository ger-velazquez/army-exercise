module Battles
  class Battle
    attr_reader :attacker, :defender, :winner, :loser
    def initialize(attacker, defender)
      @attacker = attacker
      @defender = defender
      @winner = nil
      @loser = nil
    end

    def start()
      if @attacker.get_total_strength_points() == @defender.get_total_strength_points()
        @attacker.draw()
        @defender.draw()
      end
      if @attacker.get_total_strength_points() > @defender.get_total_strength_points()
        @winner = @attacker
        @loser = @defender
      else
        @winner = @defender
        @loser = @attacker
      end
      @winner.win()
      @loser.lose()
    end
  end
end
