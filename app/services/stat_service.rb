class StatService
  def self.value(stat_id)
    Stat.find(stat_id).score
  end
  #Strength Abilities
  def self.hitprob(stat_id)
    str = self.value(stat_id)
    if str == 3
      output = -3
    elsif str <= 5
      output = -2
    elsif str <= 7
      output = -1
    elsif str <= 16
      output = 0
    else str <= 18
      output = 1
    end
  end
  def self.dmgadj(stat_id)
    str = self.value(stat_id)
    if str <=5
      output = -1
    elsif str <= 15
      output = 0
    elsif str <= 17
      output = 1
    else str == 18
      output = 2
    end
  end
  def self.wgtalw(stat_id)
    str = self.value(stat_id)
    if str == 3
      output = -350
    elsif str <= 5
      output = -250
    elsif str <= 7
      output = -150
    elsif str <= 11
      output = 0
    elsif str <= 13
      output = 100
    elsif str <= 15
      output = 200
    elsif str <= 16
      output = 350
    elsif str <= 17
      output = 500
    else str == 18
      output = 750
    end
  end
  def self.opendr(stat_id)
    str = self.value(stat_id)
    if str <= 7
      output = 1
    elsif str <= 15
      output = "1-2"
    else str <= 18
      output = "1-3"
    end
  end
  def self.bblg(stat_id)
    str = self.value(stat_id)
    if str <= 7
      output = 0
    elsif str <= 9
      output = 1
    elsif str <= 11
      output = 2
    elsif str <= 13
      output = 4
    elsif str <= 15
      output = 7
    elsif str == 16
      output = 10
    elsif str == 17
      output = 13
    else str == 18
      output = 16
    end
  end
  #Dexterity Abilities
  def self.react(stat_id)
    dex = self.value(stat_id)
    if dex == 3
      output = -3
    elsif dex == 4
      output = -2
    elsif dex == 5
      output = -1
    elsif dex <= 15
      output = 0
    elsif dex == 16
      output = 1
    elsif dex == 17
      output = 2
    else dex == 18
      output = 3
    end


  end
  def self.defadj(stat_id)
    dex = self.value(stat_id)
    if dex == 3
      output = 4
    elsif dex == 4
      output = 3
    elsif dex == 5
      output = 2
    elsif dex == 6
      output = 1
    elsif dex <= 14
      output = 0
    elsif dex == 15
      output = -1
    elsif dex == 16
      output = -2
    elsif dex == 17
      output = -3
    else dex == 18
      output = -4
    end
  end
  def self.pick(stat_id)
    dex = self.value(stat_id)
    if dex <= 8
      output = " "
    elsif dex == 9
      output = -15
    elsif dex == 10
      output = -10
    elsif dex == 11
      output = -5
    elsif dex <= 16
      output = 0
    elsif dex == 17
      output = 5
    else dex == 18
      output = 10
    end
  end
  def self.lock(stat_id)
    dex = self.value(stat_id)
    if dex <= 8
      output = " "
    elsif dex == 9
      output = -10
    elsif dex == 10
      output = -5
    elsif dex <= 15
      output = 0
    elsif dex == 16
      output = 5
    elsif dex == 17
      output = 10
    else dex == 18
      output = 15
    end
  end
  def self.trap(stat_id)
    dex = self.value(stat_id)
    if dex <= 8
      output = " "
    elsif dex <= 10
      output = -10
    elsif dex == 11
      output = -5
    elsif dex <= 17
      output = 0
    else dex == 18
      output = 5
    end
  end
  def self.stlth(stat_id)
    dex = self.value(stat_id)
    if dex <= 8
      output = " "
    elsif dex == 9
      output = -20
    elsif dex == 10
      output = -15
    elsif dex == 11
      output = -10
    elsif dex == 12
      output = -5
    elsif dex <= 16
      output = 0
    elsif dex == 17
      output = 5
    else dex == 18
      output = 10
    end
  end
  def self.sdw(stat_id)
    dex = self.value(stat_id)
    if dex <= 8
      output = " "
    elsif dex == 9
      output = -10
    elsif dex == 10
      output = -5
    elsif dex <= 16
      output = 0
    elsif dex == 17
      output = 5
    else dex == 18
      output = 10
    end
  end
  #Constitution Abilities
  def self.hpa(stat_id)
    con = self.value(stat_id)
    if con == 1
      output = -3
    elsif con <= 3
      output = -2
    elsif con <= 6
      output = -1
    elsif con <= 14
      output = 0
    elsif con = 15
      output = 1
    elsif con <= 18
      output = 2
    #elsif con == 17 && !prof.name?("Fighter")
      #output = 3
    #else con == 18 && !prof.name?("Fighter")
      #output = 4
    end
  end
  def self.ss(stat_id)
    con = self.value(stat_id)
    if con <= 13
      output = 5*(con)+20
    elsif con == 14
      output = 88
    elsif con == 15
      output = 90
    elsif con == 16
      output = 95
    elsif con == 17
      output = 97
    else con = 18
      output = 99
    end
  end
  def self.rs(stat_id)
    con = self.value(stat_id)
    if con <= 13
      output = 5*(con)+25
    elsif con == 14
      output = 92
    elsif con == 15
      output = 94
    elsif con == 16
      output = 96
    elsif con == 17
      output = 98
    else con == 18
      output = 100
    end
  end
  def self.ps(stat_id)
    con = self.value(stat_id)
    if con == 1
      output = -2
    elsif con == 2
      output = -1
    else con <= 18
      output = 0
    end
  end
  #def self.regen(stat_id)
    #con = self.value(stat_id)
    #if  con <= 19
      #output = 0
    #elsif con = 20
      #output = "1/6"
    #elsif con = 21
      #output = "1/5"
    #elsif con = 22
      #output = "1/4"
    #elsif con = 23
      #output = "1/3"
    #elsif con = 24
      #output = "1/2"
    #else con = 25
      #output = "1/1"
    #end
  #end

  #Intelligence Abilities
  def self.lang(stat_id)
    int = self.value(stat_id)
    if int == 1
      output = 0
    elsif int <= 8
      output = 1
    elsif int <= 11
      output = 2
    elsif int <= 13
      output = 3
    elsif int <= 15
      output = 4
    else int <= 18
      output = con - 11
    end
  end
  def self.splvl(stat_id)
    int = self.value(stat_id)
    if int <= 8
      output = "N/A"
    elsif int == 9
      output = 4
    elsif int <= 11
      output = 5
    elsif int <= 13
      output = 6
    elsif int <= 15
      output = 7
    elsif int <= 17
      output = 8
    else int == 18
      output = 9
    end
  end
  def self.lrnspl(stat_id)
    int = self.value(stat_id)
    if int <= 17
      output = 5*(int)-10
    else int == 18
      output = 85
    end
  end
  def self.mxspl(stat_id)
    int = self.value(stat_id)
    if int <= 8
      output = "N/A"
    elsif int == 9
      output = 6
    elsif int <= 12
      output = 7
    elsif int <= 14
      output = 9
    elsif int <= 16
      output = 11
    elsif int == 17
      output = 14
    else int == 18
      output = 18
    end
  end
  def self.splim(stat_id)
    int = self.value(stat_id)
    if int <= 18
      output = "N/A"
    else int <= 25
      output = int - 18
    end
  end
  #Wisdom Abilities
  def self.mda(stat_id)
    wis = self.value(stat_id)
    if wis == 1
      output = -6
    elsif wis == 2
      output = -4
    elsif wis == 3
      output = -3
    elsif wis <= 14
      output = 0
    else wis <= 18
      output = wis - 14
    end
  end
  def self.bonus(stat_id)
    wis = self.value(stat_id)
    if wis <= 12
      output = 0
    else wis <= 18
      output = "N/A"
    end
  end
  def self.sfail(stat_id)
    wis = self.value(stat_id)
    if wis == 1
      output = 80
    elsif wis == 2
      output = 60
    elsif wis <= 12
      output = 65-(5*wis)
    else wis <= 18
      output = 0
    end
  end
  def self.wisim(stat_id)
    wis = self.value(stat_id)
    if wis <= 18
      output = "N/A"
    else wis == 19
      output = "N/A"
    end
  end
  #Charisma Abilities
  def self.hench(stat_id)
    cha = self.value(stat_id)
    if cha == 1
      output = 0
    elsif cha <= 4
      output = 1
    elsif cha <= 6
      output = 2
    elsif cha <= 8
      output = 3
    elsif cha <= 11
      output = 4
    elsif cha <= 13
      output = 5
    elsif cha == 14
      output = 6
    elsif cha == 15
      output = 7
    elsif cha == 16
      output = 8
    elsif cha == 17
      output = 10
    else cha == 18
      output = 15
    end
  end
  def self.ltybse(stat_id)
    cha = self.value(stat_id)
    if cha <= 8
      output = (cha) - 9
    elsif cha <= 13
      output = 0
    elsif cha == 14
      output = 1
    elsif cha <= 16
      output = (cha) - 12
    elsif cha == 17
      output = 6
    else cha == 18
      output = 8
    end
  end
  def self.rctadj(stat_id)
    cha = self.value(stat_id)
    if cha <= 7
      output = (cha) - 8
    elsif cha <= 12
      output = 0
    elsif cha <= 15
      output = (cha) - 12
    else cha <= 18
      output = (cha) - 11
    end
  end
end
