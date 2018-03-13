class ExpService

  def self.exp(id)
    Character.find(id).exp
  end
  def self.prof(id)
    Character.find(id).prof
  end
  def self.lvl(id)
    prof = self.prof(id)
    exp = self.exp(id)
    if exp < 2000 && prof == "Fighter"
      output = 1
    elsif exp < 4000 && prof == "Fighter"
      output = 2
    elsif exp < 8000 && prof == "Fighter"
      output = 3
    elsif exp < 16000 && prof == "Fighter"
      output = 4
    elsif exp < 32000 && prof == "Fighter"
      output = 5
    elsif exp < 64000 && prof == "Fighter"
      output = 6
    elsif exp < 125000 && prof == "Fighter"
      output = 7
    elsif exp < 250000 && prof == "Fighter"
      output = 8
    elsif exp < 500000 && prof == "Fighter"
      output = 9
    else
      output = "N/A"
    end
  end
  def self.prof(id)
    Character.find(id).prof
  end
  def self.exptolvl(id)
    lvl = self.lvl(id)
    prof = self.prof(id)
    if lvl <= 6 && prof == "Fighter"
      output = (2**lvl)*1000
    elsif lvl == 7 && prof == "Fighter"
      output = 125000
    elsif lvl <= 19 && prof == "Figher"
      output = ((lvl-8)*250000)+250000
    elsif lvl <= 2 && prof == "Cleric"
      output = lvl*1500
    elsif lvl == 3 && prof == "Cleric"
      output = 6000
    elsif lvl == 4 && prof == "Cleric"
      output = 13000
    elsif lvl <= 7 && prof == "Cleric"
      output = ((2**(lvl-5)))*27500
    elsif lvl <= 19 && prof == "Cleric"
      output = ((lvl-8)*225000)+225000
    else
      output = "N/A"
    end
  end
end
