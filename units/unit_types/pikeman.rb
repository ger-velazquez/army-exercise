module Units::UnitTypes
  class Pikeman < BaseUnitType
    def initialize()
      super()
      @strength_points = 5
      @train_cost = 10
      @train_wins = 3
      @transform_cost = 30
      @transform_type = "Archer"
    end
  end
end