module Civilizations
  class BaseCivilization
    attr_reader :armies
    def initialize()
      @armies = []
    end

    def create_army()
      raise NotImplementedError, "Subclasses must implement this method"
    end
  end
end
