module Armies
  class Army
    attr_reader :units, :gold_coins, :battle_history
    def initialize(units:)
      @units = []
      @units = create_units(units)
      @gold_coins = 1000
      @battle_history = []
    end

    def create_units(units)
      Units::UnitFactory.create_bulk(units, self)
    end

    def add_unit(unit)
      @units << unit
    end

    def has_enough_gold_coins?(amount)
      @gold_coins >= amount
    end

    def discount_gold_coins(amount)
      @gold_coins -= amount
    end

    def get_total_strength_points()
      @units.reduce(0) { |sum, unit| sum + unit.strength_points }
    end

    def attack(enemy_army)
      battle = Battles::Battle.new(self, enemy_army)
      battle.start
      add_battle(battle)
      enemy_army.add_battle(battle)
    end

    def add_battle(battle)
      @battle_history << battle
    end

    def get_total_wins()
      @battle_history.count { |battle| battle.winner == self }
    end

    def win()
      @gold_coins += 100
    end

    def lose()
      @gold_coins -= 100
    end

    def draw()
      @units.delete(@units.sample)
    end
  end
end