class LevelService
  def self.advlvl
    1 + rand(ProfService.hitdie)
  end
