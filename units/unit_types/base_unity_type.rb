module Units::UnitTypes
  class BaseUnitType
    attr_reader :strength_points, :train_cost, :train_wins, :transform_cost, :transform_type
    def initialize()
      @strength_points = 0
    end
  end
end