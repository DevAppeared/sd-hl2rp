
ITEM.name = "Standard Grade Ration Unit"
ITEM.model = Model("models/weapons/w_packatc.mdl")
ITEM.description = "A blue shrink-wrapped packet that should contain standard supplements and a can of water."
ITEM.items = {"standardsupp","water"}
ITEM.bDropOnDeath = true
ITEM.randomItem = {items = "thetruecitizen", chance = 2} -- The change is in percentage, so if it's set to 25 then theres a 25% chance of getting the item when you open a ration.