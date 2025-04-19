module Units::UnitTypes
  class Knight < BaseUnitType
    def initialize()
      super()
      @strength_points = 20
      @train_cost = 30
      @train_wins = 10
      @transform_cost = 0
      @transform_type = "Knight"
    end
  end
end