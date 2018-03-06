# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Stat.create!([
  {
    str: 15
  },
  {
    dex: 16
  },
  {
    con: 18
  },
  {
    int: 14
  },
  {
    wis: 13
  },
  {
    cha: 12
  },
])
Race.create!([
  {
    name: "Human",
    strmin: 0,
    strmax: 25,
    dexmin: 0,
    dexmax: 25,
    conmin: 0,
    conmax: 25,
    intmin: 0,
    intmax: 25,
    wismin: 0,
    wismax: 25,
    chamin: 0,
    chamax: 25,
    adj1: 0,
    adj2: 0
  },
  {
    name: "Elf",
    strmin: 3,
    strmax: 18,
    dexmin: 6,
    dexmax: 18,
    conmin: 7,
    conmax: 18,
    intmin: 8,
    intmax: 18,
    wismin: 3,
    wismax: 18,
    chamin: 8,
    chamax: 18,
    adj1: 1,
    adj2: -1
  }
  ])
