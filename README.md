# QBCore Bag
A very simple bag script made by Nathan#8860, include animation and instructions on how to make the bag work correctly

#STEP 1
Go to your shared.lua and add the following item
```
	["duffel-bag"] = {
		["name"] = "duffel-bag",
		["label"] = "Bag",
		["weight"] = 5000,
		["type"] = "item",
		["image"] = "duffel.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = false,
		["combinable"] = nil,   
		["description"] = "im bag im baag im baaaaag"
		},
```

#STEP 2
Head to your inventory script and look for the following code:
```
	QBCore.Shared.SplitStr(shopType, "_")[1] == "Itemshop"
		if Player.Functions.RemoveMoney("cash", price, "itemshop-bought-item") then
```
Add the following line beneath the statement
```
	if itemData.name == 'duffel-bag' then itemData.info.bagid = math.random(11111,99999)
```
It should now look like this:
```
	QBCore.Shared.SplitStr(shopType, "_")[1] == "Itemshop"
		if Player.Functions.RemoveMoney("cash", price, "itemshop-bought-item") then
			if itemData.name == 'duffel-bag' then itemData.info.bagid = math.random(11111,99999)
```

#STEP 3 (If you have a give function in your inventory)
In the server.main of the invetory script look for the following code
```
	elseif itemData["name"] == "markedbills" then
		info.worth = math.random(5000, 10000)
```
Add the following code underneath
```
	elseif itemData['name'] == 'duffel-bag' then
		info.bagid = math.random(11111,99999)
```
It should now look like this:
```
	elseif itemData["name"] == "markedbills" then
		info.worth = math.random(5000, 10000)
	elseif itemData['name'] == 'duffel-bag' then
		info.bagid = math.random(11111,99999)
```

#STEP 4
Start the resource and you should now have a bag that you can use to transfer and carry more items!