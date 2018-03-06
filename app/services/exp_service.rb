class ExpService

  def self.exp(id)
    Character.find(id).exp
  end
  def self.lvl(id)
    Character.find(id).exp
  end
  def self.prof(id)
    Character.find(id).prof
  end
  def self.exptolvl(id)
    lvl = self.lvl(id)
    prof = self.prof(id)
    if lvl == 1 && prof == "Fighter"
      output = 2000
    elsif lvl == 2 && prof == "Fighter"
      output = 4000
    elsif lvl == 3 && prof == "Figher"
      output = 8000
    elsif lvl == 4 && prof == "Fighter"
      output = 16000
    else
      output = "Not Implemented"
    end
  end
end
