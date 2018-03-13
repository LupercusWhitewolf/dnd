class LevelService
  def self.advlvl(id)
    die = ProfService.hitdie(id)
    if lvl <=9 && != ProfService.group(id) == "Rouge"
      output = (1 + rand(die)) + StatService.hpa(id)
    elsif lvl <= 10 && ProfService.group(id) == "Rouge"
      output = (1 + rand(die)) + StatService.hpa(id)
    elsif lvl >= 10 && ProfService.group(id) == "Warrior"
      output = (lvl-9)*3
    elsif lvl >= 10 && ProfService.group(id) == "Wizard"
      output = lvl
    elsif lvl >= 10 && ProfService.group(id) == "Priest"
      output = (lvl-9)*2
    elsif lvl >= 11 && ProfService.group(id) == "Rouge"
      output = (lvl-10)*2
    end
  end
  def self.starthp(id)
    ProfService.hitdie(id) + StatService.hpa(id)
  end
end
