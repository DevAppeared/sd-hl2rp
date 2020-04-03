
ITEM.name = "Standard Grade Ration Unit"
ITEM.model = Model("models/weapons/w_packatc.mdl")
ITEM.description = "A blue shrink-wrapped packet containing standard supplements and a can of water."
ITEM.items = {"standardsupp","water"}

ITEM.functions.Open = {
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()

		for k, v in ipairs(itemTable.items) do
			if (!character:GetInventory():Add(v)) then
				ix.item.Spawn(v, client)
			end
		end

		character:GiveMoney(ix.config.Get("rationTokens", 20))
		client:EmitSound("ambient/fire/mtov_flame2.wav", 75, math.random(160, 180), 0.35)
	end
}