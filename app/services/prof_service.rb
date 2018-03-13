class ProfService
  def self.prof(id)
    Character.find(id).prof
  end
  def self.group(id)
    prof = self.prof(id)
    group = ""
    if prof=="Fighter"||prof=="Ranger"||prof=="Paladin"
      group="Warrior"
    elsif prof(id)=="Mage"||prof(id)=="Specilist"
      group="Wizard"
    elsif prof(id)=="Cleric"||prof(id)=="Druid"
      group="Priest"
    elsif prof(id)=="Thief"||prof(id)=="Bard"
      group="Rouge"
    end
  end
  def self.hitdie(id)
    if self.group(id) == "Warrior"
      output = 10
    elsif self.group(id) == "Wizard"
      output = 4
    elsif self.group(id) == "Priest"
      output = 8
    elsif self.group(id) == "Rouge"
      output = 6
    end
  end
end
