module Civilizations
  class EnglishCivilization < BaseCivilization
    def initialize()
      super()
    end

    def create_army()
      @armies << Armies::Army.new(units: { knight: 10, archer: 10, pikeman: 10 })
    end
  end
end