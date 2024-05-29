-- premade player table
Player = {
  -- player data (subject to change)
  plName = nil,
  plGender = nil,
  plLevel = 1,
  plCurrentXP = 0,
  plGlobalXP = 0,
  plHealth = 100,
  plAttack = 0,
  plDefense = 0,
  plIntellect = 0,
  plInventory = Inventory,

  -- player basic functionality
  addHealth = function(self, amount)
    self.plHealth = self.plHealth + amount
    print(self.plName .. "'s HP is now " .. self.plHealth)
  end,

  takeDamage = function(self, amount)
    self.plHealth = self.plHealth - amount
    print(self.plName .. "took " .. amount .. " damage! HP is now " .. self.plHealth)
  end,

  -- todo: expand incrementLevel to check the massive hardcoded levelTable
  incrementLevel = function (self)
    self.plLevel = self.plLevel + 1
    self.plCurrentXP = 0
    print(self.plName .. " has leveled up to level " .. self.plLevel .. "!")
  end
}

-- Also the XP table is stored here
-- Yes I hardcoded the XP value for levels 1 to 100
local levelTable = {
  100,
  105,
  110,
  116,
  122,
  128,
  134,
  141,
  148,
  155,
  163,
  171,
  180,
  189,
  198,
  208,
  218,
  229,
  241,
  253,
  265,
  279,
  293,
  307,
  323,
  339,
  356,
  373,
  392,
  412,
  449,
  489,
  533,
  581,
  633,
  690,
  752,
  820,
  894,
  974,
  1062,
  1158,
  1262,
  1376,
  1499,
  1634,
  1781,
  1942,
  2116,
  2307,
  2584,
  2894,
  3241,
  3630,
  4065,
  4553,
  5100,
  5712,
  6397,
  7165,
  8024,
  8987,
  10066,
  11274,
  12627,
  14142,
  15839,
  17740,
  19868,
  22253,
  24923,
  27914,
  31263,
  35015,
  39217,
  43923,
  49193,
  55097,
  61708,
  69113,
  77407,
  86695,
  97099,
  108751,
  121801,
  136417,
  152787,
  171121,
  191656,
  214655,
  240413,
  269263,
  301574,
  337763,
  378295,
  423690,
  474533,
  531477,
  595255,
  666685,
}