module Civilizations
  class ChineseCivilization < BaseCivilization
    def initialize()
      super()
    end

    def create_army()
      @armies << Armies::Army.new(units: { knight: 2, archer: 25, pikeman: 2 })
    end
  end
end

