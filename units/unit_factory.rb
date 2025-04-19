module Units
  class UnitFactory
    VALID_UNITS = ["knight", "archer", "pikeman"]

    def self.create(type_key, army)
      raise "Tipo de unidad inválido: #{type_key}" unless VALID_UNITS.include?(type_key)  
      unit = Unit.new(unit_type: type_key, army: army)
      army.add_unit(unit)
      unit
    end

    def self.create_bulk(orders, army)
      orders.flat_map do |type_key, amount|
        puts "Creating #{amount} units of type: #{type_key}"
        amount.times.map { create(type_key.to_s, army) }
      end
    end
  end
end