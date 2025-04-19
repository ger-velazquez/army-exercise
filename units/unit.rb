module Units
  class Unit
    attr_reader :age, :strength_points, :army, :unit_type
    def initialize(age: nil, unit_type: nil, army: nil)
      @age = age || rand(18..50)
      set_unit_type(unit_type)
      @strength_points = @unit_type.strength_points
      @army = army
    end

    def train()
      if @army.has_enough_gold_coins?(@unit_type.train_cost)
        add_strength_points(@unit_type.train_wins)
        @army.discount_gold_coins(@unit_type.train_cost)
      else
        raise "Not enough gold coins to train"
      end
    end

    def add_strength_points(wins)
      @strength_points += wins
    end

    def transform()
      if @army.has_enough_gold_coins?(@unit_type.transform_cost)
        set_unit_type(@unit_type.transform_type)
        @army.discount_gold_coins(@unit_type.transform_cost)
        #@strength_points = @unit_type.get_strength_points() Optionally, we can update the strength points or not
      else
        raise "Not enough gold coins to transform"
      end
    end

    def set_unit_type(unit_type)
      case unit_type.downcase
      when "knight"
        return @unit_type = Units::UnitTypes::Knight.new()
      when "archer"
        return @unit_type = Units::UnitTypes::Archer.new()
      when "pikeman"
        return @unit_type = Units::UnitTypes::Pikeman.new()
      else
        raise "Invalid unit type"
      end
    end
  end
end
