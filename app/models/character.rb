class Character < ApplicationRecord

  RACE = %w(Human Elf)
  PROF = %w(Fighter)
  ALIGNMENT = %w(Lawful_Good Chaotic_Good Neutral_Good Lawful_Neutral Neutral Chaotic_Neutral Neutral_Evil Lawful_Evil Chaotic_Evil)
  GENDER = %w(Male Female)
  def starthp
    ProfService.hitdie(@character.id) + StatService.hpa(@character.id)
  end
end
# TODO:
