class RaceService
  def self.race(race)
    Race.find_by name: (race)
  end
  def self.strmin(race)
    self.race(race).strmin
  end
  def self.strmax(race)
    self.race(race).strmax
  end
  def self.dexmin(race)
    self.race(race).dexmin
  end
  def self.dexmax(race)
    self.race(race).dexmax
  end
  def self.conmin(race)
    self.race(race).conmin
  end
  def self.conmax(race)
    self.race(race).conmax
  end
  def self.intmin(race)
    self.race(race).intmin
  end
  def self.intmax(race)
    self.race(race).intmax
  end
  def self.wismin(race)
    self.race(race).wismin
  end
  def self.wismax(race)
    self.race(race).wismax
  end
  def self.chamin(race)
    self.race(race).chamin
  end
  def self.chamax(race)
    self.race(race).chamax
  end
  def self.adj1(race)
    self.race(race).adj1
  end
  def self.adj2(race)
    self.race(race).adj2
  end
  def self.adj3(race)
    self.race(race).adj3
  end
  def self.adj4(race)
    self.race(race).adj4
  end
  def self.adj5(race)
    self.race(race).adj5
  end
  def self.adj6(race)
    self.race(race).adj6
  end
end
