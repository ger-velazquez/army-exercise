Dir[
  File.join(__dir__, '{armies,battles,civilizations,units}/**/*.rb')
].each do |f|
  require_relative f
end

ENGLISH_CIVILIZATION = Civilizations::EnglishCivilization.new()
ENGLISH_CIVILIZATION.create_army()
ENGLISH_ARMY = ENGLISH_CIVILIZATION.armies.first
ENGLISH_SOLDIER = ENGLISH_ARMY.units.first



BYZANTINE_CIVILIZATION = Civilizations::ByzantineCivilization.new()
BYZANTINE_CIVILIZATION.create_army()
BYZANTINE_ARMY = BYZANTINE_CIVILIZATION.armies.first
BYZANTINE_SOLDIER = BYZANTINE_ARMY.units.first


CHINESE_CIVILIZATION = Civilizations::ChineseCivilization.new()
CHINESE_CIVILIZATION.create_army()
CHINESE_ARMY = CHINESE_CIVILIZATION.armies.first
CHINESE_SOLDIER = CHINESE_ARMY.units.last

ENGLISH_SOLDIER.train()
BYZANTINE_SOLDIER.train()
CHINESE_SOLDIER.train()

ENGLISH_SOLDIER.transform()
BYZANTINE_SOLDIER.transform()
CHINESE_SOLDIER.transform()
