require_relative 'base_unity_type'

module Units::UnitTypes
  class Archer < BaseUnitType
    def initialize()
      super()
      @strength_points = 10
      @train_cost = 20
      @train_wins = 7
      @transform_cost = 40
      @transform_type = "Knight"
    end
  end
end