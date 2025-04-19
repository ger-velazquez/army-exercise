module Civilizations
  class ByzantineCivilization < BaseCivilization
    def initialize()
      super()
    end

    def create_army()
      @armies << Armies::Army.new(units: { knight: 15, archer: 8, pikeman: 5 })
    end
  end
end